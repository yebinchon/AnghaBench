; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_name.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_x509v3.c_x509_parse_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.x509_name = type { i8*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.asn1_hdr = type { i64, i64, i32, i32* }
%struct.asn1_oid = type { i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i64 0, align 8
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"X509: Expected SEQUENCE (Name / RDNSequencer) - found class %d tag 0x%x\00", align 1
@ASN1_TAG_SET = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [73 x i8] c"X509: Expected SET (RelativeDistinguishedName) - found class %d tag 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"X509: Expected SEQUENCE (AttributeTypeAndValue) - found class %d tag 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"X509: Failed to parse AttributeValue\00", align 1
@X509_NAME_ATTR_NOT_USED = common dso_local global i32 0, align 4
@X509_NAME_ATTR_CN = common dso_local global i32 0, align 4
@X509_NAME_ATTR_C = common dso_local global i32 0, align 4
@X509_NAME_ATTR_L = common dso_local global i32 0, align 4
@X509_NAME_ATTR_ST = common dso_local global i32 0, align 4
@X509_NAME_ATTR_O = common dso_local global i32 0, align 4
@X509_NAME_ATTR_OU = common dso_local global i32 0, align 4
@X509_NAME_ATTR_DC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"X509: Unrecognized OID\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [21 x i8] c"X509: Attribute Data\00", align 1
@X509_MAX_NAME_ATTRIBUTES = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [31 x i8] c"X509: Too many Name attributes\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"X509: Reject certificate with embedded NUL byte in a string (%s[NUL])\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.x509_name*, i32**)* @x509_parse_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_parse_name(i32* %0, i64 %1, %struct.x509_name* %2, i32** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.x509_name*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca %struct.asn1_hdr, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.asn1_oid, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.x509_name* %2, %struct.x509_name** %8, align 8
  store i32** %3, i32*** %9, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i64, i64* %7, align 8
  %22 = trunc i64 %21 to i32
  %23 = call i64 @asn1_get_next(i32* %20, i32 %22, %struct.asn1_hdr* %10)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %4
  %26 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %35, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %42

35:                                               ; preds = %30, %25, %4
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %38, i64 %40)
  store i32 -1, i32* %5, align 4
  br label %432

42:                                               ; preds = %30
  %43 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %11, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %45, i64 %48
  %50 = load i32*, i32** %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = icmp ugt i32* %49, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  store i32 -1, i32* %5, align 4
  br label %432

55:                                               ; preds = %42
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = load i32**, i32*** %9, align 8
  store i32* %60, i32** %61, align 8
  store i32* %60, i32** %12, align 8
  br label %62

62:                                               ; preds = %408, %352, %282, %55
  %63 = load i32*, i32** %11, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = icmp ult i32* %63, %64
  br i1 %65, label %66, label %431

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %12, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = ptrtoint i32* %68 to i64
  %71 = ptrtoint i32* %69 to i64
  %72 = sub i64 %70, %71
  %73 = sdiv exact i64 %72, 4
  %74 = trunc i64 %73 to i32
  %75 = call i64 @asn1_get_next(i32* %67, i32 %74, %struct.asn1_hdr* %10)
  %76 = icmp slt i64 %75, 0
  br i1 %76, label %87, label %77

77:                                               ; preds = %66
  %78 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %87, label %82

82:                                               ; preds = %77
  %83 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @ASN1_TAG_SET, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %96

87:                                               ; preds = %82, %77, %66
  %88 = load i32, i32* @MSG_DEBUG, align 4
  %89 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %88, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %90, i64 %92)
  %94 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %95 = call i32 @x509_free_name(%struct.x509_name* %94)
  store i32 -1, i32* %5, align 4
  br label %432

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  store i32* %98, i32** %13, align 8
  %99 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %100, i64 %103
  store i32* %104, i32** %14, align 8
  store i32* %104, i32** %11, align 8
  %105 = load i32*, i32** %13, align 8
  %106 = load i32*, i32** %14, align 8
  %107 = load i32*, i32** %13, align 8
  %108 = ptrtoint i32* %106 to i64
  %109 = ptrtoint i32* %107 to i64
  %110 = sub i64 %108, %109
  %111 = sdiv exact i64 %110, 4
  %112 = trunc i64 %111 to i32
  %113 = call i64 @asn1_get_next(i32* %105, i32 %112, %struct.asn1_hdr* %10)
  %114 = icmp slt i64 %113, 0
  br i1 %114, label %125, label %115

115:                                              ; preds = %96
  %116 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %119 = icmp ne i64 %117, %118
  br i1 %119, label %125, label %120

