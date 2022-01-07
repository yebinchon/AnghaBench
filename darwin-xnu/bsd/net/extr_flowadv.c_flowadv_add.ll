; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowadv.c_flowadv_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowadv.c_flowadv_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowadv_fclist = type { i32 }

@fadv_lock = common dso_local global i32 0, align 4
@fadv_list = common dso_local global %struct.flowadv_fclist zeroinitializer, align 4
@fadv_active = common dso_local global i32 0, align 4
@fadv_thread = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flowadv_add(%struct.flowadv_fclist* %0) #0 {
  %2 = alloca %struct.flowadv_fclist*, align 8
  store %struct.flowadv_fclist* %0, %struct.flowadv_fclist** %2, align 8
  %3 = load %struct.flowadv_fclist*, %struct.flowadv_fclist** %2, align 8
  %4 = call i64 @STAILQ_EMPTY(%struct.flowadv_fclist* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %26

7:                                                ; preds = %1
  %8 = call i32 @lck_mtx_lock_spin(i32* @fadv_lock)
  %9 = load %struct.flowadv_fclist*, %struct.flowadv_fclist** %2, align 8
  %10 = call i32 @STAILQ_CONCAT(%struct.flowadv_fclist* @fadv_list, %struct.flowadv_fclist* %9)
  %11 = call i64 @STAILQ_EMPTY(%struct.flowadv_fclist* @fadv_list)
  %12 = icmp ne i64 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @VERIFY(i32 %14)
  %16 = load i32, i32* @fadv_active, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %7
  %19 = load i64, i64* @fadv_thread, align 8
  %20 = load i64, i64* @THREAD_NULL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = call i32 @wakeup_one(i32 ptrtoint (%struct.flowadv_fclist* @fadv_list to i32))
  br label %24

24:                                               ; preds = %22, %18, %7
  %25 = call i32 @lck_mtx_unlock(i32* @fadv_lock)
  br label %26

26:                                               ; preds = %24, %6
  ret void
}

declare dso_local i64 @STAILQ_EMPTY(%struct.flowadv_fclist*) #1

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @STAILQ_CONCAT(%struct.flowadv_fclist*, %struct.flowadv_fclist*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
