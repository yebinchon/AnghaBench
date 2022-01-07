; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_inquiry.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_queue_hci_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btpad_queue_command = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32 }

@hci_inquiry_ptr = common dso_local global i32 0, align 4
@insert_position = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btpad_queue_command*, i32, i8*, i8*)* @btpad_queue_hci_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btpad_queue_hci_inquiry(%struct.btpad_queue_command* %0, i32 %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.btpad_queue_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.btpad_queue_command* %0, %struct.btpad_queue_command** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %9 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %5, align 8
  %10 = icmp ne %struct.btpad_queue_command* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  br label %30

12:                                               ; preds = %4
  %13 = load i32, i32* @hci_inquiry_ptr, align 4
  %14 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %5, align 8
  %15 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %5, align 8
  %18 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  store i32 %16, i32* %19, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %5, align 8
  %22 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i8* %20, i8** %23, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load %struct.btpad_queue_command*, %struct.btpad_queue_command** %5, align 8
  %26 = getelementptr inbounds %struct.btpad_queue_command, %struct.btpad_queue_command* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i8* %24, i8** %27, align 8
  %28 = call i32 @btpad_increment_position(i32* @insert_position)
  %29 = call i32 (...) @btpad_queue_process()
  br label %30

30:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @btpad_increment_position(i32*) #1

declare dso_local i32 @btpad_queue_process(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