120:                                              ; preds = %115
  %121 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %124 = icmp ne i64 %122, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %120, %115, %96
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %126, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %128, i64 %130)
  %132 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %133 = call i32 @x509_free_name(%struct.x509_name* %132)
  store i32 -1, i32* %5, align 4
  br label %432

134:                                              ; preds = %120
  %135 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  store i32* %136, i32** %15, align 8
  %137 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %138, i64 %141
  store i32* %142, i32** %16, align 8
  %143 = load i32*, i32** %15, align 8
  %144 = load i32*, i32** %16, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = ptrtoint i32* %144 to i64
  %147 = ptrtoint i32* %145 to i64
  %148 = sub i64 %146, %147
  %149 = sdiv exact i64 %148, 4
  %150 = trunc i64 %149 to i32
  %151 = call i64 @asn1_get_oid(i32* %143, i32 %150, %struct.asn1_oid* %17, i32** %15)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %134
  %154 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %155 = call i32 @x509_free_name(%struct.x509_name* %154)
  store i32 -1, i32* %5, align 4
  br label %432

156:                                              ; preds = %134
  %157 = load i32*, i32** %15, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = load i32*, i32** %15, align 8
  %160 = ptrtoint i32* %158 to i64
  %161 = ptrtoint i32* %159 to i64
  %162 = sub i64 %160, %161
  %163 = sdiv exact i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i64 @asn1_get_next(i32* %157, i32 %164, %struct.asn1_hdr* %10)
  %166 = icmp slt i64 %165, 0
  br i1 %166, label %172, label %167

