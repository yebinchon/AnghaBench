; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_advance.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngfix.c_zlib_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zlib = type { i32, i32, i32, i32*, i32, i64, i64, i64, i8*, i32, i8*, i32, %struct.chunk*, %struct.TYPE_2__, i32, %struct.file* }
%struct.chunk = type { i32*, i32, i64, i32, i8*, i32, i8* }
%struct.TYPE_2__ = type { i32*, i32, i32*, i32, i32* }
%struct.file = type { i32 }

@Z_NO_FLUSH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@Z_SYNC_FLUSH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"extra compressed data\00", align 1
@ZLIB_FATAL = common dso_local global i32 0, align 4
@ZLIB_OK = common dso_local global i32 0, align 4
@ZLIB_STREAM_END = common dso_local global i32 0, align 4
@ZLIB_TOO_FAR_BACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zlib*, i64)* @zlib_advance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zlib_advance(%struct.zlib* %0, i64 %1) #0 {
  %3 = alloca %struct.zlib*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.chunk*, align 8
  store %struct.zlib* %0, %struct.zlib** %3, align 8
  store i64 %1, i64* %4, align 8
  %17 = load %struct.zlib*, %struct.zlib** %3, align 8
  %18 = getelementptr inbounds %struct.zlib, %struct.zlib* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %20 = load %struct.zlib*, %struct.zlib** %3, align 8
  %21 = getelementptr inbounds %struct.zlib, %struct.zlib* %20, i32 0, i32 15
  %22 = load %struct.file*, %struct.file** %21, align 8
  store %struct.file* %22, %struct.file** %8, align 8
  %23 = load i32, i32* %5, align 4
  %24 = icmp sge i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  br label %27

27:                                               ; preds = %243, %2
  %28 = load i64, i64* %7, align 8
  %29 = load i64, i64* %4, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ false, %27 ], [ %33, %31 ]
  br i1 %35, label %36, label %255

