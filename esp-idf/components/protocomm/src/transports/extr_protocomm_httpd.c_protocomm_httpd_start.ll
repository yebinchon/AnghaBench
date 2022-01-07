; ModuleID = '/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_protocomm_httpd_start.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/protocomm/src/transports/extr_protocomm_httpd.c_protocomm_httpd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_12__, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@pc_httpd = common dso_local global %struct.TYPE_13__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"HTTP server already running for this protocomm instance\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"HTTP server started for another protocomm instance\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@pc_ext_httpd_handle_provided = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Malloc failed for HTTP server handle\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to start http server: %s\00", align 1
@protocomm_httpd_add_endpoint = common dso_local global i32 0, align 4
@protocomm_httpd_remove_endpoint = common dso_local global i32 0, align 4
@PROTOCOMM_NO_SESSION_ID = common dso_local global i32 0, align 4
@session_id = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @protocomm_httpd_start(%struct.TYPE_13__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %9 = icmp ne %struct.TYPE_13__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %12 = icmp ne %struct.TYPE_14__* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %2
  %14 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %14, i32* %3, align 4
  br label %112

15:                                               ; preds = %10
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pc_httpd, align 8
  %17 = icmp ne %struct.TYPE_13__* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** @pc_httpd, align 8
  %21 = icmp eq %struct.TYPE_13__* %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* @TAG, align 4
  %24 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %23, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  store i32 %25, i32* %3, align 4
  br label %112

26:                                               ; preds = %18
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %29, i32* %3, align 4
  br label %112

30:                                               ; preds = %15
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  store i32 1, i32* @pc_ext_httpd_handle_provided, align 4
  br label %50

48:                                               ; preds = %35
  %49 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %49, i32* %3, align 4
  br label %112

50:                                               ; preds = %41
  br label %102

51:                                               ; preds = %30
  %52 = call i64 @calloc(i32 1, i32 4)
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 2
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %51
  %60 = load i32, i32* @TAG, align 4
  %61 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %60, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %62 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %62, i32* %3, align 4
  br label %112

63:                                               ; preds = %51
  call void (%struct.TYPE_15__*, ...) @HTTPD_DEFAULT_CONFIG(%struct.TYPE_15__* sret %6)
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 3
  store i32 %74, i32* %75, align 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 2
  store i32 %80, i32* %81, align 4
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 0
  store i32 1, i32* %82, align 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %6, i32 0, i32 1
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = call i32 @httpd_start(i32* %87, %struct.TYPE_15__* %6)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @ESP_OK, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %63
  %92 = load i32, i32* @TAG, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @esp_err_to_name(i32 %93)
  %95 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %92, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %94)
  %96 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @free(i64 %98)
  %100 = load i32, i32* %7, align 4
  store i32 %100, i32* %3, align 4
  br label %112

101:                                              ; preds = %63
  br label %102

102:                                              ; preds = %101, %50
  %103 = load i32, i32* @protocomm_httpd_add_endpoint, align 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @protocomm_httpd_remove_endpoint, align 4
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  store i32 %106, i32* %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_13__* %109, %struct.TYPE_13__** @pc_httpd, align 8
  %110 = load i32, i32* @PROTOCOMM_NO_SESSION_ID, align 4
  store i32 %110, i32* @session_id, align 4
  %111 = load i32, i32* @ESP_OK, align 4
  store i32 %111, i32* %3, align 4
  br label %112

112:                                              ; preds = %102, %91, %59, %48, %26, %22, %13
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local void @HTTPD_DEFAULT_CONFIG(%struct.TYPE_15__* sret, ...) #1

declare dso_local i32 @httpd_start(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @esp_err_to_name(i32) #1

declare dso_local i32 @free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
