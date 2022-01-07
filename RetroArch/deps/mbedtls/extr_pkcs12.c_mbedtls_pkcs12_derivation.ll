; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_mbedtls_pkcs12_derivation.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/mbedtls/extr_pkcs12.c_mbedtls_pkcs12_derivation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MBEDTLS_MD_MAX_SIZE = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS12_BAD_INPUT_DATA = common dso_local global i32 0, align 4
@MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mbedtls_pkcs12_derivation(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4, i64 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca [128 x i8], align 16
  %23 = alloca [128 x i8], align 16
  %24 = alloca [128 x i8], align 16
  %25 = alloca [128 x i8], align 16
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8, align 1
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store i8* %0, i8** %11, align 8
  store i64 %1, i64* %12, align 8
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i8* %4, i8** %15, align 8
  store i64 %5, i64* %16, align 8
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %37 = load i32, i32* @MBEDTLS_MD_MAX_SIZE, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %26, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %27, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp ugt i64 %41, 128
  br i1 %42, label %49, label %43

43:                                               ; preds = %9
  %44 = load i64, i64* %14, align 8
  %45 = icmp ugt i64 %44, 64
  br i1 %45, label %49, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %16, align 8
  %48 = icmp ugt i64 %47, 64
  br i1 %48, label %49, label %51

49:                                               ; preds = %46, %43, %9
  %50 = load i32, i32* @MBEDTLS_ERR_PKCS12_BAD_INPUT_DATA, align 4
  store i32 %50, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %255

51:                                               ; preds = %46
  %52 = load i32, i32* %17, align 4
  %53 = call i32* @mbedtls_md_info_from_type(i32 %52)
  store i32* %53, i32** %34, align 8
  %54 = load i32*, i32** %34, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE, align 4
  store i32 %57, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %255

58:                                               ; preds = %51
  %59 = call i32 @mbedtls_md_init(i32* %35)
  %60 = load i32*, i32** %34, align 8
  %61 = call i32 @mbedtls_md_setup(i32* %35, i32* %60, i32 0)
  store i32 %61, i32* %20, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %20, align 4
  store i32 %64, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %255

65:                                               ; preds = %58
  %66 = load i32*, i32** %34, align 8
  %67 = call i64 @mbedtls_md_get_size(i32* %66)
  store i64 %67, i64* %30, align 8
  %68 = load i64, i64* %30, align 8
  %69 = icmp ule i64 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i64 64, i64* %32, align 8
  br label %72

71:                                               ; preds = %65
  store i64 128, i64* %32, align 8
  br label %72

72:                                               ; preds = %71, %70
  %73 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %74 = load i32, i32* %18, align 4
  %75 = trunc i32 %74 to i8
  %76 = load i64, i64* %32, align 8
  %77 = call i32 @memset(i8* %73, i8 zeroext %75, i64 %76)
  %78 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %79 = load i64, i64* %32, align 8
  %80 = load i8*, i8** %15, align 8
  %81 = load i64, i64* %16, align 8
  %82 = call i32 @pkcs12_fill_buffer(i8* %78, i64 %79, i8* %80, i64 %81)
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %84 = load i64, i64* %32, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = load i64, i64* %14, align 8
  %87 = call i32 @pkcs12_fill_buffer(i8* %83, i64 %84, i8* %85, i64 %86)
  %88 = load i8*, i8** %11, align 8
  store i8* %88, i8** %28, align 8
  br label %89

89:                                               ; preds = %242, %72
  %90 = load i64, i64* %12, align 8
  %91 = icmp ugt i64 %90, 0
  br i1 %91, label %92, label %243

92:                                               ; preds = %89
  %93 = call i32 @mbedtls_md_starts(i32* %35)
  store i32 %93, i32* %20, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %244

96:                                               ; preds = %92
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %22, i64 0, i64 0
  %98 = load i64, i64* %32, align 8
  %99 = call i32 @mbedtls_md_update(i32* %35, i8* %97, i64 %98)
  store i32 %99, i32* %20, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %244

102:                                              ; preds = %96
  %103 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %104 = load i64, i64* %32, align 8
  %105 = call i32 @mbedtls_md_update(i32* %35, i8* %103, i64 %104)
  store i32 %105, i32* %20, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %102
  br label %244

108:                                              ; preds = %102
  %109 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %110 = load i64, i64* %32, align 8
  %111 = call i32 @mbedtls_md_update(i32* %35, i8* %109, i64 %110)
  store i32 %111, i32* %20, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %108
  br label %244

114:                                              ; preds = %108
  %115 = call i32 @mbedtls_md_finish(i32* %35, i8* %40)
  store i32 %115, i32* %20, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %114
  br label %244

118:                                              ; preds = %114
  store i64 1, i64* %33, align 8
  br label %119

119:                                              ; preds = %131, %118
  %120 = load i64, i64* %33, align 8
  %121 = load i32, i32* %19, align 4
  %122 = sext i32 %121 to i64
  %123 = icmp ult i64 %120, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32*, i32** %34, align 8
  %126 = load i64, i64* %30, align 8
  %127 = call i32 @mbedtls_md(i32* %125, i8* %40, i64 %126, i8* %40)
  store i32 %127, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  br label %244

130:                                              ; preds = %124
  br label %131

131:                                              ; preds = %130
  %132 = load i64, i64* %33, align 8
  %133 = add i64 %132, 1
  store i64 %133, i64* %33, align 8
  br label %119

134:                                              ; preds = %119
  %135 = load i64, i64* %12, align 8
  %136 = load i64, i64* %30, align 8
  %137 = icmp ugt i64 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %134
  %139 = load i64, i64* %30, align 8
  br label %142

140:                                              ; preds = %134
  %141 = load i64, i64* %12, align 8
  br label %142

142:                                              ; preds = %140, %138
  %143 = phi i64 [ %139, %138 ], [ %141, %140 ]
  store i64 %143, i64* %31, align 8
  %144 = load i8*, i8** %28, align 8
  %145 = load i64, i64* %31, align 8
  %146 = call i32 @memcpy(i8* %144, i8* %40, i64 %145)
  %147 = load i64, i64* %31, align 8
  %148 = load i64, i64* %12, align 8
  %149 = sub i64 %148, %147
  store i64 %149, i64* %12, align 8
  %150 = load i64, i64* %31, align 8
  %151 = load i8*, i8** %28, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 %150
  store i8* %152, i8** %28, align 8
  %153 = load i64, i64* %12, align 8
  %154 = icmp eq i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %142
  br label %243

156:                                              ; preds = %142
  %157 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %158 = load i64, i64* %32, align 8
  %159 = load i64, i64* %30, align 8
  %160 = call i32 @pkcs12_fill_buffer(i8* %157, i64 %158, i8* %40, i64 %159)
  %161 = load i64, i64* %32, align 8
  store i64 %161, i64* %33, align 8
  br label %162

162:                                              ; preds = %175, %156
  %163 = load i64, i64* %33, align 8
  %164 = icmp ugt i64 %163, 0
  br i1 %164, label %165, label %178

165:                                              ; preds = %162
  %166 = load i64, i64* %33, align 8
  %167 = sub i64 %166, 1
  %168 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 %167
  %169 = load i8, i8* %168, align 1
  %170 = add i8 %169, 1
  store i8 %170, i8* %168, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %165
  br label %178

174:                                              ; preds = %165
  br label %175

175:                                              ; preds = %174
  %176 = load i64, i64* %33, align 8
  %177 = add i64 %176, -1
  store i64 %177, i64* %33, align 8
  br label %162

178:                                              ; preds = %173, %162
  store i8 0, i8* %29, align 1
  %179 = load i64, i64* %32, align 8
  store i64 %179, i64* %33, align 8
  br label %180

180:                                              ; preds = %207, %178
  %181 = load i64, i64* %33, align 8
  %182 = icmp ugt i64 %181, 0
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = load i64, i64* %33, align 8
  %185 = sub i64 %184, 1
  %186 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = load i64, i64* %33, align 8
  %190 = sub i64 %189, 1
  %191 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 %190
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = add nsw i32 %188, %193
  %195 = load i8, i8* %29, align 1
  %196 = zext i8 %195 to i32
  %197 = add nsw i32 %194, %196
  store i32 %197, i32* %21, align 4
  %198 = load i32, i32* %21, align 4
  %199 = lshr i32 %198, 8
  %200 = trunc i32 %199 to i8
  store i8 %200, i8* %29, align 1
  %201 = load i32, i32* %21, align 4
  %202 = and i32 %201, 255
  %203 = trunc i32 %202 to i8
  %204 = load i64, i64* %33, align 8
  %205 = sub i64 %204, 1
  %206 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 %205
  store i8 %203, i8* %206, align 1
  br label %207

207:                                              ; preds = %183
  %208 = load i64, i64* %33, align 8
  %209 = add i64 %208, -1
  store i64 %209, i64* %33, align 8
  br label %180

210:                                              ; preds = %180
  store i8 0, i8* %29, align 1
  %211 = load i64, i64* %32, align 8
  store i64 %211, i64* %33, align 8
  br label %212

212:                                              ; preds = %239, %210
  %213 = load i64, i64* %33, align 8
  %214 = icmp ugt i64 %213, 0
  br i1 %214, label %215, label %242

215:                                              ; preds = %212
  %216 = load i64, i64* %33, align 8
  %217 = sub i64 %216, 1
  %218 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 %217
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = load i64, i64* %33, align 8
  %222 = sub i64 %221, 1
  %223 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 %222
  %224 = load i8, i8* %223, align 1
  %225 = zext i8 %224 to i32
  %226 = add nsw i32 %220, %225
  %227 = load i8, i8* %29, align 1
  %228 = zext i8 %227 to i32
  %229 = add nsw i32 %226, %228
  store i32 %229, i32* %21, align 4
  %230 = load i32, i32* %21, align 4
  %231 = lshr i32 %230, 8
  %232 = trunc i32 %231 to i8
  store i8 %232, i8* %29, align 1
  %233 = load i32, i32* %21, align 4
  %234 = and i32 %233, 255
  %235 = trunc i32 %234 to i8
  %236 = load i64, i64* %33, align 8
  %237 = sub i64 %236, 1
  %238 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 %237
  store i8 %235, i8* %238, align 1
  br label %239

239:                                              ; preds = %215
  %240 = load i64, i64* %33, align 8
  %241 = add i64 %240, -1
  store i64 %241, i64* %33, align 8
  br label %212

242:                                              ; preds = %212
  br label %89

243:                                              ; preds = %155, %89
  store i32 0, i32* %20, align 4
  br label %244

244:                                              ; preds = %243, %129, %117, %113, %107, %101, %95
  %245 = getelementptr inbounds [128 x i8], [128 x i8]* %23, i64 0, i64 0
  %246 = call i32 @mbedtls_zeroize(i8* %245, i32 128)
  %247 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %248 = call i32 @mbedtls_zeroize(i8* %247, i32 128)
  %249 = getelementptr inbounds [128 x i8], [128 x i8]* %25, i64 0, i64 0
  %250 = call i32 @mbedtls_zeroize(i8* %249, i32 128)
  %251 = trunc i64 %38 to i32
  %252 = call i32 @mbedtls_zeroize(i8* %40, i32 %251)
  %253 = call i32 @mbedtls_md_free(i32* %35)
  %254 = load i32, i32* %20, align 4
  store i32 %254, i32* %10, align 4
  store i32 1, i32* %36, align 4
  br label %255

255:                                              ; preds = %244, %63, %56, %49
  %256 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %256)
  %257 = load i32, i32* %10, align 4
  ret i32 %257
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @mbedtls_md_info_from_type(i32) #2

declare dso_local i32 @mbedtls_md_init(i32*) #2

declare dso_local i32 @mbedtls_md_setup(i32*, i32*, i32) #2

declare dso_local i64 @mbedtls_md_get_size(i32*) #2

declare dso_local i32 @memset(i8*, i8 zeroext, i64) #2

declare dso_local i32 @pkcs12_fill_buffer(i8*, i64, i8*, i64) #2

declare dso_local i32 @mbedtls_md_starts(i32*) #2

declare dso_local i32 @mbedtls_md_update(i32*, i8*, i64) #2

declare dso_local i32 @mbedtls_md_finish(i32*, i8*) #2

declare dso_local i32 @mbedtls_md(i32*, i8*, i64, i8*) #2

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

declare dso_local i32 @mbedtls_zeroize(i8*, i32) #2

declare dso_local i32 @mbedtls_md_free(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
