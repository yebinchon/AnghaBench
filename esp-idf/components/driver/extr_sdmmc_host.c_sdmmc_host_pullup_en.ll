; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_pullup_en.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_pullup_en.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@sdmmc_slot_info = common dso_local global %struct.TYPE_2__* null, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdmmc_host_pullup_en(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i64 %9
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp sgt i32 %6, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %15, i32* %3, align 4
  br label %89

16:                                               ; preds = %2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 9
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @gpio_pullup_en(i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpio_pullup_en(i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp sge i32 %31, 4
  br i1 %32, label %33, label %55

33:                                               ; preds = %16
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpio_pullup_en(i32 %39)
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 6
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @gpio_pullup_en(i32 %46)
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 5
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @gpio_pullup_en(i32 %53)
  br label %55

55:                                               ; preds = %33, %16
  %56 = load i32, i32* %5, align 4
  %57 = icmp eq i32 %56, 8
  br i1 %57, label %58, label %87

58:                                               ; preds = %55
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %60 = load i32, i32* %4, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @gpio_pullup_en(i32 %64)
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %67 = load i32, i32* %4, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @gpio_pullup_en(i32 %71)
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @gpio_pullup_en(i32 %78)
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sdmmc_slot_info, align 8
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @gpio_pullup_en(i32 %85)
  br label %87

87:                                               ; preds = %58, %55
  %88 = load i32, i32* @ESP_OK, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %14
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @gpio_pullup_en(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
