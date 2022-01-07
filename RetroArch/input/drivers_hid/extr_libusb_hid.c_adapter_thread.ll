; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_adapter_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_adapter_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_adapter = type { i64*, i64, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @adapter_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adapter_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [4096 x i64], align 16
  %4 = alloca %struct.libusb_adapter*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.libusb_adapter*
  store %struct.libusb_adapter* %11, %struct.libusb_adapter** %4, align 8
  %12 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %13 = icmp ne %struct.libusb_adapter* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  %15 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %16 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %15, i32 0, i32 9
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  br label %19

18:                                               ; preds = %1
  br label %19

19:                                               ; preds = %18, %14
  %20 = phi %struct.TYPE_2__* [ %17, %14 ], [ null, %18 ]
  store %struct.TYPE_2__* %20, %struct.TYPE_2__** %5, align 8
  %21 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %22 = icmp ne %struct.libusb_adapter* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  br label %120

24:                                               ; preds = %19
  br label %25

25:                                               ; preds = %119, %24
  %26 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %120

31:                                               ; preds = %25
  store i32 0, i32* %9, align 4
  %32 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %33 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @slock_lock(i32 %34)
  %36 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @fifo_read_avail(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = icmp uge i64 %40, 8
  br i1 %41, label %42, label %70

42:                                               ; preds = %31
  %43 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %43, i32 0, i32 7
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @fifo_read(i32 %45, i64* %6, i64 8)
  %47 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %47, i32 0, i32 7
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @fifo_read_avail(i32 %49)
  %51 = sext i32 %50 to i64
  %52 = icmp uge i64 %51, 8
  br i1 %52, label %53, label %69

53:                                               ; preds = %42
  %54 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %55 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds [4096 x i64], [4096 x i64]* %3, i64 0, i64 0
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @fifo_read(i32 %56, i64* %57, i64 %58)
  %60 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %61 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %64 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds [4096 x i64], [4096 x i64]* %3, i64 0, i64 0
  %67 = load i64, i64* %6, align 8
  %68 = call i32 @libusb_interrupt_transfer(i32 %62, i32 %65, i64* %66, i64 %67, i32* %7, i32 1000)
  br label %69

69:                                               ; preds = %53, %42
  br label %70

70:                                               ; preds = %69, %31
  %71 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %72 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %71, i32 0, i32 5
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @slock_unlock(i32 %73)
  %75 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %76 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %75, i32 0, i32 4
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %79 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %82 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 1
  %85 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %86 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @libusb_interrupt_transfer(i32 %77, i32 %80, i64* %84, i64 %87, i32* %9, i32 1000)
  %89 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %90 = icmp ne %struct.libusb_adapter* %89, null
  br i1 %90, label %91, label %119

91:                                               ; preds = %70
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %93 = icmp ne %struct.TYPE_2__* %92, null
  br i1 %93, label %94, label %119

94:                                               ; preds = %91
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %119

99:                                               ; preds = %94
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %119

102:                                              ; preds = %99
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %107 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i32, i32* %105, i64 %108
  %110 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %111 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.libusb_adapter*, %struct.libusb_adapter** %4, align 8
  %114 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %113, i32 0, i32 0
  %115 = load i64*, i64** %114, align 8
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, 1
  %118 = call i32 @pad_connection_packet(i32* %109, i64 %112, i64* %115, i32 %117)
  br label %119

119:                                              ; preds = %102, %99, %94, %91, %70
  br label %25

120:                                              ; preds = %23, %25
  ret void
}

declare dso_local i32 @slock_lock(i32) #1

declare dso_local i32 @fifo_read_avail(i32) #1

declare dso_local i32 @fifo_read(i32, i64*, i64) #1

declare dso_local i32 @libusb_interrupt_transfer(i32, i32, i64*, i64, i32*, i32) #1

declare dso_local i32 @slock_unlock(i32) #1

declare dso_local i32 @pad_connection_packet(i32*, i64, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
