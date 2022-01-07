; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_StoreArea.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_store.c_AAS_StoreArea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64*, i32*, i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i64* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32, double, i64, i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i64 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__*, i64, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, i32, i32*, %struct.TYPE_10__*, %struct.TYPE_9__** }

@.str = private unnamed_addr constant [43 x i8] c"AAS_StoreArea: tried to store invalid area\00", align 1
@aasworld = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@max_aas = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"AAS_MAX_AREAS = %d\00", align 1
@mapplanes = common dso_local global i32* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"AAS_MAX_FACEINDEXSIZE = %d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AAS_StoreArea(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  br label %15

15:                                               ; preds = %20, %1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp ne %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %3, align 8
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %312

41:                                               ; preds = %31
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %43 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @max_aas, i32 0, i32 0), align 8
  %44 = icmp sge i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %41
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @max_aas, i32 0, i32 0), align 8
  %47 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  br label %48

48:                                               ; preds = %45, %41
  %49 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i64 1, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  br label %52

52:                                               ; preds = %51, %48
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 7), align 8
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i64 %54
  store %struct.TYPE_13__* %55, %struct.TYPE_13__** %9, align 8
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  store double 0.000000e+00, double* %61, align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 1), align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ClearBounds(i32 %67, i32 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @VectorClear(i32 %74)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  store %struct.TYPE_9__* %83, %struct.TYPE_9__** %8, align 8
  br label %84

84:                                               ; preds = %272, %52
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %86 = icmp ne %struct.TYPE_9__* %85, null
  br i1 %86, label %87, label %280

87:                                               ; preds = %84
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %92 = icmp ne %struct.TYPE_10__* %90, %91
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %4, align 4
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %115

98:                                               ; preds = %87
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sub nsw i32 0, %101
  %103 = sext i32 %102 to i64
  store i64 %103, i64* %12, align 8
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 6), align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i64 %108
  store %struct.TYPE_11__* %109, %struct.TYPE_11__** %11, align 8
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  br label %175

115:                                              ; preds = %87
  %116 = load i32*, i32** @mapplanes, align 8
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %4, align 4
  %121 = xor i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %116, i64 %122
  store i32* %123, i32** %7, align 8
  %124 = load i32, i32* %4, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %136

126:                                              ; preds = %115
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  store i32* %129, i32** %14, align 8
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = call i32* @ReverseWinding(i32* %132)
  %134 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %126, %115
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @AAS_GetFace(i32* %139, i32* %140, i32 0, i64* %12)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %136
  br label %272

144:                                              ; preds = %136
  %145 = load i32, i32* %4, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %155

147:                                              ; preds = %144
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %149 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = call i32 @FreeWinding(i32* %150)
  %152 = load i32*, i32** %14, align 8
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 3
  store i32* %152, i32** %154, align 8
  br label %155

155:                                              ; preds = %147, %144
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 6), align 8
  %157 = load i64, i64* %12, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i64 %157
  store %struct.TYPE_11__* %158, %struct.TYPE_11__** %11, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 4
  %166 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  store i32 %168, i32* %170, align 4
  %171 = load i64, i64* %12, align 8
  %172 = trunc i64 %171 to i32
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %155, %98
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @VectorClear(i32 %176)
  store i32 0, i32* %5, align 4
  br label %178

178:                                              ; preds = %235, %175
  %179 = load i32, i32* %5, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %238

184:                                              ; preds = %178
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 5), align 8
  %186 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 4), align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %5, align 4
  %191 = add nsw i32 %189, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %186, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @abs(i32 %194)
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i64 %195
  store %struct.TYPE_12__* %196, %struct.TYPE_12__** %10, align 8
  store i32 0, i32* %6, align 4
  br label %197

197:                                              ; preds = %231, %184
  %198 = load i32, i32* %6, align 4
  %199 = icmp slt i32 %198, 2
  br i1 %199, label %200, label %234

