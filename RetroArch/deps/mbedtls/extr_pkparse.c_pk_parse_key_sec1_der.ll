; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_sec1_der.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkparse.c_pk_parse_key_sec1_der.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }

@MBEDTLS_ASN1_CONSTRUCTED = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_SEQUENCE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_FORMAT = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PK_KEY_INVALID_VERSION = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_OCTET_STRING = common dso_local global i32 0, align 4
@MBEDTLS_ASN1_CONTEXT_SPECIFIC = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_UNEXPECTED_TAG = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ASN1_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i64)* @pk_parse_key_sec1_der to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pk_parse_key_sec1_der(%struct.TYPE_8__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %16 = load i8*, i8** %6, align 8
  store i8* %16, i8** %13, align 8
  %17 = load i8*, i8** %13, align 8
  %18 = load i64, i64* %7, align 8
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %14, align 8
  %20 = load i8*, i8** %14, align 8
  %21 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %22 = load i32, i32* @MBEDTLS_ASN1_SEQUENCE, align 4
  %23 = or i32 %21, %22
  %24 = call i32 @mbedtls_asn1_get_tag(i8** %13, i8* %20, i64* %11, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %3
  %27 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %4, align 4
  br label %197

30:                                               ; preds = %3
  %31 = load i8*, i8** %13, align 8
  %32 = load i64, i64* %11, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %14, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = call i32 @mbedtls_asn1_get_int(i8** %13, i8* %34, i32* %9)
  store i32 %35, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  store i32 %40, i32* %4, align 4
  br label %197

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 1
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_VERSION, align 4
  store i32 %45, i32* %4, align 4
  br label %197

46:                                               ; preds = %41
  %47 = load i8*, i8** %14, align 8
  %48 = load i32, i32* @MBEDTLS_ASN1_OCTET_STRING, align 4
  %49 = call i32 @mbedtls_asn1_get_tag(i8** %13, i8* %47, i64* %11, i32 %48)
  store i32 %49, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %4, align 4
  br label %197

55:                                               ; preds = %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = load i8*, i8** %13, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @mbedtls_mpi_read_binary(i32* %57, i8* %58, i64 %59)
  store i32 %60, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %55
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %64 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %63)
  %65 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %65, %66
  store i32 %67, i32* %4, align 4
  br label %197

68:                                               ; preds = %55
  %69 = load i64, i64* %11, align 8
  %70 = load i8*, i8** %13, align 8
  %71 = getelementptr inbounds i8, i8* %70, i64 %69
  store i8* %71, i8** %13, align 8
  store i32 0, i32* %10, align 4
  %72 = load i8*, i8** %13, align 8
  %73 = load i8*, i8** %14, align 8
  %74 = icmp ne i8* %72, %73
  br i1 %74, label %75, label %164

75:                                               ; preds = %68
  %76 = load i8*, i8** %14, align 8
  %77 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %78 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @mbedtls_asn1_get_tag(i8** %13, i8* %76, i64* %11, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %98

82:                                               ; preds = %75
  %83 = load i8*, i8** %13, align 8
  %84 = load i64, i64* %11, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = call i32 @pk_get_ecparams(i8** %13, i8* %85, i32* %12)
  store i32 %86, i32* %8, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %82
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 1
  %91 = call i32 @pk_use_ecparams(i32* %12, %struct.TYPE_9__* %90)
  store i32 %91, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88, %82
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %197

97:                                               ; preds = %88
  br label %109

98:                                               ; preds = %75
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %101 = icmp ne i32 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %103)
  %105 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %105, %106
  store i32 %107, i32* %4, align 4
  br label %197

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108, %97
  %110 = load i8*, i8** %14, align 8
  %111 = load i32, i32* @MBEDTLS_ASN1_CONTEXT_SPECIFIC, align 4
  %112 = load i32, i32* @MBEDTLS_ASN1_CONSTRUCTED, align 4
  %113 = or i32 %111, %112
  %114 = or i32 %113, 1
  %115 = call i32 @mbedtls_asn1_get_tag(i8** %13, i8* %110, i64* %11, i32 %114)
  store i32 %115, i32* %8, align 4
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %152

117:                                              ; preds = %109
  %118 = load i8*, i8** %13, align 8
  %119 = load i64, i64* %11, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  store i8* %120, i8** %15, align 8
  %121 = load i8*, i8** %15, align 8
  %122 = call i32 @mbedtls_asn1_get_bitstring_null(i8** %13, i8* %121, i64* %11)
  store i32 %122, i32* %8, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %126 = load i32, i32* %8, align 4
  %127 = add nsw i32 %125, %126
  store i32 %127, i32* %4, align 4
  br label %197

128:                                              ; preds = %117
  %129 = load i8*, i8** %13, align 8
  %130 = load i64, i64* %11, align 8
  %131 = getelementptr inbounds i8, i8* %129, i64 %130
  %132 = load i8*, i8** %15, align 8
  %133 = icmp ne i8* %131, %132
  br i1 %133, label %134, label %138

134:                                              ; preds = %128
  %135 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %136 = load i32, i32* @MBEDTLS_ERR_ASN1_LENGTH_MISMATCH, align 4
  %137 = add nsw i32 %135, %136
  store i32 %137, i32* %4, align 4
  br label %197

138:                                              ; preds = %128
  %139 = load i8*, i8** %15, align 8
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %141 = call i32 @pk_get_ecpubkey(i8** %13, i8* %139, %struct.TYPE_8__* %140)
  store i32 %141, i32* %8, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  store i32 1, i32* %10, align 4
  br label %151

144:                                              ; preds = %138
  %145 = load i32, i32* %8, align 4
  %146 = load i32, i32* @MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE, align 4
  %147 = icmp ne i32 %145, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %144
  %149 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  store i32 %149, i32* %4, align 4
  br label %197

150:                                              ; preds = %144
  br label %151

151:                                              ; preds = %150, %143
  br label %163

152:                                              ; preds = %109
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* @MBEDTLS_ERR_ASN1_UNEXPECTED_TAG, align 4
  %155 = icmp ne i32 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %152
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %158 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %157)
  %159 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %160 = load i32, i32* %8, align 4
  %161 = add nsw i32 %159, %160
  store i32 %161, i32* %4, align 4
  br label %197

