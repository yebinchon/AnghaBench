; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_verify_info.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_mbedtls_x509_crt_verify_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_crt_verify_string = type { i32, i32* }

@x509_crt_verify_strings = common dso_local global %struct.x509_crt_verify_string* null, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1
@MBEDTLS_X509_SAFE_SNPRINTF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"%sUnknown reason (this should not happen)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_crt_verify_info(i8* %0, i64 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.x509_crt_verify_string*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %11, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %12, align 8
  %15 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** @x509_crt_verify_strings, align 8
  store %struct.x509_crt_verify_string* %15, %struct.x509_crt_verify_string** %10, align 8
  br label %16

16:                                               ; preds = %43, %4
  %17 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %10, align 8
  %18 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %46

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %10, align 8
  %24 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %43

29:                                               ; preds = %21
  %30 = load i8*, i8** %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %10, align 8
  %34 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 (i8*, i64, i8*, i8*, ...) @mbedtls_snprintf(i8* %30, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %32, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  %38 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %10, align 8
  %39 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = xor i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %29, %28
  %44 = load %struct.x509_crt_verify_string*, %struct.x509_crt_verify_string** %10, align 8
  %45 = getelementptr inbounds %struct.x509_crt_verify_string, %struct.x509_crt_verify_string* %44, i32 1
  store %struct.x509_crt_verify_string* %45, %struct.x509_crt_verify_string** %10, align 8
  br label %16

46:                                               ; preds = %16
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load i8*, i8** %11, align 8
  %51 = load i64, i64* %12, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 (i8*, i64, i8*, i8*, ...) @mbedtls_snprintf(i8* %50, i64 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* @MBEDTLS_X509_SAFE_SNPRINTF, align 4
  br label %55

55:                                               ; preds = %49, %46
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %12, align 8
  %58 = sub i64 %56, %57
  %59 = trunc i64 %58 to i32
  ret i32 %59
}

declare dso_local i32 @mbedtls_snprintf(i8*, i64, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
