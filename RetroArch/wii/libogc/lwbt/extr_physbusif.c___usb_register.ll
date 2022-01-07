; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___usb_register.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwbt/extr_physbusif.c___usb_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__usbdev = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@__ntd_vid_pid_specified = common dso_local global i64 0, align 8
@__ntd_vid = common dso_local global i32 0, align 4
@__ntd_pid = common dso_local global i32 0, align 4
@ctrlbufs = common dso_local global i32 0, align 4
@CTRL_BUF_SIZE = common dso_local global i32 0, align 4
@NUM_CTRL_BUFS = common dso_local global i32 0, align 4
@aclbufs = common dso_local global i32 0, align 4
@ACL_BUF_SIZE = common dso_local global i32 0, align 4
@NUM_ACL_BUFS = common dso_local global i32 0, align 4
@__wait4hci = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @__usb_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__usb_register(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %5 = call i32 @memset(%struct.TYPE_3__* @__usbdev, i32 0, i32 4)
  store i32 5, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 0), align 4
  %6 = call i64 (...) @__IPC_ClntInit()
  store i64 %6, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp slt i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %2, align 8
  br label %41

11:                                               ; preds = %1
  %12 = call i64 (...) @USB_Initialize()
  store i64 %12, i64* %4, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* %4, align 8
  store i64 %16, i64* %2, align 8
  br label %41

17:                                               ; preds = %11
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 1), align 4
  %18 = load i32, i32* %3, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 8), align 4
  %19 = load i64, i64* @__ntd_vid_pid_specified, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* @__ntd_vid, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 2), align 4
  %23 = load i32, i32* @__ntd_pid, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 3), align 4
  br label %25

24:                                               ; preds = %17
  store i32 1406, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 2), align 4
  store i32 773, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 3), align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 2), align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 3), align 4
  %28 = call i64 @__getDeviceId(i32 %26, i32 %27)
  store i64 %28, i64* %4, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %2, align 8
  br label %41

33:                                               ; preds = %25
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 4), align 4
  store i32 130, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 5), align 4
  store i32 129, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 6), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 7), align 4
  %34 = load i32, i32* @CTRL_BUF_SIZE, align 4
  %35 = load i32, i32* @NUM_CTRL_BUFS, align 4
  %36 = call i32 @__initUsbIOBuffer(i32* @ctrlbufs, i32 %34, i32 %35)
  %37 = load i32, i32* @ACL_BUF_SIZE, align 4
  %38 = load i32, i32* @NUM_ACL_BUFS, align 4
  %39 = call i32 @__initUsbIOBuffer(i32* @aclbufs, i32 %37, i32 %38)
  store i32 4, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @__usbdev, i32 0, i32 0), align 4
  store i32 1, i32* @__wait4hci, align 4
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %33, %31, %15, %9
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i64 @__IPC_ClntInit(...) #1

declare dso_local i64 @USB_Initialize(...) #1

declare dso_local i64 @__getDeviceId(i32, i32) #1

declare dso_local i32 @__initUsbIOBuffer(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
