; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_resolve_content_path.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_dashdec.c_resolve_content_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"http://\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"https://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i32*, i32**, i32)* @resolve_content_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resolve_content_path(i32* %0, i8* %1, i32* %2, i32** %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32** %3, i32*** %9, align 8
  store i32 %4, i32* %10, align 4
  store i8* null, i8** %11, align 8
  store i8* null, i8** %12, align 8
  store i8* null, i8** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i32 0, i32* %19, align 4
  store i8 47, i8* %20, align 1
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 0, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %26, align 4
  %30 = load i32, i32* %10, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %25, align 4
  br label %32

32:                                               ; preds = %59, %5
  %33 = load i32, i32* %25, align 4
  %34 = icmp sge i32 %33, 0
  br i1 %34, label %35, label %62

35:                                               ; preds = %32
  %36 = load i32**, i32*** %9, align 8
  %37 = load i32, i32* %25, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = call i8* @xmlNodeGetContent(i32* %40)
  store i8* %41, i8** %17, align 8
  %42 = load i8*, i8** %17, align 8
  %43 = icmp ne i8* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %35
  br label %59

45:                                               ; preds = %35
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = load i32, i32* %26, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %26, align 4
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @ishttp(i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i8*, i8** %17, align 8
  %55 = call i32 @xmlFree(i8* %54)
  br label %62

56:                                               ; preds = %45
  %57 = load i8*, i8** %17, align 8
  %58 = call i32 @xmlFree(i8* %57)
  br label %59

59:                                               ; preds = %56, %44
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %60, -1
  store i32 %61, i32* %25, align 4
  br label %32

62:                                               ; preds = %53, %32
  %63 = load i32, i32* %26, align 4
  %64 = call i32 @aligned(i32 %63)
  store i32 %64, i32* %26, align 4
  %65 = load i32, i32* %26, align 4
  %66 = call i8* @av_mallocz(i32 %65)
  store i8* %66, i8** %17, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %62
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = call i32 @AVERROR(i32 %70)
  store i32 %71, i32* %23, align 4
  br label %286

72:                                               ; preds = %62
  %73 = load i8*, i8** %17, align 8
  %74 = load i8*, i8** %7, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i32 @strlen(i8* %75)
  %77 = add nsw i32 %76, 1
  %78 = call i32 @av_strlcpy(i8* %73, i8* %74, i32 %77)
  %79 = load i8*, i8** %17, align 8
  store i8* %79, i8** %18, align 8
  br label %80

80:                                               ; preds = %84, %72
  %81 = load i8*, i8** %18, align 8
  %82 = call i8* @av_strtok(i8* %81, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %18)
  store i8* %82, i8** %13, align 8
  %83 = icmp ne i8* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i8*, i8** %13, align 8
  %86 = call i32 @strlen(i8* %85)
  store i32 %86, i32* %24, align 4
  br label %80

87:                                               ; preds = %80
  %88 = load i8*, i8** %17, align 8
  %89 = call i32 @av_free(i8* %88)
  %90 = load i32, i32* %26, align 4
  %91 = call i8* @av_mallocz(i32 %90)
  store i8* %91, i8** %12, align 8
  %92 = load i32, i32* %26, align 4
  %93 = call i8* @av_mallocz(i32 %92)
  store i8* %93, i8** %11, align 8
  %94 = load i8*, i8** %11, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %99

96:                                               ; preds = %87
  %97 = load i8*, i8** %12, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %96, %87
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = call i32 @AVERROR(i32 %100)
  store i32 %101, i32* %23, align 4
  br label %286

102:                                              ; preds = %96
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i8*, i8** %7, align 8
  %106 = call i32 @strlen(i8* %105)
  %107 = load i32, i32* %24, align 4
  %108 = sub nsw i32 %106, %107
  %109 = add nsw i32 %108, 1
  %110 = call i32 @av_strlcpy(i8* %103, i8* %104, i32 %109)
  %111 = load i32, i32* %10, align 4
  %112 = sub nsw i32 %111, 1
  store i32 %112, i32* %22, align 4
  br label %113

113:                                              ; preds = %136, %102
  %114 = load i32, i32* %22, align 4
  %115 = icmp sgt i32 %114, 0
  br i1 %115, label %116, label %139

116:                                              ; preds = %113
  %117 = load i32**, i32*** %9, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32*, i32** %117, i64 %119
  %121 = load i32*, i32** %120, align 8
  store i32* %121, i32** %14, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %116
  br label %136

124:                                              ; preds = %116
  %125 = load i32*, i32** %14, align 8
  %126 = call i8* @xmlNodeGetContent(i32* %125)
  store i8* %126, i8** %17, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = call i32 @ishttp(i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %124
  %131 = load i8*, i8** %17, align 8
  %132 = call i32 @xmlFree(i8* %131)
  br label %139

133:                                              ; preds = %124
  %134 = load i8*, i8** %17, align 8
  %135 = call i32 @xmlFree(i8* %134)
  br label %136

136:                                              ; preds = %133, %123
  %137 = load i32, i32* %22, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %22, align 4
  br label %113

139:                                              ; preds = %130, %113
  %140 = load i32**, i32*** %9, align 8
  %141 = load i32, i32* %22, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32*, i32** %140, i64 %142
  %144 = load i32*, i32** %143, align 8
  store i32* %144, i32** %14, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = call i8* @xmlNodeGetContent(i32* %145)
  store i8* %146, i8** %15, align 8
  %147 = load i8*, i8** %15, align 8
  %148 = call i64 @av_strcasecmp(i8* %147, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %139
  %151 = load i8*, i8** %15, align 8
  br label %154

152:                                              ; preds = %139
  %153 = load i8*, i8** %12, align 8
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i8* [ %151, %150 ], [ %153, %152 ]
  store i8* %155, i8** %16, align 8
  %156 = load i32*, i32** %14, align 8
  %157 = icmp ne i32* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %154
  %159 = load i32*, i32** %14, align 8
  %160 = load i8*, i8** %16, align 8
  %161 = call i32 @xmlNodeSetContent(i32* %159, i8* %160)
  store i32 1, i32* %23, align 4
  br label %162

162:                                              ; preds = %158, %154
  %163 = load i8*, i8** %16, align 8
  %164 = call i32 @strlen(i8* %163)
  store i32 %164, i32* %24, align 4
  %165 = load i8*, i8** %16, align 8
  %166 = call i32 @ishttp(i8* %165)
  store i32 %166, i32* %19, align 4
  %167 = load i8*, i8** %16, align 8
  %168 = load i32, i32* %24, align 4
  %169 = sub nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i8, i8* %167, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = load i8, i8* %20, align 1
  %175 = sext i8 %174 to i32
  %176 = icmp ne i32 %173, %175
  br i1 %176, label %177, label %184

177:                                              ; preds = %162
  %178 = load i8*, i8** %16, align 8
  %179 = load i32, i32* %24, align 4
  %180 = add nsw i32 %179, 2
  %181 = call i32 @av_strlcat(i8* %178, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %180)
  %182 = load i32, i32* %24, align 4
  %183 = add nsw i32 %182, 2
  store i32 %183, i32* %24, align 4
  br label %184

184:                                              ; preds = %177, %162
  store i32 0, i32* %25, align 4
  br label %185

185:                                              ; preds = %282, %184
  %186 = load i32, i32* %25, align 4
  %187 = load i32, i32* %10, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %285

189:                                              ; preds = %185
  %190 = load i32, i32* %25, align 4
  %191 = load i32, i32* %22, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %282

194:                                              ; preds = %189
  %195 = load i32**, i32*** %9, align 8
  %196 = load i32, i32* %25, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = call i8* @xmlNodeGetContent(i32* %199)
  store i8* %200, i8** %17, align 8
  %201 = load i8*, i8** %17, align 8
  %202 = icmp ne i8* %201, null
  br i1 %202, label %203, label %281

203:                                              ; preds = %194
  %204 = load i8*, i8** %17, align 8
  %205 = call i32 @av_strstart(i8* %204, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* null)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %281, label %207

207:                                              ; preds = %203
  %208 = load i8*, i8** %11, align 8
  %209 = load i8*, i8** %11, align 8
  %210 = call i32 @strlen(i8* %209)
  %211 = call i32 @memset(i8* %208, i32 0, i32 %210)
  %212 = load i8*, i8** %17, align 8
  %213 = call i32 @ishttp(i8* %212)
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %224, label %215

215:                                              ; preds = %207
  %216 = load i32, i32* %19, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %215
  %219 = load i8*, i8** %11, align 8
  %220 = load i8*, i8** %16, align 8
  %221 = load i32, i32* %24, align 4
  %222 = add nsw i32 %221, 1
  %223 = call i32 @av_strlcpy(i8* %219, i8* %220, i32 %222)
  br label %224

224:                                              ; preds = %218, %215, %207
  %225 = load i8*, i8** %17, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = load i8, i8* %20, align 1
  %230 = sext i8 %229 to i32
  %231 = icmp eq i32 %228, %230
  %232 = zext i1 %231 to i32
  store i32 %232, i32* %21, align 4
  %233 = load i32, i32* %21, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %264

235:                                              ; preds = %224
  %236 = load i8*, i8** %11, align 8
  %237 = load i8*, i8** %17, align 8
  %238 = call i64 @av_stristr(i8* %236, i8* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %264

240:                                              ; preds = %235
  %241 = load i8*, i8** %11, align 8
  store i8* %241, i8** %27, align 8
  %242 = load i8*, i8** %11, align 8
  %243 = call i32 @av_strncasecmp(i8* %242, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 7)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %240
  %246 = load i8*, i8** %27, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 7
  store i8* %247, i8** %27, align 8
  br label %256

248:                                              ; preds = %240
  %249 = load i8*, i8** %11, align 8
  %250 = call i32 @av_strncasecmp(i8* %249, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 8)
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %255, label %252

252:                                              ; preds = %248
  %253 = load i8*, i8** %27, align 8
  %254 = getelementptr inbounds i8, i8* %253, i64 8
  store i8* %254, i8** %27, align 8
  br label %255

255:                                              ; preds = %252, %248
  br label %256

256:                                              ; preds = %255, %245
  %257 = load i8*, i8** %27, align 8
  %258 = call i8* @strchr(i8* %257, i8 signext 47)
  store i8* %258, i8** %27, align 8
  %259 = load i8*, i8** %27, align 8
  %260 = getelementptr inbounds i8, i8* %259, i64 1
  %261 = load i8*, i8** %27, align 8
  %262 = call i32 @strlen(i8* %261)
  %263 = call i32 @memset(i8* %260, i32 0, i32 %262)
  br label %264

264:                                              ; preds = %256, %235, %224
  %265 = load i8*, i8** %11, align 8
  %266 = load i8*, i8** %17, align 8
  %267 = load i32, i32* %21, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %266, i64 %268
  %270 = load i32, i32* %26, align 4
  %271 = call i32 @av_strlcat(i8* %265, i8* %269, i32 %270)
  %272 = load i32**, i32*** %9, align 8
  %273 = load i32, i32* %25, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds i32*, i32** %272, i64 %274
  %276 = load i32*, i32** %275, align 8
  %277 = load i8*, i8** %11, align 8
  %278 = call i32 @xmlNodeSetContent(i32* %276, i8* %277)
  store i32 1, i32* %23, align 4
  %279 = load i8*, i8** %17, align 8
  %280 = call i32 @xmlFree(i8* %279)
  br label %281

281:                                              ; preds = %264, %203, %194
  br label %282

282:                                              ; preds = %281, %193
  %283 = load i32, i32* %25, align 4
  %284 = add nsw i32 %283, 1
  store i32 %284, i32* %25, align 4
  br label %185

285:                                              ; preds = %185
  br label %286

286:                                              ; preds = %285, %99, %69
  %287 = load i32, i32* %26, align 4
  %288 = load i32*, i32** %8, align 8
  %289 = load i32, i32* %288, align 4
  %290 = icmp sgt i32 %287, %289
  br i1 %290, label %291, label %294

291:                                              ; preds = %286
  %292 = load i32, i32* %26, align 4
  %293 = load i32*, i32** %8, align 8
  store i32 %292, i32* %293, align 4
  br label %294

294:                                              ; preds = %291, %286
  %295 = load i8*, i8** %12, align 8
  %296 = call i32 @av_free(i8* %295)
  %297 = load i8*, i8** %11, align 8
  %298 = call i32 @av_free(i8* %297)
  %299 = load i8*, i8** %15, align 8
  %300 = call i32 @xmlFree(i8* %299)
  %301 = load i32, i32* %23, align 4
  ret i32 %301
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @xmlNodeGetContent(i32*) #1

declare dso_local i32 @ishttp(i8*) #1

declare dso_local i32 @xmlFree(i8*) #1

declare dso_local i32 @aligned(i32) #1

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @av_strtok(i8*, i8*, i8**) #1

declare dso_local i32 @av_free(i8*) #1

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

declare dso_local i32 @xmlNodeSetContent(i32*, i8*) #1

declare dso_local i32 @av_strlcat(i8*, i8*, i32) #1

declare dso_local i32 @av_strstart(i8*, i8*, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @av_stristr(i8*, i8*) #1

declare dso_local i32 @av_strncasecmp(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
