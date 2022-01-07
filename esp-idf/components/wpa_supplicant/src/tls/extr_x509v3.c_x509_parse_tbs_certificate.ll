; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_tbs_certificate.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_tbs_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_certificate = type { i64, i32, i32, i32, i32 }
%struct.asn1_hdr = type { i32, i32, i32*, i32 }

@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"X509: tbsCertificate did not start with a valid SEQUENCE - found class %d tag 0x%x\00", align 1
@ASN1_CLASS_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@ASN1_TAG_INTEGER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"X509: No INTEGER tag found for version field - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [54 x i8] c"X509: Unexpected version field length %u (expected 1)\00", align 1
@X509_CERT_V1 = common dso_local global i64 0, align 8
@X509_CERT_V2 = common dso_local global i64 0, align 8
@X509_CERT_V3 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"X509: Unsupported version %d\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: Version X.509v%d\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"X509: No INTEGER tag found for serialNumber; class=%d tag=0x%x\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"X509: serialNumber %lu\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"X509: issuer %s\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"X509: subject %s\00", align 1
@.str.9 = private unnamed_addr constant [104 x i8] c"X509: Expected Context-Specific tag to parse optional tbsCertificate field(s); parsed class %d tag 0x%x\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"X509: issuerUniqueID\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"X509: subjectUniqueID\00", align 1
@.str.12 = private unnamed_addr constant [83 x i8] c"X509: Ignored unexpected Context-Specific tag %d in optional tbsCertificate fields\00", align 1
@.str.13 = private unnamed_addr constant [83 x i8] c"X509: X.509%d certificate and Extensions data which are only allowed for version 3\00", align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"X509: Ignored extra tbsCertificate data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.x509_certificate*, i32**)* @x509_parse_tbs_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_tbs_certificate(i32* %0, i64 %1, %struct.x509_certificate* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_certificate*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [128 x i8], align 16
  %15 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_certificate* %2, %struct.x509_certificate** %8, align 8
  store i32** %3, i32*** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i64 @asn1_get_next(i32* %16, i32 %18, %struct.asn1_hdr* %10)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %31, label %21

21:                                               ; preds = %4
  %22 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ASN1_TAG_SEQUENCE, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %26, %21, %4
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %36)
  store i32 -1, i32* %5, align 4
  br label %469

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %11, align 8
  %42 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  %46 = load i32**, i32*** %9, align 8
  store i32* %45, i32** %46, align 8
  store i32* %45, i32** %12, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = load i32*, i32** %12, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = ptrtoint i32* %48 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = call i64 @asn1_get_next(i32* %47, i32 %54, %struct.asn1_hdr* %10)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %38
  store i32 -1, i32* %5, align 4
  br label %469

58:                                               ; preds = %38
  %59 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %11, align 8
  %61 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %164

65:                                               ; preds = %58
  %66 = load i32*, i32** %11, align 8
  %67 = load i32*, i32** %12, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = ptrtoint i32* %67 to i64
  %70 = ptrtoint i32* %68 to i64
  %71 = sub i64 %69, %70
  %72 = sdiv exact i64 %71, 4
  %73 = trunc i64 %72 to i32
  %74 = call i64 @asn1_get_next(i32* %66, i32 %73, %struct.asn1_hdr* %10)
  %75 = icmp slt i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %65
  store i32 -1, i32* %5, align 4
  br label %469

77:                                               ; preds = %65
  %78 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %82, %77
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i32 %90, i32 %92)
  store i32 -1, i32* %5, align 4
  br label %469

94:                                               ; preds = %82
  %95 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %103

98:                                               ; preds = %94
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %5, align 4
  br label %469

103:                                              ; preds = %94
  %104 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  store i32* %105, i32** %11, align 8
  %106 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  store i64 %108, i64* %13, align 8
  store i64 0, i64* %15, align 8
  br label %109

109:                                              ; preds = %112, %103
  %110 = load i64, i64* %13, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %123

