; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/provisioning/console_prov/main/extr_app_prov.c_app_prov_start_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/provisioning/console_prov/main/extr_app_prov.c_app_prov_start_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32*, i32* }

@g_prov = common dso_local global %struct.TYPE_2__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to create new protocomm instance\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to start console provisioning\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"proto-ver\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"V0.1\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"prov-session\00", align 1
@protocomm_security0 = common dso_local global i32 0, align 4
@protocomm_security1 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"prov-config\00", align 1
@wifi_prov_config_data_handler = common dso_local global i32 0, align 4
@wifi_prov_handlers = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Failed to set provisioning endpoint\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Provisioning started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @app_prov_start_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @app_prov_start_service() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32* (...) @protocomm_new()
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  store i32* %3, i32** %5, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %0
  %11 = load i32, i32* @TAG, align 4
  %12 = call i32 @ESP_LOGE(i32 %11, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @ESP_FAIL, align 8
  store i64 %13, i64* %1, align 8
  br label %74

14:                                               ; preds = %0
  %15 = call i32 (...) @PROTOCOMM_CONSOLE_DEFAULT_CONFIG()
  store i32 %15, i32* %2, align 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = call i64 @protocomm_console_start(i32* %18, i32* %2)
  %20 = load i64, i64* @ESP_OK, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %14
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @ESP_FAIL, align 8
  store i64 %25, i64* %1, align 8
  br label %74

26:                                               ; preds = %14
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @protocomm_set_version(i32* %29, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %26
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @protocomm_set_security(i32* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* @protocomm_security0, i32* null)
  br label %54

40:                                               ; preds = %26
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %53

45:                                               ; preds = %40
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = call i32 @protocomm_set_security(i32* %48, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32* @protocomm_security1, i32* %51)
  br label %53

53:                                               ; preds = %45, %40
  br label %54

54:                                               ; preds = %53, %35
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* @wifi_prov_config_data_handler, align 4
  %59 = call i64 @protocomm_add_endpoint(i32* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %58, i8* bitcast (i32* @wifi_prov_handlers to i8*))
  %60 = load i64, i64* @ESP_OK, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %54
  %63 = load i32, i32* @TAG, align 4
  %64 = call i32 @ESP_LOGE(i32 %63, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @g_prov, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @protocomm_console_stop(i32* %67)
  %69 = load i64, i64* @ESP_FAIL, align 8
  store i64 %69, i64* %1, align 8
  br label %74

70:                                               ; preds = %54
  %71 = load i32, i32* @TAG, align 4
  %72 = call i32 @ESP_LOGI(i32 %71, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0))
  %73 = load i64, i64* @ESP_OK, align 8
  store i64 %73, i64* %1, align 8
  br label %74

74:                                               ; preds = %70, %62, %22, %10
  %75 = load i64, i64* %1, align 8
  ret i64 %75
}

declare dso_local i32* @protocomm_new(...) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @PROTOCOMM_CONSOLE_DEFAULT_CONFIG(...) #1

declare dso_local i64 @protocomm_console_start(i32*, i32*) #1

declare dso_local i32 @protocomm_set_version(i32*, i8*, i8*) #1

declare dso_local i32 @protocomm_set_security(i32*, i8*, i32*, i32*) #1

declare dso_local i64 @protocomm_add_endpoint(i32*, i8*, i32, i8*) #1

declare dso_local i32 @protocomm_console_stop(i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
