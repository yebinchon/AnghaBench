; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_brush.c_SplitBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3map/extr_brush.c_SplitBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_30__ = type { float, i32 }
%struct.TYPE_31__ = type { i32, i64*, i64*, %struct.TYPE_29__*, i32, i32* }
%struct.TYPE_29__ = type { i32, %struct.TYPE_28__*, i32*, i64 }
%struct.TYPE_28__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_30__* null, align 8
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WARNING: huge winding\0A\00", align 1
@MIN_WORLD_COORD = common dso_local global i64 0, align 8
@MAX_WORLD_COORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"bogus brush after clip\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"split removed brush\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"split not on both sides\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitBrush(%struct.TYPE_31__* %0, i32 %1, %struct.TYPE_31__** %2, %struct.TYPE_31__** %3) #0 {
  %5 = alloca %struct.TYPE_31__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_31__**, align 8
  %8 = alloca %struct.TYPE_31__**, align 8
  %9 = alloca [2 x %struct.TYPE_31__*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_28__*, align 8
  %13 = alloca [2 x %struct.TYPE_28__*], align 16
  %14 = alloca %struct.TYPE_28__*, align 8
  %15 = alloca %struct.TYPE_30__*, align 8
  %16 = alloca %struct.TYPE_30__*, align 8
  %17 = alloca %struct.TYPE_29__*, align 8
  %18 = alloca %struct.TYPE_29__*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_31__** %2, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__** %3, %struct.TYPE_31__*** %8, align 8
  %25 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %25, align 8
  %26 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %26, align 8
  %27 = load %struct.TYPE_30__*, %struct.TYPE_30__** @mapplanes, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %27, i64 %29
  store %struct.TYPE_30__* %30, %struct.TYPE_30__** %15, align 8
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %94, %4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %31
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_29__*, %struct.TYPE_29__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %44, align 8
  store %struct.TYPE_28__* %45, %struct.TYPE_28__** %12, align 8
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %47 = icmp ne %struct.TYPE_28__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %94

49:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %90, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call float @DotProduct(i32 %63, i32 %66)
  %68 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %68, i32 0, i32 0
  %70 = load float, float* %69, align 4
  %71 = fsub float %67, %70
  store float %71, float* %19, align 4
  %72 = load float, float* %19, align 4
  %73 = fcmp ogt float %72, 0.000000e+00
  br i1 %73, label %74, label %80

74:                                               ; preds = %56
  %75 = load float, float* %19, align 4
  %76 = load float, float* %20, align 4
  %77 = fcmp ogt float %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %74
  %79 = load float, float* %19, align 4
  store float %79, float* %20, align 4
  br label %80

80:                                               ; preds = %78, %74, %56
  %81 = load float, float* %19, align 4
  %82 = fcmp olt float %81, 0.000000e+00
  br i1 %82, label %83, label %89

83:                                               ; preds = %80
  %84 = load float, float* %19, align 4
  %85 = load float, float* %21, align 4
  %86 = fcmp olt float %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load float, float* %19, align 4
  store float %88, float* %21, align 4
  br label %89

89:                                               ; preds = %87, %83, %80
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  br label %50

93:                                               ; preds = %50
  br label %94

94:                                               ; preds = %93, %48
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %10, align 4
  br label %31

97:                                               ; preds = %31
  %98 = load float, float* %20, align 4
  %99 = fpext float %98 to double
  %100 = fcmp olt double %99, 1.000000e-01
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %103 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %102)
  %104 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %103, %struct.TYPE_31__** %104, align 8
  br label %513

105:                                              ; preds = %97
  %106 = load float, float* %21, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, -1.000000e-01
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %111 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %110)
  %112 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %111, %struct.TYPE_31__** %112, align 8
  br label %513

113:                                              ; preds = %105
  %114 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = call %struct.TYPE_28__* @BaseWindingForPlane(i32 %116, float %119)
  store %struct.TYPE_28__* %120, %struct.TYPE_28__** %12, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %163, %113
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %129 = icmp ne %struct.TYPE_28__* %128, null
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi i1 [ false, %121 ], [ %129, %127 ]
  br i1 %131, label %132, label %166

132:                                              ; preds = %130
  %133 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %133, i32 0, i32 3
  %135 = load %struct.TYPE_29__*, %struct.TYPE_29__** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %135, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %132
  br label %163