162:                                              ; preds = %152
  br label %163

163:                                              ; preds = %162, %151
  br label %164

164:                                              ; preds = %163, %68
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %185, label %167

167:                                              ; preds = %164
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = call i32 @mbedtls_ecp_mul(%struct.TYPE_9__* %169, i32* %171, i32* %173, i32* %176, i32* null, i32* null)
  store i32 %177, i32* %8, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %167
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %180)
  %182 = load i32, i32* @MBEDTLS_ERR_PK_KEY_INVALID_FORMAT, align 4
  %183 = load i32, i32* %8, align 4
  %184 = add nsw i32 %182, %183
  store i32 %184, i32* %4, align 4
  br label %197

185:                                              ; preds = %167, %164
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 0
  %190 = call i32 @mbedtls_ecp_check_privkey(%struct.TYPE_9__* %187, i32* %189)
  store i32 %190, i32* %8, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %194 = call i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %197

196:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %197

197:                                              ; preds = %196, %192, %179, %156, %148, %134, %124, %102, %93, %62, %51, %44, %37, %26
  %198 = load i32, i32* %4, align 4
  ret i32 %198
}

declare dso_local i32 @mbedtls_asn1_get_tag(i8**, i8*, i64*, i32) #1

declare dso_local i32 @mbedtls_asn1_get_int(i8**, i8*, i32*) #1

declare dso_local i32 @mbedtls_mpi_read_binary(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_ecp_keypair_free(%struct.TYPE_8__*) #1

declare dso_local i32 @pk_get_ecparams(i8**, i8*, i32*) #1

declare dso_local i32 @pk_use_ecparams(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @mbedtls_asn1_get_bitstring_null(i8**, i8*, i64*) #1

declare dso_local i32 @pk_get_ecpubkey(i8**, i8*, %struct.TYPE_8__*) #1

declare dso_local i32 @mbedtls_ecp_mul(%struct.TYPE_9__*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mbedtls_ecp_check_privkey(%struct.TYPE_9__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
