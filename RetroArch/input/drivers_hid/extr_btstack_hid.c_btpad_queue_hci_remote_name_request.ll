; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_remote_name_request.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_remote_name_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btpad_queue_command = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i8*, i8*, i32 }

@hci_remote_name_request_ptr = common dso_local global i32 0, align 4
@insert_position = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btpad_queue_command*, i32, i8*, i8*, i32)* @btpad_queue_hci_remote_name_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btpad_queue_hci_remote_name_request(%struct.btpad_queue_command* %0, i32 %1, i8* %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.btpad_queue_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.btpad_queue_command* %0, %struct.btpad_queue_command** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %12 = icmp ne %struct.btpad_queue_command* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %5
  br label %38

14:                                               ; preds = %5
  %15 = load i32, i32* @hci_remote_name_request_ptr, align 4
  %16 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %17 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  %18 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %19 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @memcpy(i32 %21, i32 %22, i32 4)
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %26 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i8* %24, i8** %27, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %30 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i8* %28, i8** %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %6, align 8
  %34 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 8
  %36 = call i32 @btpad_increment_position(i32* @insert_position)
  %37 = call i32 (...) @btpad_queue_process()
  br label %38

38:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @btpad_increment_position(i32*) #1

declare dso_local i32 @btpad_queue_process(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
