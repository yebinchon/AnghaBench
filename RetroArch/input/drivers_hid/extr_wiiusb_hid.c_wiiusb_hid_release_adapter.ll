; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_release_adapter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiusb_hid.c_wiiusb_hid_release_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiiusb_adapter = type { i64, %struct.wiiusb_adapter*, %struct.wiiusb_adapter*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiiusb_adapter*)* @wiiusb_hid_release_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wiiusb_hid_release_adapter(%struct.wiiusb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wiiusb_adapter*, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i8*, align 8
  store %struct.wiiusb_adapter* %0, %struct.wiiusb_adapter** %3, align 8
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %4, align 8
  store i8* null, i8** %5, align 8
  %6 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %7 = icmp ne %struct.wiiusb_adapter* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %44

9:                                                ; preds = %1
  %10 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %10, i32 0, i32 3
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  store %struct.TYPE_3__* %12, %struct.TYPE_3__** %4, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %14 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i8* @wiiusb_hid_joypad_name(%struct.TYPE_3__* %13, i64 %16)
  store i8* %17, i8** %5, align 8
  %18 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i8*, i8** %5, align 8
  %22 = call i32 @input_autoconfigure_disconnect(i64 %20, i8* %21)
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @pad_connection_pad_deinit(i32* %29, i64 %32)
  %34 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %34, i32 0, i32 2
  %36 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %35, align 8
  %37 = call i32 @free(%struct.wiiusb_adapter* %36)
  %38 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.wiiusb_adapter, %struct.wiiusb_adapter* %38, i32 0, i32 1
  %40 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %39, align 8
  %41 = call i32 @free(%struct.wiiusb_adapter* %40)
  %42 = load %struct.wiiusb_adapter*, %struct.wiiusb_adapter** %3, align 8
  %43 = call i32 @free(%struct.wiiusb_adapter* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %9, %8
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i8* @wiiusb_hid_joypad_name(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @input_autoconfigure_disconnect(i64, i8*) #1

declare dso_local i32 @pad_connection_pad_deinit(i32*, i64) #1

declare dso_local i32 @free(%struct.wiiusb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
