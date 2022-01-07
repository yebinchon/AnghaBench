; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cp_key_store_action.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cprotect.c_cp_key_store_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@CP_LOCKED_STATE = common dso_local global i32 0, align 4
@CP_UNLOCKED_STATE = common dso_local global i32 0, align 4
@cp_lock_vfs_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cp_key_store_action(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_2__, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  switch i32 %5, label %23 [
    i32 129, label %6
    i32 128, label %6
  ]

6:                                                ; preds = %1, %1
  %7 = load i32, i32* %3, align 4
  %8 = icmp eq i32 %7, 129
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = load i32, i32* @CP_LOCKED_STATE, align 4
  br label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @CP_UNLOCKED_STATE, align 4
  br label %13

13:                                               ; preds = %11, %9
  %14 = phi i32 [ %10, %9 ], [ %12, %11 ]
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 2
  store i32 %14, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @memset(i32 %17, i32 0, i32 4)
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @cp_lock_vfs_callback, align 4
  %21 = bitcast %struct.TYPE_2__* %4 to i8*
  %22 = call i32 @vfs_iterate(i32 0, i32 %20, i8* %21)
  store i32 %22, i32* %2, align 4
  br label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %13
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @vfs_iterate(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
