; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_send_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_iohidmanager_hid.c_iohidmanager_hid_device_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iohidmanager_hid_adapter = type { i32 }

@kIOHIDReportTypeOutput = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @iohidmanager_hid_device_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iohidmanager_hid_device_send_control(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iohidmanager_hid_adapter*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.iohidmanager_hid_adapter*
  store %struct.iohidmanager_hid_adapter* %9, %struct.iohidmanager_hid_adapter** %7, align 8
  %10 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %11 = icmp ne %struct.iohidmanager_hid_adapter* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %3
  %13 = load %struct.iohidmanager_hid_adapter*, %struct.iohidmanager_hid_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.iohidmanager_hid_adapter, %struct.iohidmanager_hid_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @kIOHIDReportTypeOutput, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i64, i64* %6, align 8
  %20 = sub i64 %19, 1
  %21 = call i32 @IOHIDDeviceSetReport(i32 %15, i32 %16, i32 1, i32* %18, i64 %20)
  br label %22

22:                                               ; preds = %12, %3
  ret void
}

declare dso_local i32 @IOHIDDeviceSetReport(i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
