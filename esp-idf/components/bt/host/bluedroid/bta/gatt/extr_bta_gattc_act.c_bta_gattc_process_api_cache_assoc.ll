; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_process_api_cache_assoc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_process_api_cache_assoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32, i64, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_16__ = type { i32 (i32, %struct.TYPE_19__*)* }

@FALSE = common dso_local global i32 0, align 4
@BTA_TRANSPORT_LE = common dso_local global i32 0, align 4
@BTA_GATTC_CONN_ST = common dso_local global i64 0, align 8
@BTA_GATTC_DISCOVER_ST = common dso_local global i64 0, align 8
@BTA_GATT_BUSY = common dso_local global i8* null, align 8
@BTA_GATTC_ASSOC_EVT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@BTA_GATT_OK = common dso_local global i8* null, align 8
@BTA_GATT_ERROR = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_process_api_cache_assoc(i32* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %4, align 8
  %9 = bitcast %struct.TYPE_19__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @FALSE, align 4
  store i32 %16, i32* %6, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @BTA_TRANSPORT_LE, align 4
  %26 = call %struct.TYPE_18__* @bta_gattc_find_clcb_by_cif(i32 %20, i32 %24, i32 %25)
  store %struct.TYPE_18__* %26, %struct.TYPE_18__** %7, align 8
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call %struct.TYPE_16__* @bta_gattc_cl_get_regcb(i32 %30)
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %8, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %34, label %60

34:                                               ; preds = %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @BTA_GATTC_CONN_ST, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %46, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @BTA_GATTC_DISCOVER_ST, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %59

46:                                               ; preds = %40, %34
  %47 = load i8*, i8** @BTA_GATT_BUSY, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %51 = icmp ne %struct.TYPE_16__* %50, null
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 0
  %55 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %54, align 8
  %56 = load i32, i32* @BTA_GATTC_ASSOC_EVT, align 4
  %57 = call i32 %55(i32 %56, %struct.TYPE_19__* %5)
  br label %136

58:                                               ; preds = %46
  br label %59

59:                                               ; preds = %58, %40
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %96

66:                                               ; preds = %60
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @bta_gattc_co_cache_append_assoc_addr(i32 %70, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* @TRUE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %66
  %79 = load i8*, i8** @BTA_GATT_OK, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  br label %95

82:                                               ; preds = %66
  %83 = load i8*, i8** @BTA_GATT_ERROR, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %87 = icmp ne %struct.TYPE_16__* %86, null
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %90, align 8
  %92 = load i32, i32* @BTA_GATTC_ASSOC_EVT, align 4
  %93 = call i32 %91(i32 %92, %struct.TYPE_19__* %5)
  br label %136

94:                                               ; preds = %82
  br label %95

95:                                               ; preds = %94, %78
  br label %126

96:                                               ; preds = %60
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @bta_gattc_co_cache_remove_assoc_addr(i32 %100, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* @TRUE, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %96
  %109 = load i8*, i8** @BTA_GATT_OK, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  store i8* %109, i8** %111, align 8
  br label %125

112:                                              ; preds = %96
  %113 = load i8*, i8** @BTA_GATT_ERROR, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %5, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  store i8* %113, i8** %115, align 8
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %117 = icmp ne %struct.TYPE_16__* %116, null
  br i1 %117, label %118, label %124

118:                                              ; preds = %112
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %120, align 8
  %122 = load i32, i32* @BTA_GATTC_ASSOC_EVT, align 4
  %123 = call i32 %121(i32 %122, %struct.TYPE_19__* %5)
  br label %136

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %124, %108
  br label %126

126:                                              ; preds = %125, %95
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %128 = icmp ne %struct.TYPE_16__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 0
  %132 = load i32 (i32, %struct.TYPE_19__*)*, i32 (i32, %struct.TYPE_19__*)** %131, align 8
  %133 = load i32, i32* @BTA_GATTC_ASSOC_EVT, align 4
  %134 = call i32 %132(i32 %133, %struct.TYPE_19__* %5)
  br label %135

135:                                              ; preds = %129, %126
  br label %136

136:                                              ; preds = %135, %118, %88, %52
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @bta_gattc_find_clcb_by_cif(i32, i32, i32) #2

declare dso_local %struct.TYPE_16__* @bta_gattc_cl_get_regcb(i32) #2

declare dso_local i32 @bta_gattc_co_cache_append_assoc_addr(i32, i32) #2

declare dso_local i32 @bta_gattc_co_cache_remove_assoc_addr(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
