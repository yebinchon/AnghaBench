; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_close_connection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_close_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btstack_hid_adapter = type { i64 }

@commands = common dso_local global i32* null, align 8
@insert_position = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btstack_hid_adapter*)* @btpad_close_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btpad_close_connection(%struct.btstack_hid_adapter* %0) #0 {
  %2 = alloca %struct.btstack_hid_adapter*, align 8
  store %struct.btstack_hid_adapter* %0, %struct.btstack_hid_adapter** %2, align 8
  %3 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %2, align 8
  %4 = icmp ne %struct.btstack_hid_adapter* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %22

6:                                                ; preds = %1
  %7 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %6
  %12 = load i32*, i32** @commands, align 8
  %13 = load i64, i64* @insert_position, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @btpad_queue_hci_disconnect(i32* %14, i64 %17, i32 21)
  br label %19

19:                                               ; preds = %11, %6
  %20 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %2, align 8
  %21 = call i32 @memset(%struct.btstack_hid_adapter* %20, i32 0, i32 8)
  br label %22

22:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @btpad_queue_hci_disconnect(i32*, i64, i32) #1

declare dso_local i32 @memset(%struct.btstack_hid_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
