; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_SplitBrush.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_brushbsp.c_SplitBrush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { float, i32 }
%struct.TYPE_30__ = type { i32, %struct.TYPE_28__*, i32*, i32*, i32 }
%struct.TYPE_28__ = type { i32, %struct.TYPE_27__*, i32, i32 }
%struct.TYPE_27__ = type { i32, i32* }

@mapplanes = common dso_local global %struct.TYPE_29__* null, align 8
@PSIDE_FRONT = common dso_local global i32 0, align 4
@PSIDE_BACK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WARNING: huge winding\0A\00", align 1
@SFL_TESTED = common dso_local global i32 0, align 4
@MAX_MAP_BOUNDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"bogus brush after clip\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"split removed brush\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"split not on both sides\0D\0A\00", align 1
@TEXINFO_NODE = common dso_local global i32 0, align 4
@SFL_VISIBLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"two tiny brushes\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SplitBrush(%struct.TYPE_30__* %0, i32 %1, %struct.TYPE_30__** %2, %struct.TYPE_30__** %3) #0 {
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_30__**, align 8
  %8 = alloca %struct.TYPE_30__**, align 8
  %9 = alloca [2 x %struct.TYPE_30__*], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_27__*, align 8
  %13 = alloca [2 x %struct.TYPE_27__*], align 16
  %14 = alloca %struct.TYPE_27__*, align 8
  %15 = alloca %struct.TYPE_29__*, align 8
  %16 = alloca %struct.TYPE_29__*, align 8
  %17 = alloca %struct.TYPE_28__*, align 8
  %18 = alloca %struct.TYPE_28__*, align 8
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca i32, align 4
  %23 = alloca double, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_30__* %0, %struct.TYPE_30__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_30__** %2, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__** %3, %struct.TYPE_30__*** %8, align 8
  %25 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %25, align 8
  %26 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %26, align 8
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** @mapplanes, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i64 %29
  store %struct.TYPE_29__* %30, %struct.TYPE_29__** %15, align 8
  store float 0.000000e+00, float* %21, align 4
  store float 0.000000e+00, float* %20, align 4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %94, %4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %97

37:                                               ; preds = %31
  %38 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_28__*, %struct.TYPE_28__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  store %struct.TYPE_27__* %45, %struct.TYPE_27__** %12, align 8
  %46 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %47 = icmp ne %struct.TYPE_27__* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %37
  br label %94

49:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %50

50:                                               ; preds = %90, %49
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %93

56:                                               ; preds = %50
  %57 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %65 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call float @DotProduct(i32 %63, i32 %66)
  %68 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %68, i32 0, i32 0
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
  %100 = fcmp olt double %99, 2.000000e-01
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %103 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %102)
  %104 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* %103, %struct.TYPE_30__** %104, align 8
  br label %522

105:                                              ; preds = %97
  %106 = load float, float* %21, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ogt double %107, -2.000000e-01
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %111 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %110)
  %112 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %111, %struct.TYPE_30__** %112, align 8
  br label %522

113:                                              ; preds = %105
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %117, i32 0, i32 0
  %119 = load float, float* %118, align 4
  %120 = call %struct.TYPE_27__* @BaseWindingForPlane(i32 %116, float %119)
  store %struct.TYPE_27__* %120, %struct.TYPE_27__** %12, align 8
  store i32 0, i32* %10, align 4
  br label %121

121:                                              ; preds = %152, %113
  %122 = load i32, i32* %10, align 4
  %123 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = icmp slt i32 %122, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %121
  %128 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %129 = icmp ne %struct.TYPE_27__* %128, null
  br label %130

130:                                              ; preds = %127, %121
  %131 = phi i1 [ false, %121 ], [ %129, %127 ]
  br i1 %131, label %132, label %155

132:                                              ; preds = %130
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** @mapplanes, align 8
  %134 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_28__*, %struct.TYPE_28__** %135, align 8
  %137 = load i32, i32* %10, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = xor i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %133, i64 %143
  store %struct.TYPE_29__* %144, %struct.TYPE_29__** %16, align 8
  %145 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_29__*, %struct.TYPE_29__** %16, align 8
  %149 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %148, i32 0, i32 0
  %150 = load float, float* %149, align 4
  %151 = call i32 @ChopWindingInPlace(%struct.TYPE_27__** %12, i32 %147, float %150, i32 0)
  br label %152

152:                                              ; preds = %132
  %153 = load i32, i32* %10, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %10, align 4
  br label %121

