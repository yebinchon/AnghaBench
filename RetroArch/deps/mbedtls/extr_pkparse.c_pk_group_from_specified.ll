; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_group_from_specified.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_group_from_specified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i8*, i64 }
%struct.TYPE_7__ = type { i32, i8*, %struct.TYPE_9__, i32, i32, i32, i8* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_BIT_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*)* @pk_group_from_specified to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_group_from_specified(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds i8, i8* %18, i64 %21
  store i8* %22, i8** %8, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @mbedtls_asn1_get_int(i8** %7, i8* %23, i32* %12)
  store i32 %24, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %3, align 4
  br label %253

30:                                               ; preds = %2
  %31 = load i32, i32* %12, align 4
  %32 = icmp slt i32 %31, 1
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 3
  br i1 %35, label %36, label %38

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  store i32 %37, i32* %3, align 4
  br label %253

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8
  %40 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %41 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %39, i64* %11, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %253

47:                                               ; preds = %38
  %48 = load i8*, i8** %7, align 8
  %49 = load i64, i64* %11, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8* %50, i8** %9, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %53 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %51, i64* %11, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %3, align 4
  br label %253

57:                                               ; preds = %47
  %58 = load i64, i64* %11, align 8
  %59 = load i32, i32* @MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD, align 4
  %60 = call i64 @MBEDTLS_OID_SIZE(i32 %59)
  %61 = icmp ne i64 %58, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %57
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @MBEDTLS_OID_ANSI_X9_62_PRIME_FIELD, align 4
  %65 = load i64, i64* %11, align 8
  %66 = call i64 @memcmp(i8* %63, i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62, %57
  %69 = load i32, i32* @MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE, align 4
  store i32 %69, i32* %3, align 4
  br label %253

70:                                               ; preds = %62
  %71 = load i64, i64* %11, align 8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 %71
  store i8* %73, i8** %7, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 3
  %77 = call i32 @mbedtls_asn1_get_mpi(i8** %7, i8* %74, i32* %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %70
  %80 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %80, %81
  store i32 %82, i32* %3, align 4
  br label %253

83:                                               ; preds = %70
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 3
  %86 = call i8* @mbedtls_mpi_bitlen(i32* %85)
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = icmp ne i8* %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %83
  %93 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %94 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %95 = add nsw i32 %93, %94
  store i32 %95, i32* %3, align 4
  br label %253

96:                                               ; preds = %83
  %97 = load i8*, i8** %8, align 8
  %98 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %99 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %100 = or i32 %98, %99
  %101 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %97, i64* %11, i32 %100)
  store i32 %101, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %96
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %253

105:                                              ; preds = %96
  %106 = load i8*, i8** %7, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i8, i8* %106, i64 %107
  store i8* %108, i8** %10, align 8
  %109 = load i8*, i8** %10, align 8
  %110 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %111 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %109, i64* %11, i32 %110)
  store i32 %111, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %120, label %113

113:                                              ; preds = %105
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 5
  %116 = load i8*, i8** %7, align 8
  %117 = load i64, i64* %11, align 8
  %118 = call i32 @mbedtls_mpi_read_binary(i32* %115, i8* %116, i64 %117)
  store i32 %118, i32* %6, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %113, %105
  %121 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %122 = load i32, i32* %6, align 4
  %123 = add nsw i32 %121, %122
  store i32 %123, i32* %3, align 4
  br label %253

124:                                              ; preds = %113
  %125 = load i64, i64* %11, align 8
  %126 = load i8*, i8** %7, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 %125
  store i8* %127, i8** %7, align 8
  %128 = load i8*, i8** %10, align 8
  %129 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %130 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %128, i64* %11, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %124
  %133 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 4
  %135 = load i8*, i8** %7, align 8
  %136 = load i64, i64* %11, align 8
  %137 = call i32 @mbedtls_mpi_read_binary(i32* %134, i8* %135, i64 %136)
  store i32 %137, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132, %124
  %140 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %141 = load i32, i32* %6, align 4
  %142 = add nsw i32 %140, %141
  store i32 %142, i32* %3, align 4
  br label %253

143:                                              ; preds = %132
  %144 = load i64, i64* %11, align 8
  %145 = load i8*, i8** %7, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  store i8* %146, i8** %7, align 8
  %147 = load i8*, i8** %10, align 8
  %148 = load i32, i32* @MBEDTLS_ASN1_BIT_STRING, align 4
  %149 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %147, i64* %11, i32 %148)
  store i32 %149, i32* %6, align 4
  %150 = icmp eq i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %143
  %152 = load i64, i64* %11, align 8
  %153 = load i8*, i8** %7, align 8
  %154 = getelementptr inbounds i8, i8* %153, i64 %152
  store i8* %154, i8** %7, align 8
  br label %155

