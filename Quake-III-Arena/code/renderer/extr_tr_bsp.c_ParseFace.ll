; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_ParseFace.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_bsp.c_ParseFace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_15__* (i32, i32)*, i32 (i32, i8*, i32)* }
%struct.TYPE_15__ = type { i32, i32, i32, %struct.TYPE_14__, i8***, i32 }
%struct.TYPE_14__ = type { i8**, i32, i32 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, i32, i32, i32**, i32 }
%struct.TYPE_18__ = type { i32, i32*, i32*, i32* }
%struct.TYPE_16__ = type { i32, i32*, %struct.TYPE_22__* }

@r_singleShader = common dso_local global %struct.TYPE_21__* null, align 8
@tr = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@MAX_FACE_POINTS = common dso_local global i32 0, align 4
@ri = common dso_local global %struct.TYPE_20__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"WARNING: MAX_FACE_POINTS exceeded: %i\0A\00", align 1
@h_low = common dso_local global i32 0, align 4
@SF_FACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_16__*, i32*)* @ParseFace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ParseFace(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32* %3, i32** %8, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @LittleLong(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @LittleLong(i32 %23)
  %25 = add nsw i32 %24, 1
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %14, align 4
  %32 = call %struct.TYPE_22__* @ShaderForShaderNum(i32 %30, i32 %31)
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 2
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %34, align 8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** @r_singleShader, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %50

39:                                               ; preds = %4
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 2
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tr, i32 0, i32 0), align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 2
  store %struct.TYPE_22__* %47, %struct.TYPE_22__** %49, align 8
  br label %50

50:                                               ; preds = %46, %39, %4
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @LittleLong(i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @MAX_FACE_POINTS, align 4
  %57 = icmp sgt i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ri, i32 0, i32 1), align 8
  %60 = load i32, i32* @PRINT_WARNING, align 4
  %61 = load i32, i32* %12, align 4
  %62 = call i32 %59(i32 %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @MAX_FACE_POINTS, align 4
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @tr, i32 0, i32 0), align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 2
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %66, align 8
  br label %67

67:                                               ; preds = %58, %50
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @LittleLong(i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load i8***, i8**** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* null, i32 0, i32 4), align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8**, i8*** %72, i64 %74
  %76 = ptrtoint i8*** %75 to i32
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* %15, align 4
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = mul i64 4, %79
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %82, %80
  %84 = trunc i64 %83 to i32
  store i32 %84, i32* %15, align 4
  %85 = load %struct.TYPE_15__* (i32, i32)*, %struct.TYPE_15__* (i32, i32)** getelementptr inbounds (%struct.TYPE_20__, %struct.TYPE_20__* @ri, i32 0, i32 0), align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @h_low, align 4
  %88 = call %struct.TYPE_15__* %85(i32 %86, i32 %87)
  store %struct.TYPE_15__* %88, %struct.TYPE_15__** %11, align 8
  %89 = load i32, i32* @SF_FACE, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 5
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %13, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* %16, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 4
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @LittleLong(i32 %103)
  %105 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i64 %106
  store %struct.TYPE_18__* %107, %struct.TYPE_18__** %6, align 8
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %210, %67
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %213

112:                                              ; preds = %108
  store i32 0, i32* %10, align 4
  br label %113

113:                                              ; preds = %138, %112
  %114 = load i32, i32* %10, align 4
  %115 = icmp slt i32 %114, 3
  br i1 %115, label %116, label %141

116:                                              ; preds = %113
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %118 = load i32, i32* %9, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load i32, i32* %10, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i8* @LittleFloat(i32 %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 4
  %130 = load i8***, i8**** %129, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8**, i8*** %130, i64 %132
  %134 = load i8**, i8*** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8*, i8** %134, i64 %136
  store i8* %127, i8** %137, align 8
  br label %138

138:                                              ; preds = %116
  %139 = load i32, i32* %10, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %113

141:                                              ; preds = %113
  store i32 0, i32* %10, align 4
  br label %142

142:                                              ; preds = %190, %141
  %143 = load i32, i32* %10, align 4
  %144 = icmp slt i32 %143, 2
  br i1 %144, label %145, label %193

145:                                              ; preds = %142
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %147 = load i32, i32* %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load i32*, i32** %150, align 8
  %152 = load i32, i32* %10, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i32, i32* %151, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @LittleFloat(i32 %155)
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 4
  %159 = load i8***, i8**** %158, align 8
  %160 = load i32, i32* %9, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i8**, i8*** %159, i64 %161
  %163 = load i8**, i8*** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 3, %164
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %163, i64 %166
  store i8* %156, i8** %167, align 8
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @LittleFloat(i32 %177)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 4
  %181 = load i8***, i8**** %180, align 8
  %182 = load i32, i32* %9, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i8**, i8*** %181, i64 %183
  %185 = load i8**, i8*** %184, align 8
  %186 = load i32, i32* %10, align 4
  %187 = add nsw i32 5, %186
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %185, i64 %188
  store i8* %178, i8** %189, align 8
  br label %190

190:                                              ; preds = %145
  %191 = load i32, i32* %10, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %10, align 4
  br label %142

193:                                              ; preds = %142
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i64 %196
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %200, i32 0, i32 4
  %202 = load i8***, i8**** %201, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i8**, i8*** %202, i64 %204
  %206 = load i8**, i8*** %205, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 7
  %208 = bitcast i8** %207 to i32*
  %209 = call i32 @R_ColorShiftLightingBytes(i32 %199, i32* %208)
  br label %210

210:                                              ; preds = %193
  %211 = load i32, i32* %9, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %9, align 4
  br label %108

213:                                              ; preds = %108
  %214 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %215 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %214, i32 0, i32 5
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @LittleLong(i32 %216)
  %218 = load i32*, i32** %8, align 8
  %219 = sext i32 %217 to i64
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32* %220, i32** %8, align 8
  store i32 0, i32* %9, align 4
  br label %221

221:                                              ; preds = %242, %213
  %222 = load i32, i32* %9, align 4
  %223 = load i32, i32* %13, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %245

225:                                              ; preds = %221
  %226 = load i32*, i32** %8, align 8
  %227 = load i32, i32* %9, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @LittleLong(i32 %230)
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %233 = bitcast %struct.TYPE_15__* %232 to i32*
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %234, i32 0, i32 2
  %236 = load i32, i32* %235, align 8
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %233, i64 %237
  %239 = load i32, i32* %9, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  store i32 %231, i32* %241, align 4
  br label %242

242:                                              ; preds = %225
  %243 = load i32, i32* %9, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %9, align 4
  br label %221

245:                                              ; preds = %221
  store i32 0, i32* %9, align 4
  br label %246

246:                                              ; preds = %267, %245
  %247 = load i32, i32* %9, align 4
  %248 = icmp slt i32 %247, 3
  br i1 %248, label %249, label %270

249:                                              ; preds = %246
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 6
  %252 = load i32**, i32*** %251, align 8
  %253 = getelementptr inbounds i32*, i32** %252, i64 2
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %9, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = call i8* @LittleFloat(i32 %258)
  %260 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i8**, i8*** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i8*, i8** %263, i64 %265
  store i8* %259, i8** %266, align 8
  br label %267

267:                                              ; preds = %249
  %268 = load i32, i32* %9, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %9, align 4
  br label %246

270:                                              ; preds = %246
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 4
  %273 = load i8***, i8**** %272, align 8
  %274 = getelementptr inbounds i8**, i8*** %273, i64 0
  %275 = load i8**, i8*** %274, align 8
  %276 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %277 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %276, i32 0, i32 3
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i8**, i8*** %278, align 8
  %280 = call i32 @DotProduct(i8** %275, i8** %279)
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 2
  store i32 %280, i32* %283, align 4
  %284 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %285 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %284, i32 0, i32 3
  %286 = call i32 @SetPlaneSignbits(%struct.TYPE_14__* %285)
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 3
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 0
  %290 = load i8**, i8*** %289, align 8
  %291 = call i32 @PlaneTypeForNormal(i8** %290)
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 3
  %294 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 8
  %295 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %296 = bitcast %struct.TYPE_15__* %295 to i32*
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  store i32* %296, i32** %298, align 8
  ret void
}

declare dso_local i32 @LittleLong(i32) #1

declare dso_local %struct.TYPE_22__* @ShaderForShaderNum(i32, i32) #1

declare dso_local i8* @LittleFloat(i32) #1

declare dso_local i32 @R_ColorShiftLightingBytes(i32, i32*) #1

declare dso_local i32 @DotProduct(i8**, i8**) #1

declare dso_local i32 @SetPlaneSignbits(%struct.TYPE_14__*) #1

declare dso_local i32 @PlaneTypeForNormal(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