155:                                              ; preds = %130
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %157 = icmp ne %struct.TYPE_27__* %156, null
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %160 = call i64 @WindingIsTiny(%struct.TYPE_27__* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %188

162:                                              ; preds = %158, %155
  %163 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %164 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %165 = call i32 @BrushMostlyOnSide(%struct.TYPE_30__* %163, %struct.TYPE_29__* %164)
  store i32 %165, i32* %22, align 4
  %166 = load i32, i32* %22, align 4
  %167 = load i32, i32* @PSIDE_FRONT, align 4
  %168 = icmp eq i32 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %162
  %170 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %171 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %170)
  %172 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %171, %struct.TYPE_30__** %172, align 8
  br label %173

173:                                              ; preds = %169, %162
  %174 = load i32, i32* %22, align 4
  %175 = load i32, i32* @PSIDE_BACK, align 4
  %176 = icmp eq i32 %174, %175
  br i1 %176, label %177, label %181

177:                                              ; preds = %173
  %178 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %179 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %178)
  %180 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* %179, %struct.TYPE_30__** %180, align 8
  br label %181

181:                                              ; preds = %177, %173
  %182 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %183 = icmp ne %struct.TYPE_27__* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %181
  %185 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %186 = call i32 @FreeWinding(%struct.TYPE_27__* %185)
  br label %187

187:                                              ; preds = %184, %181
  br label %522

