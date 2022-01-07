; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_version.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i32*)* @x509_get_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_version(i8** %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %13 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mbedtls_asn1_get_tag(i8** %10, i8* %11, i64* %9, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i32*, i32** %7, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %4, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %49

25:                                               ; preds = %3
  %26 = load i8**, i8*** %5, align 8
  %27 = load i8*, i8** %26, align 8
  %28 = load i64, i64* %9, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  store i8* %29, i8** %6, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @mbedtls_asn1_get_int(i8** %30, i8* %31, i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %25
  %36 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_VERSION, align 4
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %36, %37
  store i32 %38, i32* %4, align 4
  br label %49

39:                                               ; preds = %25
  %40 = load i8**, i8*** %5, align 8
  %41 = load i8*, i8** %40, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = icmp ne i8* %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_VERSION, align 4
  %46 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %47 = add nsw i32 %45, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %44, %35, %23, %21
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
