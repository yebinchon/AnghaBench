; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_free_devices.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/wps/extr_wps_registrar.c_wps_free_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_registrar_device = type { i32, %struct.wps_registrar_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_registrar_device*)* @wps_free_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_free_devices(%struct.wps_registrar_device* %0) #0 {
  %2 = alloca %struct.wps_registrar_device*, align 8
  %3 = alloca %struct.wps_registrar_device*, align 8
  store %struct.wps_registrar_device* %0, %struct.wps_registrar_device** %2, align 8
  br label %4

4:                                                ; preds = %7, %1
  %5 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %2, align 8
  %6 = icmp ne %struct.wps_registrar_device* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %4
  %8 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %2, align 8
  store %struct.wps_registrar_device* %8, %struct.wps_registrar_device** %3, align 8
  %9 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %2, align 8
  %10 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %9, i32 0, i32 1
  %11 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %10, align 8
  store %struct.wps_registrar_device* %11, %struct.wps_registrar_device** %2, align 8
  %12 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %3, align 8
  %13 = getelementptr inbounds %struct.wps_registrar_device, %struct.wps_registrar_device* %12, i32 0, i32 0
  %14 = call i32 @wps_device_data_free(i32* %13)
  %15 = load %struct.wps_registrar_device*, %struct.wps_registrar_device** %3, align 8
  %16 = call i32 @os_free(%struct.wps_registrar_device* %15)
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i32 @wps_device_data_free(i32*) #1

declare dso_local i32 @os_free(%struct.wps_registrar_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
