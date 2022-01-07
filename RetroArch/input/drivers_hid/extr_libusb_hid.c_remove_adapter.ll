; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_remove_adapter.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_libusb_hid.c_remove_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libusb_device = type { i32 }
%struct.libusb_adapter = type { i64, i32, %struct.libusb_adapter*, i32, i32, i32, i32, i32, i64, %struct.libusb_device* }
%struct.libusb_hid = type { i32* }

@adapters = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.libusb_device*)* @remove_adapter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_adapter(i8* %0, %struct.libusb_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.libusb_device*, align 8
  %6 = alloca %struct.libusb_adapter*, align 8
  %7 = alloca %struct.libusb_hid*, align 8
  %8 = alloca %struct.libusb_adapter*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.libusb_device* %1, %struct.libusb_device** %5, align 8
  store %struct.libusb_adapter* bitcast (i32* @adapters to %struct.libusb_adapter*), %struct.libusb_adapter** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.libusb_hid*
  store %struct.libusb_hid* %11, %struct.libusb_hid** %7, align 8
  br label %12

12:                                               ; preds = %2
  %13 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %14 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %13, i32 0, i32 2
  %15 = load %struct.libusb_adapter*, %struct.libusb_adapter** %14, align 8
  %16 = icmp eq %struct.libusb_adapter* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %3, align 4
  br label %97

18:                                               ; preds = %12
  %19 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %19, i32 0, i32 2
  %21 = load %struct.libusb_adapter*, %struct.libusb_adapter** %20, align 8
  %22 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %21, i32 0, i32 9
  %23 = load %struct.libusb_device*, %struct.libusb_device** %22, align 8
  %24 = load %struct.libusb_device*, %struct.libusb_device** %5, align 8
  %25 = icmp eq %struct.libusb_device* %23, %24
  br i1 %25, label %26, label %96

26:                                               ; preds = %18
  store %struct.libusb_adapter* null, %struct.libusb_adapter** %8, align 8
  %27 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %27, i32 0, i32 2
  %29 = load %struct.libusb_adapter*, %struct.libusb_adapter** %28, align 8
  %30 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i8*
  store i8* %32, i8** %9, align 8
  %33 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %34 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @input_autoconfigure_disconnect(i64 %35, i8* %36)
  %38 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %38, i32 0, i32 2
  %40 = load %struct.libusb_adapter*, %struct.libusb_adapter** %39, align 8
  %41 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %40, i32 0, i32 1
  store i32 1, i32* %41, align 8
  %42 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %43 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %42, i32 0, i32 2
  %44 = load %struct.libusb_adapter*, %struct.libusb_adapter** %43, align 8
  %45 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %44, i32 0, i32 7
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @sthread_join(i32 %46)
  %48 = load %struct.libusb_hid*, %struct.libusb_hid** %7, align 8
  %49 = getelementptr inbounds %struct.libusb_hid, %struct.libusb_hid* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %52 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i32, i32* %50, i64 %53
  %55 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @pad_connection_pad_deinit(i32* %54, i64 %57)
  %59 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %60 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %59, i32 0, i32 6
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @slock_free(i32 %61)
  %63 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %63, i32 0, i32 5
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @fifo_free(i32 %65)
  %67 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %68 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %67, i32 0, i32 2
  %69 = load %struct.libusb_adapter*, %struct.libusb_adapter** %68, align 8
  %70 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %73 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %72, i32 0, i32 2
  %74 = load %struct.libusb_adapter*, %struct.libusb_adapter** %73, align 8
  %75 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @libusb_release_interface(i32 %71, i32 %76)
  %78 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %79 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %78, i32 0, i32 2
  %80 = load %struct.libusb_adapter*, %struct.libusb_adapter** %79, align 8
  %81 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @libusb_close(i32 %82)
  %84 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %85 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %84, i32 0, i32 2
  %86 = load %struct.libusb_adapter*, %struct.libusb_adapter** %85, align 8
  %87 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %86, i32 0, i32 2
  %88 = load %struct.libusb_adapter*, %struct.libusb_adapter** %87, align 8
  store %struct.libusb_adapter* %88, %struct.libusb_adapter** %8, align 8
  %89 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %90 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %89, i32 0, i32 2
  %91 = load %struct.libusb_adapter*, %struct.libusb_adapter** %90, align 8
  %92 = call i32 @free(%struct.libusb_adapter* %91)
  %93 = load %struct.libusb_adapter*, %struct.libusb_adapter** %8, align 8
  %94 = load %struct.libusb_adapter*, %struct.libusb_adapter** %6, align 8
  %95 = getelementptr inbounds %struct.libusb_adapter, %struct.libusb_adapter* %94, i32 0, i32 2
  store %struct.libusb_adapter* %93, %struct.libusb_adapter** %95, align 8
  store i32 0, i32* %3, align 4
  br label %97

96:                                               ; preds = %18
  store i32 -1, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %26, %17
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @input_autoconfigure_disconnect(i64, i8*) #1

declare dso_local i32 @sthread_join(i32) #1

declare dso_local i32 @pad_connection_pad_deinit(i32*, i64) #1

declare dso_local i32 @slock_free(i32) #1

declare dso_local i32 @fifo_free(i32) #1

declare dso_local i32 @libusb_release_interface(i32, i32) #1

declare dso_local i32 @libusb_close(i32) #1

declare dso_local i32 @free(%struct.libusb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
