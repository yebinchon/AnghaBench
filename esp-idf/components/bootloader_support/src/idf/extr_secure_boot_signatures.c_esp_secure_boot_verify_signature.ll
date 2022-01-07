; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/idf/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bootloader_support/src/idf/extr_secure_boot_signatures.c_esp_secure_boot_verify_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DIGEST_LEN = common dso_local global i32 0, align 4
@TAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"verifying signature src_addr 0x%x length 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"bootloader_mmap(0x%x, 0x%x) failed\00", align 1
@ESP_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_secure_boot_verify_signature(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @DIGEST_LEN, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %6, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %7, align 8
  %16 = load i32, i32* @TAG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @ESP_LOGD(i32 %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  %25 = call i32* @bootloader_mmap(i32 %20, i32 %24)
  store i32* %25, i32** %8, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %2
  %29 = load i32, i32* @TAG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  %35 = call i32 @ESP_LOGE(i32 %29, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %34)
  %36 = load i32, i32* @ESP_FAIL, align 4
  store i32 %36, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

37:                                               ; preds = %2
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @mbedtls_sha256_ret(i32* %38, i32 %39, i32* %15, i32 0)
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @esp_secure_boot_verify_signature_block(i32* %45, i32* %15)
  store i32 %46, i32* %11, align 4
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @bootloader_munmap(i32* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %50

50:                                               ; preds = %37, %28
  %51 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %51)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ESP_LOGD(i32, i8*, i32, i32) #2

declare dso_local i32* @bootloader_mmap(i32, i32) #2

declare dso_local i32 @ESP_LOGE(i32, i8*, i32, i32) #2

declare dso_local i32 @mbedtls_sha256_ret(i32*, i32, i32*, i32) #2

declare dso_local i32 @esp_secure_boot_verify_signature_block(i32*, i32*) #2

declare dso_local i32 @bootloader_munmap(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
