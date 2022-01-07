; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_set_default_factory.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/esp_supplicant/extr_esp_wps.c_wps_set_default_factory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@s_factory_info = common dso_local global %struct.TYPE_3__* null, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"wps factory info malloc failed\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"ESPRESSIF\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"ESPRESSIF IOT\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"ESP32\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ESP32 STATION\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wps_set_default_factory() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %3 = icmp ne %struct.TYPE_3__* %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %0
  %5 = call %struct.TYPE_3__* @os_zalloc(i32 4)
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** @s_factory_info, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load i32, i32* @MSG_ERROR, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %11, i32* %1, align 4
  br label %31

12:                                               ; preds = %4
  br label %13

13:                                               ; preds = %12, %0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @sprintf(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sprintf(i32 %20, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @sprintf(i32 %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** @s_factory_info, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @sprintf(i32 %28, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %30 = load i32, i32* @ESP_OK, align 4
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %13, %8
  %32 = load i32, i32* %1, align 4
  ret i32 %32
}

declare dso_local %struct.TYPE_3__* @os_zalloc(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
