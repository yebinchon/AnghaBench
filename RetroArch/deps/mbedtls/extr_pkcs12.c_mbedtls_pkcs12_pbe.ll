; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_mbedtls_pkcs12_pbe.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_mbedtls_pkcs12_pbe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs12_pbe(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [32 x i8], align 16
  %23 = alloca [16 x i8], align 16
  %24 = alloca %struct.TYPE_4__*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i8* %6, i8** %17, align 8
  store i64 %7, i64* %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 0, i32* %21, align 4
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.TYPE_4__* @mbedtls_cipher_info_from_type(i32 %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %24, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %30 = icmp eq %struct.TYPE_4__* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %9
  %32 = load i32, i32* @MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE, align 4
  store i32 %32, i32* %10, align 4
  br label %101

33:                                               ; preds = %9
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sdiv i32 %36, 8
  store i32 %37, i32* %21, align 4
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %14, align 4
  %40 = load i8*, i8** %15, align 8
  %41 = load i64, i64* %16, align 8
  %42 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %43 = load i32, i32* %21, align 4
  %44 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @pkcs12_pbe_derive_key_iv(i32* %38, i32 %39, i8* %40, i64 %41, i8* %42, i32 %43, i8* %44, i32 %47)
  store i32 %48, i32* %20, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %33
  %51 = load i32, i32* %20, align 4
  store i32 %51, i32* %10, align 4
  br label %101

52:                                               ; preds = %33
  %53 = call i32 @mbedtls_cipher_init(i32* %25)
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %55 = call i32 @mbedtls_cipher_setup(i32* %25, %struct.TYPE_4__* %54)
  store i32 %55, i32* %20, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %94

58:                                               ; preds = %52
  %59 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %60 = load i32, i32* %21, align 4
  %61 = mul nsw i32 8, %60
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @mbedtls_cipher_setkey(i32* %25, i8* %59, i32 %61, i32 %62)
  store i32 %63, i32* %20, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %94

66:                                               ; preds = %58
  %67 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @mbedtls_cipher_set_iv(i32* %25, i8* %67, i32 %70)
  store i32 %71, i32* %20, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %94

74:                                               ; preds = %66
  %75 = call i32 @mbedtls_cipher_reset(i32* %25)
  store i32 %75, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %74
  br label %94

78:                                               ; preds = %74
  %79 = load i8*, i8** %17, align 8
  %80 = load i64, i64* %18, align 8
  %81 = load i8*, i8** %19, align 8
  %82 = call i32 @mbedtls_cipher_update(i32* %25, i8* %79, i64 %80, i8* %81, i64* %26)
  store i32 %82, i32* %20, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  br label %94

85:                                               ; preds = %78
  %86 = load i8*, i8** %19, align 8
  %87 = load i64, i64* %26, align 8
  %88 = getelementptr inbounds i8, i8* %86, i64 %87
  %89 = call i32 @mbedtls_cipher_finish(i32* %25, i8* %88, i64* %26)
  store i32 %89, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* @MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH, align 4
  store i32 %92, i32* %20, align 4
  br label %93

93:                                               ; preds = %91, %85
  br label %94

94:                                               ; preds = %93, %84, %77, %73, %65, %57
  %95 = getelementptr inbounds [32 x i8], [32 x i8]* %22, i64 0, i64 0
  %96 = call i32 @mbedtls_zeroize(i8* %95, i32 32)
  %97 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %98 = call i32 @mbedtls_zeroize(i8* %97, i32 16)
  %99 = call i32 @mbedtls_cipher_free(i32* %25)
  %100 = load i32, i32* %20, align 4
  store i32 %100, i32* %10, align 4
  br label %101

101:                                              ; preds = %94, %50, %31
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local %struct.TYPE_4__* @mbedtls_cipher_info_from_type(i32) #1

declare dso_local i32 @pkcs12_pbe_derive_key_iv(i32*, i32, i8*, i64, i8*, i32, i8*, i32) #1

declare dso_local i32 @mbedtls_cipher_init(i32*) #1

declare dso_local i32 @mbedtls_cipher_setup(i32*, %struct.TYPE_4__*) #1

declare dso_local i32 @mbedtls_cipher_setkey(i32*, i8*, i32, i32) #1

declare dso_local i32 @mbedtls_cipher_set_iv(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_cipher_reset(i32*) #1

declare dso_local i32 @mbedtls_cipher_update(i32*, i8*, i64, i8*, i64*) #1

declare dso_local i32 @mbedtls_cipher_finish(i32*, i8*, i64*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

declare dso_local i32 @mbedtls_cipher_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
