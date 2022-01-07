; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_yuvcmp.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_yuvcmp.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"%s [YUV file 1] [YUV file 2] width height pixelcmp|blockdump (# to skip)\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"pixelcmp\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"blockdump\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@F_NOCACHE = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"Loading frame %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Unable to read Y from file %d, exiting\0A\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"Luma diff 0x%02x != 0x%02x at pixel (%4d,%-4d) mb(%d,%d) #%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"Unable to read %c from file %d, exiting\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"UV\00", align 1
@.str.9 = private unnamed_addr constant [64 x i8] c"c%c diff 0x%02x != 0x%02x at pixel (%4d,%-4d) mb(%3d,%-3d) #%d\0A\00", align 1
@.str.10 = private unnamed_addr constant [37 x i8] c"MB (%3d,%-3d) %4d %d %c%c%c damaged\0A\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"%c \00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"TB\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"%02x%c\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"| \00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca [2 x i32], align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32*], align 16
  %13 = alloca [2 x [2 x i32*]], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp slt i32 %31, 6
  br i1 %32, label %33, label %39

33:                                               ; preds = %2
  %34 = load i32, i32* @stderr, align 4
  %35 = load i8**, i8*** %5, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i8* %37)
  store i32 1, i32* %3, align 4
  br label %593

