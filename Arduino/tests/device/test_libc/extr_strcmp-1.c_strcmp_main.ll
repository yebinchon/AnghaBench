; ModuleID = '/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_strcmp-1.c_strcmp_main.c'
source_filename = "/home/carl/AnghaBench/Arduino/tests/device/test_libc/extr_strcmp-1.c_strcmp_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BUFF_SIZE = common dso_local global i32 0, align 4
@rand_seed = common dso_local global i32 0, align 4
@MAX_OFFSET = common dso_local global i32 0, align 4
@MAX_BLOCK_SIZE = common dso_local global i32 0, align 4
@MAX_DIFF = common dso_local global i32 0, align 4
@MAX_LEN = common dso_local global i32 0, align 4
@MAX_ZEROS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [145 x i8] c"\0AFailed: after %s of %u bytes with src_align %u and dst_align %u, dest after %d bytes is modified for %d bytes, return value is %d, expected 0.\0A\00", align 1
@testname = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [152 x i8] c"\0AFailed: after %s of %u bytes with src_align %u and dst_align %u, dest after %d bytes is modified for %d bytes, return value is %d, expected negative.\0A\00", align 1
@.str.2 = private unnamed_addr constant [152 x i8] c"\0AFailed: after %s of %u bytes with src_align %u and dst_align %u, dest after %d bytes is modified for %d bytes, return value is %d, expected positive.\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"\0AFailed: expected positive, return %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"\0AFailed: expected negative, return %d\0A\00", align 1
@errors = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [16 x i8] c"ERROR. FAILED.\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"ok\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @strcmp_main() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = load i32, i32* @BUFF_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %1, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %2, align 8
  %18 = load i32, i32* @BUFF_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %3, align 8
  %21 = load i32, i32* @rand_seed, align 4
  %22 = call i32 @srand(i32 %21)
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %240, %0
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @MAX_OFFSET, align 4
  %26 = icmp ule i32 %24, %25
  br i1 %26, label %27, label %243

27:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %236, %27
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @MAX_OFFSET, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %239

32:                                               ; preds = %28
  store i32 1, i32* %9, align 4
  br label %33

33:                                               ; preds = %232, %32
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @MAX_BLOCK_SIZE, align 4
  %36 = icmp ule i32 %34, %35
  br i1 %36, label %37, label %235

37:                                               ; preds = %33
  store i32 1, i32* %10, align 4
  br label %38

38:                                               ; preds = %228, %37
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* @MAX_DIFF, align 4
  %42 = add i32 %40, %41
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %231

44:                                               ; preds = %38
  store i32 0, i32* %11, align 4
  br label %45

45:                                               ; preds = %224, %44
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MAX_LEN, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %227

49:                                               ; preds = %45
  store i32 1, i32* %6, align 4
  br label %50

50:                                               ; preds = %220, %49
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @MAX_ZEROS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %223

54:                                               ; preds = %50
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub i32 %55, %56
  %58 = load i32, i32* @MAX_DIFF, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  br label %220

61:                                               ; preds = %54
  store i32 0, i32* %4, align 4
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @BUFF_SIZE, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = srem i32 %67, 26
  %69 = add nsw i32 65, %68
  %70 = trunc i32 %69 to i8
  %71 = load i32, i32* %4, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %17, i64 %72
  store i8 %70, i8* %73, align 1
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %17, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %20, i64 %79
  store i8 %77, i8* %80, align 1
  br label %81

81:                                               ; preds = %66
  %82 = load i32, i32* %4, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %4, align 4
  br label %62

84:                                               ; preds = %62
  %85 = call i32 @delay(i32 0)
  %86 = load i32, i32* %8, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %20, i64 %87
  %89 = load i32, i32* %7, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i8, i8* %17, i64 %90
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @memcpy(i8* %88, i8* %91, i32 %92)
  %94 = load i32, i32* %7, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %17, i64 %95
  %97 = load i32, i32* %9, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = getelementptr inbounds i8, i8* %99, i64 -1
  store i8* %100, i8** %12, align 8
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %108, %84
  %102 = load i32, i32* %4, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %111

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  store i8 0, i8* %106, align 1
  br label %108

