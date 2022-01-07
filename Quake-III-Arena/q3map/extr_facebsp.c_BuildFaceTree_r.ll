; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_facebsp.c_BuildFaceTree_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_facebsp.c_BuildFaceTree_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_14__**, i32*, i32*, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_15__*, i32, i32, i32* }

@PLANENUM_LEAF = common dso_local global i32 0, align 4
@c_faceLeafs = common dso_local global i32 0, align 4
@hintsplit = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_13__* null, align 8
@SIDE_CROSS = common dso_local global i32 0, align 4
@CLIP_EPSILON = common dso_local global i32 0, align 4
@SIDE_FRONT = common dso_local global i32 0, align 4
@SIDE_BACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildFaceTree_r(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca [2 x %struct.TYPE_15__*], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = call i32 @CountFaceList(%struct.TYPE_15__* %15)
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = call i32 @SelectSplitPlaneNum(%struct.TYPE_14__* %17, %struct.TYPE_15__* %18)
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load i32, i32* @PLANENUM_LEAF, align 4
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @c_faceLeafs, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @c_faceLeafs, align 4
  br label %286

28:                                               ; preds = %2
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @hintsplit, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** @mapplanes, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i64 %37
  store %struct.TYPE_13__* %38, %struct.TYPE_13__** %8, align 8
  %39 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %39, align 16
  %40 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %5, align 8
  br label %42

42:                                               ; preds = %171, %28
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %44 = icmp ne %struct.TYPE_15__* %43, null
  br i1 %44, label %45, label %173

45:                                               ; preds = %42
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  store %struct.TYPE_15__* %48, %struct.TYPE_15__** %6, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %51, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %45
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %58 = call i32 @FreeBspFace(%struct.TYPE_15__* %57)
  br label %171

59:                                               ; preds = %45
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 4
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @WindingOnPlaneSide(i32* %62, i32* %65, i32 %68)
  store i32 %69, i32* %7, align 4
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* @SIDE_CROSS, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %146

73:                                               ; preds = %59
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CLIP_EPSILON, align 4
  %84 = mul nsw i32 %83, 2
  %85 = call i32 @ClipWindingEpsilon(i32* %76, i32* %79, i32 %82, i32 %84, i32** %11, i32** %12)
  %86 = load i32*, i32** %11, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %114

88:                                               ; preds = %73
  %89 = call %struct.TYPE_15__* (...) @AllocBspFace()
  store %struct.TYPE_15__* %89, %struct.TYPE_15__** %9, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 4
  store i32* %90, i32** %92, align 8
  %93 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %93, align 16
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  store %struct.TYPE_15__* %94, %struct.TYPE_15__** %96, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %113 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* %112, %struct.TYPE_15__** %113, align 16
  br label %114

114:                                              ; preds = %88, %73
  %115 = load i32*, i32** %12, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %143

117:                                              ; preds = %114
  %118 = call %struct.TYPE_15__* (...) @AllocBspFace()
  store %struct.TYPE_15__* %118, %struct.TYPE_15__** %9, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 4
  store i32* %119, i32** %121, align 8
  %122 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %122, align 8
  %124 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %125 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %124, i32 0, i32 1
  store %struct.TYPE_15__* %123, %struct.TYPE_15__** %125, align 8
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %134, i32 0, i32 3
  store i32 %133, i32* %135, align 4
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 2
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %142 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* %141, %struct.TYPE_15__** %142, align 8
  br label %143

143:                                              ; preds = %117, %114
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %145 = call i32 @FreeBspFace(%struct.TYPE_15__* %144)
  br label %170

146:                                              ; preds = %59
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @SIDE_FRONT, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %146
  %151 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %151, align 16
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 1
  store %struct.TYPE_15__* %152, %struct.TYPE_15__** %154, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %156 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 0
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %156, align 16
  br label %169

157:                                              ; preds = %146
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SIDE_BACK, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  %163 = load %struct.TYPE_15__*, %struct.TYPE_15__** %162, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 1
  store %struct.TYPE_15__* %163, %struct.TYPE_15__** %165, align 8
  %166 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %167 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 1
  store %struct.TYPE_15__* %166, %struct.TYPE_15__** %167, align 8
  br label %168

168:                                              ; preds = %161, %157
  br label %169

169:                                              ; preds = %168, %150
  br label %170

170:                                              ; preds = %169, %143
  br label %171

171:                                              ; preds = %170, %56
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  store %struct.TYPE_15__* %172, %struct.TYPE_15__** %5, align 8
  br label %42

173:                                              ; preds = %42
  store i32 0, i32* %13, align 4
  br label %174

174:                                              ; preds = %220, %173
  %175 = load i32, i32* %13, align 4
  %176 = icmp slt i32 %175, 2
  br i1 %176, label %177, label %223

177:                                              ; preds = %174
  %178 = call %struct.TYPE_14__* (...) @AllocNode()
  %179 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %180, align 8
  %182 = load i32, i32* %13, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %181, i64 %183
  store %struct.TYPE_14__* %178, %struct.TYPE_14__** %184, align 8
  %185 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  %188 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %187, align 8
  %189 = load i32, i32* %13, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %188, i64 %190
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 4
  store %struct.TYPE_14__* %185, %struct.TYPE_14__** %193, align 8
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 3
  %196 = load i32*, i32** %195, align 8
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %198 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i32 0, i32 1
  %199 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %198, align 8
  %200 = load i32, i32* %13, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %199, i64 %201
  %203 = load %struct.TYPE_14__*, %struct.TYPE_14__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %203, i32 0, i32 3
  %205 = load i32*, i32** %204, align 8
  %206 = call i32 @VectorCopy(i32* %196, i32* %205)
  %207 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %207, i32 0, i32 2
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %211, align 8
  %213 = load i32, i32* %13, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %212, i64 %214
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 2
  %218 = load i32*, i32** %217, align 8
  %219 = call i32 @VectorCopy(i32* %209, i32* %218)
  br label %220

220:                                              ; preds = %177
  %221 = load i32, i32* %13, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %13, align 4
  br label %174

223:                                              ; preds = %174
  store i32 0, i32* %13, align 4
  br label %224

224:                                              ; preds = %264, %223
  %225 = load i32, i32* %13, align 4
  %226 = icmp slt i32 %225, 3
  br i1 %226, label %227, label %267

227:                                              ; preds = %224
  %228 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = load i32*, i32** %229, align 8
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = icmp eq i32 %234, 1
  br i1 %235, label %236, label %263

236:                                              ; preds = %227
  %237 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 1
  %242 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %242, i64 0
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 3
  %246 = load i32*, i32** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32, i32* %246, i64 %248
  store i32 %239, i32* %249, align 4
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 1
  %255 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %255, i64 1
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 2
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %13, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  store i32 %252, i32* %262, align 4
  br label %267

263:                                              ; preds = %227
  br label %264

264:                                              ; preds = %263
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %224

267:                                              ; preds = %236, %224
  store i32 0, i32* %13, align 4
  br label %268

268:                                              ; preds = %283, %267
  %269 = load i32, i32* %13, align 4
  %270 = icmp slt i32 %269, 2
  br i1 %270, label %271, label %286

271:                                              ; preds = %268
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %273, align 8
  %275 = load i32, i32* %13, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %274, i64 %276
  %278 = load %struct.TYPE_14__*, %struct.TYPE_14__** %277, align 8
  %279 = load i32, i32* %13, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds [2 x %struct.TYPE_15__*], [2 x %struct.TYPE_15__*]* %10, i64 0, i64 %280
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %281, align 8
  call void @BuildFaceTree_r(%struct.TYPE_14__* %278, %struct.TYPE_15__* %282)
  br label %283

283:                                              ; preds = %271
  %284 = load i32, i32* %13, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %13, align 4
  br label %268

286:                                              ; preds = %22, %268
  ret void
}

declare dso_local i32 @CountFaceList(%struct.TYPE_15__*) #1

declare dso_local i32 @SelectSplitPlaneNum(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @FreeBspFace(%struct.TYPE_15__*) #1

declare dso_local i32 @WindingOnPlaneSide(i32*, i32*, i32) #1

declare dso_local i32 @ClipWindingEpsilon(i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local %struct.TYPE_15__* @AllocBspFace(...) #1

declare dso_local %struct.TYPE_14__* @AllocNode(...) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
