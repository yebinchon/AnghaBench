; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_set_bus_ddr_mode.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_host.c_sdmmc_host_set_bus_ddr_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ESP_ERR_INVALID_ARG = common dso_local global i32 0, align 4
@s_slot_width = common dso_local global i32* null, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"DDR mode with 8-bit bus width is not supported yet\00", align 1
@ESP_ERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@SDMMC = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"slot=%d ddr=%d\00", align 1
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdmmc_host_set_bus_ddr_mode(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* @ESP_ERR_INVALID_ARG, align 4
  store i32 %13, i32* %3, align 4
  br label %58

14:                                               ; preds = %9, %2
  %15 = load i32*, i32** @s_slot_width, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 8
  br i1 %20, label %21, label %28

21:                                               ; preds = %14
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 @ESP_LOGW(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ESP_ERR_NOT_SUPPORTED, align 4
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %21, %14
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @BIT(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 1, i32 0), align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 1, i32 0), align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 0), align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 0), align 4
  br label %49

40:                                               ; preds = %28
  %41 = load i32, i32* %6, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 1, i32 0), align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 1, i32 0), align 4
  %45 = load i32, i32* %6, align 4
  %46 = xor i32 %45, -1
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 0), align 4
  %48 = and i32 %47, %46
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @SDMMC, i32 0, i32 0), align 4
  br label %49

49:                                               ; preds = %40, %33
  %50 = load i32, i32* @TAG, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 1, i32 0
  %56 = call i32 @ESP_LOGD(i32 %50, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %55)
  %57 = load i32, i32* @ESP_OK, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %49, %24, %12
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ESP_LOGW(i32, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
