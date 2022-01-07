; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/esp32/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIGEST_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"verifying signature src_addr 0x%x length 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"free data page_count 0x%08x\00", align 1
@MMAP_ALIGNED_MASK = common dso_local global i64 0, align 8
@SPI_FLASH_MMU_PAGE_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"bootloader_mmap(0x%x, 0x%x) failed\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_secure_boot_verify_signature(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i32, i32* @DIGEST_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @TAG, align 4
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = call i32 (i32, i8*, i64, ...) @ESP_LOGD(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %23, i64 %24)
  %26 = call i32 (...) @bootloader_sha256_start()
  store i32 %26, i32* %10, align 4
  %27 = call i64 (...) @bootloader_mmap_get_free_pages()
  store i64 %27, i64* %11, align 8
  %28 = load i32, i32* @TAG, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 (i32, i8*, i64, ...) @ESP_LOGD(i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %29)
  %31 = load i64, i64* %5, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %4, align 8
  store i64 %32, i64* %13, align 8
  br label %33

33:                                               ; preds = %67, %2
  %34 = load i64, i64* %12, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %80

36:                                               ; preds = %33
  %37 = load i64, i64* %13, align 8
  %38 = load i64, i64* @MMAP_ALIGNED_MASK, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %14, align 8
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* %11, align 8
  %46 = load i64, i64* %14, align 8
  %47 = sub nsw i64 %45, %46
  %48 = load i64, i64* @SPI_FLASH_MMU_PAGE_SIZE, align 8
  %49 = mul nsw i64 %47, %48
  %50 = call i64 @MIN(i64 %44, i64 %49)
  store i64 %50, i64* %15, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %15, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i64 @bootloader_mmap(i64 %51, i32 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %8, align 8
  %56 = load i32*, i32** %8, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %36
  %59 = load i32, i32* @TAG, align 4
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %15, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @ESP_LOGE(i32 %59, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %60, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @bootloader_sha256_finish(i32 %64, i32* null)
  %66 = load i32, i32* @ESP_FAIL, align 4
  store i32 %66, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %103

67:                                               ; preds = %36
  %68 = load i32, i32* %10, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %15, align 8
  %71 = call i32 @bootloader_sha256_data(i32 %68, i32* %69, i64 %70)
  %72 = load i32*, i32** %8, align 8
  %73 = call i32 @bootloader_munmap(i32* %72)
  %74 = load i64, i64* %15, align 8
  %75 = load i64, i64* %13, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %13, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %12, align 8
  %79 = sub nsw i64 %78, %77
  store i64 %79, i64* %12, align 8
  br label %33

80:                                               ; preds = %33
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @bootloader_sha256_finish(i32 %81, i32* %21)
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* %5, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i64 @bootloader_mmap(i64 %85, i32 4)
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** %9, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %97, label %90

90:                                               ; preds = %80
  %91 = load i32, i32* @TAG, align 4
  %92 = load i64, i64* %4, align 8
  %93 = load i64, i64* %5, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @ESP_LOGE(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i64 %94, i32 4)
  %96 = load i32, i32* @ESP_FAIL, align 4
  store i32 %96, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %103

97:                                               ; preds = %80
  %98 = load i32*, i32** %9, align 8
  %99 = call i32 @esp_secure_boot_verify_signature_block(i32* %98, i32* %21)
  store i32 %99, i32* %17, align 4
  %100 = load i32*, i32** %9, align 8
  %101 = call i32 @bootloader_munmap(i32* %100)
  %102 = load i32, i32* %17, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %16, align 4
  br label %103

103:                                              ; preds = %97, %90, %58
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i64, ...) #2

declare dso_local i32 @bootloader_sha256_start(...) #2

declare dso_local i64 @bootloader_mmap_get_free_pages(...) #2

declare dso_local i64 @MIN(i64, i64) #2

declare dso_local i64 @bootloader_mmap(i64, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i64, i32) #2

declare dso_local i32 @bootloader_sha256_finish(i32, i32*) #2

declare dso_local i32 @bootloader_sha256_data(i32, i32*, i64) #2

declare dso_local i32 @bootloader_munmap(i32*) #2

declare dso_local i32 @esp_secure_boot_verify_signature_block(i32*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
