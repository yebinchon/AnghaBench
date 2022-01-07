; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_record_warmup_end.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_compressor.c_vm_compressor_record_warmup_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@c_list_lock = common dso_local global i32 0, align 4
@fastwake_recording_in_progress = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@c_age_list_head = common dso_local global i32 0, align 4
@last_c_segment_to_warm_generation_id = common dso_local global i32 0, align 4
@first_c_segment_to_warm_generation_id = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"vm_compressor_record_warmup (%qd - %qd)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_compressor_record_warmup_end() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = load i32, i32* @c_list_lock, align 4
  %3 = call i32 @lck_mtx_lock_spin_always(i32 %2)
  %4 = load i64, i64* @fastwake_recording_in_progress, align 8
  %5 = load i64, i64* @TRUE, align 8
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %23

7:                                                ; preds = %0
  %8 = call i32 @queue_empty(i32* @c_age_list_head)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = call i64 @queue_last(i32* @c_age_list_head)
  %12 = inttoptr i64 %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %1, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* @last_c_segment_to_warm_generation_id, align 4
  br label %18

16:                                               ; preds = %7
  %17 = load i32, i32* @first_c_segment_to_warm_generation_id, align 4
  store i32 %17, i32* @last_c_segment_to_warm_generation_id, align 4
  br label %18

18:                                               ; preds = %16, %10
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* @fastwake_recording_in_progress, align 8
  %20 = load i32, i32* @first_c_segment_to_warm_generation_id, align 4
  %21 = load i32, i32* @last_c_segment_to_warm_generation_id, align 4
  %22 = call i32 @HIBLOG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %18, %0
  %24 = load i32, i32* @c_list_lock, align 4
  %25 = call i32 @lck_mtx_unlock_always(i32 %24)
  ret void
}

declare dso_local i32 @lck_mtx_lock_spin_always(i32) #1

declare dso_local i32 @queue_empty(i32*) #1

declare dso_local i64 @queue_last(i32*) #1

declare dso_local i32 @HIBLOG(i8*, i32, i32) #1

declare dso_local i32 @lck_mtx_unlock_always(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
