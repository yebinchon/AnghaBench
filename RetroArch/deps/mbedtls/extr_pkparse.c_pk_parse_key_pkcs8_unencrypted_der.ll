; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs8_unencrypted_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_pkcs8_unencrypted_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_PK_NONE = common dso_local global i64 0, align 8
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_UNKNOWN_PK_ALG = common dso_local global i32 0, align 4
@MBEDTLS_PK_ECKEY = common dso_local global i64 0, align 8
@MBEDTLS_PK_ECKEY_DH = common dso_local global i64 0, align 8
@MBEDTLS_PK_RSA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @pk_parse_key_pkcs8_unencrypted_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_pkcs8_unencrypted_der(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %12, align 8
  %17 = load i8*, i8** %12, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %13, align 8
  %20 = load i64, i64* @MBEDTLS_PK_NONE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %23 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mbedtls_asn1_get_tag(i8** %12, i8* %21, i64* %10, i32 %24)
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %3
  %28 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  store i32 %30, i32* %4, align 4
  br label %88

31:                                               ; preds = %3
  %32 = load i8*, i8** %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds i8, i8* %32, i64 %33
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %13, align 8
  %36 = call i32 @mbedtls_asn1_get_int(i8** %12, i8* %35, i32* %9)
  store i32 %36, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %4, align 4
  br label %88

42:                                               ; preds = %31
  %43 = load i32, i32* %9, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_VERSION, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %4, align 4
  br label %88

49:                                               ; preds = %42
  %50 = load i8*, i8** %13, align 8
  %51 = call i32 @pk_get_pk_alg(i8** %12, i8* %50, i64* %14, i32* %11)
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %54, %55
  store i32 %56, i32* %4, align 4
  br label %88

57:                                               ; preds = %49
  %58 = load i8*, i8** %13, align 8
  %59 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %60 = call i32 @mbedtls_asn1_get_tag(i8** %12, i8* %58, i64* %10, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %4, align 4
  br label %88

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = icmp ult i64 %67, 1
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %71 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %72 = add nsw i32 %70, %71
  store i32 %72, i32* %4, align 4
  br label %88

73:                                               ; preds = %66
  %74 = load i64, i64* %14, align 8
  %75 = call i32* @mbedtls_pk_info_from_type(i64 %74)
  store i32* %75, i32** %15, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %73
  %78 = load i32, i32* @MBEDTLS_ERR_PK_UNKNOWN_PK_ALG, align 4
  store i32 %78, i32* %4, align 4
  br label %88

79:                                               ; preds = %73
  %80 = load i32*, i32** %5, align 8
  %81 = load i32*, i32** %15, align 8
  %82 = call i32 @mbedtls_pk_setup(i32* %80, i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @MBEDTLS_ERR_PK_UNKNOWN_PK_ALG, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %86, %84, %77, %69, %62, %53, %45, %38, %27
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

declare dso_local i32 @pk_get_pk_alg(i8**, i8*, i64*, i32*) #1

declare dso_local i32* @mbedtls_pk_info_from_type(i64) #1

declare dso_local i32 @mbedtls_pk_setup(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
