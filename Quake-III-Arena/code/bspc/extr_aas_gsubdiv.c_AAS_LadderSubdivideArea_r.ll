; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_LadderSubdivideArea_r.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/bspc/extr_aas_gsubdiv.c_AAS_LadderSubdivideArea_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, double }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_19__**, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, i64, %struct.TYPE_21__*, %struct.TYPE_20__**, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32** }

@AREACONTENTS_WATER = common dso_local global i32 0, align 4
@AREACONTENTS_LAVA = common dso_local global i32 0, align 4
@AREACONTENTS_SLIME = common dso_local global i32 0, align 4
@PRESENCE_NORMAL = common dso_local global i32 0, align 4
@FACE_LADDER = common dso_local global i32 0, align 4
@mapplanes = common dso_local global %struct.TYPE_22__* null, align 8
@FACE_GROUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"\0D%6d\00", align 1
@numladdersubdivisions = common dso_local global i32 0, align 4
@tmpaasworld = common dso_local global %struct.TYPE_23__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_19__* @AAS_LadderSubdivideArea_r(%struct.TYPE_19__* %0) #0 {
  %2 = alloca %struct.TYPE_19__*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca float, align 4
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_21__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_22__*, align 8
  %19 = alloca i32*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store i32* null, i32** %17, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %10, align 8
  %23 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %24 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @AREACONTENTS_WATER, align 4
  %27 = load i32, i32* @AREACONTENTS_LAVA, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AREACONTENTS_SLIME, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %25, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %2, align 8
  br label %260

35:                                               ; preds = %1
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PRESENCE_NORMAL, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %35
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %43, %struct.TYPE_19__** %2, align 8
  br label %260

44:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %45 = load i32*, i32** %16, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32 99999, i32* %46, align 4
  %47 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %48, align 8
  store %struct.TYPE_20__* %49, %struct.TYPE_20__** %13, align 8
  br label %50

50:                                               ; preds = %131, %44
  %51 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %52 = icmp ne %struct.TYPE_20__* %51, null
  br i1 %52, label %53, label %139

53:                                               ; preds = %50
  %54 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %55, align 8
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %58 = icmp ne %struct.TYPE_21__* %56, %57
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %4, align 4
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @FACE_LADDER, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %121

66:                                               ; preds = %53
  %67 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapplanes, align 8
  %68 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %67, i64 %70
  store %struct.TYPE_22__* %71, %struct.TYPE_22__** %18, align 8
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32*, i32** %17, align 8
  %76 = call double @DotProduct(i32* %74, i32* %75)
  %77 = fcmp ogt double %76, -1.000000e-01
  br i1 %77, label %78, label %120

78:                                               ; preds = %66
  store i32 1, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %79

79:                                               ; preds = %116, %78
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %80, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %79
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %88, i32 0, i32 4
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %90, i32 0, i32 1
  %92 = load i32**, i32*** %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32*, i32** %92, i64 %94
  %96 = load i32*, i32** %95, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %16, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %115

103:                                              ; preds = %87
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 1
  %108 = load i32**, i32*** %107, align 8
  %109 = load i32, i32* %5, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32*, i32** %108, i64 %110
  %112 = load i32*, i32** %111, align 8
  %113 = load i32*, i32** %16, align 8
  %114 = call i32 @VectorCopy(i32* %112, i32* %113)
  br label %115

115:                                              ; preds = %103, %87
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %5, align 4
  br label %79

119:                                              ; preds = %79
  br label %120

120:                                              ; preds = %119, %66
  br label %130

121:                                              ; preds = %53
  %122 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @FACE_GROUND, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %8, align 4
  br label %129

129:                                              ; preds = %128, %121
  br label %130

130:                                              ; preds = %129, %120
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %132, i32 0, i32 3
  %134 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %134, i64 %136
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %137, align 8
  store %struct.TYPE_20__* %138, %struct.TYPE_20__** %13, align 8
  br label %50

139:                                              ; preds = %50
  %140 = load i32, i32* %7, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %139
  %143 = load i32, i32* %8, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %147, label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %146, %struct.TYPE_19__** %2, align 8
  br label %260

147:                                              ; preds = %142
  %148 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %149, align 8
  store %struct.TYPE_20__* %150, %struct.TYPE_20__** %13, align 8
  br label %151

151:                                              ; preds = %192, %147
  %152 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %153 = icmp ne %struct.TYPE_20__* %152, null
  br i1 %153, label %154, label %200

154:                                              ; preds = %151
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %156 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %155, i32 0, i32 2
  %157 = load %struct.TYPE_21__*, %struct.TYPE_21__** %156, align 8
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %159 = icmp ne %struct.TYPE_21__* %157, %158
  %160 = zext i1 %159 to i32
  store i32 %160, i32* %4, align 4
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @FACE_GROUND, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %168, label %167

167:                                              ; preds = %154
  br label %192

168:                                              ; preds = %154
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** @mapplanes, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i64 %172
  store %struct.TYPE_22__* %173, %struct.TYPE_22__** %18, align 8
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %175 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %174, i32 0, i32 0
  %176 = load i32*, i32** %175, align 8
  %177 = load i32*, i32** %16, align 8
  %178 = call double @DotProduct(i32* %176, i32* %177)
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 1
  %181 = load double, double* %180, align 8
  %182 = fsub double %178, %181
  %183 = fptrunc double %182 to float
  store float %183, float* %9, align 4
  %184 = load float, float* %9, align 4
  %185 = fcmp ogt float %184, -1.000000e+00
  br i1 %185, label %186, label %191

