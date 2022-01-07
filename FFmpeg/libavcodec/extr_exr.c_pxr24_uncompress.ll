; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_pxr24_uncompress.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_exr.c_pxr24_uncompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32* }

@Z_OK = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32, %struct.TYPE_6__*)* @pxr24_uncompress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxr24_uncompress(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3, %struct.TYPE_6__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_8__*, align 8
  %20 = alloca [4 x i32*], align 16
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_6__* %4, %struct.TYPE_6__** %11, align 8
  store i64 0, i64* %13, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  store i32 0, i32* %17, align 4
  br label %28

28:                                               ; preds = %92, %5
  %29 = load i32, i32* %17, align 4
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %95

34:                                               ; preds = %28
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = load i32, i32* %17, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 130
  br i1 %43, label %44, label %56

44:                                               ; preds = %34
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = mul nsw i32 %47, %50
  %52 = mul nsw i32 %51, 3
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %13, align 8
  %55 = add i64 %54, %53
  store i64 %55, i64* %13, align 8
  br label %91

56:                                               ; preds = %34
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %17, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %64, 129
  br i1 %65, label %66, label %78

66:                                               ; preds = %56
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %69, %72
  %74 = mul nsw i32 %73, 2
  %75 = sext i32 %74 to i64
  %76 = load i64, i64* %13, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %13, align 8
  br label %90

78:                                               ; preds = %56
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = mul nsw i32 %81, %84
  %86 = mul nsw i32 %85, 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %13, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %13, align 8
  br label %90

90:                                               ; preds = %78, %66
  br label %91

91:                                               ; preds = %90, %44
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %28

95:                                               ; preds = %28
  %96 = load i64, i64* %13, align 8
  store i64 %96, i64* %12, align 8
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32, i32* %9, align 4
  %102 = call i64 @uncompress(i32* %99, i64* %12, i32* %100, i32 %101)
  %103 = load i64, i64* @Z_OK, align 8
  %104 = icmp ne i64 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %106, i32* %6, align 4
  br label %327

107:                                              ; preds = %95
  %108 = load i64, i64* %12, align 8
  %109 = load i64, i64* %13, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %107
  %112 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %112, i32* %6, align 4
  br label %327

113:                                              ; preds = %107
  br label %114

114:                                              ; preds = %113
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %15, align 8
  store i32 0, i32* %17, align 4
  br label %118

118:                                              ; preds = %323, %114
  %119 = load i32, i32* %17, align 4
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %326

124:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  br label %125

125:                                              ; preds = %319, %124
  %126 = load i32, i32* %16, align 4
  %127 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %322

131:                                              ; preds = %125
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %136
  store %struct.TYPE_8__* %137, %struct.TYPE_8__** %19, align 8
  store i32 0, i32* %21, align 4
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  switch i64 %140, label %316 [
    i64 130, label %141
    i64 129, label %200
    i64 128, label %244
  ]

141:                                              ; preds = %131
  %142 = load i32*, i32** %14, align 8
  %143 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  store i32* %142, i32** %143, align 16
  %144 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %145 = load i32*, i32** %144, align 16
  %146 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  store i32* %150, i32** %151, align 8
  %152 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %153 = load i32*, i32** %152, align 8
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %153, i64 %157
  %159 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  store i32* %158, i32** %159, align 16
  %160 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %161 = load i32*, i32** %160, align 16
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i32, i32* %161, i64 %165
  store i32* %166, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %167

167:                                              ; preds = %196, %141
  %168 = load i32, i32* %18, align 4
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp slt i32 %168, %171
  br i1 %172, label %173, label %199

173:                                              ; preds = %167
  %174 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %175 = load i32*, i32** %174, align 16
  %176 = getelementptr inbounds i32, i32* %175, i32 1
  store i32* %176, i32** %174, align 16
  %177 = load i32, i32* %175, align 4
  %178 = shl i32 %177, 24
  %179 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %179, align 8
  %182 = load i32, i32* %180, align 4
  %183 = shl i32 %182, 16
  %184 = or i32 %178, %183
  %185 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %186 = load i32*, i32** %185, align 16
  %187 = getelementptr inbounds i32, i32* %186, i32 1
  store i32* %187, i32** %185, align 16
  %188 = load i32, i32* %186, align 4
  %189 = shl i32 %188, 8
  %190 = or i32 %184, %189
  store i32 %190, i32* %22, align 4
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %21, align 4
  %194 = load i32, i32* %21, align 4
  %195 = call i32 @bytestream_put_le32(i32** %15, i32 %194)
  br label %196

196:                                              ; preds = %173
  %197 = load i32, i32* %18, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %18, align 4
  br label %167

199:                                              ; preds = %167
  br label %318

200:                                              ; preds = %131
  %201 = load i32*, i32** %14, align 8
  %202 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  store i32* %201, i32** %202, align 16
  %203 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %204 = load i32*, i32** %203, align 16
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %204, i64 %208
  %210 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  store i32* %209, i32** %210, align 8
  %211 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %212 = load i32*, i32** %211, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds i32, i32* %212, i64 %216
  store i32* %217, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %218

218:                                              ; preds = %240, %200
  %219 = load i32, i32* %18, align 4
  %220 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %221 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %243

224:                                              ; preds = %218
  %225 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %226 = load i32*, i32** %225, align 16
  %227 = getelementptr inbounds i32, i32* %226, i32 1
  store i32* %227, i32** %225, align 16
  %228 = load i32, i32* %226, align 4
  %229 = shl i32 %228, 8
  %230 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %230, align 8
  %233 = load i32, i32* %231, align 4
  %234 = or i32 %229, %233
  store i32 %234, i32* %23, align 4
  %235 = load i32, i32* %23, align 4
  %236 = load i32, i32* %21, align 4
  %237 = add nsw i32 %236, %235
  store i32 %237, i32* %21, align 4
  %238 = load i32, i32* %21, align 4
  %239 = call i32 @bytestream_put_le16(i32** %15, i32 %238)
  br label %240

240:                                              ; preds = %224
  %241 = load i32, i32* %18, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %218

243:                                              ; preds = %218
  br label %318

244:                                              ; preds = %131
  %245 = load i32*, i32** %14, align 8
  %246 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  store i32* %245, i32** %246, align 16
  %247 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %248 = load i32*, i32** %247, align 16
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %248, i64 %252
  %254 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  store i32* %253, i32** %254, align 8
  %255 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %256 = load i32*, i32** %255, align 8
  %257 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 1
  %259 = load i32, i32* %258, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %256, i64 %260
  %262 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  store i32* %261, i32** %262, align 16
  %263 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %264 = load i32*, i32** %263, align 16
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %264, i64 %268
  %270 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  store i32* %269, i32** %270, align 8
  %271 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %272 = load i32*, i32** %271, align 8
  %273 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds i32, i32* %272, i64 %276
  store i32* %277, i32** %14, align 8
  store i32 0, i32* %18, align 4
  br label %278

278:                                              ; preds = %312, %244
  %279 = load i32, i32* %18, align 4
  %280 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = icmp slt i32 %279, %282
  br i1 %283, label %284, label %315

284:                                              ; preds = %278
  %285 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 0
  %286 = load i32*, i32** %285, align 16
  %287 = getelementptr inbounds i32, i32* %286, i32 1
  store i32* %287, i32** %285, align 16
  %288 = load i32, i32* %286, align 4
  %289 = shl i32 %288, 24
  %290 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 1
  %291 = load i32*, i32** %290, align 8
  %292 = getelementptr inbounds i32, i32* %291, i32 1
  store i32* %292, i32** %290, align 8
  %293 = load i32, i32* %291, align 4
  %294 = shl i32 %293, 16
  %295 = or i32 %289, %294
  %296 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 2
  %297 = load i32*, i32** %296, align 16
  %298 = getelementptr inbounds i32, i32* %297, i32 1
  store i32* %298, i32** %296, align 16
  %299 = load i32, i32* %297, align 4
  %300 = shl i32 %299, 8
  %301 = or i32 %295, %300
  %302 = getelementptr inbounds [4 x i32*], [4 x i32*]* %20, i64 0, i64 3
  %303 = load i32*, i32** %302, align 8
  %304 = getelementptr inbounds i32, i32* %303, i32 1
  store i32* %304, i32** %302, align 8
  %305 = load i32, i32* %303, align 4
  %306 = or i32 %301, %305
  store i32 %306, i32* %24, align 4
  %307 = load i32, i32* %24, align 4
  %308 = load i32, i32* %21, align 4
  %309 = add nsw i32 %308, %307
  store i32 %309, i32* %21, align 4
  %310 = load i32, i32* %21, align 4
  %311 = call i32 @bytestream_put_le32(i32** %15, i32 %310)
  br label %312

312:                                              ; preds = %284
  %313 = load i32, i32* %18, align 4
  %314 = add nsw i32 %313, 1
  store i32 %314, i32* %18, align 4
  br label %278

315:                                              ; preds = %278
  br label %318

316:                                              ; preds = %131
  %317 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %317, i32* %6, align 4
  br label %327

318:                                              ; preds = %315, %243, %199
  br label %319

319:                                              ; preds = %318
  %320 = load i32, i32* %16, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %16, align 4
  br label %125

322:                                              ; preds = %125
  br label %323

323:                                              ; preds = %322
  %324 = load i32, i32* %17, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, i32* %17, align 4
  br label %118

326:                                              ; preds = %118
  store i32 0, i32* %6, align 4
  br label %327

327:                                              ; preds = %326, %316, %111, %105
  %328 = load i32, i32* %6, align 4
  ret i32 %328
}

declare dso_local i64 @uncompress(i32*, i64*, i32*, i32) #1

declare dso_local i32 @bytestream_put_le32(i32**, i32) #1

declare dso_local i32 @bytestream_put_le16(i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
