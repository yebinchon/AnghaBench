; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_libusb_hid_device_send_control.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_libusb_hid_device_send_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_adapter = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"adapter write buffer is full, cannot write send control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64*, i64)* @libusb_hid_device_send_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @libusb_hid_device_send_control(i8* %0, i64* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.libusb_adapter*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.libusb_adapter*
  store %struct.libusb_adapter* %9, %struct.libusb_adapter** %7, align 8
  %10 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %11 = icmp ne %struct.libusb_adapter* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  br label %43

13:                                               ; preds = %3
  %14 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %15 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @slock_lock(i32 %16)
  %18 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %19 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @fifo_write_avail(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %22, 8
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %13
  %26 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @fifo_write(i32 %28, i64* %6, i64 8)
  %30 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64*, i64** %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @fifo_write(i32 %32, i64* %33, i64 %34)
  br label %38

36:                                               ; preds = %13
  %37 = call i32 @RARCH_WARN(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %25
  %39 = load %struct.libusb_adapter*, %struct.libusb_adapter** %7, align 8
  %40 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @slock_unlock(i32 %41)
  br label %43

43:                                               ; preds = %38, %12
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i64 @fifo_write_avail(i32) #1

declare dso_local i32 @fifo_write(i32, i64*, i64) #1

declare dso_local i32 @RARCH_WARN(i8*) #1

declare dso_local i32 @slock_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
