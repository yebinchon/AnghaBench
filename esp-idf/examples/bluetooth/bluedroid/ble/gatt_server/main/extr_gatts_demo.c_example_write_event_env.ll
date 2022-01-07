; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_server/main/extr_gatts_demo.c_example_write_event_env.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/gatt_server/main/extr_gatts_demo.c_example_write_event_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32*, i32, i32, i32 }

@ESP_GATT_OK = common dso_local global i64 0, align 8
@PREPARE_BUF_MAX_SIZE = common dso_local global i32 0, align 4
@GATTS_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Gatt_server prep no mem\0A\00", align 1
@ESP_GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@ESP_GATT_INVALID_OFFSET = common dso_local global i64 0, align 8
@ESP_GATT_INVALID_ATTR_LEN = common dso_local global i64 0, align 8
@ESP_GATT_AUTH_REQ_NONE = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Send response error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @example_write_event_env(i32 %0, %struct.TYPE_12__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %10 = load i64, i64* @ESP_GATT_OK, align 8
  store i64 %10, i64* %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 7
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %179

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %166

22:                                               ; preds = %16
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load i32, i32* @PREPARE_BUF_MAX_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 4
  %31 = trunc i64 %30 to i32
  %32 = call i64 @malloc(i32 %31)
  %33 = inttoptr i64 %32 to i32*
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %46

42:                                               ; preds = %27
  %43 = load i32, i32* @GATTS_TAG, align 4
  %44 = call i32 @ESP_LOGE(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @ESP_GATT_NO_RESOURCES, align 8
  store i64 %45, i64* %7, align 8
  br label %46

46:                                               ; preds = %42, %27
  br label %72

47:                                               ; preds = %22
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PREPARE_BUF_MAX_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i64, i64* @ESP_GATT_INVALID_OFFSET, align 8
  store i64 %55, i64* %7, align 8
  br label %71

56:                                               ; preds = %47
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = add nsw i32 %60, %64
  %66 = load i32, i32* @PREPARE_BUF_MAX_SIZE, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %56
  %69 = load i64, i64* @ESP_GATT_INVALID_ATTR_LEN, align 8
  store i64 %69, i64* %7, align 8
  br label %70

70:                                               ; preds = %68, %56
  br label %71

71:                                               ; preds = %70, %54
  br label %72

72:                                               ; preds = %71, %46
  %73 = call i64 @malloc(i32 32)
  %74 = inttoptr i64 %73 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %74, %struct.TYPE_13__** %8, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 4
  store i32 %78, i32* %81, align 8
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 3
  store i32 %85, i32* %88, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 8
  %96 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %97 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 2
  store i32 %96, i32* %99, align 8
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 4
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @memcpy(i32* %103, i32 %107, i32 %111)
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %124 = call i64 @esp_ble_gatts_send_response(i32 %113, i32 %117, i32 %121, i64 %122, %struct.TYPE_13__* %123)
  store i64 %124, i64* %9, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @ESP_OK, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %72
  %129 = load i32, i32* @GATTS_TAG, align 4
  %130 = call i32 @ESP_LOGE(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %131

131:                                              ; preds = %128, %72
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = call i32 @free(%struct.TYPE_13__* %132)
  %134 = load i64, i64* %7, align 8
  %135 = load i64, i64* @ESP_GATT_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %138

137:                                              ; preds = %131
  br label %179

138:                                              ; preds = %131
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %141, i64 %146
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @memcpy(i32* %147, i32 %151, i32 %155)
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = add nsw i64 %164, %161
  store i64 %165, i64* %163, align 8
  br label %178

166:                                              ; preds = %16
  %167 = load i32, i32* %4, align 4
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 8
  %172 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i64, i64* %7, align 8
  %177 = call i64 @esp_ble_gatts_send_response(i32 %167, i32 %171, i32 %175, i64 %176, %struct.TYPE_13__* null)
  br label %178

178:                                              ; preds = %166, %138
  br label %179

179:                                              ; preds = %137, %178, %3
  ret void
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i64 @esp_ble_gatts_send_response(i32, i32, i32, i64, %struct.TYPE_13__*) #1

declare dso_local i32 @free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
