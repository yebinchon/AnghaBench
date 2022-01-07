; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_pin.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_mcpwm.c_mcpwm_set_pin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@MCPWM_UNIT_MAX = common dso_local global i64 0, align 8
@MCPWM_UNIT_NUM_ERROR = common dso_local global i32 0, align 4
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@MCPWM0A = common dso_local global i32 0, align 4
@MCPWM0B = common dso_local global i32 0, align 4
@MCPWM1A = common dso_local global i32 0, align 4
@MCPWM1B = common dso_local global i32 0, align 4
@MCPWM2A = common dso_local global i32 0, align 4
@MCPWM2B = common dso_local global i32 0, align 4
@MCPWM_SYNC_0 = common dso_local global i32 0, align 4
@MCPWM_SYNC_1 = common dso_local global i32 0, align 4
@MCPWM_SYNC_2 = common dso_local global i32 0, align 4
@MCPWM_FAULT_0 = common dso_local global i32 0, align 4
@MCPWM_CAP_0 = common dso_local global i32 0, align 4
@MCPWM_CAP_1 = common dso_local global i32 0, align 4
@MCPWM_CAP_2 = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mcpwm_set_pin(i64 %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @MCPWM_UNIT_MAX, align 8
  %7 = icmp slt i64 %5, %6
  %8 = zext i1 %7 to i32
  %9 = load i32, i32* @MCPWM_UNIT_NUM_ERROR, align 4
  %10 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  %11 = call i32 @MCPWM_CHECK(i32 %8, i32 %9, i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = load i32, i32* @MCPWM0A, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @mcpwm_gpio_init(i64 %12, i32 %13, i32 %16)
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @MCPWM0B, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 13
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mcpwm_gpio_init(i64 %18, i32 %19, i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = load i32, i32* @MCPWM1A, align 4
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 12
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @mcpwm_gpio_init(i64 %24, i32 %25, i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @MCPWM1B, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mcpwm_gpio_init(i64 %30, i32 %31, i32 %34)
  %36 = load i64, i64* %3, align 8
  %37 = load i32, i32* @MCPWM2A, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mcpwm_gpio_init(i64 %36, i32 %37, i32 %40)
  %42 = load i64, i64* %3, align 8
  %43 = load i32, i32* @MCPWM2B, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 9
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mcpwm_gpio_init(i64 %42, i32 %43, i32 %46)
  %48 = load i64, i64* %3, align 8
  %49 = load i32, i32* @MCPWM_SYNC_0, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 8
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @mcpwm_gpio_init(i64 %48, i32 %49, i32 %52)
  %54 = load i64, i64* %3, align 8
  %55 = load i32, i32* @MCPWM_SYNC_1, align 4
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 7
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mcpwm_gpio_init(i64 %54, i32 %55, i32 %58)
  %60 = load i64, i64* %3, align 8
  %61 = load i32, i32* @MCPWM_SYNC_2, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 6
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @mcpwm_gpio_init(i64 %60, i32 %61, i32 %64)
  %66 = load i64, i64* %3, align 8
  %67 = load i32, i32* @MCPWM_FAULT_0, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mcpwm_gpio_init(i64 %66, i32 %67, i32 %70)
  %72 = load i64, i64* %3, align 8
  %73 = load i32, i32* @MCPWM_FAULT_0, align 4
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 4
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @mcpwm_gpio_init(i64 %72, i32 %73, i32 %76)
  %78 = load i64, i64* %3, align 8
  %79 = load i32, i32* @MCPWM_FAULT_0, align 4
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @mcpwm_gpio_init(i64 %78, i32 %79, i32 %82)
  %84 = load i64, i64* %3, align 8
  %85 = load i32, i32* @MCPWM_CAP_0, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @mcpwm_gpio_init(i64 %84, i32 %85, i32 %88)
  %90 = load i64, i64* %3, align 8
  %91 = load i32, i32* @MCPWM_CAP_1, align 4
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mcpwm_gpio_init(i64 %90, i32 %91, i32 %94)
  %96 = load i64, i64* %3, align 8
  %97 = load i32, i32* @MCPWM_CAP_2, align 4
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @mcpwm_gpio_init(i64 %96, i32 %97, i32 %100)
  %102 = load i32, i32* @ESP_OK, align 4
  ret i32 %102
}

declare dso_local i32 @MCPWM_CHECK(i32, i32, i32) #1

declare dso_local i32 @mcpwm_gpio_init(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
