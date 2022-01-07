; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_poll_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_poll_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.wiiusb_adapter*, i32 }
%struct.wiiusb_adapter = type { i32, i32, i32, i32, i32, i64, %struct.wiiusb_adapter* }

@wiiusb_hid_read_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @wiiusb_hid_poll_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wiiusb_hid_poll_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wiiusb_adapter*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %6, %struct.TYPE_3__** %3, align 8
  store %struct.wiiusb_adapter* null, %struct.wiiusb_adapter** %4, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %72

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %70, %10
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %72

17:                                               ; preds = %11
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %26 = call i32 @wiiusb_hid_scan_for_devices(%struct.TYPE_3__* %25)
  br label %27

27:                                               ; preds = %22, %17
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %29, align 8
  store %struct.wiiusb_adapter* %30, %struct.wiiusb_adapter** %4, align 8
  br label %31

31:                                               ; preds = %66, %27
  %32 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %33 = icmp ne %struct.wiiusb_adapter* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %31
  %35 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %36 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %66

40:                                               ; preds = %34
  %41 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %42 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %43, i32 0, i32 5
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %49 = call i32 @wiiusb_hid_process_control_message(%struct.wiiusb_adapter* %48)
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %52 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %58 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @wiiusb_hid_read_cb, align 4
  %64 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %65 = call i32 @USB_ReadIntrMsgAsync(i32 %53, i32 %56, i32 %59, i32 %62, i32 %63, %struct.wiiusb_adapter* %64)
  br label %66

66:                                               ; preds = %50, %39
  %67 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %4, align 8
  %68 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %67, i32 0, i32 6
  %69 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %68, align 8
  store %struct.wiiusb_adapter* %69, %struct.wiiusb_adapter** %4, align 8
  br label %31

70:                                               ; preds = %31
  %71 = call i32 @usleep(i32 10000)
  br label %11

72:                                               ; preds = %9, %11
  ret void
}

declare dso_local i32 @wiiusb_hid_scan_for_devices(%struct.TYPE_3__*) #1

declare dso_local i32 @wiiusb_hid_process_control_message(%struct.wiiusb_adapter*) #1

declare dso_local i32 @USB_ReadIntrMsgAsync(i32, i32, i32, i32, i32, %struct.wiiusb_adapter*) #1

declare dso_local i32 @usleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
