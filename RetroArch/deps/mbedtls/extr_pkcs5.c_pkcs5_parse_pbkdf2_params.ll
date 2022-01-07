; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_pkcs5_parse_pbkdf2_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_pkcs5_parse_pbkdf2_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i32, i32 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_OID_HMAC_SHA1 = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_MD_SHA1 = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_6__*, i32*, i32*, i32*)* @pkcs5_parse_pbkdf2_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pkcs5_parse_pbkdf2_params(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_6__, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %14, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %21, i64 %25
  store i8* %26, i8** %15, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %31 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %32 = or i32 %30, %31
  %33 = icmp ne i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %5
  %35 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %36 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %37 = add nsw i32 %35, %36
  store i32 %37, i32* %6, align 4
  br label %116

38:                                               ; preds = %5
  %39 = load i8*, i8** %15, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %43 = call i32 @mbedtls_asn1_get_tag(i8** %14, i8* %39, i32* %41, i32 %42)
  store i32 %43, i32* %12, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %46, %47
  store i32 %48, i32* %6, align 4
  br label %116

49:                                               ; preds = %38
  %50 = load i8*, i8** %14, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %50, i8** %52, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i8*, i8** %14, align 8
  %57 = sext i32 %55 to i64
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %14, align 8
  %59 = load i8*, i8** %15, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = call i32 @mbedtls_asn1_get_int(i8** %14, i8* %59, i32* %60)
  store i32 %61, i32* %12, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %49
  %64 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  store i32 %66, i32* %6, align 4
  br label %116

67:                                               ; preds = %49
  %68 = load i8*, i8** %14, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  store i32 0, i32* %6, align 4
  br label %116

72:                                               ; preds = %67
  %73 = load i8*, i8** %15, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = call i32 @mbedtls_asn1_get_int(i8** %14, i8* %73, i32* %74)
  store i32 %75, i32* %12, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %80 = icmp ne i32 %78, %79
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %82, %83
  store i32 %84, i32* %6, align 4
  br label %116

85:                                               ; preds = %77
  br label %86

86:                                               ; preds = %85, %72
  %87 = load i8*, i8** %14, align 8
  %88 = load i8*, i8** %15, align 8
  %89 = icmp eq i8* %87, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %86
  store i32 0, i32* %6, align 4
  br label %116

91:                                               ; preds = %86
  %92 = load i8*, i8** %15, align 8
  %93 = call i32 @mbedtls_asn1_get_alg_null(i8** %14, i8* %92, %struct.TYPE_6__* %13)
  store i32 %93, i32* %12, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %6, align 4
  br label %116

99:                                               ; preds = %91
  %100 = load i32, i32* @MBEDTLS_OID_HMAC_SHA1, align 4
  %101 = call i64 @MBEDTLS_OID_CMP(i32 %100, %struct.TYPE_6__* %13)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* @MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE, align 4
  store i32 %104, i32* %6, align 4
  br label %116

105:                                              ; preds = %99
  %106 = load i32, i32* @MBEDTLS_MD_SHA1, align 4
  %107 = load i32*, i32** %11, align 8
  store i32 %106, i32* %107, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = load i8*, i8** %15, align 8
  %110 = icmp ne i8* %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %105
  %112 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %113 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %114 = add nsw i32 %112, %113
  store i32 %114, i32* %6, align 4
  br label %116

115:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %116

116:                                              ; preds = %115, %111, %103, %95, %90, %81, %71, %63, %45, %34
  %117 = load i32, i32* %6, align 4
  ret i32 %117
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i32*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_asn1_get_alg_null(i8**, i8*, %struct.TYPE_6__*) #1

declare dso_local i64 @MBEDTLS_OID_CMP(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
