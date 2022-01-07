; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_crl_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crl.c_x509_get_crl_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_EXTENSIONS = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @x509_get_crl_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crl_ext(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 0, i64* %9, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @mbedtls_x509_get_ext(i8** %10, i8* %11, i32* %12, i32 0)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %55

20:                                               ; preds = %15
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %4, align 4
  br label %55

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %40, %22
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %24, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = icmp ult i8* %25, %26
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i8**, i8*** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %32 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mbedtls_asn1_get_tag(i8** %29, i8* %30, i64* %9, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  store i32 %39, i32* %4, align 4
  br label %55

40:                                               ; preds = %28
  %41 = load i64, i64* %9, align 8
  %42 = load i8**, i8*** %5, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 %41
  store i8* %44, i8** %42, align 8
  br label %23

45:                                               ; preds = %23
  %46 = load i8**, i8*** %5, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = icmp ne i8* %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %52 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %50, %36, %20, %19
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @mbedtls_x509_get_ext(i8**, i8*, i32*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
