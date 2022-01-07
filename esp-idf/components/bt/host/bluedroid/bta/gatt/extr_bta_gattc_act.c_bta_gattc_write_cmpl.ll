; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_write_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_write_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_27__*, i32, %struct.TYPE_25__*, i32 }
%struct.TYPE_27__ = type { i32 (i32, %struct.TYPE_20__*)* }
%struct.TYPE_20__ = type { %struct.TYPE_26__, i32 }
%struct.TYPE_26__ = type { i64, i64, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64, i32, i32, %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64, i32, i32 }
%struct.TYPE_29__ = type { i64, i32 }

@BTA_GATTC_API_WRITE_EVT = common dso_local global i64 0, align 8
@BTA_GATTC_WRITE_PREPARE = common dso_local global i64 0, align 8
@BTA_GATT_INVALID_PDU = common dso_local global i64 0, align 8
@BTA_GATTC_PREP_WRITE_EVT = common dso_local global i32 0, align 4
@BTA_GATT_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"service change write ccc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_write_cmpl(%struct.TYPE_19__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_28__*, align 8
  %5 = alloca %struct.TYPE_20__, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_29__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %4, align 8
  %8 = bitcast %struct.TYPE_20__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.TYPE_29__* @bta_gattc_conn_find(i32 %11)
  store %struct.TYPE_29__* %12, %struct.TYPE_29__** %7, align 8
  %13 = call i32 @memset(%struct.TYPE_20__* %5, i32 0, i32 32)
  %14 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  %19 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @BTA_GATTC_API_WRITE_EVT, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %72

36:                                               ; preds = %2
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %37, i32 0, i32 2
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @BTA_GATTC_WRITE_PREPARE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %36
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_23__*, %struct.TYPE_23__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_28__*, %struct.TYPE_28__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_23__*, %struct.TYPE_23__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @memcmp(i32 %51, i32 %57, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %45
  %67 = load i64, i64* @BTA_GATT_INVALID_PDU, align 8
  %68 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %45
  %71 = load i32, i32* @BTA_GATTC_PREP_WRITE_EVT, align 4
  store i32 %71, i32* %6, align 4
  br label %79

72:                                               ; preds = %36, %2
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  store i32 %78, i32* %6, align 4
  br label %79

79:                                               ; preds = %72, %70
  %80 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %81 = call i32 @bta_gattc_free_command_data(%struct.TYPE_19__* %80)
  %82 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %83 = call i32 @bta_gattc_pop_command_to_send(%struct.TYPE_19__* %82)
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %90 = icmp ne %struct.TYPE_29__* %89, null
  br i1 %90, label %91, label %111

91:                                               ; preds = %79
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %94, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @BTA_GATT_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %110

105:                                              ; preds = %99
  %106 = load i32, i32* @FALSE, align 4
  %107 = load %struct.TYPE_29__*, %struct.TYPE_29__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 8
  %109 = call i32 @APPL_TRACE_ERROR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %105, %99
  br label %119

111:                                              ; preds = %91, %79
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 0
  %116 = load i32 (i32, %struct.TYPE_20__*)*, i32 (i32, %struct.TYPE_20__*)** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 %116(i32 %117, %struct.TYPE_20__* %5)
  br label %119

119:                                              ; preds = %111, %110
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_29__* @bta_gattc_conn_find(i32) #2

declare dso_local i32 @memset(%struct.TYPE_20__*, i32, i32) #2

declare dso_local i64 @memcmp(i32, i32, i32) #2

declare dso_local i32 @bta_gattc_free_command_data(%struct.TYPE_19__*) #2

declare dso_local i32 @bta_gattc_pop_command_to_send(%struct.TYPE_19__*) #2

declare dso_local i32 @APPL_TRACE_ERROR(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
