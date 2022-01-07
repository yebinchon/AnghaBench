; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_read_cmpl.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/gatt/extr_bta_gattc_act.c_bta_gattc_read_cmpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_28__*, i32, %struct.TYPE_26__* }
%struct.TYPE_28__ = type { i32 (i32, %struct.TYPE_29__*)* }
%struct.TYPE_29__ = type { %struct.TYPE_27__, i32, i32 }
%struct.TYPE_27__ = type { i64, i32, i32, %struct.TYPE_29__* }
%struct.TYPE_26__ = type { %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32 }

@BTA_GATT_OK = common dso_local global i64 0, align 8
@BTA_GATTC_API_READ_MULTI_EVT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bta_gattc_read_cmpl(%struct.TYPE_20__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_29__, align 8
  %7 = alloca %struct.TYPE_29__, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %8 = call i32 @memset(%struct.TYPE_29__* %6, i32 0, i32 32)
  %9 = call i32 @memset(%struct.TYPE_29__* %7, i32 0, i32 32)
  %10 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %18 = icmp ne %struct.TYPE_22__* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BTA_GATT_OK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %7, i32 0, i32 1
  store i32 %46, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %48, i32 0, i32 3
  store %struct.TYPE_29__* %7, %struct.TYPE_29__** %49, align 8
  br label %59

50:                                               ; preds = %19, %2
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_26__*, %struct.TYPE_26__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %50, %25
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 2
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @BTA_GATTC_API_READ_MULTI_EVT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %59
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_26__*, %struct.TYPE_26__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  store i32 %74, i32* %5, align 4
  br label %82

75:                                               ; preds = %59
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %5, align 4
  br label %82

82:                                               ; preds = %75, %68
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %6, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %89 = call i32 @bta_gattc_free_command_data(%struct.TYPE_20__* %88)
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %91 = call i32 @bta_gattc_pop_command_to_send(%struct.TYPE_20__* %90)
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %94, i32 0, i32 0
  %96 = load i32 (i32, %struct.TYPE_29__*)*, i32 (i32, %struct.TYPE_29__*)** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = call i32 %96(i32 %97, %struct.TYPE_29__* %6)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_29__*, i32, i32) #1

declare dso_local i32 @bta_gattc_free_command_data(%struct.TYPE_20__*) #1

declare dso_local i32 @bta_gattc_pop_command_to_send(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