39:                                               ; preds = %2
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 3
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @atoi(i8* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 4
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @atoi(i8* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %4, align 4
  %49 = icmp sgt i32 %48, 6
  br i1 %49, label %50, label %55

50:                                               ; preds = %39
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 6
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @atoi(i8* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %50, %39
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %10, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* %10, align 4
  %61 = mul nsw i32 %59, %60
  %62 = sdiv i32 %61, 4
  store i32 %62, i32* %19, align 4
  %63 = load i32, i32* %9, align 4
  %64 = sdiv i32 %63, 2
  store i32 %64, i32* %22, align 4
  %65 = load i32, i32* %11, align 4
  store i32 %65, i32* %23, align 4
  store i32 0, i32* %30, align 4
  %66 = load i8**, i8*** %5, align 8
  %67 = getelementptr inbounds i8*, i8** %66, i64 5
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @strstr(i8* %68, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %70 = icmp ne i64 %69, 0
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  store i32 %72, i32* %7, align 4
  %73 = load i8**, i8*** %5, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 5
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @strstr(i8* %75, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %77 = icmp ne i64 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  store i32 %79, i32* %8, align 4
  store i32 0, i32* %14, align 4
  br label %80

80:                                               ; preds = %146, %55
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 2
  br i1 %82, label %83, label %149

83:                                               ; preds = %80
  %84 = load i32, i32* %18, align 4
  %85 = call i8* @malloc(i32 %84)
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %88
  store i32* %86, i32** %89, align 8
  %90 = load i32, i32* %19, align 4
  %91 = call i8* @malloc(i32 %90)
  %92 = bitcast i8* %91 to i32*
  %93 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 0
  %94 = load i32, i32* %14, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [2 x i32*], [2 x i32*]* %93, i64 0, i64 %95
  store i32* %92, i32** %96, align 8
  %97 = load i32, i32* %19, align 4
  %98 = call i8* @malloc(i32 %97)
  %99 = bitcast i8* %98 to i32*
  %100 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 1
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [2 x i32*], [2 x i32*]* %100, i64 0, i64 %102
  store i32* %99, i32** %103, align 8
  %104 = load i8**, i8*** %5, align 8
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 1, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8*, i8** %104, i64 %107
  %109 = load i8*, i8** %108, align 8
  %110 = load i32, i32* @O_RDONLY, align 4
  %111 = call i32 @open(i8* %109, i32 %110)
  %112 = load i32, i32* %14, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %14, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, -1
  br i1 %119, label %120, label %123

120:                                              ; preds = %83
  %121 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %122 = call i32 @exit(i32 1) #3
  unreachable

123:                                              ; preds = %83
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @F_NOCACHE, align 4
  %129 = call i32 @fcntl(i32 %127, i32 %128, i32 1)
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %123
  %133 = load i32, i32* %14, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %11, align 4
  %138 = load i32, i32* %18, align 4
  %139 = load i32, i32* %19, align 4
  %140 = mul nsw i32 2, %139
  %141 = add nsw i32 %138, %140
  %142 = mul nsw i32 %137, %141
  %143 = load i32, i32* @SEEK_SET, align 4
  %144 = call i32 @lseek(i32 %136, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %132, %123
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %14, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %14, align 4
  br label %80

149:                                              ; preds = %80
  %150 = load i32, i32* %9, align 4
  %151 = sdiv i32 %150, 16
  store i32 %151, i32* %26, align 4
  %152 = load i32, i32* %10, align 4
  %153 = sdiv i32 %152, 16
  store i32 %153, i32* %27, align 4
  %154 = load i32, i32* %26, align 4
  %155 = load i32, i32* %27, align 4
  %156 = mul nsw i32 %154, %155
  %157 = call i8* @malloc(i32 %156)
  store i8* %157, i8** %25, align 8
  br label %158

158:                                              ; preds = %591, %149
  %159 = load i32, i32* %30, align 4
  %160 = icmp ne i32 %159, 0
  %161 = xor i1 %160, true
  br i1 %161, label %162, label %592

162:                                              ; preds = %158
  %163 = load i8*, i8** %25, align 8
  %164 = load i32, i32* %26, align 4
  %165 = load i32, i32* %27, align 4
  %166 = mul nsw i32 %164, %165
  %167 = call i32 @memset(i8* %163, i32 0, i32 %166)
  %168 = load i32, i32* %23, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %23, align 4
  %170 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %169)
  store i32 0, i32* %14, align 4
  br label %171

171:                                              ; preds = %194, %162
  %172 = load i32, i32* %14, align 4
  %173 = icmp slt i32 %172, 2
  br i1 %173, label %174, label %197

174:                                              ; preds = %171
  %175 = load i32, i32* %14, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %176
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 %180
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %18, align 4
  %184 = call i32 @read(i32 %178, i32* %182, i32 %183)
  store i32 %184, i32* %15, align 4
  %185 = load i32, i32* %15, align 4
  %186 = load i32, i32* %18, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %174
  %189 = load i32, i32* @stderr, align 4
  %190 = load i32, i32* %14, align 4
  %191 = add nsw i32 %190, 1
  %192 = call i32 (i32, i8*, ...) @fprintf(i32 %189, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  store i32 1, i32* %3, align 4
  br label %593

193:                                              ; preds = %174
  br label %194

194:                                              ; preds = %193
  %195 = load i32, i32* %14, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %14, align 4
  br label %171

197:                                              ; preds = %171
  store i32 0, i32* %16, align 4
  br label %198

198:                                              ; preds = %263, %197
  %199 = load i32, i32* %16, align 4
  %200 = load i32, i32* %18, align 4
  %201 = icmp slt i32 %199, %200
  br i1 %201, label %202, label %266

202:                                              ; preds = %198
  %203 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %204 = load i32*, i32** %203, align 16
  %205 = load i32, i32* %16, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  %208 = load i32, i32* %207, align 4
  %209 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %208, %214
  br i1 %215, label %216, label %262

216:                                              ; preds = %202
  %217 = load i32, i32* %16, align 4
  %218 = load i32, i32* %9, align 4
  %219 = srem i32 %217, %218
  store i32 %219, i32* %20, align 4
  %220 = load i32, i32* %16, align 4
  %221 = load i32, i32* %9, align 4
  %222 = sdiv i32 %220, %221
  store i32 %222, i32* %21, align 4
  %223 = load i32, i32* %20, align 4
  %224 = sdiv i32 %223, 16
  %225 = load i32, i32* %21, align 4
  %226 = sdiv i32 %225, 16
  %227 = load i32, i32* %26, align 4
  %228 = mul nsw i32 %226, %227
  %229 = add nsw i32 %224, %228
  store i32 %229, i32* %24, align 4
  %230 = load i32, i32* %7, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %253

232:                                              ; preds = %216
  %233 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %234 = load i32*, i32** %233, align 16
  %235 = load i32, i32* %16, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %16, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* %20, align 4
  %246 = load i32, i32* %21, align 4
  %247 = load i32, i32* %20, align 4
  %248 = sdiv i32 %247, 16
  %249 = load i32, i32* %21, align 4
  %250 = sdiv i32 %249, 16
  %251 = load i32, i32* %24, align 4
  %252 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.6, i64 0, i64 0), i32 %238, i32 %244, i32 %245, i32 %246, i32 %248, i32 %250, i32 %251)
  br label %253

253:                                              ; preds = %232, %216
  %254 = load i8*, i8** %25, align 8
  %255 = load i32, i32* %24, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i8, i8* %254, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = or i32 %259, 1
  %261 = trunc i32 %260 to i8
  store i8 %261, i8* %257, align 1
  br label %262

262:                                              ; preds = %253, %202
  br label %263

263:                                              ; preds = %262
  %264 = load i32, i32* %16, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %16, align 4
  br label %198

266:                                              ; preds = %198
  store i32 0, i32* %17, align 4
  br label %267

267:                                              ; preds = %400, %266
  %268 = load i32, i32* %17, align 4
  %269 = icmp slt i32 %268, 2
  br i1 %269, label %270, label %403

270:                                              ; preds = %267
  store i32 0, i32* %14, align 4
  br label %271

271:                                              ; preds = %302, %270
  %272 = load i32, i32* %14, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %305

274:                                              ; preds = %271
  %275 = load i32, i32* %14, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 %276
  %278 = load i32, i32* %277, align 4
  %279 = load i32, i32* %17, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 %280
  %282 = load i32, i32* %14, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x i32*], [2 x i32*]* %281, i64 0, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %19, align 4
  %287 = call i32 @read(i32 %278, i32* %285, i32 %286)
  store i32 %287, i32* %15, align 4
  %288 = load i32, i32* %15, align 4
  %289 = load i32, i32* %19, align 4
  %290 = icmp ne i32 %288, %289
  br i1 %290, label %291, label %301

291:                                              ; preds = %274
  %292 = load i32, i32* @stderr, align 4
  %293 = load i32, i32* %17, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.8, i64 0, i64 %294
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  %300 = call i32 (i32, i8*, ...) @fprintf(i32 %292, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i32 %297, i32 %299)
  store i32 1, i32* %3, align 4
  br label %593

301:                                              ; preds = %274
  br label %302

302:                                              ; preds = %301
  %303 = load i32, i32* %14, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %14, align 4
  br label %271

305:                                              ; preds = %271
  store i32 0, i32* %16, align 4
  br label %306

306:                                              ; preds = %396, %305
  %307 = load i32, i32* %16, align 4
  %308 = load i32, i32* %19, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %399

310:                                              ; preds = %306
  %311 = load i32, i32* %17, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 %312
  %314 = getelementptr inbounds [2 x i32*], [2 x i32*]* %313, i64 0, i64 0
  %315 = load i32*, i32** %314, align 16
  %316 = load i32, i32* %16, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i32, i32* %315, i64 %317
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %17, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 %321
  %323 = getelementptr inbounds [2 x i32*], [2 x i32*]* %322, i64 0, i64 1
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %16, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp ne i32 %319, %328
  br i1 %329, label %330, label %395

330:                                              ; preds = %310
  %331 = load i32, i32* %16, align 4
  %332 = load i32, i32* %22, align 4
  %333 = srem i32 %331, %332
  store i32 %333, i32* %20, align 4
  %334 = load i32, i32* %16, align 4
  %335 = load i32, i32* %22, align 4
  %336 = sdiv i32 %334, %335
  store i32 %336, i32* %21, align 4
  %337 = load i32, i32* %20, align 4
  %338 = sdiv i32 %337, 8
  %339 = load i32, i32* %21, align 4
  %340 = sdiv i32 %339, 8
  %341 = load i32, i32* %26, align 4
  %342 = mul nsw i32 %340, %341
  %343 = add nsw i32 %338, %342
  store i32 %343, i32* %24, align 4
  %344 = load i32, i32* %17, align 4
  %345 = shl i32 2, %344
  %346 = load i8*, i8** %25, align 8
  %347 = load i32, i32* %24, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i8, i8* %346, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = sext i8 %350 to i32
  %352 = or i32 %351, %345
  %353 = trunc i32 %352 to i8
  store i8 %353, i8* %349, align 1
  %354 = load i32, i32* %7, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %394

356:                                              ; preds = %330
  %357 = load i32, i32* %17, align 4
  %358 = icmp ne i32 %357, 0
  %359 = zext i1 %358 to i64
  %360 = select i1 %358, i32 114, i32 98
  %361 = load i32, i32* %17, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 %362
  %364 = getelementptr inbounds [2 x i32*], [2 x i32*]* %363, i64 0, i64 0
  %365 = load i32*, i32** %364, align 16
  %366 = load i32, i32* %16, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i32, i32* %365, i64 %367
  %369 = load i32, i32* %368, align 4
  %370 = load i32, i32* %17, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds [2 x [2 x i32*]], [2 x [2 x i32*]]* %13, i64 0, i64 %371
  %373 = getelementptr inbounds [2 x i32*], [2 x i32*]* %372, i64 0, i64 1
  %374 = load i32*, i32** %373, align 8
  %375 = load i32, i32* %16, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* %20, align 4
  %380 = load i32, i32* %21, align 4
  %381 = load i32, i32* %20, align 4
  %382 = sdiv i32 %381, 8
  %383 = load i32, i32* %21, align 4
  %384 = sdiv i32 %383, 8
  %385 = load i32, i32* %20, align 4
  %386 = sdiv i32 %385, 8
  %387 = load i32, i32* %21, align 4
  %388 = sdiv i32 %387, 8
  %389 = load i32, i32* %22, align 4
  %390 = mul nsw i32 %388, %389
  %391 = sdiv i32 %390, 8
  %392 = add nsw i32 %386, %391
  %393 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.9, i64 0, i64 0), i32 %360, i32 %369, i32 %378, i32 %379, i32 %380, i32 %382, i32 %384, i32 %392)
  br label %394

394:                                              ; preds = %356, %330
  br label %395

395:                                              ; preds = %394, %310
  br label %396

396:                                              ; preds = %395
  %397 = load i32, i32* %16, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %16, align 4
  br label %306

399:                                              ; preds = %306
  br label %400

400:                                              ; preds = %399
  %401 = load i32, i32* %17, align 4
  %402 = add nsw i32 %401, 1
  store i32 %402, i32* %17, align 4
  br label %267

403:                                              ; preds = %267
  store i32 0, i32* %14, align 4
  br label %404

404:                                              ; preds = %588, %403
  %405 = load i32, i32* %14, align 4
  %406 = load i32, i32* %26, align 4
  %407 = load i32, i32* %27, align 4
  %408 = mul nsw i32 %406, %407
  %409 = icmp slt i32 %405, %408
  br i1 %409, label %410, label %591

410:                                              ; preds = %404
  %411 = load i32, i32* %14, align 4
  %412 = load i32, i32* %26, align 4
  %413 = srem i32 %411, %412
  store i32 %413, i32* %20, align 4
  %414 = load i32, i32* %14, align 4
  %415 = load i32, i32* %26, align 4
  %416 = sdiv i32 %414, %415
  store i32 %416, i32* %21, align 4
  %417 = load i8*, i8** %25, align 8
  %418 = load i32, i32* %14, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i8, i8* %417, i64 %419
  %421 = load i8, i8* %420, align 1
  %422 = icmp ne i8 %421, 0
  br i1 %422, label %423, label %587

423:                                              ; preds = %410
  store i32 1, i32* %30, align 4
  %424 = load i32, i32* %20, align 4
  %425 = load i32, i32* %21, align 4
  %426 = load i32, i32* %14, align 4
  %427 = load i8*, i8** %25, align 8
  %428 = load i32, i32* %14, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i8, i8* %427, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = sext i8 %431 to i32
  %433 = load i8*, i8** %25, align 8
  %434 = load i32, i32* %14, align 4
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds i8, i8* %433, i64 %435
  %437 = load i8, i8* %436, align 1
  %438 = sext i8 %437 to i32
  %439 = and i32 %438, 1
  %440 = icmp ne i32 %439, 0
  %441 = zext i1 %440 to i64
  %442 = select i1 %440, i32 89, i32 32
  %443 = load i8*, i8** %25, align 8
  %444 = load i32, i32* %14, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i8, i8* %443, i64 %445
  %447 = load i8, i8* %446, align 1
  %448 = sext i8 %447 to i32
  %449 = and i32 %448, 2
  %450 = icmp ne i32 %449, 0
  %451 = zext i1 %450 to i64
  %452 = select i1 %450, i32 85, i32 32
  %453 = load i8*, i8** %25, align 8
  %454 = load i32, i32* %14, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i8, i8* %453, i64 %455
  %457 = load i8, i8* %456, align 1
  %458 = sext i8 %457 to i32
  %459 = and i32 %458, 4
  %460 = icmp ne i32 %459, 0
  %461 = zext i1 %460 to i64
  %462 = select i1 %460, i32 86, i32 32
  %463 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %424, i32 %425, i32 %426, i32 %432, i32 %442, i32 %452, i32 %462)
  %464 = load i32, i32* %8, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %586