167:                                              ; preds = %156
  %168 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @ASN1_CLASS_UNIVERSAL, align 8
  %171 = icmp ne i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %167, %156
  %173 = load i32, i32* @MSG_DEBUG, align 4
  %174 = call i32 (i32, i8*, ...) @wpa_printf(i32 %173, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  %175 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %176 = call i32 @x509_free_name(%struct.x509_name* %175)
  store i32 -1, i32* %5, align 4
  br label %432

177:                                              ; preds = %167
  %178 = load i32, i32* @X509_NAME_ATTR_NOT_USED, align 4
  store i32 %178, i32* %19, align 4
  %179 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp eq i32 %180, 4
  br i1 %181, label %182, label %218

182:                                              ; preds = %177
  %183 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp eq i32 %186, 2
  br i1 %187, label %188, label %218

188:                                              ; preds = %182
  %189 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = icmp eq i32 %192, 5
  br i1 %193, label %194, label %218

194:                                              ; preds = %188
  %195 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 2
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 4
  br i1 %199, label %200, label %218

200:                                              ; preds = %194
  %201 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  switch i32 %204, label %217 [
    i32 3, label %205
    i32 6, label %207
    i32 7, label %209
    i32 8, label %211
    i32 10, label %213
    i32 11, label %215
  ]

205:                                              ; preds = %200
  %206 = load i32, i32* @X509_NAME_ATTR_CN, align 4
  store i32 %206, i32* %19, align 4
  br label %217

207:                                              ; preds = %200
  %208 = load i32, i32* @X509_NAME_ATTR_C, align 4
  store i32 %208, i32* %19, align 4
  br label %217

209:                                              ; preds = %200
  %210 = load i32, i32* @X509_NAME_ATTR_L, align 4
  store i32 %210, i32* %19, align 4
  br label %217

211:                                              ; preds = %200
  %212 = load i32, i32* @X509_NAME_ATTR_ST, align 4
  store i32 %212, i32* %19, align 4
  br label %217

213:                                              ; preds = %200
  %214 = load i32, i32* @X509_NAME_ATTR_O, align 4
  store i32 %214, i32* %19, align 4
  br label %217

215:                                              ; preds = %200
  %216 = load i32, i32* @X509_NAME_ATTR_OU, align 4
  store i32 %216, i32* %19, align 4
  br label %217

217:                                              ; preds = %200, %215, %213, %211, %209, %207, %205
  br label %348

218:                                              ; preds = %194, %188, %182, %177
  %219 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = icmp eq i32 %220, 7
  br i1 %221, label %222, label %298

222:                                              ; preds = %218
  %223 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 1
  br i1 %227, label %228, label %298

228:                                              ; preds = %222
  %229 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %230 = load i32*, i32** %229, align 8
  %231 = getelementptr inbounds i32, i32* %230, i64 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 2
  br i1 %233, label %234, label %298

234:                                              ; preds = %228
  %235 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 2
  %238 = load i32, i32* %237, align 4
  %239 = icmp eq i32 %238, 840
  br i1 %239, label %240, label %298

240:                                              ; preds = %234
  %241 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 3
  %244 = load i32, i32* %243, align 4
  %245 = icmp eq i32 %244, 113549
  br i1 %245, label %246, label %298

246:                                              ; preds = %240
  %247 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = getelementptr inbounds i32, i32* %248, i64 4
  %250 = load i32, i32* %249, align 4
  %251 = icmp eq i32 %250, 1
  br i1 %251, label %252, label %298

252:                                              ; preds = %246
  %253 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %254 = load i32*, i32** %253, align 8
  %255 = getelementptr inbounds i32, i32* %254, i64 5
  %256 = load i32, i32* %255, align 4
  %257 = icmp eq i32 %256, 9
  br i1 %257, label %258, label %298

258:                                              ; preds = %252
  %259 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %260 = load i32*, i32** %259, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 6
  %262 = load i32, i32* %261, align 4
  %263 = icmp eq i32 %262, 1
  br i1 %263, label %264, label %298

264:                                              ; preds = %258
  %265 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %266 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %265, i32 0, i32 0
  %267 = load i8*, i8** %266, align 8
  %268 = call i32 @os_free(i8* %267)
  %269 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  %272 = call i8* @os_malloc(i32 %271)
  %273 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %274 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %273, i32 0, i32 0
  store i8* %272, i8** %274, align 8
  %275 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %276 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %275, i32 0, i32 0
  %277 = load i8*, i8** %276, align 8
  %278 = icmp eq i8* %277, null
  br i1 %278, label %279, label %282

279:                                              ; preds = %264
  %280 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %281 = call i32 @x509_free_name(%struct.x509_name* %280)
  store i32 -1, i32* %5, align 4
  br label %432

282:                                              ; preds = %264
  %283 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %284 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %283, i32 0, i32 0
  %285 = load i8*, i8** %284, align 8
  %286 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %287 = load i32*, i32** %286, align 8
  %288 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = call i32 @os_memcpy(i8* %285, i32* %287, i32 %289)
  %291 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %292 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds i8, i8* %293, i64 %296
  store i8 0, i8* %297, align 1
  br label %62

298:                                              ; preds = %258, %252, %246, %240, %234, %228, %222, %218
  %299 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %300 = load i32, i32* %299, align 8
  %301 = icmp eq i32 %300, 7
  br i1 %301, label %302, label %346

302:                                              ; preds = %298
  %303 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %304 = load i32*, i32** %303, align 8
  %305 = getelementptr inbounds i32, i32* %304, i64 0
  %306 = load i32, i32* %305, align 4
  %307 = icmp eq i32 %306, 0
  br i1 %307, label %308, label %346

308:                                              ; preds = %302
  %309 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %310 = load i32*, i32** %309, align 8
  %311 = getelementptr inbounds i32, i32* %310, i64 1
  %312 = load i32, i32* %311, align 4
  %313 = icmp eq i32 %312, 9
  br i1 %313, label %314, label %346

314:                                              ; preds = %308
  %315 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %316 = load i32*, i32** %315, align 8
  %317 = getelementptr inbounds i32, i32* %316, i64 2
  %318 = load i32, i32* %317, align 4
  %319 = icmp eq i32 %318, 2342
  br i1 %319, label %320, label %346

320:                                              ; preds = %314
  %321 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %322 = load i32*, i32** %321, align 8
  %323 = getelementptr inbounds i32, i32* %322, i64 3
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 19200300
  br i1 %325, label %326, label %346

326:                                              ; preds = %320
  %327 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 4
  %330 = load i32, i32* %329, align 4
  %331 = icmp eq i32 %330, 100
  br i1 %331, label %332, label %346

332:                                              ; preds = %326
  %333 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = getelementptr inbounds i32, i32* %334, i64 5
  %336 = load i32, i32* %335, align 4
  %337 = icmp eq i32 %336, 1
  br i1 %337, label %338, label %346

338:                                              ; preds = %332
  %339 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %340 = load i32*, i32** %339, align 8
  %341 = getelementptr inbounds i32, i32* %340, i64 6
  %342 = load i32, i32* %341, align 4
  %343 = icmp eq i32 %342, 25
  br i1 %343, label %344, label %346

344:                                              ; preds = %338
  %345 = load i32, i32* @X509_NAME_ATTR_DC, align 4
  store i32 %345, i32* %19, align 4
  br label %346

346:                                              ; preds = %344, %338, %332, %326, %320, %314, %308, %302, %298
  br label %347

347:                                              ; preds = %346
  br label %348

348:                                              ; preds = %347, %217
  %349 = load i32, i32* %19, align 4
  %350 = load i32, i32* @X509_NAME_ATTR_NOT_USED, align 4
  %351 = icmp eq i32 %349, %350
  br i1 %351, label %352, label %369

352:                                              ; preds = %348
  %353 = load i32, i32* @MSG_DEBUG, align 4
  %354 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 1
  %355 = load i32*, i32** %354, align 8
  %356 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %17, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = sext i32 %357 to i64
  %359 = mul i64 %358, 4
  %360 = trunc i64 %359 to i32
  %361 = call i32 @wpa_hexdump(i32 %353, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32* %355, i32 %360)
  %362 = load i32, i32* @MSG_MSGDUMP, align 4
  %363 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %364 = load i32*, i32** %363, align 8
  %365 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %366 = load i32, i32* %365, align 8
  %367 = sext i32 %366 to i64
  %368 = call i32 @wpa_hexdump_ascii(i32 %362, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32* %364, i64 %367)
  br label %62

369:                                              ; preds = %348
  %370 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %371 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %370, i32 0, i32 1
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @X509_MAX_NAME_ATTRIBUTES, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %380

375:                                              ; preds = %369
  %376 = load i32, i32* @MSG_INFO, align 4
  %377 = call i32 (i32, i8*, ...) @wpa_printf(i32 %376, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0))
  %378 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %379 = call i32 @x509_free_name(%struct.x509_name* %378)
  store i32 -1, i32* %5, align 4
  br label %432