108:                                              ; preds = %105
  %109 = load i32, i32* %4, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %4, align 4
  br label %101

111:                                              ; preds = %101
  %112 = load i32, i32* %8, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8, i8* %20, i64 %113
  %115 = load i32, i32* %10, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds i8, i8* %114, i64 %116
  %118 = getelementptr inbounds i8, i8* %117, i64 -1
  store i8* %118, i8** %12, align 8
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %126, %111
  %120 = load i32, i32* %5, align 4
  %121 = load i32, i32* %11, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %119
  %124 = load i8*, i8** %12, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %12, align 8
  store i8 120, i8* %124, align 1
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %5, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %5, align 4
  br label %119

129:                                              ; preds = %119
  %130 = load i8*, i8** %12, align 8
  store i8 0, i8* %130, align 1
  %131 = load i32, i32* %7, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8, i8* %17, i64 %132
  %134 = load i32, i32* %8, align 4
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %20, i64 %135
  %137 = call i32 @strcmp(i8* %133, i8* %136)
  store i32 %137, i32* %13, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* %10, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %141, label %171

141:                                              ; preds = %129
  %142 = load i32, i32* %11, align 4
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %141
  %145 = load i32, i32* %13, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %156

147:                                              ; preds = %144
  %148 = load i32, i32* @testname, align 4
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* %10, align 4
  %153 = load i32, i32* %11, align 4
  %154 = load i32, i32* %13, align 4
  %155 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([145 x i8], [145 x i8]* @.str, i64 0, i64 0), i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %147, %144
  br label %170

157:                                              ; preds = %141
  %158 = load i32, i32* %13, align 4
  %159 = icmp sge i32 %158, 0
  br i1 %159, label %160, label %169

160:                                              ; preds = %157
  %161 = load i32, i32* @testname, align 4
  %162 = load i32, i32* %9, align 4
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* %8, align 4
  %165 = load i32, i32* %10, align 4
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i64 0, i64 0), i32 %161, i32 %162, i32 %163, i32 %164, i32 %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %160, %157
  br label %170

170:                                              ; preds = %169, %156
  br label %219

171:                                              ; preds = %129
  %172 = load i32, i32* %10, align 4
  %173 = load i32, i32* %9, align 4
  %174 = icmp ugt i32 %172, %173
  br i1 %174, label %175, label %188

175:                                              ; preds = %171
  %176 = load i32, i32* %13, align 4
  %177 = icmp sge i32 %176, 0
  br i1 %177, label %178, label %187

178:                                              ; preds = %175
  %179 = load i32, i32* @testname, align 4
  %180 = load i32, i32* %9, align 4
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %11, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i64 0, i64 0), i32 %179, i32 %180, i32 %181, i32 %182, i32 %183, i32 %184, i32 %185)
  br label %187

187:                                              ; preds = %178, %175
  br label %218

188:                                              ; preds = %171
  %189 = load i32, i32* %11, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %188
  %192 = load i32, i32* %13, align 4
  %193 = icmp sle i32 %192, 0
  br i1 %193, label %194, label %203

194:                                              ; preds = %191
  %195 = load i32, i32* @testname, align 4
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* %7, align 4
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %10, align 4
  %200 = load i32, i32* %11, align 4
  %201 = load i32, i32* %13, align 4
  %202 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200, i32 %201)
  br label %203

203:                                              ; preds = %194, %191
  br label %217

204:                                              ; preds = %188
  %205 = load i32, i32* %13, align 4
  %206 = icmp sge i32 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %204
  %208 = load i32, i32* @testname, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load i32, i32* %7, align 4
  %211 = load i32, i32* %8, align 4
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* %11, align 4
  %214 = load i32, i32* %13, align 4
  %215 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([152 x i8], [152 x i8]* @.str.1, i64 0, i64 0), i32 %208, i32 %209, i32 %210, i32 %211, i32 %212, i32 %213, i32 %214)
  br label %216

216:                                              ; preds = %207, %204
  br label %217

217:                                              ; preds = %216, %203
  br label %218

218:                                              ; preds = %217, %187
  br label %219

219:                                              ; preds = %218, %170
  br label %220

220:                                              ; preds = %219, %60
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %50

