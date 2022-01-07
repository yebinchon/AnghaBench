; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_mainheader.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nutenc.c_write_mainheader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32*, i32, i32*, %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @write_mainheader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_mainheader(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ff_put_v(i32* %15, i32 %18)
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sgt i32 %22, 3
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load i32*, i32** %4, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = call i32 @ff_put_v(i32* %25, i32 1)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32*, i32** %4, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 10
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ff_put_v(i32* %30, i32 %35)
  %37 = load i32*, i32** %4, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ff_put_v(i32* %37, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @ff_put_v(i32* %42, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %74, %29
  %48 = load i32, i32* %5, align 4
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 9
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ff_put_v(i32* %54, i32 %62)
  %64 = load i32*, i32** %4, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 9
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ff_put_v(i32* %64, i32 %72)
  br label %74

74:                                               ; preds = %53
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %5, align 4
  br label %47

77:                                               ; preds = %47
  store i32 0, i32* %7, align 4
  store i32 1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %342, %77
  %79 = load i32, i32* %5, align 4
  %80 = icmp slt i32 %79, 256
  br i1 %80, label %81, label %343

81:                                               ; preds = %78
  store i32 0, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 8
  %85 = load %struct.TYPE_8__*, %struct.TYPE_8__** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %82, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %81
  store i32 1, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %81
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 8
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %94, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %93
  store i32 2, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %93
  %106 = load i32, i32* %9, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 8
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %106, %114
  br i1 %115, label %116, label %117

116:                                              ; preds = %105
  store i32 3, i32* %12, align 4
  br label %117

117:                                              ; preds = %116, %105
  %118 = load i32, i32* %11, align 4
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 8
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %120, align 8
  %122 = load i32, i32* %5, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %118, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 4, i32* %12, align 4
  br label %129

129:                                              ; preds = %128, %117
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %131, i32 0, i32 8
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = load i32, i32* %5, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = icmp ne i32 %130, %138
  br i1 %139, label %140, label %141

140:                                              ; preds = %129
  store i32 8, i32* %12, align 4
  br label %141

141:                                              ; preds = %140, %129
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 8
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %7, align 4
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 8
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i32, i32* %5, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 5
  %157 = load i32, i32* %156, align 4
  store i32 %157, i32* %8, align 4
  %158 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %159 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %158, i32 0, i32 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %159, align 8
  %161 = load i32, i32* %5, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 4
  store i32 %165, i32* %9, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 8
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %167, align 8
  %169 = load i32, i32* %5, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  store i32 %173, i32* %10, align 4
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 8
  %176 = load %struct.TYPE_8__*, %struct.TYPE_8__** %175, align 8
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  store i32 %181, i32* %11, align 4
  %182 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %182, i32 0, i32 8
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %183, align 8
  %185 = load i32, i32* %5, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 4
  %189 = load i32, i32* %188, align 4
  store i32 %189, i32* %13, align 4
  store i32 0, i32* %6, align 4
  br label %190

190:                                              ; preds = %269, %141
  %191 = load i32, i32* %5, align 4
  %192 = icmp slt i32 %191, 256
  br i1 %192, label %193, label %274

193:                                              ; preds = %190
  %194 = load i32, i32* %5, align 4
  %195 = icmp eq i32 %194, 78
  br i1 %195, label %196, label %199

196:                                              ; preds = %193
  %197 = load i32, i32* %6, align 4
  %198 = add nsw i32 %197, -1
  store i32 %198, i32* %6, align 4
  br label %269

199:                                              ; preds = %193
  %200 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %201 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %200, i32 0, i32 8
  %202 = load %struct.TYPE_8__*, %struct.TYPE_8__** %201, align 8
  %203 = load i32, i32* %5, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* %7, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %267, label %210

210:                                              ; preds = %199
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 8
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 5
  %218 = load i32, i32* %217, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp ne i32 %218, %219
  br i1 %220, label %267, label %221

221:                                              ; preds = %210
  %222 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %223 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %222, i32 0, i32 8
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %223, align 8
  %225 = load i32, i32* %5, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i64 %226
  %228 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %267, label %232

232:                                              ; preds = %221
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %234 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %233, i32 0, i32 8
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i64 %237
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp ne i32 %240, %241
  br i1 %242, label %267, label %243

243:                                              ; preds = %232
  %244 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %244, i32 0, i32 8
  %246 = load %struct.TYPE_8__*, %struct.TYPE_8__** %245, align 8
  %247 = load i32, i32* %5, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 4
  %252 = load i32, i32* %11, align 4
  %253 = load i32, i32* %6, align 4
  %254 = add nsw i32 %252, %253
  %255 = icmp ne i32 %251, %254
  br i1 %255, label %267, label %256

256:                                              ; preds = %243
  %257 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 8
  %259 = load %struct.TYPE_8__*, %struct.TYPE_8__** %258, align 8
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %13, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %256, %243, %232, %221, %210, %199
  br label %274

268:                                              ; preds = %256
  br label %269

269:                                              ; preds = %268, %196
  %270 = load i32, i32* %6, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %5, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* %5, align 4
  br label %190

274:                                              ; preds = %267, %190
  %275 = load i32, i32* %6, align 4
  %276 = load i32, i32* %10, align 4
  %277 = load i32, i32* %11, align 4
  %278 = sub nsw i32 %276, %277
  %279 = icmp ne i32 %275, %278
  br i1 %279, label %280, label %281

280:                                              ; preds = %274
  store i32 6, i32* %12, align 4
  br label %281

281:                                              ; preds = %280, %274
  %282 = load i32*, i32** %4, align 8
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @ff_put_v(i32* %282, i32 %283)
  %285 = load i32*, i32** %4, align 8
  %286 = load i32, i32* %12, align 4
  %287 = call i32 @ff_put_v(i32* %285, i32 %286)
  %288 = load i32, i32* %12, align 4
  %289 = icmp sgt i32 %288, 0
  br i1 %289, label %290, label %294

290:                                              ; preds = %281
  %291 = load i32*, i32** %4, align 8
  %292 = load i32, i32* %7, align 4
  %293 = call i32 @put_s(i32* %291, i32 %292)
  br label %294

294:                                              ; preds = %290, %281
  %295 = load i32, i32* %12, align 4
  %296 = icmp sgt i32 %295, 1
  br i1 %296, label %297, label %301

297:                                              ; preds = %294
  %298 = load i32*, i32** %4, align 8
  %299 = load i32, i32* %10, align 4
  %300 = call i32 @ff_put_v(i32* %298, i32 %299)
  br label %301

301:                                              ; preds = %297, %294
  %302 = load i32, i32* %12, align 4
  %303 = icmp sgt i32 %302, 2
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load i32*, i32** %4, align 8
  %306 = load i32, i32* %9, align 4
  %307 = call i32 @ff_put_v(i32* %305, i32 %306)
  br label %308

308:                                              ; preds = %304, %301
  %309 = load i32, i32* %12, align 4
  %310 = icmp sgt i32 %309, 3
  br i1 %310, label %311, label %315

311:                                              ; preds = %308
  %312 = load i32*, i32** %4, align 8
  %313 = load i32, i32* %11, align 4
  %314 = call i32 @ff_put_v(i32* %312, i32 %313)
  br label %315

315:                                              ; preds = %311, %308
  %316 = load i32, i32* %12, align 4
  %317 = icmp sgt i32 %316, 4
  br i1 %317, label %318, label %321

318:                                              ; preds = %315
  %319 = load i32*, i32** %4, align 8
  %320 = call i32 @ff_put_v(i32* %319, i32 0)
  br label %321

321:                                              ; preds = %318, %315
  %322 = load i32, i32* %12, align 4
  %323 = icmp sgt i32 %322, 5
  br i1 %323, label %324, label %328

324:                                              ; preds = %321
  %325 = load i32*, i32** %4, align 8
  %326 = load i32, i32* %6, align 4
  %327 = call i32 @ff_put_v(i32* %325, i32 %326)
  br label %328

328:                                              ; preds = %324, %321
  %329 = load i32, i32* %12, align 4
  %330 = icmp sgt i32 %329, 6
  br i1 %330, label %331, label %335

331:                                              ; preds = %328
  %332 = load i32*, i32** %4, align 8
  %333 = load i32, i32* %14, align 4
  %334 = call i32 @ff_put_v(i32* %332, i32 %333)
  br label %335

335:                                              ; preds = %331, %328
  %336 = load i32, i32* %12, align 4
  %337 = icmp sgt i32 %336, 7
  br i1 %337, label %338, label %342

338:                                              ; preds = %335
  %339 = load i32*, i32** %4, align 8
  %340 = load i32, i32* %13, align 4
  %341 = call i32 @ff_put_v(i32* %339, i32 %340)
  br label %342

342:                                              ; preds = %338, %335
  br label %78

343:                                              ; preds = %78
  %344 = load i32*, i32** %4, align 8
  %345 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %346 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %345, i32 0, i32 4
  %347 = load i32, i32* %346, align 8
  %348 = sub nsw i32 %347, 1
  %349 = call i32 @ff_put_v(i32* %344, i32 %348)
  store i32 1, i32* %5, align 4
  br label %350

350:                                              ; preds = %382, %343
  %351 = load i32, i32* %5, align 4
  %352 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %353 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %352, i32 0, i32 4
  %354 = load i32, i32* %353, align 8
  %355 = icmp slt i32 %351, %354
  br i1 %355, label %356, label %385

356:                                              ; preds = %350
  %357 = load i32*, i32** %4, align 8
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 5
  %360 = load i32*, i32** %359, align 8
  %361 = load i32, i32* %5, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i32, i32* %360, i64 %362
  %364 = load i32, i32* %363, align 4
  %365 = call i32 @ff_put_v(i32* %357, i32 %364)
  %366 = load i32*, i32** %4, align 8
  %367 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %367, i32 0, i32 7
  %369 = load i32*, i32** %368, align 8
  %370 = load i32, i32* %5, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i32, i32* %369, i64 %371
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 5
  %376 = load i32*, i32** %375, align 8
  %377 = load i32, i32* %5, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds i32, i32* %376, i64 %378
  %380 = load i32, i32* %379, align 4
  %381 = call i32 @avio_write(i32* %366, i32 %373, i32 %380)
  br label %382

382:                                              ; preds = %356
  %383 = load i32, i32* %5, align 4
  %384 = add nsw i32 %383, 1
  store i32 %384, i32* %5, align 4
  br label %350

385:                                              ; preds = %350
  %386 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %387 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %386, i32 0, i32 0
  %388 = load i32, i32* %387, align 8
  %389 = icmp sgt i32 %388, 3
  br i1 %389, label %390, label %396

390:                                              ; preds = %385
  %391 = load i32*, i32** %4, align 8
  %392 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %393 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %392, i32 0, i32 6
  %394 = load i32, i32* %393, align 8
  %395 = call i32 @ff_put_v(i32* %391, i32 %394)
  br label %396

396:                                              ; preds = %390, %385
  ret void
}

declare dso_local i32 @ff_put_v(i32*, i32) #1

declare dso_local i32 @put_s(i32*, i32) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
