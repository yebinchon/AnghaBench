; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_GetSurfaceAnimation.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/common/extr_aselib.c_ASE_GetSurfaceAnimation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_11__*, %struct.TYPE_18__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_18__ = type { i64, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i64**, i64**, %struct.TYPE_15__*, %struct.TYPE_13__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_16__ = type { i32, %struct.TYPE_14__*, i32, i32 }
%struct.TYPE_14__ = type { i32**, i32** }

@ase = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@.str = private unnamed_addr constant [67 x i8] c"WARNING: ASE_GetSurfaceAnimation maxFrames > numFramesInAnimation\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @ASE_GetSurfaceAnimation(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_17__*, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %21 = load %struct.TYPE_18__*, %struct.TYPE_18__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ase, i32 0, i32 1), align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %21, i64 %23
  store %struct.TYPE_18__* %24, %struct.TYPE_18__** %12, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %6, align 8
  br label %364

31:                                               ; preds = %5
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %14, align 4
  br label %53

43:                                               ; preds = %38, %31
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  br label %53

53:                                               ; preds = %52, %41
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, -1
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %9, align 4
  %60 = sub nsw i32 %58, %59
  %61 = add nsw i32 %60, 1
  %62 = sub nsw i32 %57, %61
  store i32 %62, i32* %15, align 4
  br label %65

63:                                               ; preds = %53
  %64 = load i32, i32* %14, align 4
  store i32 %64, i32* %15, align 4
  br label %65

65:                                               ; preds = %63, %56
  %66 = load i32, i32* %15, align 4
  %67 = load i32*, i32** %8, align 8
  store i32 %66, i32* %67, align 4
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = mul i64 24, %69
  %71 = trunc i64 %70 to i32
  %72 = call i8* @calloc(i32 %71, i32 1)
  %73 = bitcast i8* %72 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %73, %struct.TYPE_16__** %13, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %74

74:                                               ; preds = %359, %65
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %362

78:                                               ; preds = %74
  %79 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %81, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %82, i64 %84
  store %struct.TYPE_17__* %85, %struct.TYPE_17__** %19, align 8
  %86 = load i32, i32* %9, align 4
  %87 = icmp ne i32 %86, -1
  br i1 %87, label %88, label %98

88:                                               ; preds = %78
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %9, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %97

92:                                               ; preds = %88
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  br label %359

97:                                               ; preds = %92, %88
  br label %98

98:                                               ; preds = %97, %78
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %100 = load i32, i32* %17, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @strcpy(i32 %104, i32 %107)
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @ase, i32 0, i32 0), align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @strcpy(i32 %114, i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = load i32, i32* %16, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = sext i32 %131 to i64
  %133 = mul i64 4, %132
  %134 = trunc i64 %133 to i32
  %135 = call i8* @calloc(i32 %134, i32 1)
  %136 = bitcast i8* %135 to %struct.TYPE_14__*
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %138 = load i32, i32* %17, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %140, i32 0, i32 1
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %141, align 8
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_17__*, %struct.TYPE_17__** %144, align 8
  %146 = load i32, i32* %16, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %152 = load i32, i32* %17, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 0
  store i32 %150, i32* %155, align 8
  store i32 0, i32* %18, align 4
  br label %156

156:                                              ; preds = %353, %98
  %157 = load i32, i32* %18, align 4
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_17__*, %struct.TYPE_17__** %160, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %161, i64 %163
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %157, %166
  br i1 %167, label %168, label %356

168:                                              ; preds = %156
  store i32 0, i32* %20, align 4
  br label %169

169:                                              ; preds = %349, %168
  %170 = load i32, i32* %20, align 4
  %171 = icmp slt i32 %170, 3
  br i1 %171, label %172, label %352

172:                                              ; preds = %169
  %173 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %174 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %173, i32 0, i32 4
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %174, align 8
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 1
  %178 = load i64**, i64*** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64*, i64** %178, i64 %180
  %182 = load i64*, i64** %181, align 8
  %183 = load i32, i32* %20, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i64, i64* %182, i64 %184
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %194, align 8
  %196 = load i32, i32* %18, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i32**, i32*** %199, align 8
  %201 = load i32, i32* %20, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32*, i32** %200, i64 %202
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %189, i32* %205, align 4
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 4
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %210 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %209, i32 0, i32 1
  %211 = load i64**, i64*** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i64*, i64** %211, i64 %213
  %215 = load i64*, i64** %214, align 8
  %216 = load i32, i32* %20, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i64, i64* %215, i64 %217
  %219 = load i64, i64* %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %219
  %221 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %224 = load i32, i32* %17, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %18, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 1
  %233 = load i32**, i32*** %232, align 8
  %234 = load i32, i32* %20, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32*, i32** %233, i64 %235
  %237 = load i32*, i32** %236, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 1
  store i32 %222, i32* %238, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 4
  %241 = load %struct.TYPE_13__*, %struct.TYPE_13__** %240, align 8
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 1
  %244 = load i64**, i64*** %243, align 8
  %245 = load i32, i32* %18, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i64*, i64** %244, i64 %246
  %248 = load i64*, i64** %247, align 8
  %249 = load i32, i32* %20, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i64, i64* %248, i64 %250
  %252 = load i64, i64* %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %241, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %257 = load i32, i32* %17, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %256, i64 %258
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 1
  %261 = load %struct.TYPE_14__*, %struct.TYPE_14__** %260, align 8
  %262 = load i32, i32* %18, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i64 %263
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 1
  %266 = load i32**, i32*** %265, align 8
  %267 = load i32, i32* %20, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32*, i32** %266, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = getelementptr inbounds i32, i32* %270, i64 2
  store i32 %255, i32* %271, align 4
  %272 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %273 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %272, i32 0, i32 3
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %273, align 8
  %275 = icmp ne %struct.TYPE_15__* %274, null
  br i1 %275, label %276, label %348

276:                                              ; preds = %172
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 2
  %279 = load i64**, i64*** %278, align 8
  %280 = icmp ne i64** %279, null
  br i1 %280, label %281, label %348

281:                                              ; preds = %276
  %282 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %283 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %282, i32 0, i32 3
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %283, align 8
  %285 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %285, i32 0, i32 2
  %287 = load i64**, i64*** %286, align 8
  %288 = load i32, i32* %18, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64*, i64** %287, i64 %289
  %291 = load i64*, i64** %290, align 8
  %292 = load i32, i32* %20, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i64, i64* %291, i64 %293
  %295 = load i64, i64* %294, align 8
  %296 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i64 %295
  %297 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %296, i32 0, i32 1
  %298 = load i32, i32* %297, align 4
  %299 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %300 = load i32, i32* %17, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %299, i64 %301
  %303 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %302, i32 0, i32 1
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %303, align 8
  %305 = load i32, i32* %18, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i64 %306
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 0
  %309 = load i32**, i32*** %308, align 8
  %310 = load i32, i32* %20, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i32*, i32** %309, i64 %311
  %313 = load i32*, i32** %312, align 8
  %314 = getelementptr inbounds i32, i32* %313, i64 0
  store i32 %298, i32* %314, align 4
  %315 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %316 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %315, i32 0, i32 3
  %317 = load %struct.TYPE_15__*, %struct.TYPE_15__** %316, align 8
  %318 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 2
  %320 = load i64**, i64*** %319, align 8
  %321 = load i32, i32* %18, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64*, i64** %320, i64 %322
  %324 = load i64*, i64** %323, align 8
  %325 = load i32, i32* %20, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i64, i64* %324, i64 %326
  %328 = load i64, i64* %327, align 8
  %329 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %317, i64 %328
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %333 = load i32, i32* %17, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %332, i64 %334
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 1
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %336, align 8
  %338 = load i32, i32* %18, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %340, i32 0, i32 0
  %342 = load i32**, i32*** %341, align 8
  %343 = load i32, i32* %20, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i32*, i32** %342, i64 %344
  %346 = load i32*, i32** %345, align 8
  %347 = getelementptr inbounds i32, i32* %346, i64 1
  store i32 %331, i32* %347, align 4
  br label %348

348:                                              ; preds = %281, %276, %172
  br label %349

349:                                              ; preds = %348
  %350 = load i32, i32* %20, align 4
  %351 = add nsw i32 %350, 1
  store i32 %351, i32* %20, align 4
  br label %169

352:                                              ; preds = %169
  br label %353

353:                                              ; preds = %352
  %354 = load i32, i32* %18, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %18, align 4
  br label %156

356:                                              ; preds = %156
  %357 = load i32, i32* %17, align 4
  %358 = add nsw i32 %357, 1
  store i32 %358, i32* %17, align 4
  br label %359

359:                                              ; preds = %356, %96
  %360 = load i32, i32* %16, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %16, align 4
  br label %74

362:                                              ; preds = %74
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_16__* %363, %struct.TYPE_16__** %6, align 8
  br label %364

364:                                              ; preds = %362, %30
  %365 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  ret %struct.TYPE_16__* %365
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