143:                                              ; preds = %132
  %144 = load %struct.TYPE_30__*, %struct.TYPE_30__** @mapplanes, align 8
  %145 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %145, i32 0, i32 3
  %147 = load %struct.TYPE_29__*, %struct.TYPE_29__** %146, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = xor i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %144, i64 %154
  store %struct.TYPE_30__* %155, %struct.TYPE_30__** %16, align 8
  %156 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_30__*, %struct.TYPE_30__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %159, i32 0, i32 0
  %161 = load float, float* %160, align 4
  %162 = call i32 @ChopWindingInPlace(%struct.TYPE_28__** %12, i32 %158, float %161, i32 0)
  br label %163

163:                                              ; preds = %143, %142
  %164 = load i32, i32* %10, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %10, align 4
  br label %121

166:                                              ; preds = %130
  %167 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %168 = icmp ne %struct.TYPE_28__* %167, null
  br i1 %168, label %169, label %173

169:                                              ; preds = %166
  %170 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %171 = call i64 @WindingIsTiny(%struct.TYPE_28__* %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %193

173:                                              ; preds = %169, %166
  %174 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %175 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %176 = call i32 @BrushMostlyOnSide(%struct.TYPE_31__* %174, %struct.TYPE_30__* %175)
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %22, align 4
  %178 = load i32, i32* @PSIDE_FRONT, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %173
  %181 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %182 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %181)
  %183 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %182, %struct.TYPE_31__** %183, align 8
  br label %184

184:                                              ; preds = %180, %173
  %185 = load i32, i32* %22, align 4
  %186 = load i32, i32* @PSIDE_BACK, align 4
  %187 = icmp eq i32 %185, %186
  br i1 %187, label %188, label %192

188:                                              ; preds = %184
  %189 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %190 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %189)
  %191 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %190, %struct.TYPE_31__** %191, align 8
  br label %192

192:                                              ; preds = %188, %184
  br label %513

193:                                              ; preds = %169
  %194 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %195 = call i64 @WindingIsHuge(%struct.TYPE_28__* %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %199

197:                                              ; preds = %193
  %198 = call i32 @qprintf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197, %193
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  store %struct.TYPE_28__* %200, %struct.TYPE_28__** %14, align 8
  store i32 0, i32* %10, align 4
  br label %201

201:                                              ; preds = %237, %199
  %202 = load i32, i32* %10, align 4
  %203 = icmp slt i32 %202, 2
  br i1 %203, label %204, label %240

204:                                              ; preds = %201
  %205 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = add nsw i32 %207, 1
  %209 = call %struct.TYPE_31__* @AllocBrush(i32 %208)
  %210 = load i32, i32* %10, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %211
  store %struct.TYPE_31__* %209, %struct.TYPE_31__** %212, align 8
  %213 = load i32, i32* %10, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %214
  %216 = load %struct.TYPE_31__*, %struct.TYPE_31__** %215, align 8
  %217 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %218 = call i32 @memcpy(%struct.TYPE_31__* %216, %struct.TYPE_31__* %217, i32 40)
  %219 = load i32, i32* %10, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %220
  %222 = load %struct.TYPE_31__*, %struct.TYPE_31__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %222, i32 0, i32 0
  store i32 0, i32* %223, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %225
  %227 = load %struct.TYPE_31__*, %struct.TYPE_31__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %227, i32 0, i32 5
  store i32* null, i32** %228, align 8
  %229 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %10, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %233
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 4
  store i32 %231, i32* %236, align 8
  br label %237

237:                                              ; preds = %204
  %238 = load i32, i32* %10, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %10, align 4
  br label %201

240:                                              ; preds = %201
  store i32 0, i32* %10, align 4
  br label %241

241:                                              ; preds = %317, %240
  %242 = load i32, i32* %10, align 4
  %243 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %244 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp slt i32 %242, %245
  br i1 %246, label %247, label %320

247:                                              ; preds = %241
  %248 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %248, i32 0, i32 3
  %250 = load %struct.TYPE_29__*, %struct.TYPE_29__** %249, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %250, i64 %252
  store %struct.TYPE_29__* %253, %struct.TYPE_29__** %17, align 8
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %255 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %254, i32 0, i32 1
  %256 = load %struct.TYPE_28__*, %struct.TYPE_28__** %255, align 8
  store %struct.TYPE_28__* %256, %struct.TYPE_28__** %12, align 8
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %258 = icmp ne %struct.TYPE_28__* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %247
  br label %317

260:                                              ; preds = %247
  %261 = load %struct.TYPE_28__*, %struct.TYPE_28__** %12, align 8
  %262 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %263 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.TYPE_30__*, %struct.TYPE_30__** %15, align 8
  %266 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %265, i32 0, i32 0
  %267 = load float, float* %266, align 4
  %268 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 0
  %269 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 1
  %270 = call i32 @ClipWindingEpsilon(%struct.TYPE_28__* %261, i32 %264, float %267, i32 0, %struct.TYPE_28__** %268, %struct.TYPE_28__** %269)
  store i32 0, i32* %11, align 4
  br label %271

271:                                              ; preds = %313, %260
  %272 = load i32, i32* %11, align 4
  %273 = icmp slt i32 %272, 2
  br i1 %273, label %274, label %316

274:                                              ; preds = %271
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 %276
  %278 = load %struct.TYPE_28__*, %struct.TYPE_28__** %277, align 8
  %279 = icmp ne %struct.TYPE_28__* %278, null
  br i1 %279, label %281, label %280

280:                                              ; preds = %274
  br label %313

281:                                              ; preds = %274
  %282 = load i32, i32* %11, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %283
  %285 = load %struct.TYPE_31__*, %struct.TYPE_31__** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %285, i32 0, i32 3
  %287 = load %struct.TYPE_29__*, %struct.TYPE_29__** %286, align 8
  %288 = load i32, i32* %11, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %289
  %291 = load %struct.TYPE_31__*, %struct.TYPE_31__** %290, align 8
  %292 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %287, i64 %294
  store %struct.TYPE_29__* %295, %struct.TYPE_29__** %18, align 8
  %296 = load i32, i32* %11, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %297
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = add nsw i32 %301, 1
  store i32 %302, i32* %300, align 8
  %303 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %304 = load %struct.TYPE_29__*, %struct.TYPE_29__** %17, align 8
  %305 = bitcast %struct.TYPE_29__* %303 to i8*
  %306 = bitcast %struct.TYPE_29__* %304 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %305, i8* align 8 %306, i64 32, i1 false)
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [2 x %struct.TYPE_28__*], [2 x %struct.TYPE_28__*]* %13, i64 0, i64 %308
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %309, align 8
  %311 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %312 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %311, i32 0, i32 1
  store %struct.TYPE_28__* %310, %struct.TYPE_28__** %312, align 8
  br label %313

