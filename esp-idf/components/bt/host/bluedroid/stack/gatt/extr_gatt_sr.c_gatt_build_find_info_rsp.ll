; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_build_find_info_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_build_find_info_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@GATT_NOT_FOUND = common dso_local global i32 0, align 4
@__const.gatt_build_find_info_rsp.info_pair_len = private unnamed_addr constant [2 x i32] [i32 4, i32 18], align 4
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_ATTR_UUID_TYPE_16 = common dso_local global i64 0, align 8
@GATT_INFO_TYPE_PAIR_16 = common dso_local global i32 0, align 4
@GATT_INFO_TYPE_PAIR_128 = common dso_local global i32 0, align 4
@GATT_ATTR_UUID_TYPE_128 = common dso_local global i64 0, align 8
@LEN_UUID_128 = common dso_local global i32 0, align 4
@GATT_ATTR_UUID_TYPE_32 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"format mismatch\00", align 1
@GATT_NO_RESOURCES = common dso_local global i32 0, align 4
@GATT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_14__*, i64*, i64, i64)* @gatt_build_find_info_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_build_find_info_rsp(%struct.TYPE_10__* %0, %struct.TYPE_14__* %1, i64* %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca [2 x i32], align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i64* %2, i64** %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i32, i32* @GATT_NOT_FOUND, align 4
  store i32 %17, i32* %12, align 4
  %18 = load i64*, i64** %9, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %14, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %15, align 8
  %20 = bitcast [2 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 bitcast ([2 x i32]* @__const.gatt_build_find_info_rsp.info_pair_len to i8*), i64 8, i1 false)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %25, %5
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %214

34:                                               ; preds = %25
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %40, %struct.TYPE_12__** %15, align 8
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i64 1
  %43 = bitcast %struct.TYPE_14__* %42 to i32*
  %44 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  store i32* %51, i32** %13, align 8
  br label %52

52:                                               ; preds = %205, %34
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %54 = icmp ne %struct.TYPE_12__* %53, null
  br i1 %54, label %55, label %210

55:                                               ; preds = %52
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %11, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %210

62:                                               ; preds = %55
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %205

68:                                               ; preds = %62
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i32, i32* @GATT_INFO_TYPE_PAIR_16, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @GATT_INFO_TYPE_PAIR_128, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %83, %68
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = sext i32 %95 to i64
  %97 = icmp sge i64 %88, %96
  br i1 %97, label %98, label %202

98:                                               ; preds = %87
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @GATT_INFO_TYPE_PAIR_16, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %98
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @GATT_ATTR_UUID_TYPE_16, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %121

110:                                              ; preds = %104
  %111 = load i32*, i32** %13, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = call i32 @UINT16_TO_STREAM(i32* %111, i64 %114)
  %116 = load i32*, i32** %13, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @UINT16_TO_STREAM(i32* %116, i64 %119)
  br label %179

121:                                              ; preds = %104, %98
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @GATT_INFO_TYPE_PAIR_128, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %146

127:                                              ; preds = %121
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @GATT_ATTR_UUID_TYPE_128, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %127
  %134 = load i32*, i32** %13, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = call i32 @UINT16_TO_STREAM(i32* %134, i64 %137)
  %139 = load i32*, i32** %13, align 8
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %141 = bitcast %struct.TYPE_12__* %140 to %struct.TYPE_13__*
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @LEN_UUID_128, align 4
  %145 = call i32 @ARRAY_TO_STREAM(i32* %139, i32 %143, i32 %144)
  br label %178

146:                                              ; preds = %127, %121
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @GATT_INFO_TYPE_PAIR_128, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %174

152:                                              ; preds = %146
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @GATT_ATTR_UUID_TYPE_32, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %174

158:                                              ; preds = %152
  %159 = load i32*, i32** %13, align 8
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @UINT16_TO_STREAM(i32* %159, i64 %162)
  %164 = load i32*, i32** %13, align 8
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %166 = bitcast %struct.TYPE_12__* %165 to %struct.TYPE_11__*
  %167 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @gatt_convert_uuid32_to_uuid128(i32* %164, i32 %168)
  %170 = load i32, i32* @LEN_UUID_128, align 4
  %171 = load i32*, i32** %13, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %171, i64 %172
  store i32* %173, i32** %13, align 8
  br label %177

174:                                              ; preds = %152, %146
  %175 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %176 = load i32, i32* @GATT_NO_RESOURCES, align 4
  store i32 %176, i32* %12, align 4
  br label %210

177:                                              ; preds = %158
  br label %178

178:                                              ; preds = %177, %133
  br label %179

179:                                              ; preds = %178, %110
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, %186
  store i32 %190, i32* %188, align 4
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = sub nsw i32 %193, 1
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sext i32 %197 to i64
  %199 = load i64, i64* %14, align 8
  %200 = sub nsw i64 %199, %198
  store i64 %200, i64* %14, align 8
  %201 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %201, i32* %12, align 4
  br label %204

202:                                              ; preds = %87
  %203 = load i32, i32* @GATT_NO_RESOURCES, align 4
  store i32 %203, i32* %12, align 4
  br label %210

204:                                              ; preds = %179
  br label %205

205:                                              ; preds = %204, %62
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 3
  %208 = load i64, i64* %207, align 8
  %209 = inttoptr i64 %208 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %209, %struct.TYPE_12__** %15, align 8
  br label %52

210:                                              ; preds = %202, %174, %61, %52
  %211 = load i64, i64* %14, align 8
  %212 = load i64*, i64** %9, align 8
  store i64 %211, i64* %212, align 8
  %213 = load i32, i32* %12, align 4
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %210, %32
  %215 = load i32, i32* %6, align 4
  ret i32 %215
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @UINT16_TO_STREAM(i32*, i64) #2

declare dso_local i32 @ARRAY_TO_STREAM(i32*, i32, i32) #2

declare dso_local i32 @gatt_convert_uuid32_to_uuid128(i32*, i32) #2

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
