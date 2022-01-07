; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_hw_init.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdio_slave.c_sdio_slave_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_22__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i64, i64, i64 }
%struct.TYPE_17__ = type { i32, i64, i64, i64 }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }

@SLC = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@sdio_slave_slot_info = common dso_local global %struct.TYPE_23__* null, align 8
@SDIO_SLAVE_FLAG_INTERNAL_PULLUP = common dso_local global i32 0, align 4
@SDIO_SLAVE_FLAG_HOST_INTR_DISABLED = common dso_local global i32 0, align 4
@SDIO_SLAVE_FLAG_DAT2_DISABLED = common dso_local global i32 0, align 4
@PERIPH_SDIO_SLAVE_MODULE = common dso_local global i32 0, align 4
@HINF = common dso_local global %struct.TYPE_16__ zeroinitializer, align 4
@HOST = common dso_local global %struct.TYPE_15__ zeroinitializer, align 4
@ESP_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*)* @sdio_slave_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_slave_hw_init(%struct.TYPE_24__* %0) #0 {
  %2 = alloca %struct.TYPE_24__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %2, align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 8), align 8
  %5 = load %struct.TYPE_23__*, %struct.TYPE_23__** @sdio_slave_slot_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %5, i64 1
  store %struct.TYPE_23__* %6, %struct.TYPE_23__** %3, align 8
  %7 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @SDIO_SLAVE_FLAG_INTERNAL_PULLUP, align 4
  %11 = and i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @configure_pin(i32 %14, i32 %17, i32 0)
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @configure_pin(i32 %21, i32 %24, i32 %25)
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @configure_pin(i32 %29, i32 %32, i32 %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SDIO_SLAVE_FLAG_HOST_INTR_DISABLED, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %1
  %42 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @configure_pin(i32 %44, i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %41, %1
  %51 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SDIO_SLAVE_FLAG_DAT2_DISABLED, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %66

57:                                               ; preds = %50
  %58 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @configure_pin(i32 %60, i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %50
  %67 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @configure_pin(i32 %69, i32 %72, i32 %73)
  %75 = load i32, i32* @PERIPH_SDIO_SLAVE_MODULE, align 4
  %76 = call i32 @periph_module_reset(i32 %75)
  %77 = load i32, i32* @PERIPH_SDIO_SLAVE_MODULE, align 4
  %78 = call i32 @periph_module_enable(i32 %77)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 3, i32 0), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 3, i32 3), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 3, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 3, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 2, i32 2), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 2, i32 1), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 2, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 1, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @HINF, i32 0, i32 0, i32 0), align 4
  store i32 562, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @HINF, i32 0, i32 0, i32 1), align 4
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  switch i32 %81, label %86 [
    i32 128, label %82
    i32 129, label %83
    i32 130, label %84
    i32 131, label %85
  ]

82:                                               ; preds = %66
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 1), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 3), align 4
  br label %86

83:                                               ; preds = %66
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 0), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 2), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 3), align 4
  br label %86

84:                                               ; preds = %66
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 0), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 1), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 2), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 3), align 4
  br label %86

85:                                               ; preds = %66
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 0), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 2), align 4
  store i32 31, i32* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @HOST, i32 0, i32 0, i32 3), align 4
  br label %86

86:                                               ; preds = %66, %85, %84, %83, %82
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 1), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 2), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 3), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 4), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 5), align 4
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 6), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @SLC, i32 0, i32 0, i32 7), align 4
  %87 = load i32, i32* @ESP_OK, align 4
  ret i32 %87
}

declare dso_local i32 @configure_pin(i32, i32, i32) #1

declare dso_local i32 @periph_module_reset(i32) #1

declare dso_local i32 @periph_module_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
