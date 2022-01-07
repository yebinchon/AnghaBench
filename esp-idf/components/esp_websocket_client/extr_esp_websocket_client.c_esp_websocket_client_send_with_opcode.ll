; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_send_with_opcode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_websocket_client/extr_esp_websocket_client.c_esp_websocket_client_send_with_opcode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i64, i32* }

@ESP_FAIL = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Invalid arguments\00", align 1
@pdPASS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Could not lock ws-client within %d timeout\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Websocket client is not connected\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Invalid transport\00", align 1
@.str.4 = private unnamed_addr constant [59 x i8] c"Network error: esp_transport_write() returned %d, errno=%d\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i8*, i32, i32)* @esp_websocket_client_send_with_opcode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esp_websocket_client_send_with_opcode(%struct.TYPE_4__* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load i32, i32* @ESP_FAIL, align 4
  store i32 %17, i32* %15, align 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %19 = icmp eq %struct.TYPE_4__* %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load i8*, i8** %9, align 8
  %22 = icmp eq i8* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %10, align 4
  %25 = icmp sle i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23, %20, %5
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @ESP_FAIL, align 4
  store i32 %29, i32* %6, align 4
  br label %117

30:                                               ; preds = %23
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i64 @xSemaphoreTakeRecursive(i32 %33, i32 %34)
  %36 = load i64, i64* @pdPASS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %30
  %39 = load i32, i32* @TAG, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ESP_FAIL, align 4
  store i32 %42, i32* %6, align 4
  br label %117

43:                                               ; preds = %30
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %45 = call i32 @esp_websocket_client_is_connected(%struct.TYPE_4__* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* @TAG, align 4
  %49 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %111

50:                                               ; preds = %43
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load i32, i32* @TAG, align 4
  %57 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %111

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %102, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %109

63:                                               ; preds = %59
  %64 = load i32, i32* %12, align 4
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %14, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @memcpy(i64 %76, i8* %80, i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i8*
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @esp_transport_ws_send_raw(i32* %85, i32 %86, i8* %90, i32 %91, i32 %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp sle i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %73
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %15, align 4
  %98 = load i32, i32* @TAG, align 4
  %99 = load i32, i32* %15, align 4
  %100 = load i32, i32* @errno, align 4
  %101 = call i32 (i32, i8*, ...) @ESP_LOGE(i32 %98, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0), i32 %99, i32 %100)
  br label %111

102:                                              ; preds = %73
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, %103
  store i32 %105, i32* %14, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %14, align 4
  %108 = sub nsw i32 %106, %107
  store i32 %108, i32* %12, align 4
  br label %59

109:                                              ; preds = %59
  %110 = load i32, i32* %14, align 4
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %109, %96, %55, %47
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @xSemaphoreGiveRecursive(i32 %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %111, %38, %26
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @ESP_LOGE(i32, i8*, ...) #1

declare dso_local i64 @xSemaphoreTakeRecursive(i32, i32) #1

declare dso_local i32 @esp_websocket_client_is_connected(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i64, i8*, i32) #1

declare dso_local i32 @esp_transport_ws_send_raw(i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @xSemaphoreGiveRecursive(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
