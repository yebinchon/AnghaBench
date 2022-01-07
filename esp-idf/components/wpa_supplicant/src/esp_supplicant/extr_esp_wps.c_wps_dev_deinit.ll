; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_dev_deinit.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_dev_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_device_data = type { i32*, i32*, i32*, i32*, i32* }

@ESP_FAIL = common dso_local global i32 0, align 4
@s_factory_info = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_dev_deinit(%struct.wps_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wps_device_data*, align 8
  %4 = alloca i32, align 4
  store %struct.wps_device_data* %0, %struct.wps_device_data** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %6 = icmp ne %struct.wps_device_data* %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @ESP_FAIL, align 4
  store i32 %8, i32* %2, align 4
  br label %67

9:                                                ; preds = %1
  %10 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %11 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %16 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %15, i32 0, i32 4
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @os_free(i32* %17)
  br label %19

19:                                               ; preds = %14, %9
  %20 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %21 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %26 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @os_free(i32* %27)
  br label %29

29:                                               ; preds = %24, %19
  %30 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %31 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %36 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @os_free(i32* %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %41 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %46 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @os_free(i32* %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %51 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.wps_device_data*, %struct.wps_device_data** %3, align 8
  %56 = getelementptr inbounds %struct.wps_device_data, %struct.wps_device_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @os_free(i32* %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load i32*, i32** @s_factory_info, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32*, i32** @s_factory_info, align 8
  %64 = call i32 @os_free(i32* %63)
  store i32* null, i32** @s_factory_info, align 8
  br label %65

65:                                               ; preds = %62, %59
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %7
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