466:                                              ; preds = %423
  %467 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 0
  %468 = load i32*, i32** %467, align 16
  %469 = load i32, i32* %20, align 4
  %470 = mul nsw i32 %469, 16
  %471 = sext i32 %470 to i64
  %472 = getelementptr inbounds i32, i32* %468, i64 %471
  %473 = load i32, i32* %21, align 4
  %474 = mul nsw i32 %473, 16
  %475 = load i32, i32* %9, align 4
  %476 = mul nsw i32 %474, %475
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32, i32* %472, i64 %477
  store i32* %478, i32** %28, align 8
  %479 = getelementptr inbounds [2 x i32*], [2 x i32*]* %12, i64 0, i64 1
  %480 = load i32*, i32** %479, align 8
  %481 = load i32, i32* %20, align 4
  %482 = mul nsw i32 %481, 16
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %480, i64 %483
  %485 = load i32, i32* %21, align 4
  %486 = mul nsw i32 %485, 16
  %487 = load i32, i32* %9, align 4
  %488 = mul nsw i32 %486, %487
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %484, i64 %489
  store i32* %490, i32** %29, align 8
  store i32 0, i32* %21, align 4
  br label %491

491:                                              ; preds = %582, %466
  %492 = load i32, i32* %21, align 4
  %493 = icmp slt i32 %492, 16
  br i1 %493, label %494, label %585

