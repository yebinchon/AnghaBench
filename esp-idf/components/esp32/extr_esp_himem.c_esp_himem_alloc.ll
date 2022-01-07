; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_alloc.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_6__* }

@CACHE_BLOCKSIZE = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@spinlock = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_himem_alloc(i64 %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_6__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %11 = urem i64 %9, %10
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  store i32 %14, i32* %3, align 4
  br label %66

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %18 = udiv i64 %16, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %6, align 4
  %20 = call i8* @calloc(i32 16, i32 1)
  %21 = bitcast i8* %20 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %7, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = icmp ne %struct.TYPE_6__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %15
  br label %54

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = call i8* @calloc(i32 4, i32 %26)
  %28 = bitcast i8* %27 to %struct.TYPE_6__*
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = icmp ne %struct.TYPE_6__* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %54

36:                                               ; preds = %25
  %37 = call i32 @portENTER_CRITICAL(i32* @spinlock)
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = call i32 @allocate_blocks(i32 %38, %struct.TYPE_6__* %41)
  store i32 %42, i32* %8, align 4
  %43 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %36
  br label %54

47:                                               ; preds = %36
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %5, align 8
  store %struct.TYPE_6__* %51, %struct.TYPE_6__** %52, align 8
  %53 = load i32, i32* @ESP_OK, align 4
  store i32 %53, i32* %3, align 4
  br label %66

54:                                               ; preds = %46, %35, %24
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %56 = icmp ne %struct.TYPE_6__* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = call i32 @free(%struct.TYPE_6__* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %64 = call i32 @free(%struct.TYPE_6__* %63)
  %65 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %47, %13
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @allocate_blocks(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

declare dso_local i32 @free(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
