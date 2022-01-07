; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_periph_claim.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_spi_common.c_spicommon_periph_claim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@spi_periph_claimed = common dso_local global i32* null, align 8
@spi_claiming_func = common dso_local global i8** null, align 8
@spi_periph_signal = common dso_local global %struct.TYPE_2__* null, align 8
@SPI_TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"SPI%d already claimed by %s.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spicommon_periph_claim(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load i32*, i32** @spi_periph_claimed, align 8
  %8 = load i64, i64* %3, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = call i32 @atomic_compare_exchange_strong(i32* %9, i32* %5, i32 1)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = load i8**, i8*** @spi_claiming_func, align 8
  %16 = load i64, i64* %3, align 8
  %17 = getelementptr inbounds i8*, i8** %15, i64 %16
  store i8* %14, i8** %17, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spi_periph_signal, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @periph_module_enable(i32 %22)
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @SPI_TAG, align 4
  %26 = load i64, i64* %3, align 8
  %27 = add i64 %26, 1
  %28 = load i8**, i8*** @spi_claiming_func, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds i8*, i8** %28, i64 %29
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @ESP_EARLY_LOGE(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %27, i8* %31)
  br label %33

33:                                               ; preds = %24, %13
  %34 = load i32, i32* %6, align 4
  ret i32 %34
}

declare dso_local i32 @atomic_compare_exchange_strong(i32*, i32*, i32) #1

declare dso_local i32 @periph_module_enable(i32) #1

declare dso_local i32 @ESP_EARLY_LOGE(i32, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
