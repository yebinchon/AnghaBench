; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_cfb8.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_cfb8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4
@ESP_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_cfb8(i32* %0, i32 %1, i64 %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8, align 1
  %14 = alloca [17 x i8], align 16
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %15 = call i32 (...) @esp_aes_acquire_hardware()
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %18 = call i32 @esp_aes_setkey_hardware(i32* %16, i32 %17)
  br label %19

19:                                               ; preds = %56, %6
  %20 = load i64, i64* %9, align 8
  %21 = add i64 %20, -1
  store i64 %21, i64* %9, align 8
  %22 = icmp ne i64 %20, 0
  br i1 %22, label %23, label %61

23:                                               ; preds = %19
  %24 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %25 = load i8*, i8** %10, align 8
  %26 = call i32 @memcpy(i8* %24, i8* %25, i32 16)
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = call i32 @esp_aes_block(i8* %27, i8* %28)
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @ESP_AES_DECRYPT, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %23
  %34 = load i8*, i8** %11, align 8
  %35 = load i8, i8* %34, align 1
  %36 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 16
  store i8 %35, i8* %36, align 16
  br label %37

37:                                               ; preds = %33, %23
  %38 = load i8*, i8** %10, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8*, i8** %11, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %11, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  %46 = xor i32 %41, %45
  %47 = trunc i32 %46 to i8
  %48 = load i8*, i8** %12, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %12, align 8
  store i8 %47, i8* %48, align 1
  store i8 %47, i8* %13, align 1
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %37
  %54 = load i8, i8* %13, align 1
  %55 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 16
  store i8 %54, i8* %55, align 16
  br label %56

56:                                               ; preds = %53, %37
  %57 = load i8*, i8** %10, align 8
  %58 = getelementptr inbounds [17 x i8], [17 x i8]* %14, i64 0, i64 0
  %59 = getelementptr inbounds i8, i8* %58, i64 1
  %60 = call i32 @memcpy(i8* %57, i8* %59, i32 16)
  br label %19

61:                                               ; preds = %19
  %62 = call i32 (...) @esp_aes_release_hardware()
  ret i32 0
}

declare dso_local i32 @esp_aes_acquire_hardware(...) #1

declare dso_local i32 @esp_aes_setkey_hardware(i32*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @esp_aes_block(i8*, i8*) #1

declare dso_local i32 @esp_aes_release_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
