; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_rsassa_pss_params.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509.c_mbedtls_x509_get_rsassa_pss_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64 }

@MBEDTLS_MD_SHA1 = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_ALG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_OID_MGF1 = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_OID_NOT_FOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_x509_get_rsassa_pss_params(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_9__, align 8
  %16 = alloca %struct.TYPE_9__, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load i32, i32* @MBEDTLS_MD_SHA1, align 4
  %19 = load i32*, i32** %7, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @MBEDTLS_MD_SHA1, align 4
  %21 = load i32*, i32** %8, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 20, i32* %22, align 4
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %27 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %32 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %243

34:                                               ; preds = %4
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  store i8* %43, i8** %12, align 8
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %12, align 8
  %46 = icmp eq i8* %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 0, i32* %5, align 4
  br label %243

48:                                               ; preds = %34
  %49 = load i8*, i8** %12, align 8
  %50 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %51 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mbedtls_asn1_get_tag(i8** %11, i8* %49, i64* %14, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %81

55:                                               ; preds = %48
  %56 = load i8*, i8** %11, align 8
  %57 = load i64, i64* %14, align 8
  %58 = getelementptr inbounds i8, i8* %56, i64 %57
  store i8* %58, i8** %13, align 8
  %59 = load i8*, i8** %13, align 8
  %60 = call i32 @mbedtls_x509_get_alg_null(i8** %11, i8* %59, %struct.TYPE_9__* %15)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %243

64:                                               ; preds = %55
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @mbedtls_oid_get_md_alg(%struct.TYPE_9__* %15, i32* %65)
  store i32 %66, i32* %10, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  store i32 %71, i32* %5, align 4
  br label %243

72:                                               ; preds = %64
  %73 = load i8*, i8** %11, align 8
  %74 = load i8*, i8** %13, align 8
  %75 = icmp ne i8* %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %78 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %79 = add nsw i32 %77, %78
  store i32 %79, i32* %5, align 4
  br label %243

80:                                               ; preds = %72
  br label %90

81:                                               ; preds = %48
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %81
  %86 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %87 = load i32, i32* %10, align 4
  %88 = add nsw i32 %86, %87
  store i32 %88, i32* %5, align 4
  br label %243

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %80
  %91 = load i8*, i8** %11, align 8
  %92 = load i8*, i8** %12, align 8
  %93 = icmp eq i8* %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %243

95:                                               ; preds = %90
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %98 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %99 = or i32 %97, %98
  %100 = or i32 %99, 1
  %101 = call i32 @mbedtls_asn1_get_tag(i8** %11, i8* %96, i64* %14, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %135

103:                                              ; preds = %95
  %104 = load i8*, i8** %11, align 8
  %105 = load i64, i64* %14, align 8
  %106 = getelementptr inbounds i8, i8* %104, i64 %105
  store i8* %106, i8** %13, align 8
  %107 = load i8*, i8** %13, align 8
  %108 = call i32 @mbedtls_x509_get_alg(i8** %11, i8* %107, %struct.TYPE_9__* %15, %struct.TYPE_9__* %16)
  store i32 %108, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %103
  %111 = load i32, i32* %10, align 4
  store i32 %111, i32* %5, align 4
  br label %243

112:                                              ; preds = %103
  %113 = load i32, i32* @MBEDTLS_OID_MGF1, align 4
  %114 = call i64 @MBEDTLS_OID_CMP(i32 %113, %struct.TYPE_9__* %15)
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %112
  %117 = load i32, i32* @MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE, align 4
  %118 = load i32, i32* @MBEDTLS_ERR_OID_NOT_FOUND, align 4
  %119 = add nsw i32 %117, %118
  store i32 %119, i32* %5, align 4
  br label %243

120:                                              ; preds = %112
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @x509_get_hash_alg(%struct.TYPE_9__* %16, i32* %121)
  store i32 %122, i32* %10, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %120
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %5, align 4
  br label %243

126:                                              ; preds = %120
  %127 = load i8*, i8** %11, align 8
  %128 = load i8*, i8** %13, align 8
  %129 = icmp ne i8* %127, %128
  br i1 %129, label %130, label %134

130:                                              ; preds = %126
  %131 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %132 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %5, align 4
  br label %243

134:                                              ; preds = %126
  br label %144

135:                                              ; preds = %95
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %138 = icmp ne i32 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %141 = load i32, i32* %10, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %5, align 4
  br label %243

143:                                              ; preds = %135
  br label %144

144:                                              ; preds = %143, %134
  %145 = load i8*, i8** %11, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = icmp eq i8* %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %5, align 4
  br label %243

149:                                              ; preds = %144
  %150 = load i8*, i8** %12, align 8
  %151 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %152 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %153 = or i32 %151, %152
  %154 = or i32 %153, 2
  %155 = call i32 @mbedtls_asn1_get_tag(i8** %11, i8* %150, i64* %14, i32 %154)
  store i32 %155, i32* %10, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %178

157:                                              ; preds = %149
  %158 = load i8*, i8** %11, align 8
  %159 = load i64, i64* %14, align 8
  %160 = getelementptr inbounds i8, i8* %158, i64 %159
  store i8* %160, i8** %13, align 8
  %161 = load i8*, i8** %13, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @mbedtls_asn1_get_int(i8** %11, i8* %161, i32* %162)
  store i32 %163, i32* %10, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %167 = load i32, i32* %10, align 4
  %168 = add nsw i32 %166, %167
  store i32 %168, i32* %5, align 4
  br label %243

169:                                              ; preds = %157
  %170 = load i8*, i8** %11, align 8
  %171 = load i8*, i8** %13, align 8
  %172 = icmp ne i8* %170, %171
  br i1 %172, label %173, label %177

173:                                              ; preds = %169
  %174 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %175 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %176 = add nsw i32 %174, %175
  store i32 %176, i32* %5, align 4
  br label %243

177:                                              ; preds = %169
  br label %187

178:                                              ; preds = %149
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %186

182:                                              ; preds = %178
  %183 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %183, %184
  store i32 %185, i32* %5, align 4
  br label %243

186:                                              ; preds = %178
  br label %187

187:                                              ; preds = %186, %177
  %188 = load i8*, i8** %11, align 8
  %189 = load i8*, i8** %12, align 8
  %190 = icmp eq i8* %188, %189
  br i1 %190, label %191, label %192

191:                                              ; preds = %187
  store i32 0, i32* %5, align 4
  br label %243

192:                                              ; preds = %187
  %193 = load i8*, i8** %12, align 8
  %194 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %195 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %196 = or i32 %194, %195
  %197 = or i32 %196, 3
  %198 = call i32 @mbedtls_asn1_get_tag(i8** %11, i8* %193, i64* %14, i32 %197)
  store i32 %198, i32* %10, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %225

200:                                              ; preds = %192
  %201 = load i8*, i8** %11, align 8
  %202 = load i64, i64* %14, align 8
  %203 = getelementptr inbounds i8, i8* %201, i64 %202
  store i8* %203, i8** %13, align 8
  %204 = load i8*, i8** %13, align 8
  %205 = call i32 @mbedtls_asn1_get_int(i8** %11, i8* %204, i32* %17)
  store i32 %205, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %208, %209
  store i32 %210, i32* %5, align 4
  br label %243

211:                                              ; preds = %200
  %212 = load i8*, i8** %11, align 8
  %213 = load i8*, i8** %13, align 8
  %214 = icmp ne i8* %212, %213
  br i1 %214, label %215, label %219

215:                                              ; preds = %211
  %216 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %217 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %218 = add nsw i32 %216, %217
  store i32 %218, i32* %5, align 4
  br label %243

219:                                              ; preds = %211
  %220 = load i32, i32* %17, align 4
  %221 = icmp ne i32 %220, 1
  br i1 %221, label %222, label %224

222:                                              ; preds = %219
  %223 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  store i32 %223, i32* %5, align 4
  br label %243

224:                                              ; preds = %219
  br label %234

225:                                              ; preds = %192
  %226 = load i32, i32* %10, align 4
  %227 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %225
  %230 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %231 = load i32, i32* %10, align 4
  %232 = add nsw i32 %230, %231
  store i32 %232, i32* %5, align 4
  br label %243

233:                                              ; preds = %225
  br label %234

234:                                              ; preds = %233, %224
  %235 = load i8*, i8** %11, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = icmp ne i8* %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %234
  %239 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_ALG, align 4
  %240 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %241 = add nsw i32 %239, %240
  store i32 %241, i32* %5, align 4
  br label %243

242:                                              ; preds = %234
  store i32 0, i32* %5, align 4
  br label %243

243:                                              ; preds = %242, %238, %229, %222, %215, %207, %191, %182, %173, %165, %148, %139, %130, %124, %116, %110, %94, %85, %76, %68, %62, %47, %30
  %244 = load i32, i32* %5, align 4
  ret i32 %244
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_x509_get_alg_null(i8**, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_oid_get_md_alg(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @mbedtls_x509_get_alg(i8**, i8*, %struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i64 @MBEDTLS_OID_CMP(i32, %struct.TYPE_9__*) #1

declare dso_local i32 @x509_get_hash_alg(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
