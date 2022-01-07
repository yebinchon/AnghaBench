; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32s2beta/extr_flash_encrypt.c_encrypt_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@PART_FLAG_ENCRYPTED = common dso_local global i32 0, align 4
@PART_TYPE_APP = common dso_local global i64 0, align 8
@ESP_IMAGE_VERIFY = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@PART_TYPE_DATA = common dso_local global i64 0, align 8
@PART_SUBTYPE_DATA_OTA = common dso_local global i64 0, align 8
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"Encrypting partition %d at offset 0x%x (length 0x%x)...\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Done encrypting\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Failed to encrypt partition %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_4__*)* @encrypt_partition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @encrypt_partition(i32 %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @PART_FLAG_ENCRYPTED, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PART_TYPE_APP, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* @ESP_IMAGE_VERIFY, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = call i64 @esp_image_verify(i32 %20, %struct.TYPE_5__* %22, i32* %8)
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @ESP_OK, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %42

28:                                               ; preds = %2
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PART_TYPE_DATA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PART_SUBTYPE_DATA_OTA, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 1, i32* %7, align 4
  br label %41

41:                                               ; preds = %40, %34, %28
  br label %42

42:                                               ; preds = %41, %19
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %42
  %46 = load i64, i64* @ESP_OK, align 8
  store i64 %46, i64* %3, align 8
  br label %79

47:                                               ; preds = %42
  %48 = load i32, i32* @TAG, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %48, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %53, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i64 @esp_flash_encrypt_region(i32 %62, i32 %66)
  store i64 %67, i64* %6, align 8
  %68 = load i32, i32* @TAG, align 4
  %69 = call i32 (i32, i8*, ...) @ESP_LOGI(i32 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @ESP_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %47
  %74 = load i32, i32* @TAG, align 4
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @ESP_LOGE(i32 %74, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %47
  %78 = load i64, i64* %6, align 8
  store i64 %78, i64* %3, align 8
  br label %79

79:                                               ; preds = %77, %45
  %80 = load i64, i64* %3, align 8
  ret i64 %80
}

declare dso_local i64 @esp_image_verify(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i32 @ESP_LOGI(i32, i8*, ...) #1

declare dso_local i64 @esp_flash_encrypt_region(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
