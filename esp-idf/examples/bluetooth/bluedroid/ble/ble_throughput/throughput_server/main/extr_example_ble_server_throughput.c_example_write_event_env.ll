; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_throughput/throughput_server/main/extr_example_ble_server_throughput.c_example_write_event_env.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/bluetooth/bluedroid/ble/ble_throughput/throughput_server/main/extr_example_ble_server_throughput.c_example_write_event_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32*, i32, i32 }

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
  br i1 %15, label %16, label %187

16:                                               ; preds = %3
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %174

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
  store i32 0, i32* %37, align 8
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
  br label %81

47:                                               ; preds = %22
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @PREPARE_BUF_MAX_SIZE, align 4
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %63, label %54

54:                                               ; preds = %47
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sgt i32 %57, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %54, %47
  %64 = load i64, i64* @ESP_GATT_INVALID_OFFSET, align 8
  store i64 %64, i64* %7, align 8
  br label %80

65:                                               ; preds = %54
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %69, %73
  %75 = load i32, i32* @PREPARE_BUF_MAX_SIZE, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %65
  %78 = load i64, i64* @ESP_GATT_INVALID_ATTR_LEN, align 8
  store i64 %78, i64* %7, align 8
  br label %79

79:                                               ; preds = %77, %65
  br label %80

80:                                               ; preds = %79, %63
  br label %81

81:                                               ; preds = %80, %46
  %82 = call i64 @malloc(i32 24)
  %83 = inttoptr i64 %82 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %83, %struct.TYPE_13__** %8, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 4
  store i32 %94, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @ESP_GATT_AUTH_REQ_NONE, align 4
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 8
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy(i32* %112, i32 %116, i32 %120)
  %122 = load i32, i32* %4, align 4
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %133 = call i64 @esp_ble_gatts_send_response(i32 %122, i32 %126, i32 %130, i64 %131, %struct.TYPE_13__* %132)
  store i64 %133, i64* %9, align 8
  %134 = load i64, i64* %9, align 8
  %135 = load i64, i64* @ESP_OK, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %81
  %138 = load i32, i32* @GATTS_TAG, align 4
  %139 = call i32 @ESP_LOGE(i32 %138, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %140

140:                                              ; preds = %137, %81
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %142 = call i32 @free(%struct.TYPE_13__* %141)
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @ESP_GATT_OK, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  br label %187

147:                                              ; preds = %140
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %150, i64 %155
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @memcpy(i32* %156, i32 %160, i32 %164)
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, %169
  store i32 %173, i32* %171, align 8
  br label %186

174:                                              ; preds = %16
  %175 = load i32, i32* %4, align 4
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load i64, i64* %7, align 8
  %185 = call i64 @esp_ble_gatts_send_response(i32 %175, i32 %179, i32 %183, i64 %184, %struct.TYPE_13__* null)
  br label %186

186:                                              ; preds = %174, %147
  br label %187

187:                                              ; preds = %146, %186, %3
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
