; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_write.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_prompeg.c_prompeg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i64, %struct.TYPE_10__**, i32, %struct.TYPE_10__**, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { i32, i8*, i8* }

@PROMPEG_FEC_ROW = common dso_local global i32 0, align 4
@PROMPEG_FEC_COL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32*, i32)* @prompeg_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prompeg_write(%struct.TYPE_9__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %7, align 8
  store i32* null, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 9
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @prompeg_init(%struct.TYPE_9__* %23, i32* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %278

29:                                               ; preds = %22, %3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @prompeg_create_bitstring(%struct.TYPE_9__* %30, i32* %31, i32 %32, i32** %9)
  store i32 %33, i32* %13, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %278

36:                                               ; preds = %29
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = srem i32 %39, %42
  store i32 %43, i32* %10, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = sdiv i32 %46, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = srem i32 %50, %53
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %10, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %105

57:                                               ; preds = %36
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 4
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62, %57
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 8
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = load i32, i32* @PROMPEG_FEC_ROW, align 4
  %73 = call i32 @prompeg_write_fec(%struct.TYPE_9__* %68, %struct.TYPE_10__* %71, i32 %72)
  store i32 %73, i32* %13, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %67
  br label %278

76:                                               ; preds = %67
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %76, %62
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %9, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 6
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @memcpy(i32 %85, i32* %86, i32 %89)
  %91 = load i32*, i32** %5, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 2
  %93 = call i8* @AV_RB16(i32* %92)
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 8
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 2
  store i8* %93, i8** %97, align 8
  %98 = load i32*, i32** %5, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = call i8* @AV_RB32(i32* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 8
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  store i8* %100, i8** %104, align 8
  br label %121

105:                                              ; preds = %36
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 8
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @xor_fast(i32 %110, i32* %111, i32 %116, i32 %119)
  br label %121

121:                                              ; preds = %105, %80
  %122 = load i32, i32* %12, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %194

124:                                              ; preds = %121
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %157, label %129

129:                                              ; preds = %124
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 5
  %132 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %131, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %132, i64 %134
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %135, align 8
  store %struct.TYPE_10__* %136, %struct.TYPE_10__** %8, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 7
  %139 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %138, align 8
  %140 = load i32, i32* %10, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %139, i64 %141
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %145, align 8
  %147 = load i32, i32* %10, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %146, i64 %148
  store %struct.TYPE_10__* %143, %struct.TYPE_10__** %149, align 8
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %152, align 8
  %154 = load i32, i32* %10, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %153, i64 %155
  store %struct.TYPE_10__* %150, %struct.TYPE_10__** %156, align 8
  br label %157

157:                                              ; preds = %129, %124
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 7
  %160 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %159, align 8
  %161 = load i32, i32* %10, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %160, i64 %162
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load i32*, i32** %9, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @memcpy(i32 %166, i32* %167, i32 %170)
  %172 = load i32*, i32** %5, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 2
  %174 = call i8* @AV_RB16(i32* %173)
  %175 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %175, i32 0, i32 7
  %177 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %176, align 8
  %178 = load i32, i32* %10, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %177, i64 %179
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 2
  store i8* %174, i8** %182, align 8
  %183 = load i32*, i32** %5, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 4
  %185 = call i8* @AV_RB32(i32* %184)
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 7
  %188 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %187, align 8
  %189 = load i32, i32* %10, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %188, i64 %190
  %192 = load %struct.TYPE_10__*, %struct.TYPE_10__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 1
  store i8* %185, i8** %193, align 8
  br label %218

194:                                              ; preds = %121
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 7
  %197 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %196, align 8
  %198 = load i32, i32* %10, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %197, i64 %199
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32*, i32** %9, align 8
  %205 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %207, i64 %209
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = call i32 @xor_fast(i32 %203, i32* %204, i32 %213, i32 %216)
  br label %218

218:                                              ; preds = %194, %157
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 4
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %256, label %223

223:                                              ; preds = %218
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 8
  %230 = srem i32 %226, %229
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %256

232:                                              ; preds = %223
  %233 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sdiv i32 %235, %238
  store i32 %239, i32* %11, align 4
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %241 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 5
  %243 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %242, align 8
  %244 = load i32, i32* %11, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %243, i64 %245
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %246, align 8
  %248 = load i32, i32* @PROMPEG_FEC_COL, align 4
  %249 = call i32 @prompeg_write_fec(%struct.TYPE_9__* %240, %struct.TYPE_10__* %247, i32 %248)
  store i32 %249, i32* %13, align 4
  %250 = icmp slt i32 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %232
  br label %278

252:                                              ; preds = %232
  %253 = load i32, i32* %13, align 4
  %254 = load i32, i32* %14, align 4
  %255 = add nsw i32 %254, %253
  store i32 %255, i32* %14, align 4
  br label %256

256:                                              ; preds = %252, %223, %218
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %258, align 8
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = icmp sge i32 %260, %263
  br i1 %264, label %265, label %276

265:                                              ; preds = %256
  %266 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %266, i32 0, i32 0
  store i32 0, i32* %267, align 8
  %268 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 4
  %270 = load i64, i64* %269, align 8
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %265
  %273 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 4
  store i64 0, i64* %274, align 8
  br label %275

275:                                              ; preds = %272, %265
  br label %276

276:                                              ; preds = %275, %256
  %277 = load i32, i32* %14, align 4
  store i32 %277, i32* %13, align 4
  br label %278

278:                                              ; preds = %276, %251, %75, %35, %28
  %279 = load i32*, i32** %9, align 8
  %280 = call i32 @av_free(i32* %279)
  %281 = load i32, i32* %13, align 4
  ret i32 %281
}

declare dso_local i32 @prompeg_init(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @prompeg_create_bitstring(%struct.TYPE_9__*, i32*, i32, i32**) #1

declare dso_local i32 @prompeg_write_fec(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i8* @AV_RB16(i32*) #1

declare dso_local i8* @AV_RB32(i32*) #1

declare dso_local i32 @xor_fast(i32, i32*, i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
