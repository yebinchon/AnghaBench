; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_dis_s_read_attr_value.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/std/dis/extr_dis_profile.c_dis_s_read_attr_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_15__, %struct.TYPE_19__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i64** }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i64, i32 }
%struct.TYPE_16__ = type { i64, i64* }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }

@dis_cb = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ESP_GATT_NOT_FOUND = common dso_local global i32 0, align 4
@DIS_MAX_CHAR_NUM = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@ESP_GATT_NOT_LONG = common dso_local global i32 0, align 4
@GATT_MAX_ATTR_LEN = common dso_local global i64 0, align 8
@ESP_GATT_INVALID_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"GATT_UUID_MANU_NAME len=0x%04x\00", align 1
@DIS_SYSTEM_ID_SIZE = common dso_local global i64 0, align 8
@DIS_PNP_ID_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dis_s_read_attr_value(%struct.TYPE_18__* %0, %struct.TYPE_16__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_17__, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 1), align 8
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %9, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %13, align 8
  %26 = load i32, i32* @ESP_GATT_NOT_FOUND, align 4
  store i32 %26, i32* %14, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %15, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %150, %4
  %36 = load i64, i64* %11, align 8
  %37 = load i64, i64* @DIS_MAX_CHAR_NUM, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %155

39:                                               ; preds = %35
  %40 = load i64, i64* %15, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %40, %43
  br i1 %44, label %45, label %149

45:                                               ; preds = %39
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 131
  br i1 %49, label %55, label %50

50:                                               ; preds = %45
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp eq i32 %53, 128
  br i1 %54, label %55, label %61

55:                                               ; preds = %50, %45
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @ESP_GATT_NOT_LONG, align 4
  store i32 %60, i32* %14, align 4
  br label %155

61:                                               ; preds = %55, %50
  %62 = load i32, i32* @ESP_GATT_NOT_FOUND, align 4
  store i32 %62, i32* %14, align 4
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  switch i32 %65, label %148 [
    i32 133, label %66
    i32 132, label %66
    i32 130, label %66
    i32 136, label %66
    i32 135, label %66
    i32 129, label %66
    i32 134, label %66
    i32 128, label %125
    i32 131, label %132
  ]

66:                                               ; preds = %61, %61, %61, %61, %61, %61, %61
  %67 = load i64**, i64*** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 2), align 8
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 132
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %67, i64 %72
  %74 = load i64*, i64** %73, align 8
  store i64* %74, i64** %12, align 8
  %75 = load i64*, i64** %12, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %66
  %78 = load i64*, i64** %12, align 8
  %79 = bitcast i64* %78 to i8*
  %80 = call i64 @strlen(i8* %79)
  %81 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %82 = icmp sgt i64 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %77
  %84 = load i64, i64* @GATT_MAX_ATTR_LEN, align 8
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  br label %93

87:                                               ; preds = %77
  %88 = load i64*, i64** %12, align 8
  %89 = bitcast i64* %88 to i8*
  %90 = call i64 @strlen(i8* %89)
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %87, %83
  br label %97

94:                                               ; preds = %66
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  store i64 0, i64* %96, align 8
  br label %97

97:                                               ; preds = %94, %93
  %98 = load i64, i64* %13, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load i32, i32* @ESP_GATT_INVALID_OFFSET, align 4
  store i32 %104, i32* %14, align 4
  br label %148

105:                                              ; preds = %97
  %106 = load i64, i64* %13, align 8
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, %106
  store i64 %110, i64* %108, align 8
  %111 = load i64, i64* %13, align 8
  %112 = load i64*, i64** %12, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 %111
  store i64* %113, i64** %12, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = load i64*, i64** %12, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @ARRAY_TO_STREAM(i64* %114, i64* %115, i64 %118)
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @GATT_TRACE_EVENT(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %122)
  br label %124

124:                                              ; preds = %105
  br label %148

125:                                              ; preds = %61
  %126 = load i64*, i64** %10, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 1), align 8
  %128 = call i32 @UINT64_TO_STREAM(i64* %126, i32 %127)
  %129 = load i64, i64* @DIS_SYSTEM_ID_SIZE, align 8
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %148

132:                                              ; preds = %61
  %133 = load i64*, i64** %10, align 8
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 0, i32 3), align 4
  %135 = call i32 @UINT8_TO_STREAM(i64* %133, i32 %134)
  %136 = load i64*, i64** %10, align 8
  %137 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 0, i32 2), align 8
  %138 = call i32 @UINT16_TO_STREAM(i64* %136, i32 %137)
  %139 = load i64*, i64** %10, align 8
  %140 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 0, i32 1), align 4
  %141 = call i32 @UINT16_TO_STREAM(i64* %139, i32 %140)
  %142 = load i64*, i64** %10, align 8
  %143 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @dis_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %144 = call i32 @UINT16_TO_STREAM(i64* %142, i32 %143)
  %145 = load i64, i64* @DIS_PNP_ID_SIZE, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  store i64 %145, i64* %147, align 8
  br label %148

148:                                              ; preds = %61, %132, %125, %124, %103
  br label %155

149:                                              ; preds = %39
  br label %150

150:                                              ; preds = %149
  %151 = load i64, i64* %11, align 8
  %152 = add nsw i64 %151, 1
  store i64 %152, i64* %11, align 8
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 1
  store %struct.TYPE_19__* %154, %struct.TYPE_19__** %9, align 8
  br label %35

155:                                              ; preds = %148, %59, %35
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %158 = bitcast %struct.TYPE_16__* %156 to i8*
  %159 = bitcast %struct.TYPE_16__* %157 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %158, i8* align 8 %159, i64 16, i1 false)
  %160 = load i64, i64* %8, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %14, align 4
  %163 = call i32 @esp_ble_gatts_send_rsp(i64 %160, i32 %161, i32 %162, %struct.TYPE_17__* %17)
  ret void
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @ARRAY_TO_STREAM(i64*, i64*, i64) #1

declare dso_local i32 @GATT_TRACE_EVENT(i8*, i64) #1

declare dso_local i32 @UINT64_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT8_TO_STREAM(i64*, i32) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @esp_ble_gatts_send_rsp(i64, i32, i32, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