494:                                              ; preds = %491
  %495 = load i32, i32* %21, align 4
  %496 = and i32 %495, 1
  %497 = sext i32 %496 to i64
  %498 = getelementptr inbounds [3 x i8], [3 x i8]* @.str.12, i64 0, i64 %497
  %499 = load i8, i8* %498, align 1
  %500 = sext i8 %499 to i32
  %501 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %500)
  store i32 0, i32* %20, align 4
  br label %502

502:                                              ; preds = %537, %494
  %503 = load i32, i32* %20, align 4
  %504 = icmp slt i32 %503, 16
  br i1 %504, label %505, label %540

505:                                              ; preds = %502
  %506 = load i32*, i32** %28, align 8
  %507 = load i32, i32* %20, align 4
  %508 = load i32, i32* %21, align 4
  %509 = load i32, i32* %9, align 4
  %510 = mul nsw i32 %508, %509
  %511 = add nsw i32 %507, %510
  %512 = sext i32 %511 to i64
  %513 = getelementptr inbounds i32, i32* %506, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = load i32*, i32** %28, align 8
  %516 = load i32, i32* %20, align 4
  %517 = load i32, i32* %21, align 4
  %518 = load i32, i32* %9, align 4
  %519 = mul nsw i32 %517, %518
  %520 = add nsw i32 %516, %519
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %515, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = load i32*, i32** %29, align 8
  %525 = load i32, i32* %20, align 4
  %526 = load i32, i32* %21, align 4
  %527 = load i32, i32* %9, align 4
  %528 = mul nsw i32 %526, %527
  %529 = add nsw i32 %525, %528
  %530 = sext i32 %529 to i64
  %531 = getelementptr inbounds i32, i32* %524, i64 %530
  %532 = load i32, i32* %531, align 4
  %533 = icmp ne i32 %523, %532
  %534 = zext i1 %533 to i64
  %535 = select i1 %533, i32 60, i32 32
  %536 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %514, i32 %535)
  br label %537

