; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_ofb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_ofb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_AES_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_AES_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_ofb(i32* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %30, label %18

18:                                               ; preds = %6
  %19 = load i64*, i64** %10, align 8
  %20 = icmp eq i64* %19, null
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i8*, i8** %11, align 8
  %23 = icmp eq i8* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %21
  %25 = load i8*, i8** %12, align 8
  %26 = icmp eq i8* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** %13, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %24, %21, %18, %6
  %31 = load i32, i32* @MBEDTLS_ERR_AES_BAD_INPUT_DATA, align 4
  store i32 %31, i32* %7, align 4
  br label %84

32:                                               ; preds = %27
  %33 = load i64*, i64** %10, align 8
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %15, align 8
  %35 = load i64, i64* %15, align 8
  %36 = icmp ugt i64 %35, 15
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @MBEDTLS_ERR_AES_BAD_INPUT_DATA, align 4
  store i32 %38, i32* %7, align 4
  br label %84

39:                                               ; preds = %32
  %40 = load i32*, i32** %8, align 8
  %41 = call i32 @valid_key_length(i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_KEY_LENGTH, align 4
  store i32 %44, i32* %7, align 4
  br label %84

45:                                               ; preds = %39
  %46 = call i32 (...) @esp_aes_acquire_hardware()
  %47 = load i32*, i32** %8, align 8
  %48 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %49 = call i32 @esp_aes_setkey_hardware(i32* %47, i32 %48)
  br label %50

50:                                               ; preds = %62, %45
  %51 = load i64, i64* %9, align 8
  %52 = add i64 %51, -1
  store i64 %52, i64* %9, align 8
  %53 = icmp ne i64 %51, 0
  br i1 %53, label %54, label %79

54:                                               ; preds = %50
  %55 = load i64, i64* %15, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %54
  %58 = load i32*, i32** %8, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @esp_aes_block(i32* %58, i8* %59, i8* %60)
  br label %62

62:                                               ; preds = %57, %54
  %63 = load i8*, i8** %12, align 8
  %64 = getelementptr inbounds i8, i8* %63, i32 1
  store i8* %64, i8** %12, align 8
  %65 = load i8, i8* %63, align 1
  %66 = zext i8 %65 to i32
  %67 = load i8*, i8** %11, align 8
  %68 = load i64, i64* %15, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = xor i32 %66, %71
  %73 = trunc i32 %72 to i8
  %74 = load i8*, i8** %13, align 8
  %75 = getelementptr inbounds i8, i8* %74, i32 1
  store i8* %75, i8** %13, align 8
  store i8 %73, i8* %74, align 1
  %76 = load i64, i64* %15, align 8
  %77 = add i64 %76, 1
  %78 = and i64 %77, 15
  store i64 %78, i64* %15, align 8
  br label %50

79:                                               ; preds = %50
  %80 = load i64, i64* %15, align 8
  %81 = load i64*, i64** %10, align 8
  store i64 %80, i64* %81, align 8
  %82 = call i32 (...) @esp_aes_release_hardware()
  %83 = load i32, i32* %14, align 4
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %79, %43, %37, %30
  %85 = load i32, i32* %7, align 4
  ret i32 %85
}

declare dso_local i32 @valid_key_length(i32*) #1

declare dso_local i32 @esp_aes_acquire_hardware(...) #1

declare dso_local i32 @esp_aes_setkey_hardware(i32*, i32) #1

declare dso_local i32 @esp_aes_block(i32*, i8*, i8*) #1

declare dso_local i32 @esp_aes_release_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
