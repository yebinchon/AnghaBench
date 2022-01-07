; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_mbedtls_pk_write_pubkey_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkwrite.c_mbedtls_pk_write_pubkey_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_ASN1_BUF_TOO_SMALL = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BIT_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_PK_ECKEY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pk_write_pubkey_der(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = getelementptr inbounds i8, i8* %14, i64 %15
  store i8* %16, i8** %9, align 8
  %17 = load i64, i64* %10, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @mbedtls_pk_write_pubkey(i8** %9, i8* %18, i32* %19)
  %21 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %17, i32 %20)
  %22 = load i8*, i8** %9, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = ptrtoint i8* %22 to i64
  %25 = ptrtoint i8* %23 to i64
  %26 = sub i64 %24, %25
  %27 = icmp slt i64 %26, 1
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @MBEDTLS_ERR_ASN1_BUF_TOO_SMALL, align 4
  store i32 %29, i32* %4, align 4
  br label %73

30:                                               ; preds = %3
  %31 = load i8*, i8** %9, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 -1
  store i8* %32, i8** %9, align 8
  store i8 0, i8* %32, align 1
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, 1
  store i64 %34, i64* %10, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @mbedtls_asn1_write_len(i8** %9, i8* %36, i64 %37)
  %39 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %35, i32 %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @MBEDTLS_ASN1_BIT_STRING, align 4
  %43 = call i32 @mbedtls_asn1_write_tag(i8** %9, i8* %41, i32 %42)
  %44 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %40, i32 %43)
  %45 = load i32*, i32** %5, align 8
  %46 = call i64 @mbedtls_pk_get_type(i32* %45)
  %47 = call i32 @mbedtls_oid_get_oid_by_pk_alg(i64 %46, i8** %13, i64* %12)
  store i32 %47, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %30
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %73

51:                                               ; preds = %30
  %52 = load i64, i64* %10, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load i8*, i8** %13, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @mbedtls_asn1_write_algorithm_identifier(i8** %9, i8* %53, i8* %54, i64 %55, i64 %56)
  %58 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %52, i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = load i64, i64* %10, align 8
  %62 = call i32 @mbedtls_asn1_write_len(i8** %9, i8* %60, i64 %61)
  %63 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %59, i32 %62)
  %64 = load i64, i64* %10, align 8
  %65 = load i8*, i8** %6, align 8
  %66 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %67 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @mbedtls_asn1_write_tag(i8** %9, i8* %65, i32 %68)
  %70 = call i32 @MBEDTLS_ASN1_CHK_ADD(i64 %64, i32 %69)
  %71 = load i64, i64* %10, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %51, %49, %28
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @MBEDTLS_ASN1_CHK_ADD(i64, i32) #1

declare dso_local i32 @mbedtls_pk_write_pubkey(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_asn1_write_len(i8**, i8*, i64) #1

declare dso_local i32 @mbedtls_asn1_write_tag(i8**, i8*, i32) #1

declare dso_local i32 @mbedtls_oid_get_oid_by_pk_alg(i64, i8**, i64*) #1

declare dso_local i64 @mbedtls_pk_get_type(i32*) #1

declare dso_local i32 @mbedtls_asn1_write_algorithm_identifier(i8**, i8*, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
