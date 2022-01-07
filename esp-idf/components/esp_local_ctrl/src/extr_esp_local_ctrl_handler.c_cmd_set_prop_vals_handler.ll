; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_cmd_set_prop_vals_handler.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp_local_ctrl/src/extr_esp_local_ctrl_handler.c_cmd_set_prop_vals_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_21__*, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i64, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }

@RespSetPropertyValues = common dso_local global i32 0, align 4
@resp_payload = common dso_local global %struct.TYPE_21__* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate memory for setting values\00", align 1
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_SET_PROP_VALS = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, %struct.TYPE_20__*, i8**)* @cmd_set_prop_vals_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_set_prop_vals_handler(%struct.TYPE_20__* %0, %struct.TYPE_20__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %12 = load i32, i32* @RespSetPropertyValues, align 4
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** @resp_payload, align 8
  %14 = call i32 @SAFE_ALLOCATION(i32 %12, %struct.TYPE_21__* %13)
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** @resp_payload, align 8
  %16 = call i32 @resp_set_property_values__init(%struct.TYPE_21__* %15)
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 2
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call %struct.TYPE_19__* @calloc(i64 %21, i32 8)
  store %struct.TYPE_19__* %22, %struct.TYPE_19__** %8, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call %struct.TYPE_19__* @calloc(i64 %27, i32 8)
  store %struct.TYPE_19__* %28, %struct.TYPE_19__** %9, align 8
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %30 = icmp ne %struct.TYPE_19__* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %31, %3
  %35 = load i32, i32* @TAG, align 4
  %36 = call i32 @ESP_LOGE(i32 %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %38 = call i32 @free(%struct.TYPE_19__* %37)
  %39 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %40 = call i32 @free(%struct.TYPE_19__* %39)
  %41 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %41, i32* %4, align 4
  br label %123

42:                                               ; preds = %31
  store i64 0, i64* %10, align 8
  br label %43

43:                                               ; preds = %96, %42
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ult i64 %44, %49
  br i1 %50, label %51, label %99

51:                                               ; preds = %43
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i64 %53
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %58, align 8
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %59, i64 %60
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = bitcast %struct.TYPE_19__* %54 to i8*
  %65 = bitcast %struct.TYPE_19__* %63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %64, i8* align 4 %65, i64 8, i1 false)
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %69, align 8
  %71 = load i64, i64* %10, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %70, i64 %71
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %84, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %85, i64 %86
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %94, i32 0, i32 0
  store i32 %91, i32* %95, align 4
  br label %96

96:                                               ; preds = %51
  %97 = load i64, i64* %10, align 8
  %98 = add i64 %97, 1
  store i64 %98, i64* %10, align 8
  br label %43

99:                                               ; preds = %43
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 2
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %107 = call i32 @esp_local_ctrl_set_prop_values(i64 %104, %struct.TYPE_19__* %105, %struct.TYPE_19__* %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @err_to_status(i32 %108)
  %110 = load %struct.TYPE_21__*, %struct.TYPE_21__** @resp_payload, align 8
  %111 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* @LOCAL_CTRL_MESSAGE__PAYLOAD_RESP_SET_PROP_VALS, align 4
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** @resp_payload, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %116, i32 0, i32 0
  store %struct.TYPE_21__* %115, %struct.TYPE_21__** %117, align 8
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %119 = call i32 @free(%struct.TYPE_19__* %118)
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %121 = call i32 @free(%struct.TYPE_19__* %120)
  %122 = load i32, i32* @ESP_OK, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %99, %34
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @SAFE_ALLOCATION(i32, %struct.TYPE_21__*) #1

declare dso_local i32 @resp_set_property_values__init(%struct.TYPE_21__*) #1

declare dso_local %struct.TYPE_19__* @calloc(i64, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*) #1

declare dso_local i32 @free(%struct.TYPE_19__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @esp_local_ctrl_set_prop_values(i64, %struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @err_to_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
