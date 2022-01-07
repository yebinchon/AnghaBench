; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_cfb128.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mbedtls/port/esp32/extr_aes.c_esp_aes_crypt_cfb128.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@MBEDTLS_ERR_AES_INVALID_KEY_LENGTH = common dso_local global i32 0, align 4
@ESP_AES_ENCRYPT = common dso_local global i32 0, align 4
@ESP_AES_DECRYPT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esp_aes_crypt_cfb128(%struct.TYPE_6__* %0, i32 %1, i64 %2, i64* %3, i8* %4, i8* %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i8* %6, i8** %15, align 8
  %18 = load i64*, i64** %12, align 8
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %17, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %21 = call i32 @valid_key_length(%struct.TYPE_6__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %7
  %24 = load i32, i32* @MBEDTLS_ERR_AES_INVALID_KEY_LENGTH, align 4
  store i32 %24, i32* %8, align 4
  br label %110

25:                                               ; preds = %7
  %26 = call i32 (...) @esp_aes_acquire_hardware()
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i64 0, i64* %28, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = load i32, i32* @ESP_AES_ENCRYPT, align 4
  %31 = call i32 @esp_aes_setkey_hardware(%struct.TYPE_6__* %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @ESP_AES_DECRYPT, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %72

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %48, %35
  %37 = load i64, i64* %11, align 8
  %38 = add i64 %37, -1
  store i64 %38, i64* %11, align 8
  %39 = icmp ne i64 %37, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %36
  %41 = load i64, i64* %17, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = load i8*, i8** %13, align 8
  %46 = load i8*, i8** %13, align 8
  %47 = call i32 @esp_aes_block(%struct.TYPE_6__* %44, i8* %45, i8* %46)
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %14, align 8
  %51 = load i8, i8* %49, align 1
  %52 = zext i8 %51 to i32
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %17, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = xor i32 %53, %58
  %60 = trunc i32 %59 to i8
  %61 = load i8*, i8** %15, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %15, align 8
  store i8 %60, i8* %61, align 1
  %63 = load i32, i32* %16, align 4
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %13, align 8
  %66 = load i64, i64* %17, align 8
  %67 = getelementptr inbounds i8, i8* %65, i64 %66
  store i8 %64, i8* %67, align 1
  %68 = load i64, i64* %17, align 8
  %69 = add i64 %68, 1
  %70 = and i64 %69, 15
  store i64 %70, i64* %17, align 8
  br label %36

71:                                               ; preds = %36
  br label %106

72:                                               ; preds = %25
  br label %73

73:                                               ; preds = %85, %72
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %74, -1
  store i64 %75, i64* %11, align 8
  %76 = icmp ne i64 %74, 0
  br i1 %76, label %77, label %105

77:                                               ; preds = %73
  %78 = load i64, i64* %17, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @esp_aes_block(%struct.TYPE_6__* %81, i8* %82, i8* %83)
  br label %85

85:                                               ; preds = %80, %77
  %86 = load i8*, i8** %13, align 8
  %87 = load i64, i64* %17, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = load i8*, i8** %14, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 1
  store i8* %92, i8** %14, align 8
  %93 = load i8, i8* %91, align 1
  %94 = zext i8 %93 to i32
  %95 = xor i32 %90, %94
  %96 = trunc i32 %95 to i8
  %97 = load i8*, i8** %15, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 1
  store i8* %98, i8** %15, align 8
  store i8 %96, i8* %97, align 1
  %99 = load i8*, i8** %13, align 8
  %100 = load i64, i64* %17, align 8
  %101 = getelementptr inbounds i8, i8* %99, i64 %100
  store i8 %96, i8* %101, align 1
  %102 = load i64, i64* %17, align 8
  %103 = add i64 %102, 1
  %104 = and i64 %103, 15
  store i64 %104, i64* %17, align 8
  br label %73

105:                                              ; preds = %73
  br label %106

106:                                              ; preds = %105, %71
  %107 = load i64, i64* %17, align 8
  %108 = load i64*, i64** %12, align 8
  store i64 %107, i64* %108, align 8
  %109 = call i32 (...) @esp_aes_release_hardware()
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %106, %23
  %111 = load i32, i32* %8, align 4
  ret i32 %111
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
