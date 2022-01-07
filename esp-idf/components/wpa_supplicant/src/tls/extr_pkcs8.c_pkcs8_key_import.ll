; ModuleID = '/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs8.c_pkcs8_key_import.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/wpa_supplicant/src/tls/extr_pkcs8.c_pkcs8_key_import.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.crypto_private_key = type { i32 }
%struct.asn1_hdr = type { i64, i32, i32*, i32 }
%struct.bignum = type { i32 }
%struct.asn1_oid = type { i32, i32* }

@ASN1_CLASS_UNIVERSAL = common dso_local global i32 0, align 4
@ASN1_TAG_SEQUENCE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"PKCS #8: Does not start with PKCS #8 header (SEQUENCE); assume PKCS #8 not used\00", align 1
@ASN1_TAG_INTEGER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [77 x i8] c"PKCS #8: Expected INTEGER - found class %d tag 0x%x; assume PKCS #8 not used\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"PKCS #8: Failed to parse INTEGER\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"PKCS #8: Expected zero INTEGER in the beginning of private key; not found; assume PKCS #8 not used\00", align 1
@.str.4 = private unnamed_addr constant [100 x i8] c"PKCS #8: Expected SEQUENCE (AlgorithmIdentifier) - found class %d tag 0x%x; assume PKCS #8 not used\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c"PKCS #8: Failed to parse OID (algorithm); assume PKCS #8 not used\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"PKCS #8: algorithm=%s\00", align 1
@.str.7 = private unnamed_addr constant [46 x i8] c"PKCS #8: Unsupported private key algorithm %s\00", align 1
@ASN1_TAG_OCTETSTRING = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [69 x i8] c"PKCS #8: Expected OCTETSTRING (privateKey) - found class %d tag 0x%x\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"PKCS #8: Try to parse RSAPrivateKey\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.crypto_private_key* @pkcs8_key_import(i32* %0, i64 %1) #0 {
  %3 = alloca %struct.crypto_private_key*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.asn1_hdr, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.bignum*, align 8
  %10 = alloca %struct.asn1_oid, align 8
  %11 = alloca [80 x i8], align 16
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load i32*, i32** %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = trunc i64 %13 to i32
  %15 = call i64 @asn1_get_next(i32* %12, i32 %14, %struct.asn1_hdr* %6)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %22, %17, %2
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0))
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = ptrtoint i32* %39 to i64
  %42 = ptrtoint i32* %40 to i64
  %43 = sub i64 %41, %42
  %44 = sdiv exact i64 %43, 4
  %45 = trunc i64 %44 to i32
  %46 = call i64 @asn1_get_next(i32* %38, i32 %45, %struct.asn1_hdr* %6)
  %47 = icmp slt i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %30
  %49 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %52 = icmp ne i32 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @ASN1_TAG_INTEGER, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %53, %48, %30
  %59 = load i32, i32* @MSG_DEBUG, align 4
  %60 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %59, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %63)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

65:                                               ; preds = %53
  %66 = call %struct.bignum* (...) @bignum_init()
  store %struct.bignum* %66, %struct.bignum** %9, align 8
  %67 = load %struct.bignum*, %struct.bignum** %9, align 8
  %68 = icmp eq %struct.bignum* %67, null
  br i1 %68, label %69, label %70

69:                                               ; preds = %65
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

70:                                               ; preds = %65
  %71 = load %struct.bignum*, %struct.bignum** %9, align 8
  %72 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @bignum_set_unsigned_bin(%struct.bignum* %71, i32* %73, i32 %75)
  %77 = icmp slt i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %70
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %81 = load %struct.bignum*, %struct.bignum** %9, align 8
  %82 = call i32 @bignum_deinit(%struct.bignum* %81)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

83:                                               ; preds = %70
  %84 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32* %89, i32** %7, align 8
  %90 = load %struct.bignum*, %struct.bignum** %9, align 8
  %91 = call i64 @bignum_cmp_d(%struct.bignum* %90, i32 0)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %83
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.bignum*, %struct.bignum** %9, align 8
  %97 = call i32 @bignum_deinit(%struct.bignum* %96)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

98:                                               ; preds = %83
  %99 = load %struct.bignum*, %struct.bignum** %9, align 8
  %100 = call i32 @bignum_deinit(%struct.bignum* %99)
  %101 = load i32*, i32** %7, align 8
  %102 = load i64, i64* %5, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i64 @asn1_get_next(i32* %101, i32 %103, %struct.asn1_hdr* %6)
  %105 = icmp slt i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %98
  %107 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %110 = icmp ne i32 %108, %109
  br i1 %110, label %116, label %111

111:                                              ; preds = %106
  %112 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @ASN1_TAG_SEQUENCE, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %111, %106, %98
  %117 = load i32, i32* @MSG_DEBUG, align 4
  %118 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %117, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.4, i64 0, i64 0), i32 %119, i64 %121)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

