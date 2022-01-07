; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_auth_decrypt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_gcm.c_mbedtls_gcm_auth_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_GCM_DECRYPT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_GCM_AUTH_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_gcm_auth_decrypt(i32* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6, i64 %7, i8* %8, i8* %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca [16 x i8], align 16
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i64 %1, i64* %13, align 8
  store i8* %2, i8** %14, align 8
  store i64 %3, i64* %15, align 8
  store i8* %4, i8** %16, align 8
  store i64 %5, i64* %17, align 8
  store i8* %6, i8** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i8* %9, i8** %21, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = load i32, i32* @MBEDTLS_GCM_DECRYPT, align 4
  %28 = load i64, i64* %13, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i64, i64* %15, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i64, i64* %17, align 8
  %33 = load i8*, i8** %20, align 8
  %34 = load i8*, i8** %21, align 8
  %35 = load i64, i64* %19, align 8
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 0
  %37 = call i32 @mbedtls_gcm_crypt_and_tag(i32* %26, i32 %27, i64 %28, i8* %29, i64 %30, i8* %31, i64 %32, i8* %33, i8* %34, i64 %35, i8* %36)
  store i32 %37, i32* %22, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %10
  %40 = load i32, i32* %22, align 4
  store i32 %40, i32* %11, align 4
  br label %71

41:                                               ; preds = %10
  store i32 0, i32* %25, align 4
  store i64 0, i64* %24, align 8
  br label %42

42:                                               ; preds = %59, %41
  %43 = load i64, i64* %24, align 8
  %44 = load i64, i64* %19, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i8*, i8** %18, align 8
  %48 = load i64, i64* %24, align 8
  %49 = getelementptr inbounds i8, i8* %47, i64 %48
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = load i64, i64* %24, align 8
  %53 = getelementptr inbounds [16 x i8], [16 x i8]* %23, i64 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = xor i32 %51, %55
  %57 = load i32, i32* %25, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %25, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i64, i64* %24, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %24, align 8
  br label %42

62:                                               ; preds = %42
  %63 = load i32, i32* %25, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %62
  %66 = load i8*, i8** %21, align 8
  %67 = load i64, i64* %13, align 8
  %68 = call i32 @mbedtls_zeroize(i8* %66, i64 %67)
  %69 = load i32, i32* @MBEDTLS_ERR_GCM_AUTH_FAILED, align 4
  store i32 %69, i32* %11, align 4
  br label %71

70:                                               ; preds = %62
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %70, %65, %39
  %72 = load i32, i32* %11, align 4
  ret i32 %72
}

declare dso_local i32 @mbedtls_gcm_crypt_and_tag(i32*, i32, i64, i8*, i64, i8*, i64, i8*, i8*, i64, i8*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