112:                                              ; preds = %109
  %113 = load i64, i64* %15, align 8
  %114 = shl i64 %113, 8
  store i64 %114, i64* %15, align 8
  %115 = load i32*, i32** %11, align 8
  %116 = getelementptr inbounds i32, i32* %115, i32 1
  store i32* %116, i32** %11, align 8
  %117 = load i32, i32* %115, align 4
  %118 = sext i32 %117 to i64
  %119 = load i64, i64* %15, align 8
  %120 = or i64 %119, %118
  store i64 %120, i64* %15, align 8
  %121 = load i64, i64* %13, align 8
  %122 = add i64 %121, -1
  store i64 %122, i64* %13, align 8
  br label %109

123:                                              ; preds = %109
  %124 = load i64, i64* %15, align 8
  %125 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %126 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %128 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @X509_CERT_V1, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %123
  %133 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %134 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @X509_CERT_V2, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %140 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @X509_CERT_V3, align 8
  %143 = icmp ne i64 %141, %142
  br i1 %143, label %144, label %151

144:                                              ; preds = %138
  %145 = load i32, i32* @MSG_DEBUG, align 4
  %146 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %147 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add i64 %148, 1
  %150 = call i32 (i32, i8*, ...) @wpa_printf(i32 %145, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %149)
  store i32 -1, i32* %5, align 4
  br label %469

151:                                              ; preds = %138, %132, %123
  %152 = load i32*, i32** %11, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = call i64 @asn1_get_next(i32* %152, i32 %159, %struct.asn1_hdr* %10)
  %161 = icmp slt i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  store i32 -1, i32* %5, align 4
  br label %469

163:                                              ; preds = %151
  br label %168

164:                                              ; preds = %58
  %165 = load i64, i64* @X509_CERT_V1, align 8
  %166 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %167 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %164, %163
  %169 = load i32, i32* @MSG_DEBUG, align 4
  %170 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %171 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %173)
  %175 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %176 = load i32, i32* %175, align 8
  %177 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %178 = icmp ne i32 %176, %177
  br i1 %178, label %184, label %179

179:                                              ; preds = %168
  %180 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @ASN1_TAG_INTEGER, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %184, label %191

184:                                              ; preds = %179, %168
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %187, i32 %189)
  store i32 -1, i32* %5, align 4
  br label %469

191:                                              ; preds = %179
  %192 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  store i32* %193, i32** %11, align 8
  %194 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = sext i32 %195 to i64
  store i64 %196, i64* %13, align 8
  br label %197

197:                                              ; preds = %200, %191
  %198 = load i64, i64* %13, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %202 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = shl i32 %203, 8
  store i32 %204, i32* %202, align 8
  %205 = load i32*, i32** %11, align 8
  %206 = getelementptr inbounds i32, i32* %205, i32 1
  store i32* %206, i32** %11, align 8
  %207 = load i32, i32* %205, align 4
  %208 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %209 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load i64, i64* %13, align 8
  %213 = add i64 %212, -1
  store i64 %213, i64* %13, align 8
  br label %197

214:                                              ; preds = %197
  %215 = load i32, i32* @MSG_DEBUG, align 4
  %216 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %217 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = call i32 (i32, i8*, ...) @wpa_printf(i32 %215, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %218)
  %220 = load i32*, i32** %11, align 8
  %221 = load i32*, i32** %12, align 8
  %222 = load i32*, i32** %11, align 8
  %223 = ptrtoint i32* %221 to i64
  %224 = ptrtoint i32* %222 to i64
  %225 = sub i64 %223, %224
  %226 = sdiv exact i64 %225, 4
  %227 = trunc i64 %226 to i32
  %228 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %229 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %228, i32 0, i32 4
  %230 = call i64 @x509_parse_algorithm_identifier(i32* %220, i32 %227, i32* %229, i32** %11)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %233

232:                                              ; preds = %214
  store i32 -1, i32* %5, align 4
  br label %469

233:                                              ; preds = %214
  %234 = load i32*, i32** %11, align 8
  %235 = load i32*, i32** %12, align 8
  %236 = load i32*, i32** %11, align 8
  %237 = ptrtoint i32* %235 to i64
  %238 = ptrtoint i32* %236 to i64
  %239 = sub i64 %237, %238
  %240 = sdiv exact i64 %239, 4
  %241 = trunc i64 %240 to i32
  %242 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %243 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %242, i32 0, i32 3
  %244 = call i64 @x509_parse_name(i32* %234, i32 %241, i32* %243, i32** %11)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %247

