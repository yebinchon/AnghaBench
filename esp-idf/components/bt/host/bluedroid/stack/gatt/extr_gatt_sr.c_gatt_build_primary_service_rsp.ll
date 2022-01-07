; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_build_primary_service_rsp.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatt_build_primary_service_rsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { %struct.TYPE_20__*, %struct.TYPE_20__*, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { %struct.TYPE_20__*, i32 }
%struct.TYPE_22__ = type { i64, i64 }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, i64 }

@GATT_NOT_FOUND = common dso_local global i32 0, align 4
@gatt_cb = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_UUID_PRI_SERVICE = common dso_local global i64 0, align 8
@GATT_REQ_READ_BY_GRP_TYPE = common dso_local global i64 0, align 8
@GATT_REQ_FIND_TYPE_VALUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Use 0xFFFF for the last primary attribute\00", align 1
@GATT_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, %struct.TYPE_17__*, i64, i64, i64, i64*, i64)* @gatt_build_primary_service_rsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gatt_build_primary_service_rsp(%struct.TYPE_22__* %0, %struct.TYPE_17__* %1, i64 %2, i64 %3, i64 %4, i64* %5, i64 %6) #0 {
  %8 = alloca %struct.TYPE_21__, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca %struct.TYPE_20__*, align 8
  %21 = alloca %struct.TYPE_21__*, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  store i64 %6, i64* %22, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %9, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64* %5, i64** %14, align 8
  %23 = load i32, i32* @GATT_NOT_FOUND, align 4
  store i32 %23, i32* %15, align 4
  store i64 4, i64* %16, align 8
  store %struct.TYPE_19__* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @gatt_cb, i32 0, i32 0), %struct.TYPE_19__** %19, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %20, align 8
  %24 = load i64*, i64** %14, align 8
  %25 = call i32 @UNUSED(i64* %24)
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i64 1
  %28 = bitcast %struct.TYPE_22__* %27 to i64*
  %29 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  store i64* %31, i64** %17, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %33, align 8
  store %struct.TYPE_20__* %34, %struct.TYPE_20__** %20, align 8
  br label %35

35:                                               ; preds = %193, %7
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %37 = icmp ne %struct.TYPE_20__* %36, null
  br i1 %37, label %38, label %197

38:                                               ; preds = %35
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.TYPE_18__* @GATT_GET_SR_REG_PTR(i32 %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %18, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %193

47:                                               ; preds = %38
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %193

53:                                               ; preds = %47
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %13, align 8
  %58 = icmp sle i64 %56, %57
  br i1 %58, label %59, label %193

59:                                               ; preds = %53
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @GATT_UUID_PRI_SERVICE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %193

65:                                               ; preds = %59
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_21__* @gatts_get_service_uuid(i32 %68)
  store %struct.TYPE_21__* %69, %struct.TYPE_21__** %21, align 8
  %70 = icmp ne %struct.TYPE_21__* %69, null
  br i1 %70, label %71, label %192

71:                                               ; preds = %65
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @GATT_REQ_READ_BY_GRP_TYPE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %77 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 4, %78
  store i64 %79, i64* %16, align 8
  br label %80

80:                                               ; preds = %75, %71
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %111

85:                                               ; preds = %80
  %86 = load i64, i64* %11, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i64*, i64** %17, align 8
  %89 = getelementptr inbounds i64, i64* %88, i32 1
  store i64* %89, i64** %17, align 8
  store i64 %87, i64* %88, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = add nsw i64 %92, 1
  store i64 %93, i64* %91, align 8
  %94 = load i64, i64* %16, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* %11, align 8
  %98 = load i64, i64* @GATT_REQ_READ_BY_GRP_TYPE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %110

100:                                              ; preds = %85
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %17, align 8
  %105 = getelementptr inbounds i64, i64* %104, i32 1
  store i64* %105, i64** %17, align 8
  store i64 %103, i64* %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %107, align 8
  br label %110

110:                                              ; preds = %100, %85
  br label %111

111:                                              ; preds = %110, %80
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = add nsw i64 %114, %117
  %119 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp sle i64 %118, %121
  br i1 %122, label %123, label %190

123:                                              ; preds = %111
  %124 = load i64, i64* %16, align 8
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %124, %127
  br i1 %128, label %129, label %190

129:                                              ; preds = %123
  %130 = load i64, i64* %11, align 8
  %131 = load i64, i64* @GATT_REQ_FIND_TYPE_VALUE, align 8
  %132 = icmp ne i64 %130, %131
  br i1 %132, label %141, label %133

133:                                              ; preds = %129
  %134 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %135 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %8, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %134, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @gatt_uuid_compare(i64 %136, i64 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %189

141:                                              ; preds = %133, %129
  %142 = load i64*, i64** %17, align 8
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @UINT16_TO_STREAM(i64* %142, i32 %146)
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %152 = icmp eq %struct.TYPE_20__* %150, %151
  br i1 %152, label %153, label %165

153:                                              ; preds = %141
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 1
  %156 = load %struct.TYPE_20__*, %struct.TYPE_20__** %155, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = icmp eq %struct.TYPE_20__* %156, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %163 = load i64*, i64** %17, align 8
  %164 = call i32 @UINT16_TO_STREAM(i64* %163, i32 65535)
  br label %171

165:                                              ; preds = %153, %141
  %166 = load i64*, i64** %17, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @UINT16_TO_STREAM(i64* %166, i32 %169)
  br label %171

171:                                              ; preds = %165, %161
  %172 = load i64, i64* %11, align 8
  %173 = load i64, i64* @GATT_REQ_READ_BY_GRP_TYPE, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %171
  %176 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  %177 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @gatt_build_uuid_to_stream(i64** %17, i64 %178)
  br label %180

180:                                              ; preds = %175, %171
  %181 = load i32, i32* @GATT_SUCCESS, align 4
  store i32 %181, i32* %15, align 4
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %187, %184
  store i64 %188, i64* %186, align 8
  br label %189

189:                                              ; preds = %180, %133
  br label %191

190:                                              ; preds = %123, %111
  br label %197

191:                                              ; preds = %189
  br label %192

192:                                              ; preds = %191, %65
  br label %193

193:                                              ; preds = %192, %59, %53, %47, %38
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %20, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 0
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %195, align 8
  store %struct.TYPE_20__* %196, %struct.TYPE_20__** %20, align 8
  br label %35

197:                                              ; preds = %190, %35
  %198 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %199 = sext i32 %198 to i64
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  store i64 %199, i64* %201, align 8
  %202 = load i32, i32* %15, align 4
  ret i32 %202
}

declare dso_local i32 @UNUSED(i64*) #1

declare dso_local %struct.TYPE_18__* @GATT_GET_SR_REG_PTR(i32) #1

declare dso_local %struct.TYPE_21__* @gatts_get_service_uuid(i32) #1

declare dso_local i64 @gatt_uuid_compare(i64, i64) #1

declare dso_local i32 @UINT16_TO_STREAM(i64*, i32) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*) #1

declare dso_local i32 @gatt_build_uuid_to_stream(i64**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
