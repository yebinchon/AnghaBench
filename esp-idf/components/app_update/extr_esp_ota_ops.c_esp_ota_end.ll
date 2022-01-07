; ModuleID = '/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_end.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/app_update/extr_esp_ota_ops.c_esp_ota_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, i64, i64, i64, %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@ESP_OK = common dso_local global i64 0, align 8
@s_ota_ops_entries_head = common dso_local global i32 0, align 4
@entries = common dso_local global i32 0, align 4
@ESP_ERR_NOT_FOUND = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@ESP_ERR_INVALID_STATE = common dso_local global i64 0, align 8
@ESP_IMAGE_VERIFY = common dso_local global i32 0, align 4
@ESP_ERR_OTA_VALIDATE_FAILED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @esp_ota_end(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* @ESP_OK, align 8
  store i64 %8, i64* %5, align 8
  %9 = call %struct.TYPE_10__* @LIST_FIRST(i32* @s_ota_ops_entries_head)
  store %struct.TYPE_10__* %9, %struct.TYPE_10__** %4, align 8
  br label %10

10:                                               ; preds = %21, %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %12 = icmp ne %struct.TYPE_10__* %11, null
  br i1 %12, label %13, label %25

13:                                               ; preds = %10
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* %3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13
  br label %25

20:                                               ; preds = %13
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %23 = load i32, i32* @entries, align 4
  %24 = call %struct.TYPE_10__* @LIST_NEXT(%struct.TYPE_10__* %22, i32 %23)
  store %struct.TYPE_10__* %24, %struct.TYPE_10__** %4, align 8
  br label %10

25:                                               ; preds = %19, %10
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = icmp eq %struct.TYPE_10__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i64, i64* @ESP_ERR_NOT_FOUND, align 8
  store i64 %29, i64* %2, align 8
  br label %97

30:                                               ; preds = %25
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35, %30
  %41 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %41, i64* %5, align 8
  br label %90

42:                                               ; preds = %35
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %70

47:                                               ; preds = %42
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @esp_partition_write(%struct.TYPE_12__* %50, i64 %53, i32 %56, i32 16)
  store i64 %57, i64* %5, align 8
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @ESP_OK, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %47
  %62 = load i64, i64* @ESP_ERR_INVALID_STATE, align 8
  store i64 %62, i64* %5, align 8
  br label %90

63:                                               ; preds = %47
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = add nsw i64 %66, 16
  store i64 %67, i64* %65, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 3
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %63, %42
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 4
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %71, align 4
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  store i32 %82, i32* %77, align 4
  %83 = load i32, i32* @ESP_IMAGE_VERIFY, align 4
  %84 = call i64 @esp_image_verify(i32 %83, %struct.TYPE_11__* %7, i32* %6)
  %85 = load i64, i64* @ESP_OK, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %70
  %88 = load i64, i64* @ESP_ERR_OTA_VALIDATE_FAILED, align 8
  store i64 %88, i64* %5, align 8
  br label %90

89:                                               ; preds = %70
  br label %90

90:                                               ; preds = %89, %87, %61, %40
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %92 = load i32, i32* @entries, align 4
  %93 = call i32 @LIST_REMOVE(%struct.TYPE_10__* %91, i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %95 = call i32 @free(%struct.TYPE_10__* %94)
  %96 = load i64, i64* %5, align 8
  store i64 %96, i64* %2, align 8
  br label %97

97:                                               ; preds = %90, %28
  %98 = load i64, i64* %2, align 8
  ret i64 %98
}

declare dso_local %struct.TYPE_10__* @LIST_FIRST(i32*) #1

declare dso_local %struct.TYPE_10__* @LIST_NEXT(%struct.TYPE_10__*, i32) #1

declare dso_local i64 @esp_partition_write(%struct.TYPE_12__*, i64, i32, i32) #1

declare dso_local i64 @esp_image_verify(i32, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @LIST_REMOVE(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