188:                                              ; preds = %158
  %189 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %190 = call i64 @WindingIsHuge(%struct.TYPE_27__* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %188
  %193 = call i32 @Log_Write(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192, %188
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %195, %struct.TYPE_27__** %14, align 8
  store i32 0, i32* %10, align 4
  br label %196

196:                                              ; preds = %216, %194
  %197 = load i32, i32* %10, align 4
  %198 = icmp slt i32 %197, 2
  br i1 %198, label %199, label %219

199:                                              ; preds = %196
  %200 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = add nsw i32 %202, 1
  %204 = call %struct.TYPE_30__* @AllocBrush(i32 %203)
  %205 = load i32, i32* %10, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %206
  store %struct.TYPE_30__* %204, %struct.TYPE_30__** %207, align 8
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %212
  %214 = load %struct.TYPE_30__*, %struct.TYPE_30__** %213, align 8
  %215 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %214, i32 0, i32 4
  store i32 %210, i32* %215, align 8
  br label %216

216:                                              ; preds = %199
  %217 = load i32, i32* %10, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %10, align 4
  br label %196

219:                                              ; preds = %196
  store i32 0, i32* %10, align 4
  br label %220

220:                                              ; preds = %302, %219
  %221 = load i32, i32* %10, align 4
  %222 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %223 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %221, %224
  br i1 %225, label %226, label %305

226:                                              ; preds = %220
  %227 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %228 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %227, i32 0, i32 1
  %229 = load %struct.TYPE_28__*, %struct.TYPE_28__** %228, align 8
  %230 = load i32, i32* %10, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %229, i64 %231
  store %struct.TYPE_28__* %232, %struct.TYPE_28__** %17, align 8
  %233 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %234 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_27__*, %struct.TYPE_27__** %234, align 8
  store %struct.TYPE_27__* %235, %struct.TYPE_27__** %12, align 8
  %236 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %237 = icmp ne %struct.TYPE_27__* %236, null
  br i1 %237, label %239, label %238

238:                                              ; preds = %226
  br label %302

239:                                              ; preds = %226
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  %241 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %242 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_29__*, %struct.TYPE_29__** %15, align 8
  %245 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %244, i32 0, i32 0
  %246 = load float, float* %245, align 4
  %247 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %13, i64 0, i64 0
  %248 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %13, i64 0, i64 1
  %249 = call i32 @ClipWindingEpsilon(%struct.TYPE_27__* %240, i32 %243, float %246, i32 0, %struct.TYPE_27__** %247, %struct.TYPE_27__** %248)
  store i32 0, i32* %11, align 4
  br label %250

250:                                              ; preds = %298, %239
  %251 = load i32, i32* %11, align 4
  %252 = icmp slt i32 %251, 2
  br i1 %252, label %253, label %301

253:                                              ; preds = %250
  %254 = load i32, i32* %11, align 4
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %13, i64 0, i64 %255
  %257 = load %struct.TYPE_27__*, %struct.TYPE_27__** %256, align 8
  %258 = icmp ne %struct.TYPE_27__* %257, null
  br i1 %258, label %260, label %259

259:                                              ; preds = %253
  br label %298

260:                                              ; preds = %253
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %262
  %264 = load %struct.TYPE_30__*, %struct.TYPE_30__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %264, i32 0, i32 1
  %266 = load %struct.TYPE_28__*, %struct.TYPE_28__** %265, align 8
  %267 = load i32, i32* %11, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %268
  %270 = load %struct.TYPE_30__*, %struct.TYPE_30__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %266, i64 %273
  store %struct.TYPE_28__* %274, %struct.TYPE_28__** %18, align 8
  %275 = load i32, i32* %11, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %276
  %278 = load %struct.TYPE_30__*, %struct.TYPE_30__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 8
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %279, align 8
  %282 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %283 = load %struct.TYPE_28__*, %struct.TYPE_28__** %17, align 8
  %284 = bitcast %struct.TYPE_28__* %282 to i8*
  %285 = bitcast %struct.TYPE_28__* %283 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %284, i8* align 8 %285, i64 24, i1 false)
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds [2 x %struct.TYPE_27__*], [2 x %struct.TYPE_27__*]* %13, i64 0, i64 %287
  %289 = load %struct.TYPE_27__*, %struct.TYPE_27__** %288, align 8
  %290 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %291 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %290, i32 0, i32 1
  store %struct.TYPE_27__* %289, %struct.TYPE_27__** %291, align 8
  %292 = load i32, i32* @SFL_TESTED, align 4
  %293 = xor i32 %292, -1
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %295 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = and i32 %296, %293
  store i32 %297, i32* %295, align 8
  br label %298

298:                                              ; preds = %260, %259
  %299 = load i32, i32* %11, align 4
  %300 = add nsw i32 %299, 1
  store i32 %300, i32* %11, align 4
  br label %250

301:                                              ; preds = %250
  br label %302

302:                                              ; preds = %301, %238
  %303 = load i32, i32* %10, align 4
  %304 = add nsw i32 %303, 1
  store i32 %304, i32* %10, align 4
  br label %220

305:                                              ; preds = %220
  store i32 0, i32* %10, align 4
  br label %306

306:                                              ; preds = %372, %305
  %307 = load i32, i32* %10, align 4
  %308 = icmp slt i32 %307, 2
  br i1 %308, label %309, label %375

309:                                              ; preds = %306
  %310 = load i32, i32* %10, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %311
  %313 = load %struct.TYPE_30__*, %struct.TYPE_30__** %312, align 8
  %314 = call i32 @BoundBrush(%struct.TYPE_30__* %313)
  store i32 0, i32* %11, align 4
  br label %315

315:                                              ; preds = %348, %309
  %316 = load i32, i32* %11, align 4
  %317 = icmp slt i32 %316, 3
  br i1 %317, label %318, label %351

318:                                              ; preds = %315
  %319 = load i32, i32* %10, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %320
  %322 = load %struct.TYPE_30__*, %struct.TYPE_30__** %321, align 8
  %323 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %322, i32 0, i32 3
  %324 = load i32*, i32** %323, align 8
  %325 = load i32, i32* %11, align 4
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %330 = sub nsw i32 0, %329
  %331 = icmp slt i32 %328, %330
  br i1 %331, label %345, label %332

332:                                              ; preds = %318
  %333 = load i32, i32* %10, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %334
  %336 = load %struct.TYPE_30__*, %struct.TYPE_30__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %336, i32 0, i32 2
  %338 = load i32*, i32** %337, align 8
  %339 = load i32, i32* %11, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i32, i32* %338, i64 %340
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* @MAX_MAP_BOUNDS, align 4
  %344 = icmp sgt i32 %342, %343
  br i1 %344, label %345, label %347

345:                                              ; preds = %332, %318
  %346 = call i32 @Log_Write(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %351

347:                                              ; preds = %332
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %11, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %11, align 4
  br label %315

351:                                              ; preds = %345, %315
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %353
  %355 = load %struct.TYPE_30__*, %struct.TYPE_30__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = icmp slt i32 %357, 3
  br i1 %358, label %362, label %359

359:                                              ; preds = %351
  %360 = load i32, i32* %11, align 4
  %361 = icmp slt i32 %360, 3
  br i1 %361, label %362, label %371

362:                                              ; preds = %359, %351
  %363 = load i32, i32* %10, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %364
  %366 = load %struct.TYPE_30__*, %struct.TYPE_30__** %365, align 8
  %367 = call i32 @FreeBrush(%struct.TYPE_30__* %366)
  %368 = load i32, i32* %10, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %369
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %370, align 8
  br label %371

371:                                              ; preds = %362, %359
  br label %372

372:                                              ; preds = %371
  %373 = load i32, i32* %10, align 4
  %374 = add nsw i32 %373, 1
  store i32 %374, i32* %10, align 4
  br label %306

375:                                              ; preds = %306
  %376 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %377 = load %struct.TYPE_30__*, %struct.TYPE_30__** %376, align 16
  %378 = icmp ne %struct.TYPE_30__* %377, null
  br i1 %378, label %379, label %383

379:                                              ; preds = %375
  %380 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %381 = load %struct.TYPE_30__*, %struct.TYPE_30__** %380, align 8
  %382 = icmp ne %struct.TYPE_30__* %381, null
  br i1 %382, label %418, label %383

383:                                              ; preds = %379, %375
  %384 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %385 = load %struct.TYPE_30__*, %struct.TYPE_30__** %384, align 16
  %386 = icmp ne %struct.TYPE_30__* %385, null
  br i1 %386, label %393, label %387

387:                                              ; preds = %383
  %388 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %389 = load %struct.TYPE_30__*, %struct.TYPE_30__** %388, align 8
  %390 = icmp ne %struct.TYPE_30__* %389, null
  br i1 %390, label %393, label %391

391:                                              ; preds = %387
  %392 = call i32 @Log_Write(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %395

393:                                              ; preds = %387, %383
  %394 = call i32 @Log_Write(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %395

395:                                              ; preds = %393, %391
  %396 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %397 = load %struct.TYPE_30__*, %struct.TYPE_30__** %396, align 16
  %398 = icmp ne %struct.TYPE_30__* %397, null
  br i1 %398, label %399, label %406

399:                                              ; preds = %395
  %400 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %401 = load %struct.TYPE_30__*, %struct.TYPE_30__** %400, align 16
  %402 = call i32 @FreeBrush(%struct.TYPE_30__* %401)
  %403 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %404 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %403)
  %405 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %404, %struct.TYPE_30__** %405, align 8
  br label %406

406:                                              ; preds = %399, %395
  %407 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %408 = load %struct.TYPE_30__*, %struct.TYPE_30__** %407, align 8
  %409 = icmp ne %struct.TYPE_30__* %408, null
  br i1 %409, label %410, label %417

410:                                              ; preds = %406
  %411 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %412 = load %struct.TYPE_30__*, %struct.TYPE_30__** %411, align 8
  %413 = call i32 @FreeBrush(%struct.TYPE_30__* %412)
  %414 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %415 = call %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__* %414)
  %416 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* %415, %struct.TYPE_30__** %416, align 8
  br label %417

417:                                              ; preds = %410, %406
  br label %522

418:                                              ; preds = %379
  store i32 0, i32* %10, align 4
  br label %419

419:                                              ; preds = %477, %418
  %420 = load i32, i32* %10, align 4
  %421 = icmp slt i32 %420, 2
  br i1 %421, label %422, label %480

422:                                              ; preds = %419
  %423 = load i32, i32* %10, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %424
  %426 = load %struct.TYPE_30__*, %struct.TYPE_30__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %426, i32 0, i32 1
  %428 = load %struct.TYPE_28__*, %struct.TYPE_28__** %427, align 8
  %429 = load i32, i32* %10, align 4
  %430 = sext i32 %429 to i64
  %431 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %430
  %432 = load %struct.TYPE_30__*, %struct.TYPE_30__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %432, i32 0, i32 0
  %434 = load i32, i32* %433, align 8
  %435 = sext i32 %434 to i64
  %436 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %428, i64 %435
  store %struct.TYPE_28__* %436, %struct.TYPE_28__** %18, align 8
  %437 = load i32, i32* %10, align 4
  %438 = sext i32 %437 to i64
  %439 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %438
  %440 = load %struct.TYPE_30__*, %struct.TYPE_30__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 8
  %443 = add nsw i32 %442, 1
  store i32 %443, i32* %441, align 8
  %444 = load i32, i32* %6, align 4
  %445 = load i32, i32* %10, align 4
  %446 = xor i32 %444, %445
  %447 = xor i32 %446, 1
  %448 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %449 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %448, i32 0, i32 0
  store i32 %447, i32* %449, align 8
  %450 = load i32, i32* @TEXINFO_NODE, align 4
  %451 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %452 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %451, i32 0, i32 3
  store i32 %450, i32* %452, align 4
  %453 = load i32, i32* @SFL_VISIBLE, align 4
  %454 = xor i32 %453, -1
  %455 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %456 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = and i32 %457, %454
  store i32 %458, i32* %456, align 8
  %459 = load i32, i32* @SFL_TESTED, align 4
  %460 = xor i32 %459, -1
  %461 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %462 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %461, i32 0, i32 2
  %463 = load i32, i32* %462, align 8
  %464 = and i32 %463, %460
  store i32 %464, i32* %462, align 8
  %465 = load i32, i32* %10, align 4
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %472

467:                                              ; preds = %422
  %468 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %469 = call %struct.TYPE_27__* @CopyWinding(%struct.TYPE_27__* %468)
  %470 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %471 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %470, i32 0, i32 1
  store %struct.TYPE_27__* %469, %struct.TYPE_27__** %471, align 8
  br label %476

472:                                              ; preds = %422
  %473 = load %struct.TYPE_27__*, %struct.TYPE_27__** %14, align 8
  %474 = load %struct.TYPE_28__*, %struct.TYPE_28__** %18, align 8
  %475 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %474, i32 0, i32 1
  store %struct.TYPE_27__* %473, %struct.TYPE_27__** %475, align 8
  br label %476

476:                                              ; preds = %472, %467
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %10, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %10, align 4
  br label %419

480:                                              ; preds = %419
  store i32 0, i32* %24, align 4
  br label %481

481:                                              ; preds = %502, %480
  %482 = load i32, i32* %24, align 4
  %483 = icmp slt i32 %482, 2
  br i1 %483, label %484, label %505

484:                                              ; preds = %481
  %485 = load i32, i32* %24, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %486
  %488 = load %struct.TYPE_30__*, %struct.TYPE_30__** %487, align 8
  %489 = call double @BrushVolume(%struct.TYPE_30__* %488)
  store double %489, double* %23, align 8
  %490 = load double, double* %23, align 8
  %491 = fcmp olt double %490, 1.000000e+00
  br i1 %491, label %492, label %501

492:                                              ; preds = %484
  %493 = load i32, i32* %24, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %494
  %496 = load %struct.TYPE_30__*, %struct.TYPE_30__** %495, align 8
  %497 = call i32 @FreeBrush(%struct.TYPE_30__* %496)
  %498 = load i32, i32* %24, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 %499
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %500, align 8
  br label %501

501:                                              ; preds = %492, %484
  br label %502

502:                                              ; preds = %501
  %503 = load i32, i32* %24, align 4
  %504 = add nsw i32 %503, 1
  store i32 %504, i32* %24, align 4
  br label %481

505:                                              ; preds = %481
  %506 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %507 = load %struct.TYPE_30__*, %struct.TYPE_30__** %506, align 16
  %508 = icmp ne %struct.TYPE_30__* %507, null
  br i1 %508, label %515, label %509

509:                                              ; preds = %505
  %510 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %511 = load %struct.TYPE_30__*, %struct.TYPE_30__** %510, align 8
  %512 = icmp ne %struct.TYPE_30__* %511, null
  br i1 %512, label %515, label %513

513:                                              ; preds = %509
  %514 = call i32 @Log_Write(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0))
  br label %515

515:                                              ; preds = %513, %509, %505
  %516 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 0
  %517 = load %struct.TYPE_30__*, %struct.TYPE_30__** %516, align 16
  %518 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %7, align 8
  store %struct.TYPE_30__* %517, %struct.TYPE_30__** %518, align 8
  %519 = getelementptr inbounds [2 x %struct.TYPE_30__*], [2 x %struct.TYPE_30__*]* %9, i64 0, i64 1
  %520 = load %struct.TYPE_30__*, %struct.TYPE_30__** %519, align 8
  %521 = load %struct.TYPE_30__**, %struct.TYPE_30__*** %8, align 8
  store %struct.TYPE_30__* %520, %struct.TYPE_30__** %521, align 8
  br label %522

522:                                              ; preds = %515, %417, %187, %109, %101
  ret void
}

declare dso_local float @DotProduct(i32, i32) #1

declare dso_local %struct.TYPE_30__* @CopyBrush(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @BaseWindingForPlane(i32, float) #1

declare dso_local i32 @ChopWindingInPlace(%struct.TYPE_27__**, i32, float, i32) #1

declare dso_local i64 @WindingIsTiny(%struct.TYPE_27__*) #1

declare dso_local i32 @BrushMostlyOnSide(%struct.TYPE_30__*, %struct.TYPE_29__*) #1

declare dso_local i32 @FreeWinding(%struct.TYPE_27__*) #1

declare dso_local i64 @WindingIsHuge(%struct.TYPE_27__*) #1

declare dso_local i32 @Log_Write(i8*) #1

declare dso_local %struct.TYPE_30__* @AllocBrush(i32) #1

declare dso_local i32 @ClipWindingEpsilon(%struct.TYPE_27__*, i32, float, i32, %struct.TYPE_27__**, %struct.TYPE_27__**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @BoundBrush(%struct.TYPE_30__*) #1

declare dso_local i32 @FreeBrush(%struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_27__* @CopyWinding(%struct.TYPE_27__*) #1

declare dso_local double @BrushVolume(%struct.TYPE_30__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
