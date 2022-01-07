; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_mbedtls_pkcs5_pbes2.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs5.c_mbedtls_pkcs5_pbes2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i64 }

@MBEDTLS_MD_SHA1 = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_OID_PKCS5_PBKDF2 = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i64 0, align 8
@MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs5_pbes2(%struct.TYPE_13__* %0, i32 %1, i8* %2, i64 %3, i8* %4, i64 %5, i8* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_13__, align 8
  %22 = alloca %struct.TYPE_13__, align 8
  %23 = alloca %struct.TYPE_13__, align 8
  %24 = alloca %struct.TYPE_13__, align 8
  %25 = alloca %struct.TYPE_13__, align 8
  %26 = alloca i32, align 4
  %27 = alloca [32 x i8], align 16
  %28 = alloca [32 x i8], align 16
  %29 = alloca i64, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_12__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i32 %1, i32* %10, align 4
  store i8* %2, i8** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store i8* %6, i8** %15, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %35 = load i32, i32* @MBEDTLS_MD_SHA1, align 4
  store i32 %35, i32* %26, align 4
  store i64 0, i64* %29, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %19, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %39, i64 %43
  store i8* %44, i8** %20, align 8
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %49 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %50 = or i32 %48, %49
  %51 = icmp ne i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %7
  %53 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %54 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %55 = add nsw i32 %53, %54
  store i32 %55, i32* %8, align 4
  br label %180

56:                                               ; preds = %7
  %57 = load i8*, i8** %20, align 8
  %58 = call i32 @mbedtls_asn1_get_alg(i8** %19, i8* %57, %struct.TYPE_13__* %21, %struct.TYPE_13__* %23)
  store i32 %58, i32* %16, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %62 = load i32, i32* %16, align 4
  %63 = add nsw i32 %61, %62
  store i32 %63, i32* %8, align 4
  br label %180

64:                                               ; preds = %56
  %65 = load i32, i32* @MBEDTLS_OID_PKCS5_PBKDF2, align 4
  %66 = call i64 @MBEDTLS_OID_CMP(i32 %65, %struct.TYPE_13__* %21)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE, align 4
  store i32 %69, i32* %8, align 4
  br label %180

70:                                               ; preds = %64
  %71 = call i32 @pkcs5_parse_pbkdf2_params(%struct.TYPE_13__* %23, %struct.TYPE_13__* %25, i32* %17, i32* %18, i32* %26)
  store i32 %71, i32* %16, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %16, align 4
  store i32 %74, i32* %8, align 4
  br label %180

75:                                               ; preds = %70
  %76 = load i32, i32* %26, align 4
  %77 = call i32* @mbedtls_md_info_from_type(i32 %76)
  store i32* %77, i32** %30, align 8
  %78 = load i32*, i32** %30, align 8
  %79 = icmp eq i32* %78, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE, align 4
  store i32 %81, i32* %8, align 4
  br label %180

82:                                               ; preds = %75
  %83 = load i8*, i8** %20, align 8
  %84 = call i32 @mbedtls_asn1_get_alg(i8** %19, i8* %83, %struct.TYPE_13__* %22, %struct.TYPE_13__* %24)
  store i32 %84, i32* %16, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %87, %88
  store i32 %89, i32* %8, align 4
  br label %180

90:                                               ; preds = %82
  %91 = call i64 @mbedtls_oid_get_cipher_alg(%struct.TYPE_13__* %22, i32* %33)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i32, i32* @MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE, align 4
  store i32 %94, i32* %8, align 4
  br label %180

95:                                               ; preds = %90
  %96 = load i32, i32* %33, align 4
  %97 = call %struct.TYPE_12__* @mbedtls_cipher_info_from_type(i32 %96)
  store %struct.TYPE_12__* %97, %struct.TYPE_12__** %31, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %99 = icmp eq %struct.TYPE_12__* %98, null
  br i1 %99, label %100, label %102

100:                                              ; preds = %95
  %101 = load i32, i32* @MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE, align 4
  store i32 %101, i32* %8, align 4
  br label %180

102:                                              ; preds = %95
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sdiv i32 %105, 8
  store i32 %106, i32* %18, align 4
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = load i64, i64* @MBEDTLS_ASN1_OCTET_STRING, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %120, label %112

112:                                              ; preds = %102
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %115, %118
  br i1 %119, label %120, label %122

120:                                              ; preds = %112, %102
  %121 = load i32, i32* @MBEDTLS_ERR_PKCS5_INVALID_FORMAT, align 4
  store i32 %121, i32* %8, align 4
  br label %180

122:                                              ; preds = %112
  %123 = call i32 @mbedtls_md_init(i32* %32)
  %124 = call i32 @mbedtls_cipher_init(i32* %34)
  %125 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 0
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = call i32 @memcpy(i8* %125, i8* %127, i64 %130)
  %132 = load i32*, i32** %30, align 8
  %133 = call i32 @mbedtls_md_setup(i32* %32, i32* %132, i32 1)
  store i32 %133, i32* %16, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %122
  br label %176

136:                                              ; preds = %122
  %137 = load i8*, i8** %11, align 8
  %138 = load i64, i64* %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = sext i32 %142 to i64
  %144 = load i32, i32* %17, align 4
  %145 = load i32, i32* %18, align 4
  %146 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 0
  %147 = call i32 @mbedtls_pkcs5_pbkdf2_hmac(i32* %32, i8* %137, i64 %138, i8* %140, i64 %143, i32 %144, i32 %145, i8* %146)
  store i32 %147, i32* %16, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %136
  br label %176

150:                                              ; preds = %136
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %31, align 8
  %152 = call i32 @mbedtls_cipher_setup(i32* %34, %struct.TYPE_12__* %151)
  store i32 %152, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %150
  br label %176

155:                                              ; preds = %150
  %156 = getelementptr inbounds [32 x i8], [32 x i8]* %27, i64 0, i64 0
  %157 = load i32, i32* %18, align 4
  %158 = mul nsw i32 8, %157
  %159 = load i32, i32* %10, align 4
  %160 = call i32 @mbedtls_cipher_setkey(i32* %34, i8* %156, i32 %158, i32 %159)
  store i32 %160, i32* %16, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %155
  br label %176

163:                                              ; preds = %155
  %164 = getelementptr inbounds [32 x i8], [32 x i8]* %28, i64 0, i64 0
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = sext i32 %166 to i64
  %168 = load i8*, i8** %13, align 8
  %169 = load i64, i64* %14, align 8
  %170 = load i8*, i8** %15, align 8
  %171 = call i32 @mbedtls_cipher_crypt(i32* %34, i8* %164, i64 %167, i8* %168, i64 %169, i8* %170, i64* %29)
  store i32 %171, i32* %16, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %175

173:                                              ; preds = %163
  %174 = load i32, i32* @MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH, align 4
  store i32 %174, i32* %16, align 4
  br label %175

175:                                              ; preds = %173, %163
  br label %176

176:                                              ; preds = %175, %162, %154, %149, %135
  %177 = call i32 @mbedtls_md_free(i32* %32)
  %178 = call i32 @mbedtls_cipher_free(i32* %34)
  %179 = load i32, i32* %16, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %176, %120, %100, %93, %86, %80, %73, %68, %60, %52
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @mbedtls_asn1_get_alg(i8**, i8*, %struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i64 @MBEDTLS_OID_CMP(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @pkcs5_parse_pbkdf2_params(%struct.TYPE_13__*, %struct.TYPE_13__*, i32*, i32*, i32*) #1

declare dso_local i32* @mbedtls_md_info_from_type(i32) #1

declare dso_local i64 @mbedtls_oid_get_cipher_alg(%struct.TYPE_13__*, i32*) #1

declare dso_local %struct.TYPE_12__* @mbedtls_cipher_info_from_type(i32) #1

declare dso_local i32 @mbedtls_md_init(i32*) #1

declare dso_local i32 @mbedtls_cipher_init(i32*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_pkcs5_pbkdf2_hmac(i32*, i8*, i64, i8*, i64, i32, i32, i8*) #1

declare dso_local i32 @mbedtls_cipher_setup(i32*, %struct.TYPE_12__*) #1

declare dso_local i32 @mbedtls_cipher_setkey(i32*, i8*, i32, i32) #1

declare dso_local i32 @mbedtls_cipher_crypt(i32*, i8*, i64, i8*, i64, i8*, i64*) #1

declare dso_local i32 @mbedtls_md_free(i32*) #1

declare dso_local i32 @mbedtls_cipher_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
