; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_RE_AddPolyToScene.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_scene.c_RE_AddPolyToScene.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64** }
%struct.TYPE_13__ = type { i32 (i32, i8*)* }
%struct.TYPE_15__ = type { %struct.TYPE_16__*, %struct.TYPE_10__* }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_16__*, i64, i32 }
%struct.TYPE_14__ = type { i64 }

@tr = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@ri = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@PRINT_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"WARNING: RE_AddPolyToScene: NULL poly shader\0A\00", align 1
@r_numpolyverts = common dso_local global i32 0, align 4
@max_polyverts = common dso_local global i32 0, align 4
@r_numpolys = common dso_local global i64 0, align 8
@max_polys = common dso_local global i64 0, align 8
@PRINT_DEVELOPER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [68 x i8] c"WARNING: RE_AddPolyToScene: r_max_polys or r_max_polyverts reached\0A\00", align 1
@backEndData = common dso_local global %struct.TYPE_15__** null, align 8
@SF_POLY = common dso_local global i32 0, align 4
@glConfig = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@GLHW_RAGEPRO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RE_AddPolyToScene(i64 %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca [2 x i64*], align 16
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 2), align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %4
  br label %284

18:                                               ; preds = %4
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %23 = load i32, i32* @PRINT_WARNING, align 4
  %24 = call i32 %22(i32 %23, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %284

25:                                               ; preds = %18
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %281, %25
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %284

30:                                               ; preds = %26
  %31 = load i32, i32* @r_numpolyverts, align 4
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %31, %32
  %34 = load i32, i32* @max_polyverts, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  %37 = load i64, i64* @r_numpolys, align 8
  %38 = load i64, i64* @max_polys, align 8
  %39 = icmp uge i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %36, %30
  %41 = load i32 (i32, i8*)*, i32 (i32, i8*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @ri, i32 0, i32 0), align 8
  %42 = load i32, i32* @PRINT_DEVELOPER, align 4
  %43 = call i32 %41(i32 %42, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0))
  br label %284

44:                                               ; preds = %36
  %45 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @backEndData, align 8
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %47 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %45, i64 %46
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i64, i64* @r_numpolys, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %9, align 8
  %53 = load i32, i32* @SF_POLY, align 4
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 3
  store i64 %56, i64* %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.TYPE_15__**, %struct.TYPE_15__*** @backEndData, align 8
  %63 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 0), align 8
  %64 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %62, i64 %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %66, align 8
  %68 = load i32, i32* @r_numpolyverts, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 2
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %72, align 8
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %74, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %76, i64 %80
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i32 @Com_Memcpy(%struct.TYPE_16__* %75, i32* %81, i32 %85)
  %87 = load i64, i64* getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @glConfig, i32 0, i32 0), align 8
  %88 = load i64, i64* @GLHW_RAGEPRO, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %115

90:                                               ; preds = %44
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  store i32 255, i32* %96, align 4
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 2
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 255, i32* %102, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 2
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  store i32 255, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %110 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  store i32 255, i32* %114, align 4
  br label %115

115:                                              ; preds = %90, %44
  %116 = load i64, i64* @r_numpolys, align 8
  %117 = add i64 %116, 1
  store i64 %117, i64* @r_numpolys, align 8
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @r_numpolyverts, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* @r_numpolyverts, align 4
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %122 = icmp eq %struct.TYPE_9__* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32 0, i32* %12, align 4
  br label %277

124:                                              ; preds = %115
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp eq i32 %127, 1
  br i1 %128, label %129, label %130

129:                                              ; preds = %124
  store i32 0, i32* %12, align 4
  br label %276

130:                                              ; preds = %124
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i64 0
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %138 = load i64*, i64** %137, align 16
  %139 = call i32 @VectorCopy(i32 %136, i64* %138)
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i64 0
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %147 = load i64*, i64** %146, align 8
  %148 = call i32 @VectorCopy(i32 %145, i64* %147)
  store i32 1, i32* %10, align 4
  br label %149

149:                                              ; preds = %169, %130
  %150 = load i32, i32* %10, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %172

155:                                              ; preds = %149
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 2
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %165 = load i64*, i64** %164, align 16
  %166 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %167 = load i64*, i64** %166, align 8
  %168 = call i32 @AddPointToBounds(i32 %163, i64* %165, i64* %167)
  br label %169

169:                                              ; preds = %155
  %170 = load i32, i32* %10, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %10, align 4
  br label %149

172:                                              ; preds = %149
  store i32 1, i32* %12, align 4
  br label %173

173:                                              ; preds = %265, %172
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %176 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp slt i32 %174, %177
  br i1 %178, label %179, label %268

