; ModuleID = '/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_emac_hal.c_emac_hal_set_csr_clock_range.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/soc/esp32/extr_emac_hal.c_emac_hal_set_csr_clock_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @emac_hal_set_csr_clock_range(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %4 = icmp sge i32 %3, 20
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %7 = icmp slt i32 %6, 35
  br i1 %7, label %8, label %14

8:                                                ; preds = %5
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i32 2, i32* %13, align 4
  br label %72

14:                                               ; preds = %5, %1
  %15 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %16 = icmp sge i32 %15, 35
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %19 = icmp slt i32 %18, 60
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 3, i32* %25, align 4
  br label %71

26:                                               ; preds = %17, %14
  %27 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %28 = icmp sge i32 %27, 60
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %31 = icmp slt i32 %30, 100
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  br label %70

38:                                               ; preds = %29, %26
  %39 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %40 = icmp sge i32 %39, 100
  br i1 %40, label %41, label %50

41:                                               ; preds = %38
  %42 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %43 = icmp slt i32 %42, 150
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 4
  br label %69

50:                                               ; preds = %41, %38
  %51 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %52 = icmp sgt i32 %51, 150
  br i1 %52, label %53, label %62

53:                                               ; preds = %50
  %54 = load i32, i32* @CONFIG_ESP32_DEFAULT_CPU_FREQ_MHZ, align 4
  %55 = icmp slt i32 %54, 250
  br i1 %55, label %56, label %62

56:                                               ; preds = %53
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 4
  br label %68

62:                                               ; preds = %53, %50
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store i32 5, i32* %67, align 4
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %44
  br label %70

70:                                               ; preds = %69, %32
  br label %71

71:                                               ; preds = %70, %20
  br label %72

72:                                               ; preds = %71, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
