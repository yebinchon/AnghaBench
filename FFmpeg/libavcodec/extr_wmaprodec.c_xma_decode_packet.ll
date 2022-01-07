; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_xma_decode_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmaprodec.c_xma_decode_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32*, i32*, i32, i32**, %struct.TYPE_13__*, %struct.TYPE_11__** }
%struct.TYPE_13__ = type { i32, i64, i64, i64 }
%struct.TYPE_11__ = type { i32, i32**, i32* }

@INT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i8*, i32*, i32*)* @xma_decode_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xma_decode_packet(%struct.TYPE_12__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [2 x i32], align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %10, align 8
  store i32 0, i32* %11, align 4
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %24, %struct.TYPE_11__** %12, align 8
  %25 = load i32, i32* @INT_MAX, align 4
  store i32 %25, i32* %15, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %28, i64 %31
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %63, label %39

39:                                               ; preds = %4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 6
  %42 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %41, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %42, i64 %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 512, i32* %48, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 6
  %52 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %51, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %52, i64 %55
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @ff_get_buffer(%struct.TYPE_12__* %49, %struct.TYPE_11__* %57, i32 0)
  store i32 %58, i32* %14, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %39
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %5, align 4
  br label %505

62:                                               ; preds = %39
  br label %63

63:                                               ; preds = %62, %4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 5
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %66, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i64 %70
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 6
  %74 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %73, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %74, i64 %77
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32*, i32** %9, align 8
  %81 = call i32 @decode_packet(%struct.TYPE_12__* %64, %struct.TYPE_13__* %71, %struct.TYPE_11__* %79, i32* %11, i32* %80)
  store i32 %81, i32* %14, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %178

84:                                               ; preds = %63
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %16, align 4
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 4
  %95 = load i32**, i32*** %94, align 8
  %96 = load i32, i32* %16, align 4
  %97 = add nsw i32 %96, 0
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32*, i32** %95, i64 %98
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = mul nsw i32 %108, 512
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %100, i64 %110
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i32 0, i32 6
  %114 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %113, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %114, i64 %117
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = load i32**, i32*** %120, align 8
  %122 = getelementptr inbounds i32*, i32** %121, i64 0
  %123 = load i32*, i32** %122, align 8
  %124 = call i32 @memcpy(i32* %111, i32* %123, i32 2048)
  %125 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 5
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %133, 1
  br i1 %134, label %135, label %168

135:                                              ; preds = %84
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 4
  %138 = load i32**, i32*** %137, align 8
  %139 = load i32, i32* %16, align 4
  %140 = add nsw i32 %139, 1
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32*, i32** %138, i64 %141
  %143 = load i32*, i32** %142, align 8
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %144, i32 0, i32 2
  %146 = load i32*, i32** %145, align 8
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = getelementptr inbounds i32, i32* %146, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %151, 512
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %143, i64 %153
  %155 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 6
  %157 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %156, align 8
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %159 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %157, i64 %160
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  %164 = load i32**, i32*** %163, align 8
  %165 = getelementptr inbounds i32*, i32** %164, i64 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @memcpy(i32* %154, i32* %166, i32 2048)
  br label %168

168:                                              ; preds = %135, %84
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i32, i32* %171, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 4
  br label %190

178:                                              ; preds = %63
  %179 = load i32, i32* %14, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %178
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @memset(i32* %184, i32 0, i32 8)
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i64 0, i64* %187, align 8
  %188 = load i32, i32* %14, align 4
  store i32 %188, i32* %5, align 4
  br label %505

189:                                              ; preds = %178
  br label %190

190:                                              ; preds = %189, %168
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 5
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %192, align 8
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %193, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %212, label %201

201:                                              ; preds = %190
  %202 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %202, i32 0, i32 5
  %204 = load %struct.TYPE_13__*, %struct.TYPE_13__** %203, align 8
  %205 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %204, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %503

212:                                              ; preds = %201, %190
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 5
  %215 = load %struct.TYPE_13__*, %struct.TYPE_13__** %214, align 8
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %217 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %275

223:                                              ; preds = %212
  %224 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 5
  %226 = load %struct.TYPE_13__*, %struct.TYPE_13__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i64 0
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %230, i32* %231, align 4
  store i32 0, i32* %13, align 4
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 0, i32* %232, align 4
  store i32 1, i32* %13, align 4
  br label %233

233:                                              ; preds = %266, %223
  %234 = load i32, i32* %13, align 4
  %235 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %236 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = icmp slt i32 %234, %237
  br i1 %238, label %239, label %269

239:                                              ; preds = %233
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_13__*, %struct.TYPE_13__** %241, align 8
  %243 = load i32, i32* %13, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %242, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = icmp slt i64 %247, %250
  br i1 %251, label %252, label %265

252:                                              ; preds = %239
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %254 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %253, i32 0, i32 5
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = load i32, i32* %13, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = trunc i64 %260 to i32
  %262 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 0
  store i32 %261, i32* %262, align 4
  %263 = load i32, i32* %13, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  store i32 %263, i32* %264, align 4
  br label %265

265:                                              ; preds = %252, %239
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %13, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %13, align 4
  br label %233

269:                                              ; preds = %233
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %17, i64 0, i64 1
  %271 = load i32, i32* %270, align 4
  %272 = sext i32 %271 to i64
  %273 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %274 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %273, i32 0, i32 0
  store i64 %272, i64* %274, align 8
  br label %275

275:                                              ; preds = %269, %212
  store i32 0, i32* %13, align 4
  br label %276

276:                                              ; preds = %300, %275
  %277 = load i32, i32* %13, align 4
  %278 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 3
  %280 = load i32, i32* %279, align 8
  %281 = icmp slt i32 %277, %280
  br i1 %281, label %282, label %303

282:                                              ; preds = %276
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %284 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %283, i32 0, i32 5
  %285 = load %struct.TYPE_13__*, %struct.TYPE_13__** %284, align 8
  %286 = load i32, i32* %13, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i64 %287
  %289 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %288, i32 0, i32 1
  %290 = load i64, i64* %289, align 8
  %291 = sub nsw i64 %290, 1
  %292 = call i64 @FFMAX(i32 0, i64 %291)
  %293 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  %295 = load %struct.TYPE_13__*, %struct.TYPE_13__** %294, align 8
  %296 = load i32, i32* %13, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %295, i64 %297
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 1
  store i64 %292, i64* %299, align 8
  br label %300

300:                                              ; preds = %282
  %301 = load i32, i32* %13, align 4
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %13, align 4
  br label %276

303:                                              ; preds = %276
  store i32 0, i32* %13, align 4
  br label %304

304:                                              ; preds = %320, %303
  %305 = load i32, i32* %13, align 4
  %306 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %307 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 8
  %309 = icmp slt i32 %305, %308
  br i1 %309, label %310, label %323

310:                                              ; preds = %304
  %311 = load i32, i32* %15, align 4
  %312 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  %314 = load i32*, i32** %313, align 8
  %315 = load i32, i32* %13, align 4
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds i32, i32* %314, i64 %316
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @FFMIN(i32 %311, i32 %318)
  store i32 %319, i32* %15, align 4
  br label %320

320:                                              ; preds = %310
  %321 = load i32, i32* %13, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %304

323:                                              ; preds = %304
  %324 = load i32, i32* %15, align 4
  %325 = icmp sgt i32 %324, 0
  br i1 %325, label %326, label %502

326:                                              ; preds = %323
  %327 = load i32, i32* %15, align 4
  %328 = mul nsw i32 512, %327
  %329 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %330 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %332 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %333 = call i32 @ff_get_buffer(%struct.TYPE_12__* %331, %struct.TYPE_11__* %332, i32 0)
  store i32 %333, i32* %18, align 4
  %334 = icmp slt i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = load i32, i32* %18, align 4
  store i32 %336, i32* %5, align 4
  br label %505

337:                                              ; preds = %326
  store i32 0, i32* %13, align 4
  br label %338

338:                                              ; preds = %497, %337
  %339 = load i32, i32* %13, align 4
  %340 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %500

344:                                              ; preds = %338
  %345 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %346 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %345, i32 0, i32 1
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %13, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %19, align 4
  %352 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %353 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %352, i32 0, i32 1
  %354 = load i32**, i32*** %353, align 8
  %355 = load i32, i32* %19, align 4
  %356 = add nsw i32 %355, 0
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds i32*, i32** %354, i64 %357
  %359 = load i32*, i32** %358, align 8
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 4
  %362 = load i32**, i32*** %361, align 8
  %363 = load i32, i32* %19, align 4
  %364 = add nsw i32 %363, 0
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32*, i32** %362, i64 %365
  %367 = load i32*, i32** %366, align 8
  %368 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %369 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = mul nsw i32 %370, 4
  %372 = call i32 @memcpy(i32* %359, i32* %367, i32 %371)
  %373 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %374 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %373, i32 0, i32 5
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %374, align 8
  %376 = load i32, i32* %13, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp sgt i32 %380, 1
  br i1 %381, label %382, label %404

382:                                              ; preds = %344
  %383 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %384 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %383, i32 0, i32 1
  %385 = load i32**, i32*** %384, align 8
  %386 = load i32, i32* %19, align 4
  %387 = add nsw i32 %386, 1
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32*, i32** %385, i64 %388
  %390 = load i32*, i32** %389, align 8
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 4
  %393 = load i32**, i32*** %392, align 8
  %394 = load i32, i32* %19, align 4
  %395 = add nsw i32 %394, 1
  %396 = sext i32 %395 to i64
  %397 = getelementptr inbounds i32*, i32** %393, i64 %396
  %398 = load i32*, i32** %397, align 8
  %399 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %400 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %399, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = mul nsw i32 %401, 4
  %403 = call i32 @memcpy(i32* %390, i32* %398, i32 %402)
  br label %404

404:                                              ; preds = %382, %344
  %405 = load i32, i32* %15, align 4
  %406 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %407 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %406, i32 0, i32 2
  %408 = load i32*, i32** %407, align 8
  %409 = load i32, i32* %13, align 4
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds i32, i32* %408, i64 %410
  %412 = load i32, i32* %411, align 4
  %413 = sub nsw i32 %412, %405
  store i32 %413, i32* %411, align 4
  %414 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %415 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %414, i32 0, i32 2
  %416 = load i32*, i32** %415, align 8
  %417 = load i32, i32* %13, align 4
  %418 = sext i32 %417 to i64
  %419 = getelementptr inbounds i32, i32* %416, i64 %418
  %420 = load i32, i32* %419, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %496

422:                                              ; preds = %404
  %423 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %424 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %423, i32 0, i32 4
  %425 = load i32**, i32*** %424, align 8
  %426 = load i32, i32* %19, align 4
  %427 = add nsw i32 %426, 0
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32*, i32** %425, i64 %428
  %430 = load i32*, i32** %429, align 8
  %431 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %432 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %431, i32 0, i32 4
  %433 = load i32**, i32*** %432, align 8
  %434 = load i32, i32* %19, align 4
  %435 = add nsw i32 %434, 0
  %436 = sext i32 %435 to i64
  %437 = getelementptr inbounds i32*, i32** %433, i64 %436
  %438 = load i32*, i32** %437, align 8
  %439 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds i32, i32* %438, i64 %442
  %444 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %445 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %444, i32 0, i32 2
  %446 = load i32*, i32** %445, align 8
  %447 = load i32, i32* %13, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds i32, i32* %446, i64 %448
  %450 = load i32, i32* %449, align 4
  %451 = mul nsw i32 %450, 4
  %452 = mul nsw i32 %451, 512
  %453 = call i32 @memmove(i32* %430, i32* %443, i32 %452)
  %454 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %455 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %454, i32 0, i32 5
  %456 = load %struct.TYPE_13__*, %struct.TYPE_13__** %455, align 8
  %457 = load i32, i32* %13, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %456, i64 %458
  %460 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = icmp sgt i32 %461, 1
  br i1 %462, label %463, label %495

463:                                              ; preds = %422
  %464 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %465 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %464, i32 0, i32 4
  %466 = load i32**, i32*** %465, align 8
  %467 = load i32, i32* %19, align 4
  %468 = add nsw i32 %467, 1
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds i32*, i32** %466, i64 %469
  %471 = load i32*, i32** %470, align 8
  %472 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %473 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %472, i32 0, i32 4
  %474 = load i32**, i32*** %473, align 8
  %475 = load i32, i32* %19, align 4
  %476 = add nsw i32 %475, 1
  %477 = sext i32 %476 to i64
  %478 = getelementptr inbounds i32*, i32** %474, i64 %477
  %479 = load i32*, i32** %478, align 8
  %480 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %481 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 8
  %483 = sext i32 %482 to i64
  %484 = getelementptr inbounds i32, i32* %479, i64 %483
  %485 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %486 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %485, i32 0, i32 2
  %487 = load i32*, i32** %486, align 8
  %488 = load i32, i32* %13, align 4
  %489 = sext i32 %488 to i64
  %490 = getelementptr inbounds i32, i32* %487, i64 %489
  %491 = load i32, i32* %490, align 4
  %492 = mul nsw i32 %491, 4
  %493 = mul nsw i32 %492, 512
  %494 = call i32 @memmove(i32* %471, i32* %484, i32 %493)
  br label %495

495:                                              ; preds = %463, %422
  br label %496

496:                                              ; preds = %495, %404
  br label %497

497:                                              ; preds = %496
  %498 = load i32, i32* %13, align 4
  %499 = add nsw i32 %498, 1
  store i32 %499, i32* %13, align 4
  br label %338

500:                                              ; preds = %338
  %501 = load i32*, i32** %8, align 8
  store i32 1, i32* %501, align 4
  br label %502

502:                                              ; preds = %500, %323
  br label %503

503:                                              ; preds = %502, %201
  %504 = load i32, i32* %14, align 4
  store i32 %504, i32* %5, align 4
  br label %505

505:                                              ; preds = %503, %335, %181, %60
  %506 = load i32, i32* %5, align 4
  ret i32 %506
}

declare dso_local i32 @ff_get_buffer(%struct.TYPE_12__*, %struct.TYPE_11__*, i32) #1

declare dso_local i32 @decode_packet(%struct.TYPE_12__*, %struct.TYPE_13__*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i64 @FFMAX(i32, i64) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @memmove(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
