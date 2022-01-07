; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_alloc_map_range.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/extr_esp_himem.c_esp_himem_alloc_map_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }

@s_ram_descriptor = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"Himem not available!\00", align 1
@ESP_ERR_INVALID_STATE = common dso_local global i32 0, align 4
@CACHE_BLOCKSIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"requested size not aligned to blocksize\00", align 1
@ESP_ERR_INVALID_SIZE = common dso_local global i32 0, align 4
@ESP_ERR_NO_MEM = common dso_local global i32 0, align 4
@spinlock = common dso_local global i32 0, align 4
@s_rangeblockcnt = common dso_local global i32 0, align 4
@s_range_descriptor = common dso_local global %struct.TYPE_8__* null, align 8
@ESP_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_himem_alloc_map_range(i64 %0, %struct.TYPE_7__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__** %1, %struct.TYPE_7__*** %5, align 8
  %11 = load i32*, i32** @s_ram_descriptor, align 8
  %12 = icmp eq i32* %11, null
  %13 = zext i1 %12 to i32
  %14 = load i32, i32* @ESP_ERR_INVALID_STATE, align 4
  %15 = call i32 @HIMEM_CHECK(i32 %13, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %18 = urem i64 %16, %17
  %19 = icmp ne i64 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* @ESP_ERR_INVALID_SIZE, align 4
  %22 = call i32 @HIMEM_CHECK(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @CACHE_BLOCKSIZE, align 8
  %25 = udiv i64 %23, %24
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  %27 = call %struct.TYPE_7__* @calloc(i32 8, i32 1)
  store %struct.TYPE_7__* %27, %struct.TYPE_7__** %7, align 8
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %29 = icmp ne %struct.TYPE_7__* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %2
  %31 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %31, i32* %3, align 4
  br label %103

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 1
  store i32 -1, i32* %37, align 4
  store i32 0, i32* %8, align 4
  %38 = call i32 @portENTER_CRITICAL(i32* @spinlock)
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %67, %32
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @s_rangeblockcnt, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %70

43:                                               ; preds = %39
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_range_descriptor, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %66

54:                                               ; preds = %43
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %8, align 4
  %57 = sub nsw i32 %55, %56
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  br label %70

65:                                               ; preds = %54
  br label %66

66:                                               ; preds = %65, %51
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %39

70:                                               ; preds = %61, %39
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %80

75:                                               ; preds = %70
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %77 = call i32 @free(%struct.TYPE_7__* %76)
  %78 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %79 = load i32, i32* @ESP_ERR_NO_MEM, align 4
  store i32 %79, i32* %3, align 4
  br label %103

80:                                               ; preds = %70
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %95, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %98

85:                                               ; preds = %81
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** @s_range_descriptor, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 4
  br label %95

95:                                               ; preds = %85
  %96 = load i32, i32* %10, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %10, align 4
  br label %81

98:                                               ; preds = %81
  %99 = call i32 @portEXIT_CRITICAL(i32* @spinlock)
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %5, align 8
  store %struct.TYPE_7__* %100, %struct.TYPE_7__** %101, align 8
  %102 = load i32, i32* @ESP_OK, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %98, %75, %30
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @HIMEM_CHECK(i32, i8*, i32) #1

declare dso_local %struct.TYPE_7__* @calloc(i32, i32) #1

declare dso_local i32 @portENTER_CRITICAL(i32*) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @portEXIT_CRITICAL(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