179:                                              ; preds = %173
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_11__*, %struct.TYPE_11__** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i64 %184
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %13, align 8
  %186 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %187 = load i64*, i64** %186, align 8
  %188 = getelementptr inbounds i64, i64* %187, i64 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 0
  %192 = load i64**, i64*** %191, align 8
  %193 = getelementptr inbounds i64*, i64** %192, i64 0
  %194 = load i64*, i64** %193, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 0
  %196 = load i64, i64* %195, align 8
  %197 = icmp sge i64 %189, %196
  br i1 %197, label %198, label %264

198:                                              ; preds = %179
  %199 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %200 = load i64*, i64** %199, align 8
  %201 = getelementptr inbounds i64, i64* %200, i64 1
  %202 = load i64, i64* %201, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i64**, i64*** %204, align 8
  %206 = getelementptr inbounds i64*, i64** %205, i64 0
  %207 = load i64*, i64** %206, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 1
  %209 = load i64, i64* %208, align 8
  %210 = icmp sge i64 %202, %209
  br i1 %210, label %211, label %264

211:                                              ; preds = %198
  %212 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 1
  %213 = load i64*, i64** %212, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 0
  %218 = load i64**, i64*** %217, align 8
  %219 = getelementptr inbounds i64*, i64** %218, i64 0
  %220 = load i64*, i64** %219, align 8
  %221 = getelementptr inbounds i64, i64* %220, i64 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp sge i64 %215, %222
  br i1 %223, label %224, label %264

224:                                              ; preds = %211
  %225 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %226 = load i64*, i64** %225, align 16
  %227 = getelementptr inbounds i64, i64* %226, i64 0
  %228 = load i64, i64* %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i64**, i64*** %230, align 8
  %232 = getelementptr inbounds i64*, i64** %231, i64 1
  %233 = load i64*, i64** %232, align 8
  %234 = getelementptr inbounds i64, i64* %233, i64 0
  %235 = load i64, i64* %234, align 8
  %236 = icmp sle i64 %228, %235
  br i1 %236, label %237, label %264

237:                                              ; preds = %224
  %238 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %239 = load i64*, i64** %238, align 16
  %240 = getelementptr inbounds i64, i64* %239, i64 1
  %241 = load i64, i64* %240, align 8
  %242 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %243 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %242, i32 0, i32 0
  %244 = load i64**, i64*** %243, align 8
  %245 = getelementptr inbounds i64*, i64** %244, i64 1
  %246 = load i64*, i64** %245, align 8
  %247 = getelementptr inbounds i64, i64* %246, i64 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp sle i64 %241, %248
  br i1 %249, label %250, label %264

250:                                              ; preds = %237
  %251 = getelementptr inbounds [2 x i64*], [2 x i64*]* %14, i64 0, i64 0
  %252 = load i64*, i64** %251, align 16
  %253 = getelementptr inbounds i64, i64* %252, i64 2
  %254 = load i64, i64* %253, align 8
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 0
  %257 = load i64**, i64*** %256, align 8
  %258 = getelementptr inbounds i64*, i64** %257, i64 1
  %259 = load i64*, i64** %258, align 8
  %260 = getelementptr inbounds i64, i64* %259, i64 2
  %261 = load i64, i64* %260, align 8
  %262 = icmp sle i64 %254, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %250
  br label %268

264:                                              ; preds = %250, %237, %224, %211, %198, %179
  br label %265

265:                                              ; preds = %264
  %266 = load i32, i32* %12, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %12, align 4
  br label %173

268:                                              ; preds = %263, %173
  %269 = load i32, i32* %12, align 4
  %270 = load %struct.TYPE_9__*, %struct.TYPE_9__** getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @tr, i32 0, i32 1), align 8
  %271 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp eq i32 %269, %272
  br i1 %273, label %274, label %275

274:                                              ; preds = %268
  store i32 0, i32* %12, align 4
  br label %275

275:                                              ; preds = %274, %268
  br label %276

276:                                              ; preds = %275, %129
  br label %277

277:                                              ; preds = %276, %123
  %278 = load i32, i32* %12, align 4
  %279 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  br label %281

281:                                              ; preds = %277
  %282 = load i32, i32* %11, align 4
  %283 = add nsw i32 %282, 1
  store i32 %283, i32* %11, align 4
  br label %26

284:                                              ; preds = %17, %21, %40, %26
  ret void
}

declare dso_local i32 @Com_Memcpy(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @VectorCopy(i32, i64*) #1

declare dso_local i32 @AddPointToBounds(i32, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