246:                                              ; preds = %233
  store i32 -1, i32* %5, align 4
  br label %469

247:                                              ; preds = %233
  %248 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %249 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %248, i32 0, i32 3
  %250 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %251 = call i32 @x509_name_string(i32* %249, i8* %250, i32 128)
  %252 = load i32, i32* @MSG_DEBUG, align 4
  %253 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %254 = call i32 (i32, i8*, ...) @wpa_printf(i32 %252, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i8* %253)
  %255 = load i32*, i32** %11, align 8
  %256 = load i32*, i32** %12, align 8
  %257 = load i32*, i32** %11, align 8
  %258 = ptrtoint i32* %256 to i64
  %259 = ptrtoint i32* %257 to i64
  %260 = sub i64 %258, %259
  %261 = sdiv exact i64 %260, 4
  %262 = trunc i64 %261 to i32
  %263 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %264 = call i64 @x509_parse_validity(i32* %255, i32 %262, %struct.x509_certificate* %263, i32** %11)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %266, label %267

266:                                              ; preds = %247
  store i32 -1, i32* %5, align 4
  br label %469

267:                                              ; preds = %247
  %268 = load i32*, i32** %11, align 8
  %269 = load i32*, i32** %12, align 8
  %270 = load i32*, i32** %11, align 8
  %271 = ptrtoint i32* %269 to i64
  %272 = ptrtoint i32* %270 to i64
  %273 = sub i64 %271, %272
  %274 = sdiv exact i64 %273, 4
  %275 = trunc i64 %274 to i32
  %276 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %277 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %276, i32 0, i32 2
  %278 = call i64 @x509_parse_name(i32* %268, i32 %275, i32* %277, i32** %11)
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %281

280:                                              ; preds = %267
  store i32 -1, i32* %5, align 4
  br label %469

281:                                              ; preds = %267
  %282 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %283 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %282, i32 0, i32 2
  %284 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %285 = call i32 @x509_name_string(i32* %283, i8* %284, i32 128)
  %286 = load i32, i32* @MSG_DEBUG, align 4
  %287 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %288 = call i32 (i32, i8*, ...) @wpa_printf(i32 %286, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0), i8* %287)
  %289 = load i32*, i32** %11, align 8
  %290 = load i32*, i32** %12, align 8
  %291 = load i32*, i32** %11, align 8
  %292 = ptrtoint i32* %290 to i64
  %293 = ptrtoint i32* %291 to i64
  %294 = sub i64 %292, %293
  %295 = sdiv exact i64 %294, 4
  %296 = trunc i64 %295 to i32
  %297 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %298 = call i64 @x509_parse_public_key(i32* %289, i32 %296, %struct.x509_certificate* %297, i32** %11)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %281
  store i32 -1, i32* %5, align 4
  br label %469

301:                                              ; preds = %281
  %302 = load i32*, i32** %11, align 8
  %303 = load i32*, i32** %12, align 8
  %304 = icmp eq i32* %302, %303
  br i1 %304, label %305, label %306

305:                                              ; preds = %301
  store i32 0, i32* %5, align 4
  br label %469

306:                                              ; preds = %301
  %307 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %308 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @X509_CERT_V1, align 8
  %311 = icmp eq i64 %309, %310
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  store i32 0, i32* %5, align 4
  br label %469

313:                                              ; preds = %306
  %314 = load i32*, i32** %11, align 8
  %315 = load i32*, i32** %12, align 8
  %316 = load i32*, i32** %11, align 8
  %317 = ptrtoint i32* %315 to i64
  %318 = ptrtoint i32* %316 to i64
  %319 = sub i64 %317, %318
  %320 = sdiv exact i64 %319, 4
  %321 = trunc i64 %320 to i32
  %322 = call i64 @asn1_get_next(i32* %314, i32 %321, %struct.asn1_hdr* %10)
  %323 = icmp slt i64 %322, 0
  br i1 %323, label %329, label %324

