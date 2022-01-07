; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_process.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btpad_queue_command = type { i32 }

@can_run = common dso_local global i64 0, align 8
@insert_position = common dso_local global i64 0, align 8
@read_position = common dso_local global i64 0, align 8
@commands = common dso_local global %struct.btpad_queue_command* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @btpad_queue_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btpad_queue_process() #0 {
  %1 = alloca %struct.btpad_queue_command*, align 8
  br label %2

2:                                                ; preds = %18, %0
  %3 = load i64, i64* @can_run, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %2
  %6 = load i64, i64* @insert_position, align 8
  %7 = load i64, i64* @read_position, align 8
  %8 = icmp ne i64 %6, %7
  br label %9

9:                                                ; preds = %5, %2
  %10 = phi i1 [ false, %2 ], [ %8, %5 ]
  br i1 %10, label %11, label %21

11:                                               ; preds = %9
  %12 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** @commands, align 8
  %13 = load i64, i64* @read_position, align 8
  %14 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %12, i64 %13
  store %struct.btpad_queue_command* %14, %struct.btpad_queue_command** %1, align 8
  %15 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %1, align 8
  %16 = call i32 @btpad_queue_process_cmd(%struct.btpad_queue_command* %15)
  %17 = call i32 @btpad_increment_position(i64* @read_position)
  br label %18

18:                                               ; preds = %11
  %19 = load i64, i64* @can_run, align 8
  %20 = add nsw i64 %19, -1
  store i64 %20, i64* @can_run, align 8
  br label %2

21:                                               ; preds = %9
  ret void
}

declare dso_local i32 @btpad_queue_process_cmd(%struct.btpad_queue_command*) #1

declare dso_local i32 @btpad_increment_position(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
