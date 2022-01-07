; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_certificate_check_signature.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_certificate_check_signature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, %struct.TYPE_3__, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }
%struct.crypto_public_key = type { i32 }
%struct.asn1_hdr = type { i64, i64, i32*, i32 }
%struct.asn1_oid = type { i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"X509: Unrecognized signature algorithm\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"X509: Failed to decrypt signature\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"X509: Signature data D\00", align 1
@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [63 x i8] c"X509: Expected SEQUENCE (DigestInfo) - found class %d tag 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [72 x i8] c"X509: Expected SEQUENCE (AlgorithmIdentifier) - found class %d tag 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"X509: Failed to parse digestAlgorithm\00", align 1
@.str.6 = private unnamed_addr constant [84 x i8] c"X509: digestAlgorithm SHA1 does not match with certificate signatureAlgorithm (%lu)\00", align 1
@.str.7 = private unnamed_addr constant [86 x i8] c"X509: digestAlgorithm SHA256 does not match with certificate signatureAlgorithm (%lu)\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"X509: Unrecognized digestAlgorithm\00", align 1
@.str.9 = private unnamed_addr constant [83 x i8] c"X509: digestAlgorithm MD5 does not match with certificate signatureAlgorithm (%lu)\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"X509: Unsupported digestAlgorithm (%lu)\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [62 x i8] c"X509: Expected OCTETSTRING (Digest) - found class %d tag 0x%x\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"X509: Decrypted Digest\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"X509: Certificate hash (MD5)\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"X509: Certificate hash (SHA1)\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"X509: Certificate hash (SHA256)\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [56 x i8] c"X509: Unsupported certificate signature algorithm (%lu)\00", align 1
@.str.17 = private unnamed_addr constant [76 x i8] c"X509: Certificate Digest does not match with calculated tbsCertificate hash\00", align 1
@.str.18 = private unnamed_addr constant [69 x i8] c"X509: Certificate Digest matches with calculated tbsCertificate hash\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @x509_certificate_check_signature(%struct.x509_certificate* %0, %struct.x509_certificate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.x509_certificate*, align 8
  %5 = alloca %struct.x509_certificate*, align 8
  %6 = alloca %struct.crypto_public_key*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.asn1_hdr, align 8
  %14 = alloca %struct.asn1_oid, align 8
  %15 = alloca [32 x i32], align 16
  %16 = alloca i64, align 8
  store %struct.x509_certificate* %0, %struct.x509_certificate** %4, align 8
  store %struct.x509_certificate* %1, %struct.x509_certificate** %5, align 8
  %17 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %18 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @x509_pkcs_oid(%struct.TYPE_4__* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %24 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 7
  br i1 %28, label %38, label %29

29:                                               ; preds = %22
  %30 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %31 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 5
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %41

38:                                               ; preds = %29, %22, %2
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %378

41:                                               ; preds = %29
  %42 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %43 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %42, i32 0, i32 6
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.x509_certificate*, %struct.x509_certificate** %4, align 8
  %46 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = call %struct.crypto_public_key* @crypto_public_key_import(i32 %44, i32 %47)
  store %struct.crypto_public_key* %48, %struct.crypto_public_key** %6, align 8
  %49 = load %struct.crypto_public_key*, %struct.crypto_public_key** %6, align 8
  %50 = icmp eq %struct.crypto_public_key* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  store i32 -1, i32* %3, align 4
  br label %378

52:                                               ; preds = %41
  %53 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %54 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32* @os_malloc(i64 %56)
  store i32* %57, i32** %7, align 8
  %58 = load i32*, i32** %7, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.crypto_public_key*, %struct.crypto_public_key** %6, align 8
  %62 = call i32 @crypto_public_key_free(%struct.crypto_public_key* %61)
  store i32 -1, i32* %3, align 4
  br label %378

63:                                               ; preds = %52
  %64 = load %struct.crypto_public_key*, %struct.crypto_public_key** %6, align 8
  %65 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %66 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %69 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i32*, i32** %7, align 8
  %72 = call i64 @crypto_public_key_decrypt_pkcs1(%struct.crypto_public_key* %64, i32 %67, i64 %70, i32* %71, i64* %12)
  %73 = icmp slt i64 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %63
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.crypto_public_key*, %struct.crypto_public_key** %6, align 8
  %78 = call i32 @crypto_public_key_free(%struct.crypto_public_key* %77)
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @os_free(i32* %79)
  store i32 -1, i32* %3, align 4
  br label %378

81:                                               ; preds = %63
  %82 = load %struct.crypto_public_key*, %struct.crypto_public_key** %6, align 8
  %83 = call i32 @crypto_public_key_free(%struct.crypto_public_key* %82)
  %84 = load i32, i32* @MSG_MSGDUMP, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* %12, align 8
  %87 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32* %85, i64 %86)
  %88 = load i32*, i32** %7, align 8
  %89 = load i64, i64* %12, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i64 @asn1_get_next(i32* %88, i32 %90, %struct.asn1_hdr* %13)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %81
  %94 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %103, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %112

103:                                              ; preds = %98, %93, %81
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %108)
  %110 = load i32*, i32** %7, align 8
  %111 = call i32 @os_free(i32* %110)
  store i32 -1, i32* %3, align 4
  br label %378