313:                                              ; preds = %281, %280
  %314 = load i32, i32* %11, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %11, align 4
  br label %271

316:                                              ; preds = %271
  br label %317

317:                                              ; preds = %316, %259
  %318 = load i32, i32* %10, align 4
  %319 = add nsw i32 %318, 1
  store i32 %319, i32* %10, align 4
  br label %241

320:                                              ; preds = %241
  store i32 0, i32* %10, align 4
  br label %321

321:                                              ; preds = %386, %320
  %322 = load i32, i32* %10, align 4
  %323 = icmp slt i32 %322, 2
  br i1 %323, label %324, label %389

324:                                              ; preds = %321
  %325 = load i32, i32* %10, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %326
  %328 = load %struct.TYPE_31__*, %struct.TYPE_31__** %327, align 8
  %329 = call i32 @BoundBrush(%struct.TYPE_31__* %328)
  store i32 0, i32* %11, align 4
  br label %330

330:                                              ; preds = %362, %324
  %331 = load i32, i32* %11, align 4
  %332 = icmp slt i32 %331, 3
  br i1 %332, label %333, label %365

333:                                              ; preds = %330
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %335
  %337 = load %struct.TYPE_31__*, %struct.TYPE_31__** %336, align 8
  %338 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %337, i32 0, i32 1
  %339 = load i64*, i64** %338, align 8
  %340 = load i32, i32* %11, align 4
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds i64, i64* %339, i64 %341
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @MIN_WORLD_COORD, align 8
  %345 = icmp slt i64 %343, %344
  br i1 %345, label %359, label %346

346:                                              ; preds = %333
  %347 = load i32, i32* %10, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %348
  %350 = load %struct.TYPE_31__*, %struct.TYPE_31__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %350, i32 0, i32 2
  %352 = load i64*, i64** %351, align 8
  %353 = load i32, i32* %11, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i64, i64* %352, i64 %354
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @MAX_WORLD_COORD, align 8
  %358 = icmp sgt i64 %356, %357
  br i1 %358, label %359, label %361

359:                                              ; preds = %346, %333
  %360 = call i32 @qprintf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %365

361:                                              ; preds = %346
  br label %362

