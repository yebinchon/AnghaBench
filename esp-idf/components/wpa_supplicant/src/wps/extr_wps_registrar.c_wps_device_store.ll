; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_device_store.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_device_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar = type { %struct.wps_registrar_device* }
%struct.wps_registrar_device = type { i32, i32, %struct.wps_registrar_device* }
%struct.wps_device_data = type { i32 }

@WPS_UUID_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_device_store(%struct.wps_registrar* %0, %struct.wps_device_data* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wps_registrar*, align 8
  %6 = alloca %struct.wps_device_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.wps_registrar_device*, align 8
  store %struct.wps_registrar* %0, %struct.wps_registrar** %5, align 8
  store %struct.wps_device_data* %1, %struct.wps_device_data** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %10 = load %struct.wps_device_data*, %struct.wps_device_data** %6, align 8
  %11 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar* %9, i32 %12)
  store %struct.wps_registrar_device* %13, %struct.wps_registrar_device** %8, align 8
  %14 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %15 = icmp eq %struct.wps_registrar_device* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = call i64 @os_zalloc(i32 16)
  %18 = inttoptr i64 %17 to %struct.wps_registrar_device*
  store %struct.wps_registrar_device* %18, %struct.wps_registrar_device** %8, align 8
  %19 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %20 = icmp eq %struct.wps_registrar_device* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %42

22:                                               ; preds = %16
  %23 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %24 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %23, i32 0, i32 0
  %25 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %24, align 8
  %26 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %27 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %26, i32 0, i32 2
  store %struct.wps_registrar_device* %25, %struct.wps_registrar_device** %27, align 8
  %28 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %29 = load %struct.wps_registrar*, %struct.wps_registrar** %5, align 8
  %30 = getelementptr inbounds %struct.wps_registrar, %struct.wps_registrar* %29, i32 0, i32 0
  store %struct.wps_registrar_device* %28, %struct.wps_registrar_device** %30, align 8
  br label %31

31:                                               ; preds = %22, %3
  %32 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %33 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %32, i32 0, i32 1
  %34 = load %struct.wps_device_data*, %struct.wps_device_data** %6, align 8
  %35 = call i32 @wps_device_clone_data(i32* %33, %struct.wps_device_data* %34)
  %36 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %8, align 8
  %37 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i32, i32* @WPS_UUID_LEN, align 4
  %41 = call i32 @os_memcpy(i32 %38, i32* %39, i32 %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %31, %21
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.wps_registrar_device* @wps_device_get(%struct.wps_registrar*, i32) #1

declare dso_local i64 @os_zalloc(i32) #1

declare dso_local i32 @wps_device_clone_data(i32*, %struct.wps_device_data*) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
