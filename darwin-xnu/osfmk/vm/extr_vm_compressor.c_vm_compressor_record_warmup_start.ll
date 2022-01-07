; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_record_warmup_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_record_warmup_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@c_list_lock = common dso_local global i32 0, align 4
@first_c_segment_to_warm_generation_id = common dso_local global i64 0, align 8
@c_age_list_head = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fastwake_recording_in_progress = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_record_warmup_start() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i32, i32* @c_list_lock, align 4
  %3 = call i32 @lck_mtx_lock_spin_always(i32 %2)
  %4 = load i64, i64* @first_c_segment_to_warm_generation_id, align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %18

6:                                                ; preds = %0
  %7 = call i32 @queue_empty(i32* @c_age_list_head)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = call i64 @queue_last(i32* @c_age_list_head)
  %11 = inttoptr i64 %10 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %11, %struct.TYPE_2__** %1, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* @first_c_segment_to_warm_generation_id, align 8
  br label %16

15:                                               ; preds = %6
  store i64 0, i64* @first_c_segment_to_warm_generation_id, align 8
  br label %16

16:                                               ; preds = %15, %9
  %17 = load i32, i32* @TRUE, align 4
  store i32 %17, i32* @fastwake_recording_in_progress, align 4
  br label %18

18:                                               ; preds = %16, %0
  %19 = load i32, i32* @c_list_lock, align 4
  %20 = call i32 @lck_mtx_unlock_always(i32 %19)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i64 @queue_last(i32*) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