112:                                              ; preds = %98
  %113 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 2
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %8, align 8
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32* %118, i32** %9, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i64 @asn1_get_next(i32* %119, i32 %126, %struct.asn1_hdr* %13)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %139, label %129

129:                                              ; preds = %112
  %130 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %133 = icmp ne i32 %131, %132
  br i1 %133, label %139, label %134

134:                                              ; preds = %129
  %135 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %148

139:                                              ; preds = %134, %129, %112
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = call i32 (i32, i8*, ...) @wpa_printf(i32 %140, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.4, i64 0, i64 0), i32 %142, i64 %144)
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @os_free(i32* %146)
  store i32 -1, i32* %3, align 4
  br label %378

148:                                              ; preds = %134
  %149 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  store i32* %153, i32** %11, align 8
  %154 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @asn1_get_oid(i32* %155, i64 %157, %struct.asn1_oid* %14, i32** %10)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %148
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %163 = load i32*, i32** %7, align 8
  %164 = call i32 @os_free(i32* %163)
  store i32 -1, i32* %3, align 4
  br label %378

165:                                              ; preds = %148
  %166 = call i64 @x509_sha1_oid(%struct.asn1_oid* %14)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %190

168:                                              ; preds = %165
  %169 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %170 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 6
  %175 = load i32, i32* %174, align 4
  %176 = icmp ne i32 %175, 5
  br i1 %176, label %177, label %189

177:                                              ; preds = %168
  %178 = load i32, i32* @MSG_DEBUG, align 4
  %179 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %180 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 6
  %185 = load i32, i32* %184, align 4
  %186 = call i32 (i32, i8*, ...) @wpa_printf(i32 %178, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.6, i64 0, i64 0), i32 %185)
  %187 = load i32*, i32** %7, align 8
  %188 = call i32 @os_free(i32* %187)
  store i32 -1, i32* %3, align 4
  br label %378

189:                                              ; preds = %168
  br label %261

190:                                              ; preds = %165
  %191 = call i64 @x509_sha256_oid(%struct.asn1_oid* %14)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %215

193:                                              ; preds = %190
  %194 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %195 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 6
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %200, 11
  br i1 %201, label %202, label %214

202:                                              ; preds = %193
  %203 = load i32, i32* @MSG_DEBUG, align 4
  %204 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %205 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 6
  %210 = load i32, i32* %209, align 4
  %211 = call i32 (i32, i8*, ...) @wpa_printf(i32 %203, i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str.7, i64 0, i64 0), i32 %210)
  %212 = load i32*, i32** %7, align 8
  %213 = call i32 @os_free(i32* %212)
  store i32 -1, i32* %3, align 4
  br label %378

214:                                              ; preds = %193
  br label %261

