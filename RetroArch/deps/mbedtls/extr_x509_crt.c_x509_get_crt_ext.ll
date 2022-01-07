; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_crt_ext.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_x509_crt.c_x509_get_crt_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i8, i64, i8*, i32*, i32, i32 }

@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_INVALID_EXTENSIONS = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OID = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_OUT_OF_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8**, i8*, %struct.TYPE_5__*)* @x509_get_crt_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x509_get_crt_ext(i8** %0, i8* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i8** %0, i8*** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %15 = load i8**, i8*** %5, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 7
  %19 = call i32 @mbedtls_x509_get_ext(i8** %15, i8* %16, i32* %18, i32 3)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %216

26:                                               ; preds = %21
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %216

28:                                               ; preds = %3
  br label %29

29:                                               ; preds = %205, %134, %28
  %30 = load i8**, i8*** %5, align 8
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = icmp ult i8* %31, %32
  br i1 %33, label %34, label %206

34:                                               ; preds = %29
  %35 = bitcast %struct.TYPE_6__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %35, i8 0, i64 40, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %39 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @mbedtls_asn1_get_tag(i8** %36, i8* %37, i64* %9, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %34
  %44 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %44, %45
  store i32 %46, i32* %4, align 4
  br label %216

47:                                               ; preds = %34
  %48 = load i8**, i8*** %5, align 8
  %49 = load i8*, i8** %48, align 8
  %50 = load i64, i64* %9, align 8
  %51 = getelementptr inbounds i8, i8* %49, i64 %50
  store i8* %51, i8** %10, align 8
  %52 = load i8**, i8*** %5, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i8, i8* %53, align 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i8 %54, i8* %55, align 8
  %56 = load i8**, i8*** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %59 = load i32, i32* @MBEDTLS_ASN1_OID, align 4
  %60 = call i32 @mbedtls_asn1_get_tag(i8** %56, i8* %57, i64* %58, i32 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %47
  %63 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %63, %64
  store i32 %65, i32* %4, align 4
  br label %216

66:                                               ; preds = %47
  %67 = load i8**, i8*** %5, align 8
  %68 = load i8*, i8** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i8**, i8*** %5, align 8
  %73 = load i8*, i8** %72, align 8
  %74 = getelementptr inbounds i8, i8* %73, i64 %71
  store i8* %74, i8** %72, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i8**, i8*** %5, align 8
  %77 = load i8*, i8** %76, align 8
  %78 = ptrtoint i8* %75 to i64
  %79 = ptrtoint i8* %77 to i64
  %80 = sub i64 %78, %79
  %81 = icmp slt i64 %80, 1
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %84 = load i32, i32* @MBEDTLS_ERR_ASN1_OUT_OF_DATA, align 4
  %85 = add nsw i32 %83, %84
  store i32 %85, i32* %4, align 4
  br label %216

86:                                               ; preds = %66
  %87 = load i8**, i8*** %5, align 8
  %88 = load i8*, i8** %10, align 8
  %89 = call i32 @mbedtls_asn1_get_bool(i8** %87, i8* %88, i32* %13)
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %99

91:                                               ; preds = %86
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %4, align 4
  br label %216

99:                                               ; preds = %91, %86
  %100 = load i8**, i8*** %5, align 8
  %101 = load i8*, i8** %10, align 8
  %102 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %103 = call i32 @mbedtls_asn1_get_tag(i8** %100, i8* %101, i64* %9, i32 %102)
  store i32 %103, i32* %8, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %99
  %106 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %4, align 4
  br label %216

109:                                              ; preds = %99
  %110 = load i8**, i8*** %5, align 8
  %111 = load i8*, i8** %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds i8, i8* %111, i64 %112
  store i8* %113, i8** %11, align 8
  %114 = load i8*, i8** %11, align 8
  %115 = load i8*, i8** %10, align 8
  %116 = icmp ne i8* %114, %115
  br i1 %116, label %117, label %121

117:                                              ; preds = %109
  %118 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %119 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %120 = add nsw i32 %118, %119
  store i32 %120, i32* %4, align 4
  br label %216

121:                                              ; preds = %109
  %122 = call i32 @mbedtls_oid_get_x509_ext_type(%struct.TYPE_6__* %12, i32* %14)
  store i32 %122, i32* %8, align 4
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i8*, i8** %11, align 8
  %127 = load i8**, i8*** %5, align 8
  store i8* %126, i8** %127, align 8
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %125
  %131 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %132 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %133 = add nsw i32 %131, %132
  store i32 %133, i32* %4, align 4
  br label %216

134:                                              ; preds = %125
  br label %29

135:                                              ; preds = %121
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %14, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %144

142:                                              ; preds = %135
  %143 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  store i32 %143, i32* %4, align 4
  br label %216

144:                                              ; preds = %135
  %145 = load i32, i32* %14, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %14, align 4
  switch i32 %150, label %203 [
    i32 132, label %151
    i32 130, label %163
    i32 131, label %173
    i32 128, label %183
    i32 129, label %193
  ]

151:                                              ; preds = %144
  %152 = load i8**, i8*** %5, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 6
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 5
  %158 = call i32 @x509_get_basic_constraints(i8** %152, i8* %153, i32* %155, i32* %157)
  store i32 %158, i32* %8, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %151
  %161 = load i32, i32* %8, align 4
  store i32 %161, i32* %4, align 4
  br label %216

162:                                              ; preds = %151
  br label %205

163:                                              ; preds = %144
  %164 = load i8**, i8*** %5, align 8
  %165 = load i8*, i8** %11, align 8
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 4
  %168 = call i32 @x509_get_key_usage(i8** %164, i8* %165, i32* %167)
  store i32 %168, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %172

170:                                              ; preds = %163
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %4, align 4
  br label %216

172:                                              ; preds = %163
  br label %205

173:                                              ; preds = %144
  %174 = load i8**, i8*** %5, align 8
  %175 = load i8*, i8** %11, align 8
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = call i32 @x509_get_ext_key_usage(i8** %174, i8* %175, i32* %177)
  store i32 %178, i32* %8, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %173
  %181 = load i32, i32* %8, align 4
  store i32 %181, i32* %4, align 4
  br label %216

182:                                              ; preds = %173
  br label %205

183:                                              ; preds = %144
  %184 = load i8**, i8*** %5, align 8
  %185 = load i8*, i8** %11, align 8
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 2
  %188 = call i32 @x509_get_subject_alt_name(i8** %184, i8* %185, i32* %187)
  store i32 %188, i32* %8, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %192

190:                                              ; preds = %183
  %191 = load i32, i32* %8, align 4
  store i32 %191, i32* %4, align 4
  br label %216

192:                                              ; preds = %183
  br label %205

193:                                              ; preds = %144
  %194 = load i8**, i8*** %5, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 1
  %198 = call i32 @x509_get_ns_cert_type(i8** %194, i8* %195, i32* %197)
  store i32 %198, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %193
  %201 = load i32, i32* %8, align 4
  store i32 %201, i32* %4, align 4
  br label %216

202:                                              ; preds = %193
  br label %205

203:                                              ; preds = %144
  %204 = load i32, i32* @MBEDTLS_ERR_X509_FEATURE_UNAVAILABLE, align 4
  store i32 %204, i32* %4, align 4
  br label %216

205:                                              ; preds = %202, %192, %182, %172, %162
  br label %29

206:                                              ; preds = %29
  %207 = load i8**, i8*** %5, align 8
  %208 = load i8*, i8** %207, align 8
  %209 = load i8*, i8** %6, align 8
  %210 = icmp ne i8* %208, %209
  br i1 %210, label %211, label %215

211:                                              ; preds = %206
  %212 = load i32, i32* @MBEDTLS_ERR_X509_INVALID_EXTENSIONS, align 4
  %213 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %214 = add nsw i32 %212, %213
  store i32 %214, i32* %4, align 4
  br label %216

215:                                              ; preds = %206
  store i32 0, i32* %4, align 4
  br label %216

216:                                              ; preds = %215, %211, %203, %200, %190, %180, %170, %160, %142, %130, %117, %105, %95, %82, %62, %43, %26, %25
  %217 = load i32, i32* %4, align 4
  ret i32 %217
}

declare dso_local i32 @mbedtls_x509_get_ext(i8**, i8*, i32*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_bool(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_oid_get_x509_ext_type(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @x509_get_basic_constraints(i8**, i8*, i32*, i32*) #1

declare dso_local i32 @x509_get_key_usage(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_ext_key_usage(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_subject_alt_name(i8**, i8*, i32*) #1

declare dso_local i32 @x509_get_ns_cert_type(i8**, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
