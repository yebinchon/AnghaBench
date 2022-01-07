; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_load.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__hdr_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STBI__HDR_BUFLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"#?RADIANCE\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"#?RGBE\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"not HDR\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"Corrupt HDR image\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"FORMAT=32-bit_rle_rgbe\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"unsupported format\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Unsupported HDR format\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"-Y \00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"unsupported data layout\00", align 1
@.str.9 = private unnamed_addr constant [4 x i8] c"+X \00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"too large\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"HDR image is too large\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"outofmem\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@.str.14 = private unnamed_addr constant [32 x i8] c"invalid decoded scanline length\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"corrupt HDR\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"corrupt\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c"bad RLE data in HDR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (float* (i32*, i32*, i32*, i32*, i32, i32*)* @stbi__hdr_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float* @stbi__hdr_load(i32* %0, i32* %1, i32* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca float*, align 8
  %21 = alloca float*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8, align 1
  %24 = alloca i8, align 1
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca [4 x float], align 16
  %34 = alloca [4 x float], align 16
  %35 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  %36 = load i32, i32* @STBI__HDR_BUFLEN, align 4
  %37 = zext i32 %36 to i64
  %38 = call i8* @llvm.stacksave()
  store i8* %38, i8** %14, align 8
  %39 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %15, align 8
  store i32 0, i32* %17, align 4
  %40 = load i32*, i32** %13, align 8
  %41 = call i32 @STBI_NOTUSED(i32* %40)
  %42 = load i32*, i32** %8, align 8
  %43 = call i8* @stbi__hdr_gettoken(i32* %42, i8* %39)
  store i8* %43, i8** %31, align 8
  %44 = load i8*, i8** %31, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %6
  %48 = load i8*, i8** %31, align 8
  %49 = call i64 @strcmp(i8* %48, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = call float* @stbi__errpf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  store float* %52, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

53:                                               ; preds = %47, %6
  br label %54

54:                                               ; preds = %68, %53
  %55 = load i32*, i32** %8, align 8
  %56 = call i8* @stbi__hdr_gettoken(i32* %55, i8* %39)
  store i8* %56, i8** %16, align 8
  %57 = load i8*, i8** %16, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 0
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %69

63:                                               ; preds = %54
  %64 = load i8*, i8** %16, align 8
  %65 = call i64 @strcmp(i8* %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  store i32 1, i32* %17, align 4
  br label %68

68:                                               ; preds = %67, %63
  br label %54

69:                                               ; preds = %62
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %69
  %73 = call float* @stbi__errpf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store float* %73, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

74:                                               ; preds = %69
  %75 = load i32*, i32** %8, align 8
  %76 = call i8* @stbi__hdr_gettoken(i32* %75, i8* %39)
  store i8* %76, i8** %16, align 8
  %77 = load i8*, i8** %16, align 8
  %78 = call i64 @strncmp(i8* %77, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 3)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %74
  %81 = call float* @stbi__errpf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store float* %81, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

82:                                               ; preds = %74
  %83 = load i8*, i8** %16, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 3
  store i8* %84, i8** %16, align 8
  %85 = load i8*, i8** %16, align 8
  %86 = call i64 @strtol(i8* %85, i8** %16, i32 10)
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %19, align 4
  br label %88

88:                                               ; preds = %93, %82
  %89 = load i8*, i8** %16, align 8
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 32
  br i1 %92, label %93, label %96

93:                                               ; preds = %88
  %94 = load i8*, i8** %16, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %16, align 8
  br label %88

96:                                               ; preds = %88
  %97 = load i8*, i8** %16, align 8
  %98 = call i64 @strncmp(i8* %97, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.9, i64 0, i64 0), i32 3)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = call float* @stbi__errpf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0))
  store float* %101, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

102:                                              ; preds = %96
  %103 = load i8*, i8** %16, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 3
  store i8* %104, i8** %16, align 8
  %105 = load i8*, i8** %16, align 8
  %106 = call i64 @strtol(i8* %105, i8** null, i32 10)
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = load i32*, i32** %9, align 8
  store i32 %108, i32* %109, align 4
  %110 = load i32, i32* %19, align 4
  %111 = load i32*, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %112 = load i32*, i32** %11, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %116

114:                                              ; preds = %102
  %115 = load i32*, i32** %11, align 8
  store i32 3, i32* %115, align 4
  br label %116

116:                                              ; preds = %114, %102
  %117 = load i32, i32* %12, align 4
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %116
  store i32 3, i32* %12, align 4
  br label %120

120:                                              ; preds = %119, %116
  %121 = load i32, i32* %18, align 4
  %122 = load i32, i32* %19, align 4
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @stbi__mad4sizes_valid(i32 %121, i32 %122, i32 %123, i32 4, i32 0)
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %120
  %127 = call float* @stbi__errpf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  store float* %127, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

128:                                              ; preds = %120
  %129 = load i32, i32* %18, align 4
  %130 = load i32, i32* %19, align 4
  %131 = load i32, i32* %12, align 4
  %132 = call i64 @stbi__malloc_mad4(i32 %129, i32 %130, i32 %131, i32 4, i32 0)
  %133 = inttoptr i64 %132 to float*
  store float* %133, float** %21, align 8
  %134 = load float*, float** %21, align 8
  %135 = icmp ne float* %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %128
  %137 = call float* @stbi__errpf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store float* %137, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

138:                                              ; preds = %128
  %139 = load i32, i32* %18, align 4
  %140 = icmp slt i32 %139, 8
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* %18, align 4
  %143 = icmp sge i32 %142, 32768
  br i1 %143, label %144, label %183

144:                                              ; preds = %141, %138
  store i32 0, i32* %26, align 4
  br label %145

145:                                              ; preds = %179, %144
  %146 = load i32, i32* %26, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %182

149:                                              ; preds = %145
  store i32 0, i32* %25, align 4
  br label %150

150:                                              ; preds = %175, %149
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* %18, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %178

154:                                              ; preds = %150
  br label %155

155:                                              ; preds = %204, %154
  %156 = load i32*, i32** %8, align 8
  %157 = getelementptr inbounds [4 x float], [4 x float]* %33, i64 0, i64 0
  %158 = call i32 @stbi__getn(i32* %156, float* %157, i32 4)
  %159 = load float*, float** %21, align 8
  %160 = load i32, i32* %26, align 4
  %161 = load i32, i32* %18, align 4
  %162 = mul nsw i32 %160, %161
  %163 = load i32, i32* %12, align 4
  %164 = mul nsw i32 %162, %163
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds float, float* %159, i64 %165
  %167 = load i32, i32* %25, align 4
  %168 = load i32, i32* %12, align 4
  %169 = mul nsw i32 %167, %168
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds float, float* %166, i64 %170
  %172 = getelementptr inbounds [4 x float], [4 x float]* %33, i64 0, i64 0
  %173 = load i32, i32* %12, align 4
  %174 = call i32 @stbi__hdr_convert(float* %171, float* %172, i32 %173)
  br label %175

175:                                              ; preds = %155
  %176 = load i32, i32* %25, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %25, align 4
  br label %150

178:                                              ; preds = %150
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %26, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %26, align 4
  br label %145

182:                                              ; preds = %145
  br label %385

183:                                              ; preds = %141
  store float* null, float** %20, align 8
  store i32 0, i32* %26, align 4
  br label %184

184:                                              ; preds = %375, %183
  %185 = load i32, i32* %26, align 4
  %186 = load i32, i32* %19, align 4
  %187 = icmp slt i32 %185, %186
  br i1 %187, label %188, label %378

188:                                              ; preds = %184
  %189 = load i32*, i32** %8, align 8
  %190 = call i32 @stbi__get8(i32* %189)
  store i32 %190, i32* %28, align 4
  %191 = load i32*, i32** %8, align 8
  %192 = call i32 @stbi__get8(i32* %191)
  store i32 %192, i32* %29, align 4
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 @stbi__get8(i32* %193)
  store i32 %194, i32* %22, align 4
  %195 = load i32, i32* %28, align 4
  %196 = icmp ne i32 %195, 2
  br i1 %196, label %204, label %197

197:                                              ; preds = %188
  %198 = load i32, i32* %29, align 4
  %199 = icmp ne i32 %198, 2
  br i1 %199, label %204, label %200

200:                                              ; preds = %197
  %201 = load i32, i32* %22, align 4
  %202 = and i32 %201, 128
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %224

204:                                              ; preds = %200, %197, %188
  %205 = load i32, i32* %28, align 4
  %206 = sitofp i32 %205 to float
  %207 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 0
  store float %206, float* %207, align 16
  %208 = load i32, i32* %29, align 4
  %209 = sitofp i32 %208 to float
  %210 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 1
  store float %209, float* %210, align 4
  %211 = load i32, i32* %22, align 4
  %212 = sitofp i32 %211 to float
  %213 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 2
  store float %212, float* %213, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i32 @stbi__get8(i32* %214)
  %216 = sitofp i32 %215 to float
  %217 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 3
  store float %216, float* %217, align 4
  %218 = load float*, float** %21, align 8
  %219 = getelementptr inbounds [4 x float], [4 x float]* %34, i64 0, i64 0
  %220 = load i32, i32* %12, align 4
  %221 = call i32 @stbi__hdr_convert(float* %218, float* %219, i32 %220)
  store i32 1, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %222 = load float*, float** %20, align 8
  %223 = call i32 @STBI_FREE(float* %222)
  br label %155

224:                                              ; preds = %200
  %225 = load i32, i32* %22, align 4
  %226 = shl i32 %225, 8
  store i32 %226, i32* %22, align 4
  %227 = load i32*, i32** %8, align 8
  %228 = call i32 @stbi__get8(i32* %227)
  %229 = load i32, i32* %22, align 4
  %230 = or i32 %229, %228
  store i32 %230, i32* %22, align 4
  %231 = load i32, i32* %22, align 4
  %232 = load i32, i32* %18, align 4
  %233 = icmp ne i32 %231, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %224
  %235 = load float*, float** %21, align 8
  %236 = call i32 @STBI_FREE(float* %235)
  %237 = load float*, float** %20, align 8
  %238 = call i32 @STBI_FREE(float* %237)
  %239 = call float* @stbi__errpf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0))
  store float* %239, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

