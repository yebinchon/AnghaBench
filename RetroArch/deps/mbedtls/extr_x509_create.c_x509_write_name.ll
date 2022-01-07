; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_x509_write_name.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_create.c_x509_write_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_OID_PKCS9_EMAIL = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, i8*, i64, i8*, i64)* @x509_write_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_write_name(i8** %0, i8* %1, i8* %2, i64 %3, i8* %4, i64 %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  store i64 0, i64* %14, align 8
  %15 = load i32, i32* @MBEDTLS_OID_PKCS9_EMAIL, align 4
  %16 = call i64 @MBEDTLS_OID_SIZE(i32 %15)
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %33

19:                                               ; preds = %6
  %20 = load i8*, i8** %9, align 8
  %21 = load i32, i32* @MBEDTLS_OID_PKCS9_EMAIL, align 4
  %22 = load i64, i64* %10, align 8
  %23 = call i64 @memcmp(i8* %20, i32 %21, i64 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i64, i64* %14, align 8
  %27 = load i8**, i8*** %7, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @mbedtls_asn1_write_ia5_string(i8** %27, i8* %28, i8* %29, i64 %30)
  %32 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %26, i32 %31)
  br label %41

33:                                               ; preds = %19, %6
  %34 = load i64, i64* %14, align 8
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i8*, i8** %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i32 @mbedtls_asn1_write_printable_string(i8** %35, i8* %36, i8* %37, i64 %38)
  %40 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %34, i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  %42 = load i64, i64* %14, align 8
  %43 = load i8**, i8*** %7, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @mbedtls_asn1_write_oid(i8** %43, i8* %44, i8* %45, i64 %46)
  %48 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %42, i32 %47)
  %49 = load i64, i64* %14, align 8
  %50 = load i8**, i8*** %7, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load i64, i64* %14, align 8
  %53 = call i32 @mbedtls_asn1_write_len(i8** %50, i8* %51, i64 %52)
  %54 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %49, i32 %53)
  %55 = load i64, i64* %14, align 8
  %56 = load i8**, i8*** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %59 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mbedtls_asn1_write_tag(i8** %56, i8* %57, i32 %60)
  %62 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %55, i32 %61)
  %63 = load i64, i64* %14, align 8
  %64 = load i8**, i8*** %7, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call i32 @mbedtls_asn1_write_len(i8** %64, i8* %65, i64 %66)
  %68 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %63, i32 %67)
  %69 = load i64, i64* %14, align 8
  %70 = load i8**, i8*** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %73 = load i32, i32* @MBEDTLS_ASN1_SET, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @mbedtls_asn1_write_tag(i8** %70, i8* %71, i32 %74)
  %76 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %69, i32 %75)
  %77 = load i64, i64* %14, align 8
  %78 = trunc i64 %77 to i32
  ret i32 %78
}

declare dso_local i64 @MBEDTLS_OID_SIZE(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_asn1_write_ia5_string(i8**, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_printable_string(i8**, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_oid(i8**, i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
