; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_primary_service_req.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_primary_service_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_15__, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@GATT_INVALID_PDU = common dso_local global i64 0, align 8
@LEN_UUID_16 = common dso_local global i32 0, align 4
@GATT_UUID_PRI_SERVICE = common dso_local global i32 0, align 4
@L2CAP_MIN_OFFSET = common dso_local global i64 0, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8
@GATT_REQ_FIND_TYPE_VALUE = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [56 x i8] c"gatts_process_primary_service_req failed. no resources.\00", align 1
@GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_REQ_READ_BY_GRP_TYPE = common dso_local global i64 0, align 8
@GATT_UNSUPPORT_GRP_TYPE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"unexpected ReadByGrpType Group: 0x%04x\00", align 1
@GATT_NOT_FOUND = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"unexpected ReadByTypeValue type: 0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gatts_process_primary_service_req(%struct.TYPE_17__* %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 8
  %14 = alloca %struct.TYPE_18__, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca { i64, i32 }, align 4
  %18 = alloca { i64, i32 }, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i64* %3, i64** %8, align 8
  %19 = load i64, i64* @GATT_INVALID_PDU, align 8
  store i64 %19, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 0
  %22 = load i32, i32* @LEN_UUID_16, align 4
  store i32 %22, i32* %21, align 4
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = load i32, i32* @GATT_UUID_PRI_SERVICE, align 4
  store i32 %25, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  store i32 0, i32* %26, align 4
  store i32* null, i32** %15, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 4, %29
  %31 = load i64, i64* @L2CAP_MIN_OFFSET, align 8
  %32 = add i64 %30, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %16, align 4
  %34 = call i32 @memset(%struct.TYPE_18__* %13, i32 0, i32 12)
  %35 = load i64, i64* %6, align 8
  %36 = call i64 @gatts_validate_packet_format(i64 %35, i32* %7, i64** %8, %struct.TYPE_18__* %12, i32* %10, i32* %11)
  store i64 %36, i64* %9, align 8
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @GATT_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %107

40:                                               ; preds = %4
  %41 = bitcast { i64, i32 }* %17 to i8*
  %42 = bitcast %struct.TYPE_18__* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %41, i8* align 4 %42, i64 12, i1 false)
  %43 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 0
  %44 = load i64, i64* %43, align 4
  %45 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %17, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = bitcast { i64, i32 }* %18 to i8*
  %48 = bitcast %struct.TYPE_18__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 4 %48, i64 12, i1 false)
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 0
  %50 = load i64, i64* %49, align 4
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %18, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @gatt_uuid_compare(i64 %44, i32 %46, i64 %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %89

55:                                               ; preds = %40
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* @GATT_REQ_FIND_TYPE_VALUE, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = call i64 @gatt_parse_uuid_from_cmd(%struct.TYPE_18__* %13, i32 %60, i64** %8)
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %59
  %65 = load i64, i64* @GATT_INVALID_PDU, align 8
  store i64 %65, i64* %9, align 8
  br label %66

66:                                               ; preds = %64, %59
  br label %67

67:                                               ; preds = %66, %55
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @GATT_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %67
  %72 = load i32, i32* %16, align 4
  %73 = call i64 @osi_calloc(i32 %72)
  %74 = inttoptr i64 %73 to i32*
  store i32* %74, i32** %15, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %71
  %77 = call i32 @GATT_TRACE_ERROR(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %78 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %78, i64* %9, align 8
  br label %87

79:                                               ; preds = %71
  %80 = load i32*, i32** %15, align 8
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* %11, align 4
  %85 = load i64*, i64** %8, align 8
  %86 = call i64 @gatt_build_primary_service_rsp(i32* %80, %struct.TYPE_17__* %81, i64 %82, i32 %83, i32 %84, i64* %85, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8 %13)
  store i64 %86, i64* %9, align 8
  br label %87

87:                                               ; preds = %79, %76
  br label %88

88:                                               ; preds = %87, %67
  br label %106

89:                                               ; preds = %40
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @GATT_REQ_READ_BY_GRP_TYPE, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %89
  %94 = load i64, i64* @GATT_UNSUPPORT_GRP_TYPE, align 8
  store i64 %94, i64* %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %97)
  br label %105

99:                                               ; preds = %89
  %100 = load i64, i64* @GATT_NOT_FOUND, align 8
  store i64 %100, i64* %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @GATT_TRACE_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  br label %105

105:                                              ; preds = %99, %93
  br label %106

106:                                              ; preds = %105, %88
  br label %107

107:                                              ; preds = %106, %4
  %108 = load i64, i64* %9, align 8
  %109 = load i64, i64* @GATT_SUCCESS, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i32*, i32** %15, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32*, i32** %15, align 8
  %116 = call i32 @osi_free(i32* %115)
  br label %117

117:                                              ; preds = %114, %111
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %119 = load i64, i64* %9, align 8
  %120 = load i64, i64* %6, align 8
  %121 = load i32, i32* %10, align 4
  %122 = load i64, i64* @FALSE, align 8
  %123 = call i32 @gatt_send_error_rsp(%struct.TYPE_17__* %118, i64 %119, i64 %120, i32 %121, i64 %122)
  br label %128

124:                                              ; preds = %107
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %126 = load i32*, i32** %15, align 8
  %127 = call i32 @attp_send_sr_msg(%struct.TYPE_17__* %125, i32* %126)
  br label %128

128:                                              ; preds = %124, %117
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i64 @gatts_validate_packet_format(i64, i32*, i64**, %struct.TYPE_18__*, i32*, i32*) #1

declare dso_local i64 @gatt_uuid_compare(i64, i32, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @gatt_parse_uuid_from_cmd(%struct.TYPE_18__*, i32, i64**) #1

declare dso_local i64 @osi_calloc(i32) #1

declare dso_local i32 @GATT_TRACE_ERROR(i8*) #1

declare dso_local i64 @gatt_build_primary_service_rsp(i32*, %struct.TYPE_17__*, i64, i32, i32, i64*, %struct.TYPE_18__* byval(%struct.TYPE_18__) align 8) #1

declare dso_local i32 @GATT_TRACE_DEBUG(i8*, i32) #1

declare dso_local i32 @osi_free(i32*) #1

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_17__*, i64, i64, i32, i64) #1

declare dso_local i32 @attp_send_sr_msg(%struct.TYPE_17__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