240:                                              ; preds = %224
  %241 = load float*, float** %20, align 8
  %242 = icmp eq float* %241, null
  br i1 %242, label %243, label %254

243:                                              ; preds = %240
  %244 = load i32, i32* %18, align 4
  %245 = call i64 @stbi__malloc_mad2(i32 %244, i32 4, i32 0)
  %246 = inttoptr i64 %245 to float*
  store float* %246, float** %20, align 8
  %247 = load float*, float** %20, align 8
  %248 = icmp ne float* %247, null
  br i1 %248, label %253, label %249

249:                                              ; preds = %243
  %250 = load float*, float** %21, align 8
  %251 = call i32 @STBI_FREE(float* %250)
  %252 = call float* @stbi__errpf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0))
  store float* %252, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

253:                                              ; preds = %243
  br label %254

254:                                              ; preds = %253, %240
  store i32 0, i32* %27, align 4
  br label %255

255:                                              ; preds = %345, %254
  %256 = load i32, i32* %27, align 4
  %257 = icmp slt i32 %256, 4
  br i1 %257, label %258, label %348

258:                                              ; preds = %255
  store i32 0, i32* %25, align 4
  br label %259

259:                                              ; preds = %343, %258
  %260 = load i32, i32* %18, align 4
  %261 = load i32, i32* %25, align 4
  %262 = sub nsw i32 %260, %261
  store i32 %262, i32* %35, align 4
  %263 = icmp sgt i32 %262, 0
  br i1 %263, label %264, label %344

