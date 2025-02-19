; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov_handlers.c_set_config_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/ble_prov/main/extr_app_prov_handlers.c_set_config_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64, i64 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to alloc wifi config\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"WiFi Credentials Received : \0A\09ssid %s \0A\09password %s\00", align 1
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32**)* @set_config_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_config_handler(%struct.TYPE_8__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load i32**, i32*** %5, align 8
  %8 = call %struct.TYPE_9__* @get_config(i32** %7)
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %10 = icmp ne %struct.TYPE_9__* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32**, i32*** %5, align 8
  %13 = call i32 @free_config(i32** %12)
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32**, i32*** %5, align 8
  %16 = call %struct.TYPE_9__* @new_config(i32** %15)
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %18 = icmp ne %struct.TYPE_9__* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 @ESP_LOGE(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ESP_FAIL, align 4
  store i32 %22, i32* %3, align 4
  br label %51

23:                                               ; preds = %14
  %24 = load i32, i32* @TAG, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ESP_LOGI(i32 %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %30)
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strncpy(i8* %36, i32 %39, i32 8)
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @strlcpy(i8* %45, i32 %48, i32 8)
  %50 = load i32, i32* @ESP_OK, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %23, %19
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_9__* @get_config(i32**) #1

declare dso_local i32 @free_config(i32**) #1

declare dso_local %struct.TYPE_9__* @new_config(i32**) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, i32, i32) #1

declare dso_local i32 @strncpy(i8*, i32, i32) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