215:                                              ; preds = %190
  %216 = call i32 @x509_digest_oid(%struct.asn1_oid* %14)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %215
  %219 = load i32, i32* @MSG_DEBUG, align 4
  %220 = call i32 (i32, i8*, ...) @wpa_printf(i32 %219, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 @os_free(i32* %221)
  store i32 -1, i32* %3, align 4
  br label %378

223:                                              ; preds = %215
  %224 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %14, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 5
  %227 = load i32, i32* %226, align 4
  switch i32 %227, label %251 [
    i32 5, label %228
    i32 2, label %250
    i32 4, label %250
  ]

228:                                              ; preds = %223
  %229 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %230 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 1
  %233 = load i32*, i32** %232, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 6
  %235 = load i32, i32* %234, align 4
  %236 = icmp ne i32 %235, 4
  br i1 %236, label %237, label %249

237:                                              ; preds = %228
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %240 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %241, i32 0, i32 1
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 6
  %245 = load i32, i32* %244, align 4
  %246 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.9, i64 0, i64 0), i32 %245)
  %247 = load i32*, i32** %7, align 8
  %248 = call i32 @os_free(i32* %247)
  store i32 -1, i32* %3, align 4
  br label %378

249:                                              ; preds = %228
  br label %260

250:                                              ; preds = %223, %223
  br label %251

251:                                              ; preds = %223, %250
  %252 = load i32, i32* @MSG_DEBUG, align 4
  %253 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %14, i32 0, i32 0
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = call i32 (i32, i8*, ...) @wpa_printf(i32 %252, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i32 %256)
  %258 = load i32*, i32** %7, align 8
  %259 = call i32 @os_free(i32* %258)
  store i32 -1, i32* %3, align 4
  br label %378

260:                                              ; preds = %249
  br label %261

261:                                              ; preds = %260, %214, %189
  %262 = load i32*, i32** %11, align 8
  store i32* %262, i32** %8, align 8
  %263 = load i32*, i32** %7, align 8
  %264 = load i64, i64* %12, align 8
  %265 = getelementptr inbounds i32, i32* %263, i64 %264
  store i32* %265, i32** %9, align 8
  %266 = load i32*, i32** %8, align 8
  %267 = load i32*, i32** %9, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = ptrtoint i32* %267 to i64
  %270 = ptrtoint i32* %268 to i64
  %271 = sub i64 %269, %270
  %272 = sdiv exact i64 %271, 4
  %273 = trunc i64 %272 to i32
  %274 = call i64 @asn1_get_next(i32* %266, i32 %273, %struct.asn1_hdr* %13)
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %286, label %276

276:                                              ; preds = %261
  %277 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %278 = load i32, i32* %277, align 8
  %279 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %280 = icmp ne i32 %278, %279
  br i1 %280, label %286, label %281

281:                                              ; preds = %276
  %282 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %285 = icmp ne i64 %283, %284
  br i1 %285, label %286, label %295

286:                                              ; preds = %281, %276, %261
  %287 = load i32, i32* @MSG_DEBUG, align 4
  %288 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = call i32 (i32, i8*, ...) @wpa_printf(i32 %287, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.11, i64 0, i64 0), i32 %289, i64 %291)
  %293 = load i32*, i32** %7, align 8
  %294 = call i32 @os_free(i32* %293)
  store i32 -1, i32* %3, align 4
  br label %378

295:                                              ; preds = %281
  %296 = load i32, i32* @MSG_MSGDUMP, align 4
  %297 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @wpa_hexdump(i32 %296, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i32* %298, i64 %300)
  %302 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %303 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %303, i32 0, i32 0
  %305 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %304, i32 0, i32 1
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 6
  %308 = load i32, i32* %307, align 4
  switch i32 %308, label %343 [
    i32 4, label %309
    i32 5, label %320
    i32 11, label %331
    i32 2, label %342
    i32 12, label %342
    i32 13, label %342
  ]

309:                                              ; preds = %295
  %310 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %311 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %310, i32 0, i32 3
  %312 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %313 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %312, i32 0, i32 2
  %314 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %315 = call i32 @md5_vector(i32 1, i32* %311, i32* %313, i32* %314)
  store i64 16, i64* %16, align 8
  %316 = load i32, i32* @MSG_MSGDUMP, align 4
  %317 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %318 = load i64, i64* %16, align 8
  %319 = call i32 @wpa_hexdump(i32 %316, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i64 0, i64 0), i32* %317, i64 %318)
  br label %355