155:                                              ; preds = %151, %143
  %156 = load i8*, i8** %7, align 8
  %157 = load i8*, i8** %10, align 8
  %158 = icmp ne i8* %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %161 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %162 = add nsw i32 %160, %161
  store i32 %162, i32* %3, align 4
  br label %253

163:                                              ; preds = %155
  %164 = load i8*, i8** %8, align 8
  %165 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %166 = call i32 @mbedtls_asn1_get_tag(i8** %7, i8* %164, i64* %11, i32 %165)
  store i32 %166, i32* %6, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %170 = load i32, i32* %6, align 4
  %171 = add nsw i32 %169, %170
  store i32 %171, i32* %3, align 4
  br label %253

172:                                              ; preds = %163
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %174 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %174, i32 0, i32 2
  %176 = load i8*, i8** %7, align 8
  %177 = load i64, i64* %11, align 8
  %178 = call i32 @mbedtls_ecp_point_read_binary(%struct.TYPE_7__* %173, %struct.TYPE_9__* %175, i8* %176, i64 %177)
  store i32 %178, i32* %6, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %234

180:                                              ; preds = %172
  %181 = load i32, i32* %6, align 4
  %182 = load i32, i32* @MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE, align 4
  %183 = icmp ne i32 %181, %182
  br i1 %183, label %231, label %184

184:                                              ; preds = %180
  %185 = load i8*, i8** %7, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 0
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = icmp ne i32 %188, 2
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load i8*, i8** %7, align 8
  %192 = getelementptr inbounds i8, i8* %191, i64 0
  %193 = load i8, i8* %192, align 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %194, 3
  br i1 %195, label %231, label %196

196:                                              ; preds = %190, %184
  %197 = load i64, i64* %11, align 8
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = call i32 @mbedtls_mpi_size(i32* %199)
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = icmp ne i64 %197, %202
  br i1 %203, label %231, label %204

204:                                              ; preds = %196
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %206, i32 0, i32 2
  %208 = load i8*, i8** %7, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 1
  %210 = load i64, i64* %11, align 8
  %211 = sub i64 %210, 1
  %212 = call i32 @mbedtls_mpi_read_binary(i32* %207, i8* %209, i64 %211)
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %231, label %214

214:                                              ; preds = %204
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 1
  %218 = load i8*, i8** %7, align 8
  %219 = getelementptr inbounds i8, i8* %218, i64 0
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = sub nsw i32 %221, 2
  %223 = call i64 @mbedtls_mpi_lset(i32* %217, i32 %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %231, label %225

225:                                              ; preds = %214
  %226 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 2
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 0
  %229 = call i64 @mbedtls_mpi_lset(i32* %228, i32 1)
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %233

231:                                              ; preds = %225, %214, %204, %196, %190, %180
  %232 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  store i32 %232, i32* %3, align 4
  br label %253

233:                                              ; preds = %225
  br label %234

234:                                              ; preds = %233, %172
  %235 = load i64, i64* %11, align 8
  %236 = load i8*, i8** %7, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 %235
  store i8* %237, i8** %7, align 8
  %238 = load i8*, i8** %8, align 8
  %239 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = call i32 @mbedtls_asn1_get_mpi(i8** %7, i8* %238, i32* %240)
  store i32 %241, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %247

243:                                              ; preds = %234
  %244 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %244, %245
  store i32 %246, i32* %3, align 4
  br label %253

247:                                              ; preds = %234
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = call i8* @mbedtls_mpi_bitlen(i32* %249)
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 1
  store i8* %250, i8** %252, align 8
  store i32 0, i32* %3, align 4
  br label %253

253:                                              ; preds = %247, %243, %231, %168, %159, %139, %120, %103, %92, %79, %68, %55, %45, %36, %26
  %254 = load i32, i32* %3, align 4
  ret i32 %254
}

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i64 @MBEDTLS_OID_SIZE(i32) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @mbedtls_asn1_get_mpi(i8**, i8*, i32*) #1

declare dso_local i8* @mbedtls_mpi_bitlen(i32*) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_ecp_point_read_binary(%struct.TYPE_7__*, %struct.TYPE_9__*, i8*, i64) #1

declare dso_local i32 @mbedtls_mpi_size(i32*) #1

declare dso_local i64 @mbedtls_mpi_lset(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
