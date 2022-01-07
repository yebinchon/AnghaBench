; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_reinit_tables3.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_scpr3.c_reinit_tables3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_15__*, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_19__** }
%struct.TYPE_17__ = type { i32, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32, i32*, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32*, i32 }
%struct.TYPE_11__ = type { i32, i32, i32*, i32 }
%struct.TYPE_19__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*)* @reinit_tables3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reinit_tables3(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %34, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %37

13:                                               ; preds = %10
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %30, %13
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 4096
  br i1 %16, label %17, label %33

17:                                               ; preds = %14
  %18 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 7
  %20 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %20, i64 %22
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i64 %26
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %5, align 8
  %28 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %14

33:                                               ; preds = %14
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %10

37:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %86, %37
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 6
  br i1 %40, label %41, label %89

41:                                               ; preds = %38
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 6
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 6
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 6
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 6
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %70, align 8
  %72 = load i32, i32* %6, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %78 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %77, i32 0, i32 6
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @renew_table3(i32 256, i32* %48, i32 %58, i32 %68, i32 %76, i32 %84)
  br label %86

86:                                               ; preds = %41
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %38

89:                                               ; preds = %38
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 5
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 5
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 5
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 5
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 5
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @renew_table3(i32 256, i32* %92, i32 %98, i32 %104, i32 %108, i32 %112)
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 4
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @renew_table3(i32 5, i32* %116, i32 %122, i32 %128, i32 %132, i32 %136)
  %138 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 3
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32 @renew_table3(i32 256, i32* %140, i32 %146, i32 %152, i32 %156, i32 %160)
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %210, %89
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 4
  br i1 %164, label %165, label %213

165:                                              ; preds = %162
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 3
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 2
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %174, align 8
  %176 = load i32, i32* %7, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %175, i64 %177
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %184 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_15__*, %struct.TYPE_15__** %184, align 8
  %186 = load i32, i32* %7, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i64 %187
  %189 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %188, i32 0, i32 2
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %201, i32 0, i32 2
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @renew_table3(i32 16, i32* %172, i32 %182, i32 %192, i32 %200, i32 %208)
  br label %210

210:                                              ; preds = %165
  %211 = load i32, i32* %7, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %7, align 4
  br label %162

213:                                              ; preds = %162
  store i32 0, i32* %8, align 4
  br label %214

214:                                              ; preds = %262, %213
  %215 = load i32, i32* %8, align 4
  %216 = icmp slt i32 %215, 2
  br i1 %216, label %217, label %265

217:                                              ; preds = %214
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 3
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 1
  %227 = load %struct.TYPE_16__*, %struct.TYPE_16__** %226, align 8
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i64 %229
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 2
  %232 = load i32*, i32** %231, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 0
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 1
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %240, i32 0, i32 2
  %242 = load i32*, i32** %241, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %246 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %245, i32 0, i32 1
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %254, align 8
  %256 = load i32, i32* %8, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @renew_table3(i32 512, i32* %224, i32 %234, i32 %244, i32 %252, i32 %260)
  br label %262

262:                                              ; preds = %217
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %8, align 4
  br label %214

265:                                              ; preds = %214
  store i32 0, i32* %9, align 4
  br label %266

266:                                              ; preds = %314, %265
  %267 = load i32, i32* %9, align 4
  %268 = icmp slt i32 %267, 6
  br i1 %268, label %269, label %317

269:                                              ; preds = %266
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %271, align 8
  %273 = load i32, i32* %9, align 4
  %274 = sext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 3
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %278, align 8
  %280 = load i32, i32* %9, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 2
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 0
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %289, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %292, i32 0, i32 2
  %294 = load i32*, i32** %293, align 8
  %295 = getelementptr inbounds i32, i32* %294, i64 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %298, align 8
  %300 = load i32, i32* %9, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %306 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %306, align 8
  %308 = load i32, i32* %9, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = call i32 @renew_table3(i32 6, i32* %276, i32 %286, i32 %296, i32 %304, i32 %312)
  br label %314

314:                                              ; preds = %269
  %315 = load i32, i32* %9, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %9, align 4
  br label %266

317:                                              ; preds = %266
  ret void
}

declare dso_local i32 @renew_table3(i32, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