320:                                              ; preds = %295
  %321 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %322 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %321, i32 0, i32 3
  %323 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %324 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %323, i32 0, i32 2
  %325 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %326 = call i32 @sha1_vector(i32 1, i32* %322, i32* %324, i32* %325)
  store i64 20, i64* %16, align 8
  %327 = load i32, i32* @MSG_MSGDUMP, align 4
  %328 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %329 = load i64, i64* %16, align 8
  %330 = call i32 @wpa_hexdump(i32 %327, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i32* %328, i64 %329)
  br label %355

331:                                              ; preds = %295
  %332 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %333 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %332, i32 0, i32 3
  %334 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %335 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %334, i32 0, i32 2
  %336 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %337 = call i32 @sha256_vector(i32 1, i32* %333, i32* %335, i32* %336)
  store i64 32, i64* %16, align 8
  %338 = load i32, i32* @MSG_MSGDUMP, align 4
  %339 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %340 = load i64, i64* %16, align 8
  %341 = call i32 @wpa_hexdump(i32 %338, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0), i32* %339, i64 %340)
  br label %355

342:                                              ; preds = %295, %295, %295
  br label %343

343:                                              ; preds = %295, %342
  %344 = load i32, i32* @MSG_INFO, align 4
  %345 = load %struct.x509_certificate*, %struct.x509_certificate** %5, align 8
  %346 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = getelementptr inbounds i32, i32* %349, i64 6
  %351 = load i32, i32* %350, align 4
  %352 = call i32 (i32, i8*, ...) @wpa_printf(i32 %344, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.16, i64 0, i64 0), i32 %351)
  %353 = load i32*, i32** %7, align 8
  %354 = call i32 @os_free(i32* %353)
  store i32 -1, i32* %3, align 4
  br label %378

355:                                              ; preds = %331, %320, %309
  %356 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %357 = load i64, i64* %356, align 8
  %358 = load i64, i64* %16, align 8
  %359 = icmp ne i64 %357, %358
  br i1 %359, label %368, label %360

360:                                              ; preds = %355
  %361 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 2
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds [32 x i32], [32 x i32]* %15, i64 0, i64 0
  %364 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %13, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = call i64 @os_memcmp(i32* %362, i32* %363, i64 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %373

368:                                              ; preds = %360, %355
  %369 = load i32, i32* @MSG_INFO, align 4
  %370 = call i32 (i32, i8*, ...) @wpa_printf(i32 %369, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.17, i64 0, i64 0))
  %371 = load i32*, i32** %7, align 8
  %372 = call i32 @os_free(i32* %371)
  store i32 -1, i32* %3, align 4
  br label %378

373:                                              ; preds = %360
  %374 = load i32*, i32** %7, align 8
  %375 = call i32 @os_free(i32* %374)
  %376 = load i32, i32* @MSG_DEBUG, align 4
  %377 = call i32 (i32, i8*, ...) @wpa_printf(i32 %376, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %378

378:                                              ; preds = %373, %368, %343, %286, %251, %237, %218, %202, %177, %160, %139, %103, %74, %60, %51, %38
  %379 = load i32, i32* %3, align 4
  ret i32 %379
}

declare dso_local i32 @x509_pkcs_oid(%struct.TYPE_4__*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.crypto_public_key* @crypto_public_key_import(i32, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @crypto_public_key_free(%struct.crypto_public_key*) #1

declare dso_local i64 @crypto_public_key_decrypt_pkcs1(%struct.crypto_public_key*, i32, i64, i32*, i64*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i64 @asn1_get_oid(i32*, i64, %struct.asn1_oid*, i32**) #1

declare dso_local i64 @x509_sha1_oid(%struct.asn1_oid*) #1

declare dso_local i64 @x509_sha256_oid(%struct.asn1_oid*) #1

declare dso_local i32 @x509_digest_oid(%struct.asn1_oid*) #1

declare dso_local i32 @md5_vector(i32, i32*, i32*, i32*) #1

declare dso_local i32 @sha1_vector(i32, i32*, i32*, i32*) #1

declare dso_local i32 @sha256_vector(i32, i32*, i32*, i32*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
