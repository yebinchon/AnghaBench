; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_add.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c_mdns_service_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32*, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }

@_mdns_server = common dso_local global %struct.TYPE_12__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@ACTION_SERVICE_ADD = common dso_local global i32 0, align 4
@pdPASS = common dso_local global i64 0, align 8
@MDNS_SERVICE_ADD_TIMEOUT_MS = common dso_local global i32 0, align 4
@ESP_FAIL = common dso_local global i32 0, align 4
@portTICK_RATE_MS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdns_service_add(i8* %0, i8* %1, i8* %2, i32 %3, i32* %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_11__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i8* %0, i8** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i64 %5, i64* %13, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_mdns_server, align 8
  %21 = icmp ne %struct.TYPE_12__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %6
  %23 = load i8*, i8** %9, align 8
  %24 = call i64 @_str_null_or_empty(i8* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i8*, i8** %10, align 8
  %28 = call i64 @_str_null_or_empty(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %30, %26, %22, %6
  %34 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %34, i32* %7, align 4
  br label %138

35:                                               ; preds = %30
  %36 = call i32 (...) @_mdns_can_add_more_services()
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %39, i32* %7, align 4
  br label %138

40:                                               ; preds = %35
  %41 = load i8*, i8** %9, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = call %struct.TYPE_11__* @_mdns_get_service_item(i8* %41, i8* %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %14, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %47, i32* %7, align 4
  br label %138

48:                                               ; preds = %40
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %13, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i32* @_mdns_create_service(i8* %49, i8* %50, i32 %51, i8* %52, i64 %53, i32* %54)
  store i32* %55, i32** %15, align 8
  %56 = load i32*, i32** %15, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %48
  %59 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %59, i32* %7, align 4
  br label %138

60:                                               ; preds = %48
  %61 = call i64 @malloc(i32 32)
  %62 = inttoptr i64 %61 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %14, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %64 = icmp ne %struct.TYPE_11__* %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %60
  %66 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @_mdns_free_service(i32* %67)
  %69 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %69, i32* %7, align 4
  br label %138

70:                                               ; preds = %60
  %71 = load i32*, i32** %15, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 3
  store i32* %71, i32** %73, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 2
  store i32* null, i32** %75, align 8
  %76 = call i64 @malloc(i32 32)
  %77 = inttoptr i64 %76 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %16, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %79 = icmp ne %struct.TYPE_11__* %78, null
  br i1 %79, label %87, label %80

80:                                               ; preds = %70
  %81 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  %82 = load i32*, i32** %15, align 8
  %83 = call i32 @_mdns_free_service(i32* %82)
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %85 = call i32 @free(%struct.TYPE_11__* %84)
  %86 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %86, i32* %7, align 4
  br label %138

87:                                               ; preds = %70
  %88 = load i32, i32* @ACTION_SERVICE_ADD, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store %struct.TYPE_11__* %91, %struct.TYPE_11__** %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** @_mdns_server, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @xQueueSend(i32 %98, %struct.TYPE_11__** %16, i32 0)
  %100 = load i64, i64* @pdPASS, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %87
  %103 = load i32*, i32** %15, align 8
  %104 = call i32 @_mdns_free_service(i32* %103)
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %106 = call i32 @free(%struct.TYPE_11__* %105)
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %108 = call i32 @free(%struct.TYPE_11__* %107)
  %109 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %109, i32* %7, align 4
  br label %138

110:                                              ; preds = %87
  %111 = call i64 (...) @xTaskGetTickCount()
  store i64 %111, i64* %17, align 8
  %112 = load i32, i32* @MDNS_SERVICE_ADD_TIMEOUT_MS, align 4
  %113 = call i64 @pdMS_TO_TICKS(i32 %112)
  store i64 %113, i64* %18, align 8
  br label %114

114:                                              ; preds = %128, %110
  %115 = load i8*, i8** %9, align 8
  %116 = load i8*, i8** %10, align 8
  %117 = call %struct.TYPE_11__* @_mdns_get_service_item(i8* %115, i8* %116)
  %118 = icmp eq %struct.TYPE_11__* %117, null
  br i1 %118, label %119, label %136

119:                                              ; preds = %114
  %120 = call i64 (...) @xTaskGetTickCount()
  %121 = load i64, i64* %17, align 8
  %122 = sub i64 %120, %121
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* %18, align 8
  %125 = icmp uge i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @ESP_FAIL, align 4
  store i32 %127, i32* %7, align 4
  br label %138

128:                                              ; preds = %119
  %129 = load i32, i32* @portTICK_RATE_MS, align 4
  %130 = sdiv i32 10, %129
  %131 = load i64, i64* %18, align 8
  %132 = load i64, i64* %19, align 8
  %133 = sub i64 %131, %132
  %134 = call i32 @MIN(i32 %130, i64 %133)
  %135 = call i32 @vTaskDelay(i32 %134)
  br label %114

136:                                              ; preds = %114
  %137 = load i32, i32* @ESP_OK, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %136, %126, %102, %80, %65, %58, %46, %38, %33
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i64 @_str_null_or_empty(i8*) #1

declare dso_local i32 @_mdns_can_add_more_services(...) #1

declare dso_local %struct.TYPE_11__* @_mdns_get_service_item(i8*, i8*) #1

declare dso_local i32* @_mdns_create_service(i8*, i8*, i32, i8*, i64, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @_mdns_free_service(i32*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i64 @xQueueSend(i32, %struct.TYPE_11__**, i32) #1

declare dso_local i64 @xTaskGetTickCount(...) #1

declare dso_local i64 @pdMS_TO_TICKS(i32) #1

declare dso_local i32 @vTaskDelay(i32) #1

declare dso_local i32 @MIN(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