264:                                              ; preds = %259
  %265 = load i32*, i32** %8, align 8
  %266 = call i32 @stbi__get8(i32* %265)
  %267 = trunc i32 %266 to i8
  store i8 %267, i8* %23, align 1
  %268 = load i8, i8* %23, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp sgt i32 %269, 128
  br i1 %270, label %271, label %310

271:                                              ; preds = %264
  %272 = load i32*, i32** %8, align 8
  %273 = call i32 @stbi__get8(i32* %272)
  %274 = trunc i32 %273 to i8
  store i8 %274, i8* %24, align 1
  %275 = load i8, i8* %23, align 1
  %276 = zext i8 %275 to i32
  %277 = sub nsw i32 %276, 128
  %278 = trunc i32 %277 to i8
  store i8 %278, i8* %23, align 1
  %279 = load i8, i8* %23, align 1
  %280 = zext i8 %279 to i32
  %281 = load i32, i32* %35, align 4
  %282 = icmp sgt i32 %280, %281
  br i1 %282, label %283, label %289

283:                                              ; preds = %271
  %284 = load float*, float** %21, align 8
  %285 = call i32 @STBI_FREE(float* %284)
  %286 = load float*, float** %20, align 8
  %287 = call i32 @STBI_FREE(float* %286)
  %288 = call float* @stbi__errpf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store float* %288, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

289:                                              ; preds = %271
  store i32 0, i32* %30, align 4
  br label %290

290:                                              ; preds = %306, %289
  %291 = load i32, i32* %30, align 4
  %292 = load i8, i8* %23, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %309

295:                                              ; preds = %290
  %296 = load i8, i8* %24, align 1
  %297 = uitofp i8 %296 to float
  %298 = load float*, float** %20, align 8
  %299 = load i32, i32* %25, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %25, align 4
  %301 = mul nsw i32 %299, 4
  %302 = load i32, i32* %27, align 4
  %303 = add nsw i32 %301, %302
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds float, float* %298, i64 %304
  store float %297, float* %305, align 4
  br label %306

306:                                              ; preds = %295
  %307 = load i32, i32* %30, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %30, align 4
  br label %290

309:                                              ; preds = %290
  br label %343