380:                                              ; preds = %369
  %381 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 3
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %384 = load i32, i32* %383, align 8
  %385 = sext i32 %384 to i64
  %386 = call i64 @dup_binstr(i32* %382, i64 %385)
  %387 = inttoptr i64 %386 to i8*
  store i8* %387, i8** %18, align 8
  %388 = load i8*, i8** %18, align 8
  %389 = icmp eq i8* %388, null
  br i1 %389, label %390, label %393

390:                                              ; preds = %380
  %391 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %392 = call i32 @x509_free_name(%struct.x509_name* %391)
  store i32 -1, i32* %5, align 4
  br label %432

393:                                              ; preds = %380
  %394 = load i8*, i8** %18, align 8
  %395 = call i64 @os_strlen(i8* %394)
  %396 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %10, i32 0, i32 2
  %397 = load i32, i32* %396, align 8
  %398 = sext i32 %397 to i64
  %399 = icmp ne i64 %395, %398
  br i1 %399, label %400, label %408

400:                                              ; preds = %393
  %401 = load i32, i32* @MSG_INFO, align 4
  %402 = load i8*, i8** %18, align 8
  %403 = call i32 (i32, i8*, ...) @wpa_printf(i32 %401, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.7, i64 0, i64 0), i8* %402)
  %404 = load i8*, i8** %18, align 8
  %405 = call i32 @os_free(i8* %404)
  %406 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %407 = call i32 @x509_free_name(%struct.x509_name* %406)
  store i32 -1, i32* %5, align 4
  br label %432

408:                                              ; preds = %393
  %409 = load i32, i32* %19, align 4
  %410 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %411 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %410, i32 0, i32 2
  %412 = load %struct.TYPE_2__*, %struct.TYPE_2__** %411, align 8
  %413 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %414 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %412, i64 %415
  %417 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %416, i32 0, i32 0
  store i32 %409, i32* %417, align 8
  %418 = load i8*, i8** %18, align 8
  %419 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %420 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %419, i32 0, i32 2
  %421 = load %struct.TYPE_2__*, %struct.TYPE_2__** %420, align 8
  %422 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %423 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %421, i64 %424
  %426 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %425, i32 0, i32 1
  store i8* %418, i8** %426, align 8
  %427 = load %struct.x509_name*, %struct.x509_name** %8, align 8
  %428 = getelementptr inbounds %struct.x509_name, %struct.x509_name* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %429, 1
  store i64 %430, i64* %428, align 8
  br label %62

431:                                              ; preds = %62
  store i32 0, i32* %5, align 4
  br label %432

432:                                              ; preds = %431, %400, %390, %375, %279, %172, %153, %125, %87, %54, %35
  %433 = load i32, i32* %5, align 4
  ret i32 %433
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @x509_free_name(%struct.x509_name*) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, %struct.asn1_oid*, i32**) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i8* @os_malloc(i32) #1

declare dso_local i32 @os_memcpy(i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i64 @dup_binstr(i32*, i64) #1

declare dso_local i64 @os_strlen(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