186:                                              ; preds = %168
  %187 = load float, float* %9, align 4
  %188 = fcmp olt float %187, 1.000000e+00
  br i1 %188, label %189, label %191

189:                                              ; preds = %186
  %190 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %190, %struct.TYPE_19__** %2, align 8
  br label %260

191:                                              ; preds = %186, %168
  br label %192

192:                                              ; preds = %191, %167
  %193 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %193, i32 0, i32 3
  %195 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %194, align 8
  %196 = load i32, i32* %4, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_20__*, %struct.TYPE_20__** %195, i64 %197
  %199 = load %struct.TYPE_20__*, %struct.TYPE_20__** %198, align 8
  store %struct.TYPE_20__* %199, %struct.TYPE_20__** %13, align 8
  br label %151

200:                                              ; preds = %151
  %201 = load i32*, i32** %17, align 8
  %202 = load i32*, i32** %16, align 8
  %203 = call double @DotProduct(i32* %201, i32* %202)
  %204 = fptrunc double %203 to float
  store float %204, float* %9, align 4
  %205 = load i32*, i32** %17, align 8
  %206 = load float, float* %9, align 4
  %207 = call i32 @FindFloatPlane(i32* %205, float %206)
  store i32 %207, i32* %6, align 4
  %208 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %209 = load i32, i32* %6, align 4
  %210 = call i32* @AAS_SplitWinding(%struct.TYPE_21__* %208, i32 %209)
  store i32* %210, i32** %19, align 8
  %211 = load i32*, i32** %19, align 8
  %212 = icmp ne i32* %211, null
  br i1 %212, label %215, label %213

213:                                              ; preds = %200
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %214, %struct.TYPE_19__** %2, align 8
  br label %260

215:                                              ; preds = %200
  %216 = load i32*, i32** %19, align 8
  %217 = call i32 @FreeWinding(i32* %216)
  %218 = load i32, i32* @numladdersubdivisions, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* @numladdersubdivisions, align 4
  %220 = call i32 @qprintf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %219)
  %221 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %222 = load i32, i32* %6, align 4
  %223 = call i32 @AAS_SplitArea(%struct.TYPE_21__* %221, i32 %222, %struct.TYPE_21__** %11, %struct.TYPE_21__** %12)
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 2
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %225, align 8
  %226 = load i32, i32* %6, align 4
  %227 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %228 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %227, i32 0, i32 0
  store i32 %226, i32* %228, align 8
  %229 = call %struct.TYPE_19__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_19__* %229, %struct.TYPE_19__** %14, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %230, i32 0, i32 0
  store i32 0, i32* %231, align 8
  %232 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %233 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %233, i32 0, i32 2
  store %struct.TYPE_21__* %232, %struct.TYPE_21__** %234, align 8
  %235 = call %struct.TYPE_19__* (...) @AAS_AllocTmpNode()
  store %struct.TYPE_19__* %235, %struct.TYPE_19__** %15, align 8
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 0
  store i32 0, i32* %237, align 8
  %238 = load %struct.TYPE_21__*, %struct.TYPE_21__** %12, align 8
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %240 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %239, i32 0, i32 2
  store %struct.TYPE_21__* %238, %struct.TYPE_21__** %240, align 8
  %241 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %242 = call %struct.TYPE_19__* @AAS_LadderSubdivideArea_r(%struct.TYPE_19__* %241)
  %243 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %244 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %243, i32 0, i32 1
  %245 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %245, i64 0
  store %struct.TYPE_19__* %242, %struct.TYPE_19__** %246, align 8
  %247 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %248 = call %struct.TYPE_19__* @AAS_LadderSubdivideArea_r(%struct.TYPE_19__* %247)
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %251, i64 1
  store %struct.TYPE_19__* %248, %struct.TYPE_19__** %252, align 8
  %253 = load i32, i32* getelementptr inbounds (%struct.TYPE_23__, %struct.TYPE_23__* @tmpaasworld, i32 0, i32 0), align 4
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %255 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %257 = load i32, i32* %6, align 4
  %258 = call i32 @AAS_RefreshLadderSubdividedTree_r(i32 %253, %struct.TYPE_21__* %254, %struct.TYPE_19__* %255, %struct.TYPE_19__* %256, i32 %257)
  %259 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %259, %struct.TYPE_19__** %2, align 8
  br label %260

260:                                              ; preds = %215, %213, %189, %145, %42, %33
  %261 = load %struct.TYPE_19__*, %struct.TYPE_19__** %2, align 8
  ret %struct.TYPE_19__* %261
}

declare dso_local double @DotProduct(i32*, i32*) #1

declare dso_local i32 @VectorCopy(i32*, i32*) #1

declare dso_local i32 @FindFloatPlane(i32*, float) #1

declare dso_local i32* @AAS_SplitWinding(%struct.TYPE_21__*, i32) #1

declare dso_local i32 @FreeWinding(i32*) #1

declare dso_local i32 @qprintf(i8*, i32) #1

declare dso_local i32 @AAS_SplitArea(%struct.TYPE_21__*, i32, %struct.TYPE_21__**, %struct.TYPE_21__**) #1

declare dso_local %struct.TYPE_19__* @AAS_AllocTmpNode(...) #1

declare dso_local i32 @AAS_RefreshLadderSubdividedTree_r(i32, %struct.TYPE_21__*, %struct.TYPE_19__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
