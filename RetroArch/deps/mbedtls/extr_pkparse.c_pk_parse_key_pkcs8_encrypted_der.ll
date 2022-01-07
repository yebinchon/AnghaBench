; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs8_encrypted_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs8_encrypted_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_PK_PASSWORD_REQUIRED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i8 0, align 1
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i8 0, align 1
@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i8 0, align 1
@MBEDTLS_ERR_PK_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_PASSWORD_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_OID_PKCS12_PBE_SHA1_RC4_128 = common dso_local global i32 0, align 4
@MBEDTLS_OID_PKCS5_PBES2 = common dso_local global i32 0, align 4
@MBEDTLS_PKCS12_PBE_DECRYPT = common dso_local global i32 0, align 4
@MBEDTLS_PKCS5_DECRYPT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i8*, i64)* @pk_parse_key_pkcs8_encrypted_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs8_encrypted_der(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca [2048 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 0, i32* %13, align 4
  %20 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %21 = call i32 @memset(i8* %20, i32 0, i32 2048)
  %22 = load i8*, i8** %8, align 8
  store i8* %22, i8** %16, align 8
  %23 = load i8*, i8** %16, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds i8, i8* %23, i64 %24
  store i8* %25, i8** %17, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @MBEDTLS_ERR_PK_PASSWORD_REQUIRED, align 4
  store i32 %29, i32* %6, align 4
  br label %80

30:                                               ; preds = %5
  %31 = load i8*, i8** %17, align 8
  %32 = load i8, i8* @MBEDTLS_ASN1_CONSTRUCTED, align 1
  %33 = zext i8 %32 to i32
  %34 = load i8, i8* @MBEDTLS_ASN1_SEQUENCE, align 1
  %35 = zext i8 %34 to i32
  %36 = or i32 %33, %35
  %37 = trunc i32 %36 to i8
  %38 = call i32 @mbedtls_asn1_get_tag(i8** %16, i8* %31, i64* %14, i8 zeroext %37)
  store i32 %38, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %41, %42
  store i32 %43, i32* %6, align 4
  br label %80

44:                                               ; preds = %30
  %45 = load i8*, i8** %16, align 8
  %46 = load i64, i64* %14, align 8
  %47 = getelementptr inbounds i8, i8* %45, i64 %46
  store i8* %47, i8** %17, align 8
  %48 = load i8*, i8** %17, align 8
  %49 = call i32 @mbedtls_asn1_get_alg(i8** %16, i8* %48, i32* %18, i32* %19)
  store i32 %49, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %6, align 4
  br label %80

55:                                               ; preds = %44
  %56 = load i8*, i8** %17, align 8
  %57 = load i8, i8* @MBEDTLS_ASN1_OCTET_STRING, align 1
  %58 = call i32 @mbedtls_asn1_get_tag(i8** %16, i8* %56, i64* %14, i8 zeroext %57)
  store i32 %58, i32* %12, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  br label %80

64:                                               ; preds = %55
  %65 = load i64, i64* %14, align 8
  %66 = icmp ugt i64 %65, 2048
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i32, i32* @MBEDTLS_ERR_PK_BAD_INPUT_DATA, align 4
  store i32 %68, i32* %6, align 4
  br label %80

69:                                               ; preds = %64
  %70 = load i8*, i8** %10, align 8
  %71 = load i32, i32* %13, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i32, i32* @MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE, align 4
  store i32 %74, i32* %6, align 4
  br label %80

75:                                               ; preds = %69
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds [2048 x i8], [2048 x i8]* %15, i64 0, i64 0
  %78 = load i64, i64* %14, align 8
  %79 = call i32 @pk_parse_key_pkcs8_unencrypted_der(i32* %76, i8* %77, i64 %78)
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %75, %73, %67, %60, %51, %40, %28
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i8 zeroext) #1

declare dso_local i32 @mbedtls_asn1_get_alg(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @pk_parse_key_pkcs8_unencrypted_der(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
