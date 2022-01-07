; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_time.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_X509_INVALID_DATE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_UTC_TIME = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_GENERALIZED_TIME = common dso_local global i8 0, align 1
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_time(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = load i8**, i8*** %5, align 8
  %14 = load i8*, i8** %13, align 8
  %15 = ptrtoint i8* %12 to i64
  %16 = ptrtoint i8* %14 to i64
  %17 = sub i64 %15, %16
  %18 = icmp slt i64 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  %20 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  %21 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %4, align 4
  br label %64

23:                                               ; preds = %3
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8, i8* %25, align 1
  store i8 %26, i8* %11, align 1
  %27 = load i8, i8* %11, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @MBEDTLS_ASN1_UTC_TIME, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i64 2, i64* %10, align 8
  br label %45

33:                                               ; preds = %23
  %34 = load i8, i8* %11, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @MBEDTLS_ASN1_GENERALIZED_TIME, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp eq i32 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i64 4, i64* %10, align 8
  br label %44

40:                                               ; preds = %33
  %41 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  %42 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %4, align 4
  br label %64

44:                                               ; preds = %39
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %46, align 8
  %49 = load i8**, i8*** %5, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @mbedtls_asn1_get_len(i8** %49, i8* %50, i64* %9)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_DATE, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %55, %56
  store i32 %57, i32* %4, align 4
  br label %64

58:                                               ; preds = %45
  %59 = load i8**, i8*** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i64, i64* %10, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @x509_parse_time(i8** %59, i64 %60, i64 %61, i32* %62)
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %58, %54, %40, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @mbedtls_asn1_get_len(i8**, i8*, i64*) #1

declare dso_local i32 @x509_parse_time(i8**, i64, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