223:                                              ; preds = %50
  br label %224

224:                                              ; preds = %223
  %225 = load i32, i32* %11, align 4
  %226 = add i32 %225, 1
  store i32 %226, i32* %11, align 4
  br label %45

227:                                              ; preds = %45
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %10, align 4
  %230 = add i32 %229, 1
  store i32 %230, i32* %10, align 4
  br label %38

231:                                              ; preds = %38
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %9, align 4
  %234 = add i32 %233, 1
  store i32 %234, i32* %9, align 4
  br label %33

235:                                              ; preds = %33
  br label %236

236:                                              ; preds = %235
  %237 = load i32, i32* %8, align 4
  %238 = add i32 %237, 1
  store i32 %238, i32* %8, align 4
  br label %28

239:                                              ; preds = %28
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %7, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %7, align 4
  br label %23

243:                                              ; preds = %23
  %244 = getelementptr inbounds i8, i8* %17, i64 1
  store i8 65, i8* %244, align 1
  %245 = getelementptr inbounds i8, i8* %20, i64 1
  store i8 65, i8* %245, align 1
  %246 = getelementptr inbounds i8, i8* %17, i64 2
  store i8 66, i8* %246, align 2
  %247 = getelementptr inbounds i8, i8* %20, i64 2
  store i8 66, i8* %247, align 2
  %248 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 67, i8* %248, align 1
  %249 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 67, i8* %249, align 1
  %250 = getelementptr inbounds i8, i8* %17, i64 4
  store i8 0, i8* %250, align 4
  %251 = getelementptr inbounds i8, i8* %20, i64 4
  store i8 0, i8* %251, align 4
  %252 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 -63, i8* %252, align 16
  %253 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 65, i8* %253, align 16
  %254 = call i32 @strcmp(i8* %17, i8* %20)
  store i32 %254, i32* %13, align 4
  %255 = load i32, i32* %13, align 4
  %256 = icmp sle i32 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %243
  %258 = load i32, i32* %13, align 4
  %259 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %258)
  br label %260

260:                                              ; preds = %257, %243
  %261 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 1, i8* %261, align 16
  %262 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 -126, i8* %262, align 16
  %263 = call i32 @strcmp(i8* %17, i8* %20)
  store i32 %263, i32* %13, align 4
  %264 = load i32, i32* %13, align 4
  %265 = icmp sge i32 %264, 0
  br i1 %265, label %266, label %269

266:                                              ; preds = %260
  %267 = load i32, i32* %13, align 4
  %268 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %267)
  br label %269

269:                                              ; preds = %266, %260
  %270 = getelementptr inbounds i8, i8* %17, i64 0
  store i8 68, i8* %270, align 16
  %271 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 68, i8* %271, align 16
  %272 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 -63, i8* %272, align 1
  %273 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 65, i8* %273, align 1
  %274 = call i32 @strcmp(i8* %17, i8* %20)
  store i32 %274, i32* %13, align 4
  %275 = load i32, i32* %13, align 4
  %276 = icmp sle i32 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %269
  %278 = load i32, i32* %13, align 4
  %279 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %278)
  br label %280

280:                                              ; preds = %277, %269
  %281 = getelementptr inbounds i8, i8* %17, i64 3
  store i8 1, i8* %281, align 1
  %282 = getelementptr inbounds i8, i8* %20, i64 3
  store i8 -126, i8* %282, align 1
  %283 = call i32 @strcmp(i8* %17, i8* %20)
  store i32 %283, i32* %13, align 4
  %284 = load i32, i32* %13, align 4
  %285 = icmp sge i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load i32, i32* %13, align 4
  %288 = call i32 (i8*, i32, ...) @print_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %287)
  br label %289

289:                                              ; preds = %286, %280
  %290 = load i64, i64* @errors, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %295

292:                                              ; preds = %289
  %293 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %294 = call i32 (...) @abort() #4
  unreachable

295:                                              ; preds = %289
  %296 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %297 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %297)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @srand(i32) #2

declare dso_local i32 @delay(i32) #2

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @strcmp(i8*, i8*) #2

declare dso_local i32 @print_error(i8*, i32, ...) #2

declare dso_local i32 @printf(i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
