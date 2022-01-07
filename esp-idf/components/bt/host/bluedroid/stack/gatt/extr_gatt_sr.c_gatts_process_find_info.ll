; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_find_info.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/gatt/extr_gatt_sr.c_gatts_process_find_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.TYPE_18__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i64, i64 }

@GATT_INVALID_PDU = common dso_local global i64 0, align 8
@gatt_cb = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@GATT_SUCCESS = common dso_local global i64 0, align 8
@L2CAP_MIN_OFFSET = common dso_local global i32 0, align 4
@GATT_NO_RESOURCES = common dso_local global i64 0, align 8
@GATT_NOT_FOUND = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i64, i64*)* @gatts_process_find_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gatts_process_find_info(%struct.TYPE_15__* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_16__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %18 = load i64, i64* @GATT_INVALID_PDU, align 8
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  store %struct.TYPE_17__* getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @gatt_cb, i32 0, i32 0), %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @gatts_validate_packet_format(i64 %19, i64* %7, i64** %8, i32* null, i64* %11, i64* %12)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @GATT_SUCCESS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %111

24:                                               ; preds = %4
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 8, %28
  %30 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %31 = sext i32 %30 to i64
  %32 = add i64 %29, %31
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = call i64 @osi_calloc(i64 %33)
  %35 = inttoptr i64 %34 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %35, %struct.TYPE_19__** %14, align 8
  %36 = icmp eq %struct.TYPE_19__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i64, i64* @GATT_NO_RESOURCES, align 8
  store i64 %38, i64* %9, align 8
  br label %110

39:                                               ; preds = %24
  %40 = load i64, i64* @GATT_NOT_FOUND, align 8
  store i64 %40, i64* %9, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i64 1
  %43 = bitcast %struct.TYPE_19__* %42 to i64*
  %44 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  store i64* %46, i64** %10, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %47, 1
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  store i64 %48, i64* %49, align 8
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 0
  store i32 2, i32* %52, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 2
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %13, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %59, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %17, align 8
  br label %61

61:                                               ; preds = %97, %39
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %63 = icmp ne %struct.TYPE_18__* %62, null
  br i1 %63, label %64, label %101

64:                                               ; preds = %61
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.TYPE_16__* @GATT_GET_SR_REG_PTR(i32 %67)
  store %struct.TYPE_16__* %68, %struct.TYPE_16__** %15, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %97

73:                                               ; preds = %64
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %12, align 8
  %78 = icmp sgt i64 %76, %77
  br i1 %78, label %97, label %79

79:                                               ; preds = %73
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp slt i64 %82, %83
  br i1 %84, label %97, label %85

85:                                               ; preds = %79
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  %87 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i64 @gatt_build_find_info_rsp(%struct.TYPE_16__* %86, %struct.TYPE_19__* %87, i64* %13, i64 %88, i64 %89)
  store i64 %90, i64* %9, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @GATT_NO_RESOURCES, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %85
  %95 = load i64, i64* @GATT_SUCCESS, align 8
  store i64 %95, i64* %9, align 8
  br label %101

96:                                               ; preds = %85
  br label %97

97:                                               ; preds = %96, %79, %73, %64
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  store %struct.TYPE_18__* %100, %struct.TYPE_18__** %17, align 8
  br label %61

101:                                              ; preds = %94, %61
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64*, i64** %10, align 8
  store i64 %105, i64* %106, align 8
  %107 = load i32, i32* @L2CAP_MIN_OFFSET, align 4
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %101, %37
  br label %111

111:                                              ; preds = %110, %4
  %112 = load i64, i64* %9, align 8
  %113 = load i64, i64* @GATT_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %111
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %117 = icmp ne %struct.TYPE_19__* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %120 = call i32 @osi_free(%struct.TYPE_19__* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %123 = load i64, i64* %9, align 8
  %124 = load i64, i64* %6, align 8
  %125 = load i64, i64* %11, align 8
  %126 = load i32, i32* @FALSE, align 4
  %127 = call i32 @gatt_send_error_rsp(%struct.TYPE_15__* %122, i64 %123, i64 %124, i64 %125, i32 %126)
  br label %132

128:                                              ; preds = %111
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %131 = call i32 @attp_send_sr_msg(%struct.TYPE_15__* %129, %struct.TYPE_19__* %130)
  br label %132

132:                                              ; preds = %128, %121
  ret void
}

declare dso_local i64 @gatts_validate_packet_format(i64, i64*, i64**, i32*, i64*, i64*) #1

declare dso_local i64 @osi_calloc(i64) #1

declare dso_local %struct.TYPE_16__* @GATT_GET_SR_REG_PTR(i32) #1

declare dso_local i64 @gatt_build_find_info_rsp(%struct.TYPE_16__*, %struct.TYPE_19__*, i64*, i64, i64) #1

declare dso_local i32 @osi_free(%struct.TYPE_19__*) #1

declare dso_local i32 @gatt_send_error_rsp(%struct.TYPE_15__*, i64, i64, i64, i32) #1

declare dso_local i32 @attp_send_sr_msg(%struct.TYPE_15__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
