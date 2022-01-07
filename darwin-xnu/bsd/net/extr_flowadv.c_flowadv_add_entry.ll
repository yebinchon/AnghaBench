; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowadv.c_flowadv_add_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_flowadv.c_flowadv_add_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flowadv_fcentry = type { i32 }

@fadv_lock = common dso_local global i32 0, align 4
@fadv_list = common dso_local global i32 0, align 4
@fce_link = common dso_local global i32 0, align 4
@fadv_active = common dso_local global i32 0, align 4
@fadv_thread = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flowadv_add_entry(%struct.flowadv_fcentry* %0) #0 {
  %2 = alloca %struct.flowadv_fcentry*, align 8
  store %struct.flowadv_fcentry* %0, %struct.flowadv_fcentry** %2, align 8
  %3 = call i32 @lck_mtx_lock_spin(i32* @fadv_lock)
  %4 = load %struct.flowadv_fcentry*, %struct.flowadv_fcentry** %2, align 8
  %5 = load i32, i32* @fce_link, align 4
  %6 = call i32 @STAILQ_INSERT_HEAD(i32* @fadv_list, %struct.flowadv_fcentry* %4, i32 %5)
  %7 = call i32 @STAILQ_EMPTY(i32* @fadv_list)
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load i32, i32* @fadv_active, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load i64, i64* @fadv_thread, align 8
  %16 = load i64, i64* @THREAD_NULL, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = call i32 @wakeup_one(i32 ptrtoint (i32* @fadv_list to i32))
  br label %20

20:                                               ; preds = %18, %14, %1
  %21 = call i32 @lck_mtx_unlock(i32* @fadv_lock)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, %struct.flowadv_fcentry*, i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @STAILQ_EMPTY(i32*) #1

declare dso_local i32 @wakeup_one(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
