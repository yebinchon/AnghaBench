; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_get_free_descriptors_count.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_get_free_descriptors_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32*, i64 }

@s_cur_transfer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@SDMMC_DMA_DESC_CNT = common dso_local global i64 0, align 8
@s_dma_desc = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 ()* @get_free_descriptors_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_free_descriptors_count() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  store i64 %5, i64* %1, align 8
  store i64 0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %6

6:                                                ; preds = %32, %0
  %7 = load i64, i64* %3, align 8
  %8 = load i64, i64* @SDMMC_DMA_DESC_CNT, align 8
  %9 = icmp ult i64 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dma_desc, align 8
  %12 = load i64, i64* %1, align 8
  %13 = load i64, i64* %3, align 8
  %14 = add i64 %12, %13
  %15 = load i64, i64* @SDMMC_DMA_DESC_CNT, align 8
  %16 = urem i64 %14, %15
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %16
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %10
  br label %35

23:                                               ; preds = %10
  %24 = load i64, i64* %2, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %2, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %35

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load i64, i64* %3, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %3, align 8
  br label %6

35:                                               ; preds = %30, %22, %6
  %36 = load i64, i64* %2, align 8
  ret i64 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
