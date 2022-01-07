; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_tls1_prf.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_ssl_tls.c_tls1_prf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_ERR_SSL_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_MD_MD5 = common dso_local global i32 0, align 4
@MBEDTLS_ERR_SSL_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MBEDTLS_MD_SHA1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i8*, i8*, i64, i8*, i64)* @tls1_prf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls1_prf(i8* %0, i64 %1, i8* %2, i8* %3, i64 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca [128 x i8], align 16
  %24 = alloca [20 x i8], align 16
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i64 %4, i64* %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %28 = call i32 @mbedtls_md_init(i32* %26)
  %29 = load i8*, i8** %11, align 8
  %30 = call i32 @strlen(i8* %29)
  %31 = add nsw i32 20, %30
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %32, %33
  %35 = icmp ult i64 128, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %7
  %37 = load i32, i32* @MBEDTLS_ERR_SSL_BAD_INPUT_DATA, align 4
  store i32 %37, i32* %8, align 4
  br label %229

38:                                               ; preds = %7
  %39 = load i64, i64* %10, align 8
  %40 = add i64 %39, 1
  %41 = udiv i64 %40, 2
  store i64 %41, i64* %17, align 8
  %42 = load i8*, i8** %9, align 8
  store i8* %42, i8** %21, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i64, i64* %10, align 8
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  %46 = load i64, i64* %17, align 8
  %47 = sub i64 0, %46
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  store i8* %48, i8** %22, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i32 @strlen(i8* %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %16, align 8
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %53 = getelementptr inbounds i8, i8* %52, i64 20
  %54 = load i8*, i8** %11, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 (i8*, ...) @memcpy(i8* %53, i8* %54, i64 %55)
  %57 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %58 = getelementptr inbounds i8, i8* %57, i64 20
  %59 = load i64, i64* %16, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8*, i8** %12, align 8
  %62 = load i64, i64* %13, align 8
  %63 = call i32 (i8*, ...) @memcpy(i8* %60, i8* %61, i64 %62)
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %16, align 8
  %66 = add i64 %65, %64
  store i64 %66, i64* %16, align 8
  %67 = load i32, i32* @MBEDTLS_MD_MD5, align 4
  %68 = call i32* @mbedtls_md_info_from_type(i32 %67)
  store i32* %68, i32** %25, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %70, label %72

70:                                               ; preds = %38
  %71 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %71, i32* %8, align 4
  br label %229

72:                                               ; preds = %38
  %73 = load i32*, i32** %25, align 8
  %74 = call i32 @mbedtls_md_setup(i32* %26, i32* %73, i32 1)
  store i32 %74, i32* %27, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %72
  %77 = load i32, i32* %27, align 4
  store i32 %77, i32* %8, align 4
  br label %229

78:                                               ; preds = %72
  %79 = load i8*, i8** %21, align 8
  %80 = load i64, i64* %17, align 8
  %81 = call i32 @mbedtls_md_hmac_starts(i32* %26, i8* %79, i64 %80)
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %83 = getelementptr inbounds i8, i8* %82, i64 20
  %84 = load i64, i64* %16, align 8
  %85 = trunc i64 %84 to i32
  %86 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %83, i32 %85)
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %88 = getelementptr inbounds i8, i8* %87, i64 4
  %89 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %88)
  store i64 0, i64* %18, align 8
  br label %90

90:                                               ; preds = %138, %78
  %91 = load i64, i64* %18, align 8
  %92 = load i64, i64* %15, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %141

94:                                               ; preds = %90
  %95 = call i32 @mbedtls_md_hmac_reset(i32* %26)
  %96 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %97 = getelementptr inbounds i8, i8* %96, i64 4
  %98 = load i64, i64* %16, align 8
  %99 = add i64 16, %98
  %100 = trunc i64 %99 to i32
  %101 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %97, i32 %100)
  %102 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %103 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %102)
  %104 = call i32 @mbedtls_md_hmac_reset(i32* %26)
  %105 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %106 = getelementptr inbounds i8, i8* %105, i64 4
  %107 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %106, i32 16)
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 4
  %110 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %109)
  %111 = load i64, i64* %18, align 8
  %112 = add i64 %111, 16
  %113 = load i64, i64* %15, align 8
  %114 = icmp ugt i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %94
  %116 = load i64, i64* %15, align 8
  %117 = urem i64 %116, 16
  br label %119

118:                                              ; preds = %94
  br label %119

119:                                              ; preds = %118, %115
  %120 = phi i64 [ %117, %115 ], [ 16, %118 ]
  store i64 %120, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %121

121:                                              ; preds = %134, %119
  %122 = load i64, i64* %19, align 8
  %123 = load i64, i64* %20, align 8
  %124 = icmp ult i64 %122, %123
  br i1 %124, label %125, label %137

125:                                              ; preds = %121
  %126 = load i64, i64* %19, align 8
  %127 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %126
  %128 = load i8, i8* %127, align 1
  %129 = load i8*, i8** %14, align 8
  %130 = load i64, i64* %18, align 8
  %131 = load i64, i64* %19, align 8
  %132 = add i64 %130, %131
  %133 = getelementptr inbounds i8, i8* %129, i64 %132
  store i8 %128, i8* %133, align 1
  br label %134

134:                                              ; preds = %125
  %135 = load i64, i64* %19, align 8
  %136 = add i64 %135, 1
  store i64 %136, i64* %19, align 8
  br label %121

