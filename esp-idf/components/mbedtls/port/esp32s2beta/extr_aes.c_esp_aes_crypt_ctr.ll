; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_ctr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_ctr(i32* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64* %2, i64** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %18 = load i64*, i64** %10, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %17, align 8
  %20 = call i32 (...) @esp_aes_acquire_hardware()
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %23 = call i32 @esp_aes_setkey_hardware(i32* %21, i32 %22)
  br label %24

24:                                               ; preds = %54, %7
  %25 = load i64, i64* %9, align 8
  %26 = add i64 %25, -1
  store i64 %26, i64* %9, align 8
  %27 = icmp ne i64 %25, 0
  br i1 %27, label %28, label %72

28:                                               ; preds = %24
  %29 = load i64, i64* %17, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %28
  %32 = load i8*, i8** %11, align 8
  %33 = load i8*, i8** %12, align 8
  %34 = call i32 @esp_aes_block(i8* %32, i8* %33)
  store i32 16, i32* %16, align 4
  br label %35

35:                                               ; preds = %50, %31
  %36 = load i32, i32* %16, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = load i8*, i8** %11, align 8
  %40 = load i32, i32* %16, align 4
  %41 = sub nsw i32 %40, 1
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = add i8 %44, 1
  store i8 %45, i8* %43, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %16, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %16, align 4
  br label %35

53:                                               ; preds = %48, %35
  br label %54

54:                                               ; preds = %53, %28
  %55 = load i8*, i8** %13, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %13, align 8
  %57 = load i8, i8* %55, align 1
  %58 = zext i8 %57 to i32
  store i32 %58, i32* %15, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %12, align 8
  %61 = load i64, i64* %17, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = xor i32 %59, %64
  %66 = trunc i32 %65 to i8
  %67 = load i8*, i8** %14, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %14, align 8
  store i8 %66, i8* %67, align 1
  %69 = load i64, i64* %17, align 8
  %70 = add i64 %69, 1
  %71 = and i64 %70, 15
  store i64 %71, i64* %17, align 8
  br label %24

72:                                               ; preds = %24
  %73 = load i64, i64* %17, align 8
  %74 = load i64*, i64** %10, align 8
  store i64 %73, i64* %74, align 8
  %75 = call i32 (...) @esp_aes_release_hardware()
  ret i32 0
}

declare dso_local i32 @esp_aes_acquire_hardware(...) #1

declare dso_local i32 @esp_aes_setkey_hardware(i32*, i32) #1

declare dso_local i32 @esp_aes_block(i8*, i8*) #1

declare dso_local i32 @esp_aes_release_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