537:                                              ; preds = %505
  %538 = load i32, i32* %20, align 4
  %539 = add nsw i32 %538, 1
  store i32 %539, i32* %20, align 4
  br label %502

540:                                              ; preds = %502
  %541 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %542

542:                                              ; preds = %577, %540
  %543 = load i32, i32* %20, align 4
  %544 = icmp slt i32 %543, 16
  br i1 %544, label %545, label %580

545:                                              ; preds = %542
  %546 = load i32*, i32** %29, align 8
  %547 = load i32, i32* %20, align 4
  %548 = load i32, i32* %21, align 4
  %549 = load i32, i32* %9, align 4
  %550 = mul nsw i32 %548, %549
  %551 = add nsw i32 %547, %550
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i32, i32* %546, i64 %552
  %554 = load i32, i32* %553, align 4
  %555 = load i32*, i32** %28, align 8
  %556 = load i32, i32* %20, align 4
  %557 = load i32, i32* %21, align 4
  %558 = load i32, i32* %9, align 4
  %559 = mul nsw i32 %557, %558
  %560 = add nsw i32 %556, %559
  %561 = sext i32 %560 to i64
  %562 = getelementptr inbounds i32, i32* %555, i64 %561
  %563 = load i32, i32* %562, align 4
  %564 = load i32*, i32** %29, align 8
  %565 = load i32, i32* %20, align 4
  %566 = load i32, i32* %21, align 4
  %567 = load i32, i32* %9, align 4
  %568 = mul nsw i32 %566, %567
  %569 = add nsw i32 %565, %568
  %570 = sext i32 %569 to i64
  %571 = getelementptr inbounds i32, i32* %564, i64 %570
  %572 = load i32, i32* %571, align 4
  %573 = icmp ne i32 %563, %572
  %574 = zext i1 %573 to i64
  %575 = select i1 %573, i32 60, i32 32
  %576 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i64 0, i64 0), i32 %554, i32 %575)
  br label %577

577:                                              ; preds = %545
  %578 = load i32, i32* %20, align 4
  %579 = add nsw i32 %578, 1
  store i32 %579, i32* %20, align 4
  br label %542

580:                                              ; preds = %542
  %581 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %582

582:                                              ; preds = %580
  %583 = load i32, i32* %21, align 4
  %584 = add nsw i32 %583, 1
  store i32 %584, i32* %21, align 4
  br label %491

585:                                              ; preds = %491
  br label %586

586:                                              ; preds = %585, %423
  br label %587

587:                                              ; preds = %586, %410
  br label %588

588:                                              ; preds = %587
  %589 = load i32, i32* %14, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %14, align 4
  br label %404

591:                                              ; preds = %404
  br label %158

592:                                              ; preds = %158
  store i32 0, i32* %3, align 4
  br label %593

593:                                              ; preds = %592, %291, %188, %33
  %594 = load i32, i32* %3, align 4
  ret i32 %594
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @fcntl(i32, i32, i32) #1

declare dso_local i32 @lseek(i32, i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @read(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