137:                                              ; preds = %121
  br label %138

138:                                              ; preds = %137
  %139 = load i64, i64* %18, align 8
  %140 = add i64 %139, 16
  store i64 %140, i64* %18, align 8
  br label %90

141:                                              ; preds = %90
  %142 = call i32 @mbedtls_md_free(i32* %26)
  %143 = load i32, i32* @MBEDTLS_MD_SHA1, align 4
  %144 = call i32* @mbedtls_md_info_from_type(i32 %143)
  store i32* %144, i32** %25, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %148

146:                                              ; preds = %141
  %147 = load i32, i32* @MBEDTLS_ERR_SSL_INTERNAL_ERROR, align 4
  store i32 %147, i32* %8, align 4
  br label %229

148:                                              ; preds = %141
  %149 = load i32*, i32** %25, align 8
  %150 = call i32 @mbedtls_md_setup(i32* %26, i32* %149, i32 1)
  store i32 %150, i32* %27, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %148
  %153 = load i32, i32* %27, align 4
  store i32 %153, i32* %8, align 4
  br label %229

154:                                              ; preds = %148
  %155 = load i8*, i8** %22, align 8
  %156 = load i64, i64* %17, align 8
  %157 = call i32 @mbedtls_md_hmac_starts(i32* %26, i8* %155, i64 %156)
  %158 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %159 = getelementptr inbounds i8, i8* %158, i64 20
  %160 = load i64, i64* %16, align 8
  %161 = trunc i64 %160 to i32
  %162 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %159, i32 %161)
  %163 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %164 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %163)
  store i64 0, i64* %18, align 8
  br label %165

165:                                              ; preds = %220, %154
  %166 = load i64, i64* %18, align 8
  %167 = load i64, i64* %15, align 8
  %168 = icmp ult i64 %166, %167
  br i1 %168, label %169, label %223

169:                                              ; preds = %165
  %170 = call i32 @mbedtls_md_hmac_reset(i32* %26)
  %171 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %172 = load i64, i64* %16, align 8
  %173 = add i64 20, %172
  %174 = trunc i64 %173 to i32
  %175 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %171, i32 %174)
  %176 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %177 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %176)
  %178 = call i32 @mbedtls_md_hmac_reset(i32* %26)
  %179 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %180 = call i32 @mbedtls_md_hmac_update(i32* %26, i8* %179, i32 20)
  %181 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %182 = call i32 @mbedtls_md_hmac_finish(i32* %26, i8* %181)
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %183, 20
  %185 = load i64, i64* %15, align 8
  %186 = icmp ugt i64 %184, %185
  br i1 %186, label %187, label %190

187:                                              ; preds = %169
  %188 = load i64, i64* %15, align 8
  %189 = urem i64 %188, 20
  br label %191

190:                                              ; preds = %169
  br label %191

191:                                              ; preds = %190, %187
  %192 = phi i64 [ %189, %187 ], [ 20, %190 ]
  store i64 %192, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %193

193:                                              ; preds = %216, %191
  %194 = load i64, i64* %19, align 8
  %195 = load i64, i64* %20, align 8
  %196 = icmp ult i64 %194, %195
  br i1 %196, label %197, label %219

197:                                              ; preds = %193
  %198 = load i8*, i8** %14, align 8
  %199 = load i64, i64* %18, align 8
  %200 = load i64, i64* %19, align 8
  %201 = add i64 %199, %200
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  %205 = load i64, i64* %19, align 8
  %206 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 %205
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i32
  %209 = xor i32 %204, %208
  %210 = trunc i32 %209 to i8
  %211 = load i8*, i8** %14, align 8
  %212 = load i64, i64* %18, align 8
  %213 = load i64, i64* %19, align 8
  %214 = add i64 %212, %213
  %215 = getelementptr inbounds i8, i8* %211, i64 %214
  store i8 %210, i8* %215, align 1
  br label %216

216:                                              ; preds = %197
  %217 = load i64, i64* %19, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %19, align 8
  br label %193

219:                                              ; preds = %193
  br label %220

220:                                              ; preds = %219
  %221 = load i64, i64* %18, align 8
  %222 = add i64 %221, 20
  store i64 %222, i64* %18, align 8
  br label %165

223:                                              ; preds = %165
  %224 = call i32 @mbedtls_md_free(i32* %26)
  %225 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %226 = call i32 @mbedtls_zeroize(i8* %225, i32 128)
  %227 = getelementptr inbounds [20 x i8], [20 x i8]* %24, i64 0, i64 0
  %228 = call i32 @mbedtls_zeroize(i8* %227, i32 20)
  store i32 0, i32* %8, align 4
  br label %229

229:                                              ; preds = %223, %152, %146, %76, %70, %36
  %230 = load i32, i32* %8, align 4
  ret i32 %230
}

declare dso_local i32 @mbedtls_md_init(i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, ...) #1

declare dso_local i32* @mbedtls_md_info_from_type(i32) #1

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #1

declare dso_local i32 @mbedtls_md_hmac_starts(i32*, i8*, i64) #1

declare dso_local i32 @mbedtls_md_hmac_update(i32*, i8*, i32) #1

declare dso_local i32 @mbedtls_md_hmac_finish(i32*, i8*) #1

declare dso_local i32 @mbedtls_md_hmac_reset(i32*) #1

declare dso_local i32 @mbedtls_md_free(i32*) #1

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