324:                                              ; preds = %313
  %325 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %326 = load i32, i32* %325, align 8
  %327 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %336

329:                                              ; preds = %324, %313
  %330 = load i32, i32* @MSG_DEBUG, align 4
  %331 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %332 = load i32, i32* %331, align 8
  %333 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = call i32 (i32, i8*, ...) @wpa_printf(i32 %330, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %332, i32 %334)
  store i32 -1, i32* %5, align 4
  br label %469

336:                                              ; preds = %324
  %337 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = icmp eq i32 %338, 1
  br i1 %339, label %340, label %376

340:                                              ; preds = %336
  %341 = load i32, i32* @MSG_DEBUG, align 4
  %342 = call i32 (i32, i8*, ...) @wpa_printf(i32 %341, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0))
  %343 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %344 = load i32*, i32** %343, align 8
  %345 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %346 = load i32, i32* %345, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i32, i32* %344, i64 %347
  %349 = load i32*, i32** %12, align 8
  %350 = icmp eq i32* %348, %349
  br i1 %350, label %351, label %352

351:                                              ; preds = %340
  store i32 0, i32* %5, align 4
  br label %469

352:                                              ; preds = %340
  %353 = load i32*, i32** %11, align 8
  %354 = load i32*, i32** %12, align 8
  %355 = load i32*, i32** %11, align 8
  %356 = ptrtoint i32* %354 to i64
  %357 = ptrtoint i32* %355 to i64
  %358 = sub i64 %356, %357
  %359 = sdiv exact i64 %358, 4
  %360 = trunc i64 %359 to i32
  %361 = call i64 @asn1_get_next(i32* %353, i32 %360, %struct.asn1_hdr* %10)
  %362 = icmp slt i64 %361, 0
  br i1 %362, label %368, label %363

363:                                              ; preds = %352
  %364 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %367 = icmp ne i32 %365, %366
  br i1 %367, label %368, label %375

368:                                              ; preds = %363, %352
  %369 = load i32, i32* @MSG_DEBUG, align 4
  %370 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %373 = load i32, i32* %372, align 8
  %374 = call i32 (i32, i8*, ...) @wpa_printf(i32 %369, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %371, i32 %373)
  store i32 -1, i32* %5, align 4
  br label %469

375:                                              ; preds = %363
  br label %376

376:                                              ; preds = %375, %336
  %377 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %378 = load i32, i32* %377, align 8
  %379 = icmp eq i32 %378, 2
  br i1 %379, label %380, label %416

380:                                              ; preds = %376
  %381 = load i32, i32* @MSG_DEBUG, align 4
  %382 = call i32 (i32, i8*, ...) @wpa_printf(i32 %381, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  %383 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %384 = load i32*, i32** %383, align 8
  %385 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %386 = load i32, i32* %385, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds i32, i32* %384, i64 %387
  %389 = load i32*, i32** %12, align 8
  %390 = icmp eq i32* %388, %389
  br i1 %390, label %391, label %392

391:                                              ; preds = %380
  store i32 0, i32* %5, align 4
  br label %469

392:                                              ; preds = %380
  %393 = load i32*, i32** %11, align 8
  %394 = load i32*, i32** %12, align 8
  %395 = load i32*, i32** %11, align 8
  %396 = ptrtoint i32* %394 to i64
  %397 = ptrtoint i32* %395 to i64
  %398 = sub i64 %396, %397
  %399 = sdiv exact i64 %398, 4
  %400 = trunc i64 %399 to i32
  %401 = call i64 @asn1_get_next(i32* %393, i32 %400, %struct.asn1_hdr* %10)
  %402 = icmp slt i64 %401, 0
  br i1 %402, label %408, label %403

403:                                              ; preds = %392
  %404 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %405 = load i32, i32* %404, align 8
  %406 = load i32, i32* @ASN1_CLASS_CONTEXT_SPECIFIC, align 4
  %407 = icmp ne i32 %405, %406
  br i1 %407, label %408, label %415

408:                                              ; preds = %403, %392
  %409 = load i32, i32* @MSG_DEBUG, align 4
  %410 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %413 = load i32, i32* %412, align 8
  %414 = call i32 (i32, i8*, ...) @wpa_printf(i32 %409, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str.9, i64 0, i64 0), i32 %411, i32 %413)
  store i32 -1, i32* %5, align 4
  br label %469

