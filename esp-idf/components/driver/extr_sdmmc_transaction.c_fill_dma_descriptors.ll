; ModuleID = '/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_fill_dma_descriptors.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/driver/extr_sdmmc_transaction.c_fill_dma_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i64, i64, %struct.TYPE_4__* }

@s_cur_transfer = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@s_dma_desc = common dso_local global %struct.TYPE_4__* null, align 8
@SDMMC_DMA_MAX_BUF_LEN = common dso_local global i64 0, align 8
@SDMMC_DMA_DESC_CNT = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"fill %d desc=%d rem=%d next=%d last=%d sz=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @fill_dma_descriptors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_dma_descriptors(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  br label %8

8:                                                ; preds = %103, %1
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %106

12:                                               ; preds = %8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  br label %106

16:                                               ; preds = %12
  %17 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 1), align 8
  store i64 %17, i64* %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dma_desc, align 8
  %19 = load i64, i64* %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i64 %19
  store %struct.TYPE_4__* %20, %struct.TYPE_4__** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %29 = load i64, i64* @SDMMC_DMA_MAX_BUF_LEN, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  br label %35

33:                                               ; preds = %16
  %34 = load i64, i64* @SDMMC_DMA_MAX_BUF_LEN, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %6, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 2), align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %35
  br label %61

54:                                               ; preds = %35
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** @s_dma_desc, align 8
  %56 = load i64, i64* %4, align 8
  %57 = add i64 %56, 1
  %58 = load i64, i64* @SDMMC_DMA_DESC_CNT, align 8
  %59 = urem i64 %57, %58
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i64 %59
  br label %61

61:                                               ; preds = %54, %53
  %62 = phi %struct.TYPE_4__* [ null, %53 ], [ %60, %54 ]
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 5
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = icmp ult i64 %65, 4
  br i1 %66, label %71, label %67

67:                                               ; preds = %61
  %68 = load i64, i64* %6, align 8
  %69 = urem i64 %68, 4
  %70 = icmp eq i64 %69, 0
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i1 [ true, %61 ], [ %70, %67 ]
  %73 = zext i1 %72 to i32
  %74 = call i32 @assert(i32 %73)
  %75 = load i64, i64* %6, align 8
  %76 = add i64 %75, 3
  %77 = and i64 %76, -4
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %82 = sub i64 %81, %80
  store i64 %82, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %83 = load i64, i64* %6, align 8
  %84 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 2), align 8
  %85 = add i64 %84, %83
  store i64 %85, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 2), align 8
  %86 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 1), align 8
  %87 = add i64 %86, 1
  %88 = load i64, i64* @SDMMC_DMA_DESC_CNT, align 8
  %89 = urem i64 %87, %88
  store i64 %89, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 1), align 8
  %90 = load i32, i32* @TAG, align 4
  %91 = load i64, i64* %2, align 8
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 0), align 8
  %94 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @s_cur_transfer, i32 0, i32 1), align 8
  %95 = trunc i64 %94 to i32
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @ESP_LOGV(i32 %90, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %92, i64 %93, i32 %95, i32 %98, i64 %101)
  br label %103

103:                                              ; preds = %71
  %104 = load i64, i64* %3, align 8
  %105 = add i64 %104, 1
  store i64 %105, i64* %3, align 8
  br label %8

106:                                              ; preds = %15, %8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ESP_LOGV(i32, i8*, i64, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
