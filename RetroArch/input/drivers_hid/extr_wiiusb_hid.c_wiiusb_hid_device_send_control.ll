; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_device_send_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_device_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i64)* @wiiusb_hid_device_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiusb_hid_device_send_control(i8* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiiusb_adapter*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wiiusb_adapter*
  store %struct.wiiusb_adapter* %10, %struct.wiiusb_adapter** %8, align 8
  %11 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %12 = icmp ne %struct.wiiusb_adapter* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %18 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %16, %13, %3
  br label %43

22:                                               ; preds = %16
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i64, i64* %6, align 8
  %27 = sub i64 %26, 1
  %28 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %29 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %5, align 8
  %32 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %37 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @memcpy(i32 %34, i32* %35, i64 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %8, align 8
  %42 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %22, %21
  ret void
}

declare dso_local i32 @memcpy(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
