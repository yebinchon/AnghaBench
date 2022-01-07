; ModuleID = '/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_find/main/extr_main.c_app_main.c'
source_filename = "/home/carl/AnghaBench/esp-idf/examples/storage/partition_api/partition_find/main/extr_main.c_app_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"Printing partition table csv file contents for reference...\0A\0A%.*s\00", align 1
@_binary_partitions_example_csv_end = external dso_local constant [0 x i8], align 1
@_binary_partitions_example_csv_start = external dso_local constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"----------------Find partitions---------------\00", align 1
@ESP_PARTITION_TYPE_DATA = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_NVS = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_PHY = common dso_local global i32 0, align 4
@ESP_PARTITION_TYPE_APP = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_APP_FACTORY = common dso_local global i32 0, align 4
@ESP_PARTITION_SUBTYPE_DATA_FAT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"Find second FAT partition by specifying the label\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"storage2\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"----------------Iterate through partitions---------------\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"Iterating through app partitions...\00", align 1
@ESP_PARTITION_SUBTYPE_ANY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [52 x i8] c"\09found partition '%s' at offset 0x%x with size 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Iterating through data partitions...\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"Example end\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @app_main() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = load i32, i32* @TAG, align 4
  %5 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %4, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 add nsw (i64 sub (i64 ptrtoint ([0 x i8]* @_binary_partitions_example_csv_end to i64), i64 ptrtoint ([0 x i8]* @_binary_partitions_example_csv_start to i64)), i64 1), i8* getelementptr inbounds ([0 x i8], [0 x i8]* @_binary_partitions_example_csv_start, i64 0, i64 0))
  %6 = load i32, i32* @TAG, align 4
  %7 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %6, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %9 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_NVS, align 4
  %10 = call i32 @find_partition(i32 %8, i32 %9, i8* null)
  %11 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %12 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_PHY, align 4
  %13 = call i32 @find_partition(i32 %11, i32 %12, i8* null)
  %14 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %15 = load i32, i32* @ESP_PARTITION_SUBTYPE_APP_FACTORY, align 4
  %16 = call i32 @find_partition(i32 %14, i32 %15, i8* null)
  %17 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %18 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_FAT, align 4
  %19 = call i32 @find_partition(i32 %17, i32 %18, i8* null)
  %20 = load i32, i32* @TAG, align 4
  %21 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %20, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %23 = load i32, i32* @ESP_PARTITION_SUBTYPE_DATA_FAT, align 4
  %24 = call i32 @find_partition(i32 %22, i32 %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %25 = load i32, i32* @TAG, align 4
  %26 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %25, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %27 = load i32, i32* @TAG, align 4
  %28 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %29 = load i32, i32* @ESP_PARTITION_TYPE_APP, align 4
  %30 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %31 = call i32* @esp_partition_find(i32 %29, i32 %30, i32* null)
  store i32* %31, i32** %1, align 8
  br label %32

32:                                               ; preds = %49, %0
  %33 = load i32*, i32** %1, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i32*, i32** %1, align 8
  %37 = call %struct.TYPE_3__* @esp_partition_get(i32* %36)
  store %struct.TYPE_3__* %37, %struct.TYPE_3__** %2, align 8
  %38 = load i32, i32* @TAG, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %35
  %50 = load i32*, i32** %1, align 8
  %51 = call i32* @esp_partition_next(i32* %50)
  store i32* %51, i32** %1, align 8
  br label %32

52:                                               ; preds = %32
  %53 = load i32*, i32** %1, align 8
  %54 = call i32 @esp_partition_iterator_release(i32* %53)
  %55 = load i32, i32* @TAG, align 4
  %56 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %55, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %57 = load i32, i32* @ESP_PARTITION_TYPE_DATA, align 4
  %58 = load i32, i32* @ESP_PARTITION_SUBTYPE_ANY, align 4
  %59 = call i32* @esp_partition_find(i32 %57, i32 %58, i32* null)
  store i32* %59, i32** %1, align 8
  br label %60

60:                                               ; preds = %77, %52
  %61 = load i32*, i32** %1, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %80

63:                                               ; preds = %60
  %64 = load i32*, i32** %1, align 8
  %65 = call %struct.TYPE_3__* @esp_partition_get(i32* %64)
  store %struct.TYPE_3__* %65, %struct.TYPE_3__** %3, align 8
  %66 = load i32, i32* @TAG, align 4
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %66, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i32 %69, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %63
  %78 = load i32*, i32** %1, align 8
  %79 = call i32* @esp_partition_next(i32* %78)
  store i32* %79, i32** %1, align 8
  br label %60

80:                                               ; preds = %60
  %81 = load i32*, i32** %1, align 8
  %82 = call i32 @esp_partition_iterator_release(i32* %81)
  %83 = load i32, i32* @TAG, align 4
  %84 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i32 @find_partition(i32, i32, i8*) #1

declare dso_local i32* @esp_partition_find(i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @esp_partition_get(i32*) #1

declare dso_local i32* @esp_partition_next(i32*) #1

declare dso_local i32 @esp_partition_iterator_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