123:                                              ; preds = %111
  %124 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %125 = load i32*, i32** %124, align 8
  %126 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = call i64 @asn1_get_oid(i32* %125, i32 %127, %struct.asn1_oid* %10, i32** %7)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %123
  %131 = load i32, i32* @MSG_DEBUG, align 4
  %132 = call i32 (i32, i8*, ...) @wpa_printf(i32 %131, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

133:                                              ; preds = %123
  %134 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %135 = call i32 @asn1_oid_to_str(%struct.asn1_oid* %10, i8* %134, i32 80)
  %136 = load i32, i32* @MSG_DEBUG, align 4
  %137 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %138 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %137)
  %139 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 7
  br i1 %141, label %184, label %142

142:                                              ; preds = %133
  %143 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp ne i32 %146, 1
  br i1 %147, label %184, label %148

148:                                              ; preds = %142
  %149 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp ne i32 %152, 2
  br i1 %153, label %184, label %154

154:                                              ; preds = %148
  %155 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 840
  br i1 %159, label %184, label %160

160:                                              ; preds = %154
  %161 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 3
  %164 = load i32, i32* %163, align 4
  %165 = icmp ne i32 %164, 113549
  br i1 %165, label %184, label %166

166:                                              ; preds = %160
  %167 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 4
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 1
  br i1 %171, label %184, label %172

172:                                              ; preds = %166
  %173 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 5
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 1
  br i1 %177, label %184, label %178

178:                                              ; preds = %172
  %179 = getelementptr inbounds %struct.asn1_oid, %struct.asn1_oid* %10, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 6
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 1
  br i1 %183, label %184, label %188

184:                                              ; preds = %178, %172, %166, %160, %154, %148, %142, %133
  %185 = load i32, i32* @MSG_DEBUG, align 4
  %186 = getelementptr inbounds [80 x i8], [80 x i8]* %11, i64 0, i64 0
  %187 = call i32 (i32, i8*, ...) @wpa_printf(i32 %185, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.7, i64 0, i64 0), i8* %186)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

188:                                              ; preds = %178
  %189 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32, i32* %190, i64 %193
  store i32* %194, i32** %7, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = load i32*, i32** %8, align 8
  %197 = load i32*, i32** %7, align 8
  %198 = ptrtoint i32* %196 to i64
  %199 = ptrtoint i32* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 4
  %202 = trunc i64 %201 to i32
  %203 = call i64 @asn1_get_next(i32* %195, i32 %202, %struct.asn1_hdr* %6)
  %204 = icmp slt i64 %203, 0
  br i1 %204, label %215, label %205

205:                                              ; preds = %188
  %206 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* @ASN1_CLASS_UNIVERSAL, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %215, label %210

210:                                              ; preds = %205
  %211 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = load i64, i64* @ASN1_TAG_OCTETSTRING, align 8
  %214 = icmp ne i64 %212, %213
  br i1 %214, label %215, label %222

215:                                              ; preds = %210, %205, %188
  %216 = load i32, i32* @MSG_DEBUG, align 4
  %217 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 3
  %218 = load i32, i32* %217, align 8
  %219 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = call i32 (i32, i8*, ...) @wpa_printf(i32 %216, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.8, i64 0, i64 0), i32 %218, i64 %220)
  store %struct.crypto_private_key* null, %struct.crypto_private_key** %3, align 8
  br label %231

222:                                              ; preds = %210
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %225 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 2
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds %struct.asn1_hdr, %struct.asn1_hdr* %6, i32 0, i32 1
  %228 = load i32, i32* %227, align 8
  %229 = call i64 @crypto_rsa_import_private_key(i32* %226, i32 %228)
  %230 = inttoptr i64 %229 to %struct.crypto_private_key*
  store %struct.crypto_private_key* %230, %struct.crypto_private_key** %3, align 8
  br label %231

231:                                              ; preds = %222, %215, %184, %130, %116, %93, %78, %69, %58, %27
  %232 = load %struct.crypto_private_key*, %struct.crypto_private_key** %3, align 8
  ret %struct.crypto_private_key* %232
}

declare dso_local i64 @asn1_get_next(i32*, i32, %struct.asn1_hdr*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.bignum* @bignum_init(...) #1

declare dso_local i64 @bignum_set_unsigned_bin(%struct.bignum*, i32*, i32) #1

declare dso_local i32 @bignum_deinit(%struct.bignum*) #1

declare dso_local i64 @bignum_cmp_d(%struct.bignum*, i32) #1

declare dso_local i64 @asn1_get_oid(i32*, i32, %struct.asn1_oid*, i32**) #1

declare dso_local i32 @asn1_oid_to_str(%struct.asn1_oid*, i8*, i32) #1

declare dso_local i64 @crypto_rsa_import_private_key(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
