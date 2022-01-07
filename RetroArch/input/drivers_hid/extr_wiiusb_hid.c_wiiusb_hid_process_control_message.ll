; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_process_control_message.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_process_control_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { i32, i32, i32, i32, i32 }

@USB_REQTYPE_INTERFACE_SET = common dso_local global i32 0, align 4
@USB_REQ_SETREPORT = common dso_local global i32 0, align 4
@USB_REPTYPE_FEATURE = common dso_local global i32 0, align 4
@USB_REPTYPE_OUTPUT = common dso_local global i32 0, align 4
@WIIUSB_SC_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wiiusb_adapter*)* @wiiusb_hid_process_control_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiusb_hid_process_control_message(%struct.wiiusb_adapter* %0) #0 {
  %2 = alloca %struct.wiiusb_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.wiiusb_adapter* %0, %struct.wiiusb_adapter** %2, align 8
  %4 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %68 [
    i32 128, label %7
    i32 130, label %26
    i32 129, label %47
  ]

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %22, %7
  %9 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %16 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %19 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @USB_WriteIntrMsg(i32 %11, i32 %14, i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %8
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %8, label %25

25:                                               ; preds = %22
  br label %68

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %43, %26
  %28 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_REQTYPE_INTERFACE_SET, align 4
  %32 = load i32, i32* @USB_REQ_SETREPORT, align 4
  %33 = load i32, i32* @USB_REPTYPE_FEATURE, align 4
  %34 = shl i32 %33, 8
  %35 = or i32 %34, 244
  %36 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %40 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @USB_WriteCtrlMsg(i32 %30, i32 %31, i32 %32, i32 %35, i32 0, i32 %38, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %27
  %44 = load i32, i32* %3, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %27, label %46

46:                                               ; preds = %43
  br label %68

47:                                               ; preds = %1
  br label %48

48:                                               ; preds = %64, %47
  %49 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @USB_REQTYPE_INTERFACE_SET, align 4
  %53 = load i32, i32* @USB_REQ_SETREPORT, align 4
  %54 = load i32, i32* @USB_REPTYPE_OUTPUT, align 4
  %55 = shl i32 %54, 8
  %56 = or i32 %55, 1
  %57 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %58 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %61 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @USB_WriteCtrlMsg(i32 %51, i32 %52, i32 %53, i32 %56, i32 0, i32 %59, i32 %62)
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %48
  %65 = load i32, i32* %3, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %48, label %67

67:                                               ; preds = %64
  br label %68

68:                                               ; preds = %1, %67, %46, %25
  %69 = load i32, i32* @WIIUSB_SC_NONE, align 4
  %70 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %2, align 8
  %71 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  ret void
}

declare dso_local i32 @USB_WriteIntrMsg(i32, i32, i32, i32) #1

declare dso_local i32 @USB_WriteCtrlMsg(i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
