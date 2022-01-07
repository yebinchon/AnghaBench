; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_common.c_bootloader_common_get_sha256_of_partition.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/extr_bootloader_common.c_bootloader_common_get_sha256_of_partition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@ESP_ERR_INVALID_ARG = common dso_local global i64 0, align 8
@PART_TYPE_APP = common dso_local global i32 0, align 4
@ESP_IMAGE_VERIFY_SILENT = common dso_local global i32 0, align 4
@ESP_OK = common dso_local global i64 0, align 8
@ESP_ERR_IMAGE_INVALID = common dso_local global i64 0, align 8
@ESP_PARTITION_HASH_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"bootloader_mmap(0x%x, 0x%x) failed\00", align 1
@ESP_FAIL = common dso_local global i64 0, align 8
@ESP_ERR_NO_MEM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @bootloader_common_get_sha256_of_partition(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_7__, align 4
  %11 = alloca %struct.TYPE_8__, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16, %4
  %20 = load i64, i64* @ESP_ERR_INVALID_ARG, align 8
  store i64 %20, i64* %5, align 8
  br label %82

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @PART_TYPE_APP, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %51

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %28, align 4
  %30 = load i32, i32* @ESP_IMAGE_VERIFY_SILENT, align 4
  %31 = call i64 @esp_image_verify(i32 %30, %struct.TYPE_7__* %10, %struct.TYPE_8__* %11)
  %32 = load i64, i64* @ESP_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %25
  %35 = load i64, i64* @ESP_ERR_IMAGE_INVALID, align 8
  store i64 %35, i64* %5, align 8
  br label %82

36:                                               ; preds = %25
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @ESP_PARTITION_HASH_LEN, align 4
  %46 = call i32 @memcpy(i32* %42, i32 %44, i32 %45)
  %47 = load i64, i64* @ESP_OK, align 8
  store i64 %47, i64* %5, align 8
  br label %82

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %21
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i8* @bootloader_mmap(i32 %52, i32 %53)
  store i8* %54, i8** %12, align 8
  %55 = load i8*, i8** %12, align 8
  %56 = icmp eq i8* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load i32, i32* @TAG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @ESP_LOGE(i32 %58, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load i64, i64* @ESP_FAIL, align 8
  store i64 %62, i64* %5, align 8
  br label %82

63:                                               ; preds = %51
  %64 = call i32* (...) @bootloader_sha256_start()
  store i32* %64, i32** %13, align 8
  %65 = load i32*, i32** %13, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i8*, i8** %12, align 8
  %69 = call i32 @bootloader_munmap(i8* %68)
  %70 = load i64, i64* @ESP_ERR_NO_MEM, align 8
  store i64 %70, i64* %5, align 8
  br label %82

71:                                               ; preds = %63
  %72 = load i32*, i32** %13, align 8
  %73 = load i8*, i8** %12, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @bootloader_sha256_data(i32* %72, i8* %73, i32 %74)
  %76 = load i32*, i32** %13, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @bootloader_sha256_finish(i32* %76, i32* %77)
  %79 = load i8*, i8** %12, align 8
  %80 = call i32 @bootloader_munmap(i8* %79)
  %81 = load i64, i64* @ESP_OK, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %71, %67, %57, %41, %34, %19
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local i64 @esp_image_verify(i32, %struct.TYPE_7__*, %struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i8* @bootloader_mmap(i32, i32) #1

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #1

declare dso_local i32* @bootloader_sha256_start(...) #1

declare dso_local i32 @bootloader_munmap(i8*) #1

declare dso_local i32 @bootloader_sha256_data(i32*, i8*, i32) #1

declare dso_local i32 @bootloader_sha256_finish(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