415:                                              ; preds = %403
  br label %416

416:                                              ; preds = %415, %376
  %417 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = icmp ne i32 %418, 3
  br i1 %419, label %420, label %425

420:                                              ; preds = %416
  %421 = load i32, i32* @MSG_DEBUG, align 4
  %422 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %423 = load i32, i32* %422, align 8
  %424 = call i32 (i32, i8*, ...) @wpa_printf(i32 %421, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.12, i64 0, i64 0), i32 %423)
  store i32 0, i32* %5, align 4
  br label %469

425:                                              ; preds = %416
  %426 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %427 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %426, i32 0, i32 0
  %428 = load i64, i64* %427, align 8
  %429 = load i64, i64* @X509_CERT_V3, align 8
  %430 = icmp ne i64 %428, %429
  br i1 %430, label %431, label %438

431:                                              ; preds = %425
  %432 = load i32, i32* @MSG_DEBUG, align 4
  %433 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %434 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %433, i32 0, i32 0
  %435 = load i64, i64* %434, align 8
  %436 = add i64 %435, 1
  %437 = call i32 (i32, i8*, ...) @wpa_printf(i32 %432, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.13, i64 0, i64 0), i64 %436)
  store i32 -1, i32* %5, align 4
  br label %469

438:                                              ; preds = %425
  %439 = load %struct.x509_certificate*, %struct.x509_certificate** %8, align 8
  %440 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %441 = load i32*, i32** %440, align 8
  %442 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %443 = load i32, i32* %442, align 4
  %444 = call i64 @x509_parse_extensions(%struct.x509_certificate* %439, i32* %441, i32 %443)
  %445 = icmp slt i64 %444, 0
  br i1 %445, label %446, label %447

446:                                              ; preds = %438
  store i32 -1, i32* %5, align 4
  br label %469

447:                                              ; preds = %438
  %448 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %449 = load i32*, i32** %448, align 8
  %450 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %451 = load i32, i32* %450, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds i32, i32* %449, i64 %452
  store i32* %453, i32** %11, align 8
  %454 = load i32*, i32** %11, align 8
  %455 = load i32*, i32** %12, align 8
  %456 = icmp ult i32* %454, %455
  br i1 %456, label %457, label %468

457:                                              ; preds = %447
  %458 = load i32, i32* @MSG_DEBUG, align 4
  %459 = load i32*, i32** %11, align 8
  %460 = load i32*, i32** %12, align 8
  %461 = load i32*, i32** %11, align 8
  %462 = ptrtoint i32* %460 to i64
  %463 = ptrtoint i32* %461 to i64
  %464 = sub i64 %462, %463
  %465 = sdiv exact i64 %464, 4
  %466 = trunc i64 %465 to i32
  %467 = call i32 @wpa_hexdump(i32 %458, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.14, i64 0, i64 0), i32* %459, i32 %466)
  br label %468

468:                                              ; preds = %457, %447
  store i32 0, i32* %5, align 4
  br label %469

469:                                              ; preds = %468, %446, %431, %420, %408, %391, %368, %351, %329, %312, %305, %300, %280, %266, %246, %232, %184, %162, %144, %98, %87, %76, %57, %31
  %470 = load i32, i32* %5, align 4
  ret i32 %470
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @x509_parse_algorithm_identifier(i32*, i32, i32*, i32**) #1

declare dso_local i64 @x509_parse_name(i32*, i32, i32*, i32**) #1

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i64 @x509_parse_validity(i32*, i32, %struct.x509_certificate*, i32**) #1

declare dso_local i64 @x509_parse_public_key(i32*, i32, %struct.x509_certificate*, i32**) #1

declare dso_local i64 @x509_parse_extensions(%struct.x509_certificate*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
