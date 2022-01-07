; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_cfb8.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_cfb8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MBEDTLS_ERR_AES_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4
@ESP_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_cfb8(%struct.TYPE_6__* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  %15 = alloca [17 x i8], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = call i32 @valid_key_length(%struct.TYPE_6__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %6
  %20 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_KEY_LENGTH, align 4
  store i32 %20, i32* %7, align 4
  br label %73

21:                                               ; preds = %6
  %22 = call i32 (...) @esp_aes_acquire_hardware()
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %26 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %27 = call i32 @esp_aes_setkey_hardware(%struct.TYPE_6__* %25, i32 %26)
  br label %28

28:                                               ; preds = %66, %21
  %29 = load i64, i64* %10, align 8
  %30 = add i64 %29, -1
  store i64 %30, i64* %10, align 8
  %31 = icmp ne i64 %29, 0
  br i1 %31, label %32, label %71

32:                                               ; preds = %28
  %33 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @memcpy(i8* %33, i8* %34, i32 16)
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = call i32 @esp_aes_block(%struct.TYPE_6__* %36, i8* %37, i8* %38)
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @ESP_AES_DECRYPT, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %32
  %44 = load i8*, i8** %12, align 8
  %45 = load i8, i8* %44, align 1
  %46 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 16
  store i8 %45, i8* %46, align 16
  br label %47

47:                                               ; preds = %43, %32
  %48 = load i8*, i8** %11, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8*, i8** %12, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %12, align 8
  %54 = load i8, i8* %52, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %51, %55
  %57 = trunc i32 %56 to i8
  %58 = load i8*, i8** %13, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %13, align 8
  store i8 %57, i8* %58, align 1
  store i8 %57, i8* %14, align 1
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %47
  %64 = load i8, i8* %14, align 1
  %65 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 16
  store i8 %64, i8* %65, align 16
  br label %66

66:                                               ; preds = %63, %47
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds [17 x i8], [17 x i8]* %15, i64 0, i64 0
  %69 = getelementptr inbounds i8, i8* %68, i64 1
  %70 = call i32 @memcpy(i8* %67, i8* %69, i32 16)
  br label %28

71:                                               ; preds = %28
  %72 = call i32 (...) @esp_aes_release_hardware()
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %71, %19
  %74 = load i32, i32* %7, align 4
  ret i32 %74
}

declare dso_local i32 @valid_key_length(%struct.TYPE_6__*) #1

declare dso_local i32 @esp_aes_acquire_hardware(...) #1

declare dso_local i32 @esp_aes_setkey_hardware(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @esp_aes_block(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @esp_aes_release_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