36:                                               ; preds = %34
  %37 = load %struct.file*, %struct.file** %8, align 8
  %38 = call i32 @reread_byte(%struct.file* %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %121 [
    i32 0, label %40
    i32 1, label %82
  ]

40:                                               ; preds = %36
  %41 = load i32, i32* %11, align 4
  %42 = ashr i32 %41, 4
  %43 = add nsw i32 8, %42
  store i32 %43, i32* %13, align 4
  %44 = load %struct.zlib*, %struct.zlib** %3, align 8
  %45 = getelementptr inbounds %struct.zlib, %struct.zlib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %14, align 4
  %47 = load i32, i32* %13, align 4
  %48 = load %struct.zlib*, %struct.zlib** %3, align 8
  %49 = getelementptr inbounds %struct.zlib, %struct.zlib* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %40
  %53 = load i32, i32* %13, align 4
  %54 = icmp sgt i32 %53, 15
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %58

56:                                               ; preds = %52
  %57 = load i32, i32* %13, align 4
  br label %58

58:                                               ; preds = %56, %55
  %59 = phi i32 [ 15, %55 ], [ %57, %56 ]
  %60 = load %struct.zlib*, %struct.zlib** %3, align 8
  %61 = getelementptr inbounds %struct.zlib, %struct.zlib* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %74

62:                                               ; preds = %40
  %63 = load i32, i32* %14, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = and i32 %67, 15
  %69 = load i32, i32* %14, align 4
  %70 = sub nsw i32 %69, 8
  %71 = shl i32 %70, 4
  %72 = add nsw i32 %68, %71
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %66, %62
  br label %74

74:                                               ; preds = %73, %58
  %75 = load i32, i32* %11, align 4
  %76 = load %struct.zlib*, %struct.zlib** %3, align 8
  %77 = getelementptr inbounds %struct.zlib, %struct.zlib* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  store i32 %75, i32* %79, align 4
  store i32 1, i32* %5, align 4
  %80 = load %struct.zlib*, %struct.zlib** %3, align 8
  %81 = getelementptr inbounds %struct.zlib, %struct.zlib* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  br label %122

82:                                               ; preds = %36
  %83 = load i32, i32* %11, align 4
  %84 = and i32 %83, 224
  store i32 %84, i32* %15, align 4
  %85 = load %struct.zlib*, %struct.zlib** %3, align 8
  %86 = getelementptr inbounds %struct.zlib, %struct.zlib* %85, i32 0, i32 3
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = shl i32 %89, 8
  %91 = load i32, i32* %15, align 4
  %92 = add nsw i32 %90, %91
  %93 = srem i32 %92, 31
  %94 = sub nsw i32 31, %93
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* %15, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %82
  %101 = load %struct.zlib*, %struct.zlib** %3, align 8
  %102 = getelementptr inbounds %struct.zlib, %struct.zlib* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.zlib*, %struct.zlib** %3, align 8
  %105 = getelementptr inbounds %struct.zlib, %struct.zlib* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %100
  %109 = load %struct.zlib*, %struct.zlib** %3, align 8
  %110 = getelementptr inbounds %struct.zlib, %struct.zlib* %109, i32 0, i32 4
  store i32 1, i32* %110, align 8
  br label %111

111:                                              ; preds = %108, %100
  %112 = load i32, i32* %15, align 4
  store i32 %112, i32* %11, align 4
  br label %113

113:                                              ; preds = %111, %82
  %114 = load i32, i32* %11, align 4
  %115 = load %struct.zlib*, %struct.zlib** %3, align 8
  %116 = getelementptr inbounds %struct.zlib, %struct.zlib* %115, i32 0, i32 3
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  store i32 %114, i32* %118, align 4
  store i32 2, i32* %5, align 4
  %119 = load %struct.zlib*, %struct.zlib** %3, align 8
  %120 = getelementptr inbounds %struct.zlib, %struct.zlib* %119, i32 0, i32 0
  store i32 2, i32* %120, align 8
  br label %122

121:                                              ; preds = %36
  br label %122

122:                                              ; preds = %121, %113, %74
  %123 = load %struct.zlib*, %struct.zlib** %3, align 8
  %124 = getelementptr inbounds %struct.zlib, %struct.zlib* %123, i32 0, i32 13
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  store i32* %11, i32** %125, align 8
  %126 = load %struct.zlib*, %struct.zlib** %3, align 8
  %127 = getelementptr inbounds %struct.zlib, %struct.zlib* %126, i32 0, i32 13
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  store i32 1, i32* %128, align 8
  %129 = load %struct.zlib*, %struct.zlib** %3, align 8
  %130 = getelementptr inbounds %struct.zlib, %struct.zlib* %129, i32 0, i32 13
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32* %12, i32** %131, align 8
  %132 = load %struct.zlib*, %struct.zlib** %3, align 8
  %133 = getelementptr inbounds %struct.zlib, %struct.zlib* %132, i32 0, i32 13
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 3
  store i32 0, i32* %134, align 8
  %135 = load i32, i32* @Z_NO_FLUSH, align 4
  store i32 %135, i32* %10, align 4
  store i64 0, i64* %9, align 8
  br label %136

136:                                              ; preds = %214, %122
  %137 = load i32, i32* %6, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %224

139:                                              ; preds = %136
  %140 = load %struct.zlib*, %struct.zlib** %3, align 8
  %141 = getelementptr inbounds %struct.zlib, %struct.zlib* %140, i32 0, i32 13
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @inflate(%struct.TYPE_2__* %141, i32 %142)
  %144 = load %struct.zlib*, %struct.zlib** %3, align 8
  %145 = getelementptr inbounds %struct.zlib, %struct.zlib* %144, i32 0, i32 14
  store i32 %143, i32* %145, align 8
  %146 = load %struct.zlib*, %struct.zlib** %3, align 8
  %147 = getelementptr inbounds %struct.zlib, %struct.zlib* %146, i32 0, i32 13
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 8
  %150 = sext i32 %149 to i64
  %151 = load i64, i64* %9, align 8
  %152 = sub nsw i64 %151, %150
  store i64 %152, i64* %9, align 8
  %153 = load %struct.zlib*, %struct.zlib** %3, align 8
  %154 = getelementptr inbounds %struct.zlib, %struct.zlib* %153, i32 0, i32 14
  %155 = load i32, i32* %154, align 8
  switch i32 %155, label %210 [
    i32 132, label %156
    i32 129, label %173
    i32 128, label %189
    i32 130, label %192
    i32 131, label %195
  ]

156:                                              ; preds = %139
  %157 = load %struct.zlib*, %struct.zlib** %3, align 8
  %158 = getelementptr inbounds %struct.zlib, %struct.zlib* %157, i32 0, i32 13
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 8
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %156
  br label %214

163:                                              ; preds = %156
  %164 = load %struct.zlib*, %struct.zlib** %3, align 8
  %165 = getelementptr inbounds %struct.zlib, %struct.zlib* %164, i32 0, i32 13
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %163
  br label %213

170:                                              ; preds = %163
  %171 = load %struct.zlib*, %struct.zlib** %3, align 8
  %172 = call i32 @zlib_message(%struct.zlib* %171, i32 1)
  store i32 2, i32* %6, align 4
  br label %213

173:                                              ; preds = %139
  %174 = load %struct.zlib*, %struct.zlib** %3, align 8
  %175 = getelementptr inbounds %struct.zlib, %struct.zlib* %174, i32 0, i32 13
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %185, label %179

179:                                              ; preds = %173
  %180 = load %struct.zlib*, %struct.zlib** %3, align 8
  %181 = getelementptr inbounds %struct.zlib, %struct.zlib* %180, i32 0, i32 13
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = icmp eq i32 %183, 0
  br label %185

185:                                              ; preds = %179, %173
  %186 = phi i1 [ true, %173 ], [ %184, %179 ]
  %187 = zext i1 %186 to i32
  %188 = call i32 @assert(i32 %187)
  br label %214

189:                                              ; preds = %139
  %190 = load %struct.zlib*, %struct.zlib** %3, align 8
  %191 = getelementptr inbounds %struct.zlib, %struct.zlib* %190, i32 0, i32 0
  store i32 3, i32* %191, align 8
  store i32 1, i32* %6, align 4
  br label %213

192:                                              ; preds = %139
  %193 = load %struct.zlib*, %struct.zlib** %3, align 8
  %194 = call i32 @zlib_message(%struct.zlib* %193, i32 0)
  store i32 2, i32* %6, align 4
  br label %213

195:                                              ; preds = %139
  %196 = load %struct.zlib*, %struct.zlib** %3, align 8
  %197 = getelementptr inbounds %struct.zlib, %struct.zlib* %196, i32 0, i32 13
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = icmp ne i32* %199, null
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load %struct.zlib*, %struct.zlib** %3, align 8
  %203 = getelementptr inbounds %struct.zlib, %struct.zlib* %202, i32 0, i32 13
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 4
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @strcmp(i32* %205, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %201
  store i32 -1, i32* %6, align 4
  br label %213

209:                                              ; preds = %201, %195
  br label %210

210:                                              ; preds = %139, %209
  %211 = load %struct.zlib*, %struct.zlib** %3, align 8
  %212 = call i32 @zlib_message(%struct.zlib* %211, i32 0)
  store i32 2, i32* %6, align 4
  br label %213

213:                                              ; preds = %210, %208, %192, %189, %170, %169
  br label %224

214:                                              ; preds = %185, %162
  %215 = load i32, i32* @Z_SYNC_FLUSH, align 4
  store i32 %215, i32* %10, align 4
  %216 = load %struct.zlib*, %struct.zlib** %3, align 8
  %217 = getelementptr inbounds %struct.zlib, %struct.zlib* %216, i32 0, i32 13
  %218 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %217, i32 0, i32 2
  store i32* %12, i32** %218, align 8
  %219 = load %struct.zlib*, %struct.zlib** %3, align 8
  %220 = getelementptr inbounds %struct.zlib, %struct.zlib* %219, i32 0, i32 13
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 3
  store i32 1, i32* %221, align 8
  %222 = load i64, i64* %9, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %9, align 8
  br label %136

224:                                              ; preds = %213, %136
  %225 = load %struct.zlib*, %struct.zlib** %3, align 8
  %226 = getelementptr inbounds %struct.zlib, %struct.zlib* %225, i32 0, i32 11
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.zlib*, %struct.zlib** %3, align 8
  %229 = getelementptr inbounds %struct.zlib, %struct.zlib* %228, i32 0, i32 10
  %230 = load i8*, i8** %229, align 8
  %231 = load i64, i64* %9, align 8
  %232 = call i8* @uarb_add32(i32 %227, i8* %230, i64 %231)
  %233 = load %struct.zlib*, %struct.zlib** %3, align 8
  %234 = getelementptr inbounds %struct.zlib, %struct.zlib* %233, i32 0, i32 10
  store i8* %232, i8** %234, align 8
  %235 = load %struct.zlib*, %struct.zlib** %3, align 8
  %236 = getelementptr inbounds %struct.zlib, %struct.zlib* %235, i32 0, i32 13
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %243, label %240

240:                                              ; preds = %224
  %241 = load i32, i32* %6, align 4
  %242 = icmp ne i32 %241, 0
  br label %243

243:                                              ; preds = %240, %224
  %244 = phi i1 [ true, %224 ], [ %242, %240 ]
  %245 = zext i1 %244 to i32
  %246 = call i32 @assert(i32 %245)
  %247 = load %struct.zlib*, %struct.zlib** %3, align 8
  %248 = getelementptr inbounds %struct.zlib, %struct.zlib* %247, i32 0, i32 13
  %249 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 8
  %251 = sub nsw i32 1, %250
  %252 = sext i32 %251 to i64
  %253 = load i64, i64* %7, align 8
  %254 = add nsw i64 %253, %252
  store i64 %254, i64* %7, align 8
  br label %27

255:                                              ; preds = %34
  %256 = load i64, i64* %7, align 8
  %257 = load i64, i64* %4, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %262, label %259

259:                                              ; preds = %255
  %260 = load i32, i32* %6, align 4
  %261 = icmp ne i32 %260, 0
  br label %262

262:                                              ; preds = %259, %255
  %263 = phi i1 [ true, %255 ], [ %261, %259 ]
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load %struct.zlib*, %struct.zlib** %3, align 8
  %267 = getelementptr inbounds %struct.zlib, %struct.zlib* %266, i32 0, i32 9
  %268 = load i32, i32* %267, align 8
  %269 = load %struct.zlib*, %struct.zlib** %3, align 8
  %270 = getelementptr inbounds %struct.zlib, %struct.zlib* %269, i32 0, i32 8
  %271 = load i8*, i8** %270, align 8
  %272 = load i64, i64* %7, align 8
  %273 = load %struct.zlib*, %struct.zlib** %3, align 8
  %274 = getelementptr inbounds %struct.zlib, %struct.zlib* %273, i32 0, i32 13
  %275 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %274, i32 0, i32 1
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = sub nsw i64 %272, %277
  %279 = call i8* @uarb_add32(i32 %268, i8* %271, i64 %278)
  %280 = load %struct.zlib*, %struct.zlib** %3, align 8
  %281 = getelementptr inbounds %struct.zlib, %struct.zlib* %280, i32 0, i32 8
  store i8* %279, i8** %281, align 8
  %282 = load i32, i32* %6, align 4
  %283 = icmp eq i32 %282, 1
  br i1 %283, label %284, label %383

284:                                              ; preds = %262
  %285 = load %struct.zlib*, %struct.zlib** %3, align 8
  %286 = getelementptr inbounds %struct.zlib, %struct.zlib* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 4
  %288 = sext i32 %287 to i64
  %289 = load %struct.zlib*, %struct.zlib** %3, align 8
  %290 = getelementptr inbounds %struct.zlib, %struct.zlib* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = icmp slt i64 %288, %291
  br i1 %292, label %293, label %383

293:                                              ; preds = %284
  %294 = load %struct.zlib*, %struct.zlib** %3, align 8
  %295 = getelementptr inbounds %struct.zlib, %struct.zlib* %294, i32 0, i32 12
  %296 = load %struct.chunk*, %struct.chunk** %295, align 8
  store %struct.chunk* %296, %struct.chunk** %16, align 8
  %297 = load %struct.chunk*, %struct.chunk** %16, align 8
  %298 = getelementptr inbounds %struct.chunk, %struct.chunk* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = load %struct.zlib*, %struct.zlib** %3, align 8
  %301 = getelementptr inbounds %struct.zlib, %struct.zlib* %300, i32 0, i32 11
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.zlib*, %struct.zlib** %3, align 8
  %304 = getelementptr inbounds %struct.zlib, %struct.zlib* %303, i32 0, i32 10
  %305 = load i8*, i8** %304, align 8
  %306 = call i8* @uarb_copy(i32 %299, i32 %302, i8* %305)
  %307 = load %struct.chunk*, %struct.chunk** %16, align 8
  %308 = getelementptr inbounds %struct.chunk, %struct.chunk* %307, i32 0, i32 6
  store i8* %306, i8** %308, align 8
  %309 = load %struct.chunk*, %struct.chunk** %16, align 8
  %310 = getelementptr inbounds %struct.chunk, %struct.chunk* %309, i32 0, i32 3
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.zlib*, %struct.zlib** %3, align 8
  %313 = getelementptr inbounds %struct.zlib, %struct.zlib* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.zlib*, %struct.zlib** %3, align 8
  %316 = getelementptr inbounds %struct.zlib, %struct.zlib* %315, i32 0, i32 8
  %317 = load i8*, i8** %316, align 8
  %318 = call i8* @uarb_copy(i32 %311, i32 %314, i8* %317)
  %319 = load %struct.chunk*, %struct.chunk** %16, align 8
  %320 = getelementptr inbounds %struct.chunk, %struct.chunk* %319, i32 0, i32 4
  store i8* %318, i8** %320, align 8
  %321 = load %struct.zlib*, %struct.zlib** %3, align 8
  %322 = getelementptr inbounds %struct.zlib, %struct.zlib* %321, i32 0, i32 3
  %323 = load i32*, i32** %322, align 8
  %324 = getelementptr inbounds i32, i32* %323, i64 0
  %325 = load i32, i32* %324, align 4
  %326 = load %struct.chunk*, %struct.chunk** %16, align 8
  %327 = getelementptr inbounds %struct.chunk, %struct.chunk* %326, i32 0, i32 0
  %328 = load i32*, i32** %327, align 8
  %329 = getelementptr inbounds i32, i32* %328, i64 0
  store i32 %325, i32* %329, align 4
  %330 = load %struct.zlib*, %struct.zlib** %3, align 8
  %331 = getelementptr inbounds %struct.zlib, %struct.zlib* %330, i32 0, i32 3
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 1
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.chunk*, %struct.chunk** %16, align 8
  %336 = getelementptr inbounds %struct.chunk, %struct.chunk* %335, i32 0, i32 0
  %337 = load i32*, i32** %336, align 8
  %338 = getelementptr inbounds i32, i32* %337, i64 1
  store i32 %334, i32* %338, align 4
  %339 = load %struct.zlib*, %struct.zlib** %3, align 8
  %340 = getelementptr inbounds %struct.zlib, %struct.zlib* %339, i32 0, i32 1
  %341 = load i32, i32* %340, align 4
  %342 = load %struct.zlib*, %struct.zlib** %3, align 8
  %343 = getelementptr inbounds %struct.zlib, %struct.zlib* %342, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %341, %344
  br i1 %345, label %351, label %346

346:                                              ; preds = %293
  %347 = load %struct.zlib*, %struct.zlib** %3, align 8
  %348 = getelementptr inbounds %struct.zlib, %struct.zlib* %347, i32 0, i32 4
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %346, %293
  %352 = load %struct.zlib*, %struct.zlib** %3, align 8
  %353 = getelementptr inbounds %struct.zlib, %struct.zlib* %352, i32 0, i32 7
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.chunk*, %struct.chunk** %16, align 8
  %356 = getelementptr inbounds %struct.chunk, %struct.chunk* %355, i32 0, i32 2
  store i64 %354, i64* %356, align 8
  %357 = load %struct.chunk*, %struct.chunk** %16, align 8
  %358 = getelementptr inbounds %struct.chunk, %struct.chunk* %357, i32 0, i32 1
  store i32 2, i32* %358, align 8
  br label %364

359:                                              ; preds = %346
  %360 = load %struct.chunk*, %struct.chunk** %16, align 8
  %361 = getelementptr inbounds %struct.chunk, %struct.chunk* %360, i32 0, i32 2
  store i64 0, i64* %361, align 8
  %362 = load %struct.chunk*, %struct.chunk** %16, align 8
  %363 = getelementptr inbounds %struct.chunk, %struct.chunk* %362, i32 0, i32 1
  store i32 0, i32* %363, align 8
  br label %364

364:                                              ; preds = %359, %351
  %365 = load i64, i64* %7, align 8
  %366 = load i64, i64* %4, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %371

368:                                              ; preds = %364
  %369 = load %struct.chunk*, %struct.chunk** %16, align 8
  %370 = call i32 @chunk_message(%struct.chunk* %369, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %371

371:                                              ; preds = %368, %364
  %372 = load i64, i64* %4, align 8
  %373 = load i64, i64* %7, align 8
  %374 = sub nsw i64 %372, %373
  %375 = load %struct.zlib*, %struct.zlib** %3, align 8
  %376 = getelementptr inbounds %struct.zlib, %struct.zlib* %375, i32 0, i32 6
  store i64 %374, i64* %376, align 8
  %377 = load %struct.zlib*, %struct.zlib** %3, align 8
  %378 = getelementptr inbounds %struct.zlib, %struct.zlib* %377, i32 0, i32 1
  %379 = load i32, i32* %378, align 4
  %380 = sext i32 %379 to i64
  %381 = load %struct.zlib*, %struct.zlib** %3, align 8
  %382 = getelementptr inbounds %struct.zlib, %struct.zlib* %381, i32 0, i32 5
  store i64 %380, i64* %382, align 8
  br label %383

383:                                              ; preds = %371, %284, %262
  %384 = load i32, i32* %6, align 4
  ret i32 %384
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @reread_byte(%struct.file*) #1

declare dso_local i32 @inflate(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @zlib_message(%struct.zlib*, i32) #1

declare dso_local i32 @strcmp(i32*, i8*) #1

declare dso_local i8* @uarb_add32(i32, i8*, i64) #1

declare dso_local i8* @uarb_copy(i32, i32, i8*) #1

declare dso_local i32 @chunk_message(%struct.chunk*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