362:                                              ; preds = %361
  %363 = load i32, i32* %11, align 4
  %364 = add nsw i32 %363, 1
  store i32 %364, i32* %11, align 4
  br label %330

365:                                              ; preds = %359, %330
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %367
  %369 = load %struct.TYPE_31__*, %struct.TYPE_31__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = icmp slt i32 %371, 3
  br i1 %372, label %376, label %373

373:                                              ; preds = %365
  %374 = load i32, i32* %11, align 4
  %375 = icmp slt i32 %374, 3
  br i1 %375, label %376, label %385

376:                                              ; preds = %373, %365
  %377 = load i32, i32* %10, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %378
  %380 = load %struct.TYPE_31__*, %struct.TYPE_31__** %379, align 8
  %381 = call i32 @FreeBrush(%struct.TYPE_31__* %380)
  %382 = load i32, i32* %10, align 4
  %383 = sext i32 %382 to i64
  %384 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %383
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %384, align 8
  br label %385

385:                                              ; preds = %376, %373
  br label %386

386:                                              ; preds = %385
  %387 = load i32, i32* %10, align 4
  %388 = add nsw i32 %387, 1
  store i32 %388, i32* %10, align 4
  br label %321

389:                                              ; preds = %321
  %390 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %391 = load %struct.TYPE_31__*, %struct.TYPE_31__** %390, align 16
  %392 = icmp ne %struct.TYPE_31__* %391, null
  br i1 %392, label %393, label %397

393:                                              ; preds = %389
  %394 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %395 = load %struct.TYPE_31__*, %struct.TYPE_31__** %394, align 8
  %396 = icmp ne %struct.TYPE_31__* %395, null
  br i1 %396, label %432, label %397

397:                                              ; preds = %393, %389
  %398 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %399 = load %struct.TYPE_31__*, %struct.TYPE_31__** %398, align 16
  %400 = icmp ne %struct.TYPE_31__* %399, null
  br i1 %400, label %407, label %401

401:                                              ; preds = %397
  %402 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %403 = load %struct.TYPE_31__*, %struct.TYPE_31__** %402, align 8
  %404 = icmp ne %struct.TYPE_31__* %403, null
  br i1 %404, label %407, label %405

405:                                              ; preds = %401
  %406 = call i32 @qprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %409

407:                                              ; preds = %401, %397
  %408 = call i32 @qprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %409

409:                                              ; preds = %407, %405
  %410 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %411 = load %struct.TYPE_31__*, %struct.TYPE_31__** %410, align 16
  %412 = icmp ne %struct.TYPE_31__* %411, null
  br i1 %412, label %413, label %420

413:                                              ; preds = %409
  %414 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %415 = load %struct.TYPE_31__*, %struct.TYPE_31__** %414, align 16
  %416 = call i32 @FreeBrush(%struct.TYPE_31__* %415)
  %417 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %418 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %417)
  %419 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %418, %struct.TYPE_31__** %419, align 8
  br label %420

420:                                              ; preds = %413, %409
  %421 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %422 = load %struct.TYPE_31__*, %struct.TYPE_31__** %421, align 8
  %423 = icmp ne %struct.TYPE_31__* %422, null
  br i1 %423, label %424, label %431

424:                                              ; preds = %420
  %425 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %426 = load %struct.TYPE_31__*, %struct.TYPE_31__** %425, align 8
  %427 = call i32 @FreeBrush(%struct.TYPE_31__* %426)
  %428 = load %struct.TYPE_31__*, %struct.TYPE_31__** %5, align 8
  %429 = call %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__* %428)
  %430 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %429, %struct.TYPE_31__** %430, align 8
  br label %431

431:                                              ; preds = %424, %420
  br label %513

432:                                              ; preds = %393
  store i32 0, i32* %10, align 4
  br label %433

433:                                              ; preds = %478, %432
  %434 = load i32, i32* %10, align 4
  %435 = icmp slt i32 %434, 2
  br i1 %435, label %436, label %481