310:                                              ; preds = %264
  %311 = load i8, i8* %23, align 1
  %312 = zext i8 %311 to i32
  %313 = load i32, i32* %35, align 4
  %314 = icmp sgt i32 %312, %313
  br i1 %314, label %315, label %321

315:                                              ; preds = %310
  %316 = load float*, float** %21, align 8
  %317 = call i32 @STBI_FREE(float* %316)
  %318 = load float*, float** %20, align 8
  %319 = call i32 @STBI_FREE(float* %318)
  %320 = call float* @stbi__errpf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0))
  store float* %320, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

321:                                              ; preds = %310
  store i32 0, i32* %30, align 4
  br label %322

322:                                              ; preds = %339, %321
  %323 = load i32, i32* %30, align 4
  %324 = load i8, i8* %23, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp slt i32 %323, %325
  br i1 %326, label %327, label %342

327:                                              ; preds = %322
  %328 = load i32*, i32** %8, align 8
  %329 = call i32 @stbi__get8(i32* %328)
  %330 = sitofp i32 %329 to float
  %331 = load float*, float** %20, align 8
  %332 = load i32, i32* %25, align 4
  %333 = add nsw i32 %332, 1
  store i32 %333, i32* %25, align 4
  %334 = mul nsw i32 %332, 4
  %335 = load i32, i32* %27, align 4
  %336 = add nsw i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds float, float* %331, i64 %337
  store float %330, float* %338, align 4
  br label %339

339:                                              ; preds = %327
  %340 = load i32, i32* %30, align 4
  %341 = add nsw i32 %340, 1
  store i32 %341, i32* %30, align 4
  br label %322

342:                                              ; preds = %322
  br label %343

343:                                              ; preds = %342, %309
  br label %259

344:                                              ; preds = %259
  br label %345

345:                                              ; preds = %344
  %346 = load i32, i32* %27, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %27, align 4
  br label %255

348:                                              ; preds = %255
  store i32 0, i32* %25, align 4
  br label %349

349:                                              ; preds = %371, %348
  %350 = load i32, i32* %25, align 4
  %351 = load i32, i32* %18, align 4
  %352 = icmp slt i32 %350, %351
  br i1 %352, label %353, label %374

353:                                              ; preds = %349
  %354 = load float*, float** %21, align 8
  %355 = load i32, i32* %26, align 4
  %356 = load i32, i32* %18, align 4
  %357 = mul nsw i32 %355, %356
  %358 = load i32, i32* %25, align 4
  %359 = add nsw i32 %357, %358
  %360 = load i32, i32* %12, align 4
  %361 = mul nsw i32 %359, %360
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds float, float* %354, i64 %362
  %364 = load float*, float** %20, align 8
  %365 = load i32, i32* %25, align 4
  %366 = mul nsw i32 %365, 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds float, float* %364, i64 %367
  %369 = load i32, i32* %12, align 4
  %370 = call i32 @stbi__hdr_convert(float* %363, float* %368, i32 %369)
  br label %371

371:                                              ; preds = %353
  %372 = load i32, i32* %25, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %25, align 4
  br label %349

374:                                              ; preds = %349
  br label %375

375:                                              ; preds = %374
  %376 = load i32, i32* %26, align 4
  %377 = add nsw i32 %376, 1
  store i32 %377, i32* %26, align 4
  br label %184

378:                                              ; preds = %184
  %379 = load float*, float** %20, align 8
  %380 = icmp ne float* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load float*, float** %20, align 8
  %383 = call i32 @STBI_FREE(float* %382)
  br label %384

384:                                              ; preds = %381, %378
  br label %385

385:                                              ; preds = %384, %182
  %386 = load float*, float** %21, align 8
  store float* %386, float** %7, align 8
  store i32 1, i32* %32, align 4
  br label %387

387:                                              ; preds = %385, %315, %283, %249, %234, %136, %126, %100, %80, %72, %51
  %388 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %388)
  %389 = load float*, float** %7, align 8
  ret float* %389
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @STBI_NOTUSED(i32*) #2

declare dso_local i8* @stbi__hdr_gettoken(i32*, i8*) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local float* @stbi__errpf(i8*, i8*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @strtol(i8*, i8**, i32) #2

declare dso_local i32 @stbi__mad4sizes_valid(i32, i32, i32, i32, i32) #2

declare dso_local i64 @stbi__malloc_mad4(i32, i32, i32, i32, i32) #2

declare dso_local i32 @stbi__getn(i32*, float*, i32) #2

declare dso_local i32 @stbi__hdr_convert(float*, float*, i32) #2

declare dso_local i32 @stbi__get8(i32*) #2

declare dso_local i32 @STBI_FREE(float*) #2

declare dso_local i64 @stbi__malloc_mad2(i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
