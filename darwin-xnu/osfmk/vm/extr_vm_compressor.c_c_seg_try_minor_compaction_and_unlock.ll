; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_try_minor_compaction_and_unlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_c_seg_try_minor_compaction_and_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@c_list_lock = common dso_local global i32 0, align 4
@try_minor_compaction_failed = common dso_local global i32 0, align 4
@try_minor_compaction_succeeded = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @c_seg_try_minor_compaction_and_unlock(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @assert(i32 %5)
  %7 = load i32, i32* @c_list_lock, align 4
  %8 = call i32 @lck_mtx_try_lock_spin_always(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @try_minor_compaction_failed, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* @try_minor_compaction_failed, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @lck_mtx_unlock_always(i32* %14)
  br label %26

16:                                               ; preds = %1
  %17 = load i32, i32* @try_minor_compaction_succeeded, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @try_minor_compaction_succeeded, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %20 = call i32 @C_SEG_BUSY(%struct.TYPE_5__* %19)
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = load i32, i32* @TRUE, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_5__* %21, i32 %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %16, %10
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_mtx_try_lock_spin_always(i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32*) #1

declare dso_local i32 @C_SEG_BUSY(%struct.TYPE_5__*) #1

declare dso_local i32 @c_seg_do_minor_compaction_and_unlock(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