436:                                              ; preds = %433
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %438
  %440 = load %struct.TYPE_31__*, %struct.TYPE_31__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %440, i32 0, i32 3
  %442 = load %struct.TYPE_29__*, %struct.TYPE_29__** %441, align 8
  %443 = load i32, i32* %10, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %444
  %446 = load %struct.TYPE_31__*, %struct.TYPE_31__** %445, align 8
  %447 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %442, i64 %449
  store %struct.TYPE_29__* %450, %struct.TYPE_29__** %18, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %452
  %454 = load %struct.TYPE_31__*, %struct.TYPE_31__** %453, align 8
  %455 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %454, i32 0, i32 0
  %456 = load i32, i32* %455, align 8
  %457 = add nsw i32 %456, 1
  store i32 %457, i32* %455, align 8
  %458 = load i32, i32* %6, align 4
  %459 = load i32, i32* %10, align 4
  %460 = xor i32 %458, %459
  %461 = xor i32 %460, 1
  %462 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %463 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %462, i32 0, i32 0
  store i32 %461, i32* %463, align 8
  %464 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %465 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %464, i32 0, i32 2
  store i32* null, i32** %465, align 8
  %466 = load i32, i32* %10, align 4
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %473

468:                                              ; preds = %436
  %469 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %470 = call %struct.TYPE_28__* @CopyWinding(%struct.TYPE_28__* %469)
  %471 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %472 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %471, i32 0, i32 1
  store %struct.TYPE_28__* %470, %struct.TYPE_28__** %472, align 8
  br label %477

473:                                              ; preds = %436
  %474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %14, align 8
  %475 = load %struct.TYPE_29__*, %struct.TYPE_29__** %18, align 8
  %476 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %475, i32 0, i32 1
  store %struct.TYPE_28__* %474, %struct.TYPE_28__** %476, align 8
  br label %477

477:                                              ; preds = %473, %468
  br label %478

478:                                              ; preds = %477
  %479 = load i32, i32* %10, align 4
  %480 = add nsw i32 %479, 1
  store i32 %480, i32* %10, align 4
  br label %433

481:                                              ; preds = %433
  store i32 0, i32* %24, align 4
  br label %482

482:                                              ; preds = %503, %481
  %483 = load i32, i32* %24, align 4
  %484 = icmp slt i32 %483, 2
  br i1 %484, label %485, label %506

485:                                              ; preds = %482
  %486 = load i32, i32* %24, align 4
  %487 = sext i32 %486 to i64
  %488 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %487
  %489 = load %struct.TYPE_31__*, %struct.TYPE_31__** %488, align 8
  %490 = call double @BrushVolume(%struct.TYPE_31__* %489)
  store double %490, double* %23, align 8
  %491 = load double, double* %23, align 8
  %492 = fcmp olt double %491, 1.000000e+00
  br i1 %492, label %493, label %502

493:                                              ; preds = %485
  %494 = load i32, i32* %24, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %495
  %497 = load %struct.TYPE_31__*, %struct.TYPE_31__** %496, align 8
  %498 = call i32 @FreeBrush(%struct.TYPE_31__* %497)
  %499 = load i32, i32* %24, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 %500
  store %struct.TYPE_31__* null, %struct.TYPE_31__** %501, align 8
  br label %502

502:                                              ; preds = %493, %485
  br label %503

503:                                              ; preds = %502
  %504 = load i32, i32* %24, align 4
  %505 = add nsw i32 %504, 1
  store i32 %505, i32* %24, align 4
  br label %482

506:                                              ; preds = %482
  %507 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 0
  %508 = load %struct.TYPE_31__*, %struct.TYPE_31__** %507, align 16
  %509 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %7, align 8
  store %struct.TYPE_31__* %508, %struct.TYPE_31__** %509, align 8
  %510 = getelementptr inbounds [2 x %struct.TYPE_31__*], [2 x %struct.TYPE_31__*]* %9, i64 0, i64 1
  %511 = load %struct.TYPE_31__*, %struct.TYPE_31__** %510, align 8
  %512 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %8, align 8
  store %struct.TYPE_31__* %511, %struct.TYPE_31__** %512, align 8
  br label %513

513:                                              ; preds = %506, %431, %192, %109, %101
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_31__* @CopyBrush(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_28__* @BaseWindingForPlane(i32, float) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_28__**, i32, float, i32) #1

declare dso_local i64 @WindingIsTiny(%struct.TYPE_28__*) #1

declare dso_local i32 @BrushMostlyOnSide(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i64 @WindingIsHuge(%struct.TYPE_28__*) #1

declare dso_local i32 @qprintf(i8*) #1

declare dso_local %struct.TYPE_31__* @AllocBrush(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_31__*, %struct.TYPE_31__*, i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_28__*, i32, float, i32, %struct.TYPE_28__**, %struct.TYPE_28__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BoundBrush(%struct.TYPE_31__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_31__*) #1

declare dso_local %struct.TYPE_28__* @CopyWinding(%struct.TYPE_28__*) #1

declare dso_local double @BrushVolume(%struct.TYPE_31__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
