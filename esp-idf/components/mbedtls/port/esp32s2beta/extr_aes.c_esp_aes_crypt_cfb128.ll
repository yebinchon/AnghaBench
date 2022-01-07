; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_cfb128.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32s2beta/extr_aes.c_esp_aes_crypt_cfb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4
@ESP_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_cfb128(i32* %0, i32 %1, i64 %2, i64* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64* %3, i64** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store i8* %6, i8** %14, align 8
  %17 = load i64*, i64** %11, align 8
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %16, align 8
  %19 = call i32 (...) @esp_aes_acquire_hardware()
  %20 = load i32*, i32** %8, align 8
  %21 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %22 = call i32 @esp_aes_setkey_hardware(i32* %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @ESP_AES_DECRYPT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %62

26:                                               ; preds = %7
  br label %27

27:                                               ; preds = %38, %26
  %28 = load i64, i64* %10, align 8
  %29 = add i64 %28, -1
  store i64 %29, i64* %10, align 8
  %30 = icmp ne i64 %28, 0
  br i1 %30, label %31, label %61

31:                                               ; preds = %27
  %32 = load i64, i64* %16, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load i8*, i8** %12, align 8
  %36 = load i8*, i8** %12, align 8
  %37 = call i32 @esp_aes_block(i8* %35, i8* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i8*, i8** %13, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %13, align 8
  %41 = load i8, i8* %39, align 1
  %42 = zext i8 %41 to i32
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i8*, i8** %12, align 8
  %45 = load i64, i64* %16, align 8
  %46 = getelementptr inbounds i8, i8* %44, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = xor i32 %43, %48
  %50 = trunc i32 %49 to i8
  %51 = load i8*, i8** %14, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %14, align 8
  store i8 %50, i8* %51, align 1
  %53 = load i32, i32* %15, align 4
  %54 = trunc i32 %53 to i8
  %55 = load i8*, i8** %12, align 8
  %56 = load i64, i64* %16, align 8
  %57 = getelementptr inbounds i8, i8* %55, i64 %56
  store i8 %54, i8* %57, align 1
  %58 = load i64, i64* %16, align 8
  %59 = add i64 %58, 1
  %60 = and i64 %59, 15
  store i64 %60, i64* %16, align 8
  br label %27

61:                                               ; preds = %27
  br label %95

62:                                               ; preds = %7
  br label %63

63:                                               ; preds = %74, %62
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, -1
  store i64 %65, i64* %10, align 8
  %66 = icmp ne i64 %64, 0
  br i1 %66, label %67, label %94

67:                                               ; preds = %63
  %68 = load i64, i64* %16, align 8
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @esp_aes_block(i8* %71, i8* %72)
  br label %74

74:                                               ; preds = %70, %67
  %75 = load i8*, i8** %12, align 8
  %76 = load i64, i64* %16, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = load i8*, i8** %13, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %13, align 8
  %82 = load i8, i8* %80, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %79, %83
  %85 = trunc i32 %84 to i8
  %86 = load i8*, i8** %14, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %14, align 8
  store i8 %85, i8* %86, align 1
  %88 = load i8*, i8** %12, align 8
  %89 = load i64, i64* %16, align 8
  %90 = getelementptr inbounds i8, i8* %88, i64 %89
  store i8 %85, i8* %90, align 1
  %91 = load i64, i64* %16, align 8
  %92 = add i64 %91, 1
  %93 = and i64 %92, 15
  store i64 %93, i64* %16, align 8
  br label %63

94:                                               ; preds = %63
  br label %95

95:                                               ; preds = %94, %61
  %96 = load i64, i64* %16, align 8
  %97 = load i64*, i64** %11, align 8
  store i64 %96, i64* %97, align 8
  %98 = call i32 (...) @esp_aes_release_hardware()
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
