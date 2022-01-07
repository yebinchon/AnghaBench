; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_ctr.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_ctr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MBEDTLS_ERR_AES_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_ctr(%struct.TYPE_6__* %0, i64 %1, i64* %2, i8* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %19 = load i64*, i64** %11, align 8
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %18, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %22 = call i32 @valid_key_length(%struct.TYPE_6__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_KEY_LENGTH, align 4
  store i32 %25, i32* %8, align 4
  br label %86

26:                                               ; preds = %7
  %27 = call i32 (...) @esp_aes_acquire_hardware()
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %31 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %32 = call i32 @esp_aes_setkey_hardware(%struct.TYPE_6__* %30, i32 %31)
  br label %33

33:                                               ; preds = %64, %26
  %34 = load i64, i64* %10, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %10, align 8
  %36 = icmp ne i64 %34, 0
  br i1 %36, label %37, label %82

37:                                               ; preds = %33
  %38 = load i64, i64* %18, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %64

40:                                               ; preds = %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %42 = load i8*, i8** %12, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = call i32 @esp_aes_block(%struct.TYPE_6__* %41, i8* %42, i8* %43)
  store i32 16, i32* %17, align 4
  br label %45

45:                                               ; preds = %60, %40
  %46 = load i32, i32* %17, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %63

48:                                               ; preds = %45
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* %17, align 4
  %51 = sub nsw i32 %50, 1
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %49, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = add i8 %54, 1
  store i8 %55, i8* %53, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %48
  br label %63

59:                                               ; preds = %48
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %17, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %17, align 4
  br label %45

63:                                               ; preds = %58, %45
  br label %64

64:                                               ; preds = %63, %37
  %65 = load i8*, i8** %14, align 8
  %66 = getelementptr inbounds i8, i8* %65, i32 1
  store i8* %66, i8** %14, align 8
  %67 = load i8, i8* %65, align 1
  %68 = zext i8 %67 to i32
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %16, align 4
  %70 = load i8*, i8** %13, align 8
  %71 = load i64, i64* %18, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = xor i32 %69, %74
  %76 = trunc i32 %75 to i8
  %77 = load i8*, i8** %15, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %15, align 8
  store i8 %76, i8* %77, align 1
  %79 = load i64, i64* %18, align 8
  %80 = add i64 %79, 1
  %81 = and i64 %80, 15
  store i64 %81, i64* %18, align 8
  br label %33

82:                                               ; preds = %33
  %83 = load i64, i64* %18, align 8
  %84 = load i64*, i64** %11, align 8
  store i64 %83, i64* %84, align 8
  %85 = call i32 (...) @esp_aes_release_hardware()
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %82, %24
  %87 = load i32, i32* %8, align 4
  ret i32 %87
}

declare dso_local i32 @valid_key_length(%struct.TYPE_6__*) #1

declare dso_local i32 @esp_aes_acquire_hardware(...) #1

declare dso_local i32 @esp_aes_setkey_hardware(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @esp_aes_block(%struct.TYPE_6__*, i8*, i8*) #1

declare dso_local i32 @esp_aes_release_hardware(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