200:                                              ; preds = %197
  %201 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 3), align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i64*, i64** %203, align 8
  %205 = load i32, i32* %6, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %204, i64 %206
  %208 = load i64, i64* %207, align 8
  %209 = getelementptr inbounds i32, i32* %201, i64 %208
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 5
  %213 = load i32, i32* %212, align 8
  %214 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %215 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %214, i32 0, i32 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @AddPointToBounds(i32 %210, i32 %213, i32 %216)
  %218 = load i32*, i32** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 3), align 8
  %219 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %220 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %219, i32 0, i32 0
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %6, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds i64, i64* %221, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds i32, i32* %218, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %13, align 4
  %229 = load i32, i32* %13, align 4
  %230 = call i32 @VectorAdd(i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %200
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %197

234:                                              ; preds = %197
  br label %235

235:                                              ; preds = %234
  %236 = load i32, i32* %5, align 4
  %237 = add nsw i32 %236, 1
  store i32 %237, i32* %5, align 4
  br label %178

238:                                              ; preds = %178
  %239 = load i32, i32* %13, align 4
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = sitofp i32 %242 to double
  %244 = fmul double %243, 2.000000e+00
  %245 = fdiv double 1.000000e+00, %244
  %246 = load i32, i32* %13, align 4
  %247 = call i32 @VectorScale(i32 %239, double %245, i32 %246)
  %248 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %249 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %248, i32 0, i32 3
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @VectorAdd(i32 %250, i32 %251, i32 %254)
  %256 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 1), align 8
  %257 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @max_aas, i32 0, i32 2), align 8
  %258 = icmp sge i64 %256, %257
  br i1 %258, label %259, label %262

259:                                              ; preds = %238
  %260 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @max_aas, i32 0, i32 2), align 8
  %261 = call i32 (i8*, ...) @Error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %260)
  br label %262

262:                                              ; preds = %259, %238
  %263 = load i64, i64* %12, align 8
  %264 = load i64*, i64** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 2), align 8
  %265 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 1), align 8
  %266 = add nsw i64 %265, 1
  store i64 %266, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 1), align 8
  %267 = getelementptr inbounds i64, i64* %264, i64 %265
  store i64 %263, i64* %267, align 8
  %268 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %268, i32 0, i32 1
  %270 = load double, double* %269, align 8
  %271 = fadd double %270, 1.000000e+00
  store double %271, double* %269, align 8
  br label %272

272:                                              ; preds = %262, %143
  %273 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 5
  %275 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %274, align 8
  %276 = load i32, i32* %4, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %275, i64 %277
  %279 = load %struct.TYPE_9__*, %struct.TYPE_9__** %278, align 8
  store %struct.TYPE_9__* %279, %struct.TYPE_9__** %8, align 8
  br label %84

280:                                              ; preds = %84
  %281 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %281, i32 0, i32 1
  %283 = load double, double* %282, align 8
  %284 = fcmp une double %283, 0.000000e+00
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  store i32 0, i32* %2, align 4
  br label %312

286:                                              ; preds = %280
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load double, double* %291, align 8
  %293 = fdiv double 1.000000e+00, %292
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %295 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %294, i32 0, i32 3
  %296 = load i32, i32* %295, align 8
  %297 = call i32 @VectorScale(i32 %289, double %293, i32 %296)
  %298 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 1
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @AAS_StoreAreaSettings(i32 %300)
  %302 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %303 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %304)
  %306 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %307 = add nsw i64 %306, 1
  store i64 %307, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %308 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @aasworld, i32 0, i32 0), align 8
  %309 = sub nsw i64 %308, 1
  %310 = sub nsw i64 0, %309
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %2, align 4
  br label %312

312:                                              ; preds = %286, %285, %36
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

declare dso_local i32 @Error(i8*, ...) #1

declare dso_local i32 @ClearBounds(i32, i32) #1

declare dso_local i32 @VectorClear(i32) #1

declare dso_local i32* @ReverseWinding(i32*) #1

declare dso_local i32 @AAS_GetFace(i32*, i32*, i32, i64*) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @AddPointToBounds(i32, i32, i32) #1

declare dso_local i32 @VectorAdd(i32, i32, i32) #1

declare dso_local i32 @VectorScale(i32, double, i32) #1

declare dso_local i32 @AAS_StoreAreaSettings(i32) #1

declare dso_local i32 @qprintf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
