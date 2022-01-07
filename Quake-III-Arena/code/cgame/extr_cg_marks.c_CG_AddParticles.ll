; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_AddParticles.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_AddParticles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { double, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_7__ = type { double, float, float, i32, i32, double, double*, float*, float*, %struct.TYPE_7__* }

@initparticles = common dso_local global i32 0, align 4
@cg = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@pvforward = common dso_local global i32 0, align 4
@pvright = common dso_local global i32 0, align 4
@pvup = common dso_local global i32 0, align 4
@oldtime = common dso_local global double 0.000000e+00, align 8
@roll = common dso_local global double 0.000000e+00, align 8
@ROLL = common dso_local global i64 0, align 8
@rforward = common dso_local global i32 0, align 4
@rright = common dso_local global i32 0, align 4
@rup = common dso_local global i32 0, align 4
@active_particles = common dso_local global %struct.TYPE_7__* null, align 8
@free_particles = common dso_local global i8* null, align 8
@P_SMOKE = common dso_local global i32 0, align 4
@P_ANIM = common dso_local global i32 0, align 4
@P_BLEED = common dso_local global i32 0, align 4
@P_SMOKE_IMPACT = common dso_local global i32 0, align 4
@P_WEATHER_FLURRY = common dso_local global i32 0, align 4
@P_FLAT_SCALEUP_FADE = common dso_local global i32 0, align 4
@P_BAT = common dso_local global i32 0, align 4
@P_SPRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_AddParticles() #0 {
  %1 = alloca %struct.TYPE_7__*, align 8
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca double*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca double*, align 8
  %12 = load i32, i32* @initparticles, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (...) @CG_ClearParticles()
  br label %16

16:                                               ; preds = %14, %0
  %17 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @pvforward, align 4
  %21 = call i32 @VectorCopy(i32 %19, i32 %20)
  %22 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @pvright, align 4
  %26 = call i32 @VectorCopy(i32 %24, i32 %25)
  %27 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @pvup, align 4
  %31 = call i32 @VectorCopy(i32 %29, i32 %30)
  %32 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 1, i32 0), align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  %34 = load i32, i32* %33, align 4
  %35 = load double*, double** %11, align 8
  %36 = call i32 @vectoangles(i32 %34, double* %35)
  %37 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %38 = load double, double* @oldtime, align 8
  %39 = fsub double %37, %38
  %40 = fmul double %39, 1.000000e-01
  %41 = load double, double* @roll, align 8
  %42 = fadd double %41, %40
  store double %42, double* @roll, align 8
  %43 = load double, double* @roll, align 8
  %44 = fmul double %43, 9.000000e-01
  %45 = load double*, double** %11, align 8
  %46 = load i64, i64* @ROLL, align 8
  %47 = getelementptr inbounds double, double* %45, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %44
  store double %49, double* %47, align 8
  %50 = load double*, double** %11, align 8
  %51 = load i32, i32* @rforward, align 4
  %52 = load i32, i32* @rright, align 4
  %53 = load i32, i32* @rup, align 4
  %54 = call i32 @AngleVectors(double* %50, i32 %51, i32 %52, i32 %53)
  %55 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  store double %55, double* @oldtime, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %9, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** @active_particles, align 8
  store %struct.TYPE_7__* %56, %struct.TYPE_7__** %1, align 8
  br label %57

57:                                               ; preds = %333, %16
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %335

60:                                               ; preds = %57
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 9
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  store %struct.TYPE_7__* %63, %struct.TYPE_7__** %2, align 8
  %64 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load double, double* %66, align 8
  %68 = fsub double %64, %67
  %69 = fmul double %68, 1.000000e-03
  %70 = fptrunc double %69 to float
  store float %70, float* %4, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load float, float* %72, align 8
  %74 = load float, float* %4, align 4
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 2
  %77 = load float, float* %76, align 4
  %78 = fmul float %74, %77
  %79 = fadd float %73, %78
  store float %79, float* %3, align 4
  %80 = load float, float* %3, align 4
  %81 = fcmp ole float %80, 0.000000e+00
  br i1 %81, label %82, label %95

82:                                               ; preds = %60
  %83 = load i8*, i8** @free_particles, align 8
  %84 = bitcast i8* %83 to %struct.TYPE_7__*
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 9
  store %struct.TYPE_7__* %84, %struct.TYPE_7__** %86, align 8
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %88 = bitcast %struct.TYPE_7__* %87 to i8*
  store i8* %88, i8** @free_particles, align 8
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  store i32 0, i32* %92, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  store float 0.000000e+00, float* %94, align 8
  br label %333

95:                                               ; preds = %60
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @P_SMOKE, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %119, label %101

101:                                              ; preds = %95
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @P_ANIM, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %119, label %107

107:                                              ; preds = %101
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @P_BLEED, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %119, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @P_SMOKE_IMPACT, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %113, %107, %101, %95
  %120 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 5
  %123 = load double, double* %122, align 8
  %124 = fcmp ogt double %120, %123
  br i1 %124, label %125, label %138

125:                                              ; preds = %119
  %126 = load i8*, i8** @free_particles, align 8
  %127 = bitcast i8* %126 to %struct.TYPE_7__*
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 9
  store %struct.TYPE_7__* %127, %struct.TYPE_7__** %129, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %131 = bitcast %struct.TYPE_7__* %130 to i8*
  store i8* %131, i8** @free_particles, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  store i32 0, i32* %133, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 4
  store i32 0, i32* %135, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 1
  store float 0.000000e+00, float* %137, align 8
  br label %333

138:                                              ; preds = %119
  br label %139

139:                                              ; preds = %138, %113
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @P_WEATHER_FLURRY, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %165

145:                                              ; preds = %139
  %146 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 5
  %149 = load double, double* %148, align 8
  %150 = fcmp ogt double %146, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %145
  %152 = load i8*, i8** @free_particles, align 8
  %153 = bitcast i8* %152 to %struct.TYPE_7__*
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 9
  store %struct.TYPE_7__* %153, %struct.TYPE_7__** %155, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %157 = bitcast %struct.TYPE_7__* %156 to i8*
  store i8* %157, i8** @free_particles, align 8
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 3
  store i32 0, i32* %159, align 8
  %160 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 4
  store i32 0, i32* %161, align 4
  %162 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 1
  store float 0.000000e+00, float* %163, align 8
  br label %333

164:                                              ; preds = %145
  br label %165

165:                                              ; preds = %164, %139
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 3
  %168 = load i32, i32* %167, align 8
  %169 = load i32, i32* @P_FLAT_SCALEUP_FADE, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %191

171:                                              ; preds = %165
  %172 = load double, double* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @cg, i32 0, i32 0), align 8
  %173 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %174 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %173, i32 0, i32 5
  %175 = load double, double* %174, align 8
  %176 = fcmp ogt double %172, %175
  br i1 %176, label %177, label %190

177:                                              ; preds = %171
  %178 = load i8*, i8** @free_particles, align 8
  %179 = bitcast i8* %178 to %struct.TYPE_7__*
  %180 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %181 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %180, i32 0, i32 9
  store %struct.TYPE_7__* %179, %struct.TYPE_7__** %181, align 8
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %183 = bitcast %struct.TYPE_7__* %182 to i8*
  store i8* %183, i8** @free_particles, align 8
  %184 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %184, i32 0, i32 3
  store i32 0, i32* %185, align 8
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 4
  store i32 0, i32* %187, align 4
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 1
  store float 0.000000e+00, float* %189, align 8
  br label %333

190:                                              ; preds = %171
  br label %191

191:                                              ; preds = %190, %165
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @P_BAT, align 4
  %196 = icmp eq i32 %194, %195
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @P_SPRITE, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %197, %191
  %204 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 5
  %206 = load double, double* %205, align 8
  %207 = fcmp olt double %206, 0.000000e+00
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %211 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i32 0, i32 6
  %212 = load double*, double** %211, align 8
  %213 = load float, float* %3, align 4
  %214 = call i32 @CG_AddParticleToScene(%struct.TYPE_7__* %209, double* %212, float %213)
  %215 = load i8*, i8** @free_particles, align 8
  %216 = bitcast i8* %215 to %struct.TYPE_7__*
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 9
  store %struct.TYPE_7__* %216, %struct.TYPE_7__** %218, align 8
  %219 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %220 = bitcast %struct.TYPE_7__* %219 to i8*
  store i8* %220, i8** @free_particles, align 8
  %221 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %222 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %221, i32 0, i32 3
  store i32 0, i32* %222, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  store i32 0, i32* %224, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  store float 0.000000e+00, float* %226, align 8
  br label %333

227:                                              ; preds = %203, %197
  %228 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %229 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %228, i32 0, i32 9
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %229, align 8
  %230 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %231 = icmp ne %struct.TYPE_7__* %230, null
  br i1 %231, label %234, label %232

232:                                              ; preds = %227
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %233, %struct.TYPE_7__** %9, align 8
  store %struct.TYPE_7__* %233, %struct.TYPE_7__** %8, align 8
  br label %239

234:                                              ; preds = %227
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 9
  store %struct.TYPE_7__* %235, %struct.TYPE_7__** %237, align 8
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  store %struct.TYPE_7__* %238, %struct.TYPE_7__** %9, align 8
  br label %239

239:                                              ; preds = %234, %232
  %240 = load float, float* %3, align 4
  %241 = fpext float %240 to double
  %242 = fcmp ogt double %241, 1.000000e+00
  br i1 %242, label %243, label %244

243:                                              ; preds = %239
  store float 1.000000e+00, float* %3, align 4
  br label %244

244:                                              ; preds = %243, %239
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %7, align 4
  %248 = load float, float* %4, align 4
  %249 = load float, float* %4, align 4
  %250 = fmul float %248, %249
  store float %250, float* %5, align 4
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 6
  %253 = load double*, double** %252, align 8
  %254 = getelementptr inbounds double, double* %253, i64 0
  %255 = load double, double* %254, align 8
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 7
  %258 = load float*, float** %257, align 8
  %259 = getelementptr inbounds float, float* %258, i64 0
  %260 = load float, float* %259, align 4
  %261 = load float, float* %4, align 4
  %262 = fmul float %260, %261
  %263 = fpext float %262 to double
  %264 = fadd double %255, %263
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 8
  %267 = load float*, float** %266, align 8
  %268 = getelementptr inbounds float, float* %267, i64 0
  %269 = load float, float* %268, align 4
  %270 = load float, float* %5, align 4
  %271 = fmul float %269, %270
  %272 = fpext float %271 to double
  %273 = fadd double %264, %272
  %274 = load double*, double** %6, align 8
  %275 = getelementptr inbounds double, double* %274, i64 0
  store double %273, double* %275, align 8
  %276 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %277 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %276, i32 0, i32 6
  %278 = load double*, double** %277, align 8
  %279 = getelementptr inbounds double, double* %278, i64 1
  %280 = load double, double* %279, align 8
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %282 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i32 0, i32 7
  %283 = load float*, float** %282, align 8
  %284 = getelementptr inbounds float, float* %283, i64 1
  %285 = load float, float* %284, align 4
  %286 = load float, float* %4, align 4
  %287 = fmul float %285, %286
  %288 = fpext float %287 to double
  %289 = fadd double %280, %288
  %290 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %291 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %290, i32 0, i32 8
  %292 = load float*, float** %291, align 8
  %293 = getelementptr inbounds float, float* %292, i64 1
  %294 = load float, float* %293, align 4
  %295 = load float, float* %5, align 4
  %296 = fmul float %294, %295
  %297 = fpext float %296 to double
  %298 = fadd double %289, %297
  %299 = load double*, double** %6, align 8
  %300 = getelementptr inbounds double, double* %299, i64 1
  store double %298, double* %300, align 8
  %301 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %302 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %301, i32 0, i32 6
  %303 = load double*, double** %302, align 8
  %304 = getelementptr inbounds double, double* %303, i64 2
  %305 = load double, double* %304, align 8
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 7
  %308 = load float*, float** %307, align 8
  %309 = getelementptr inbounds float, float* %308, i64 2
  %310 = load float, float* %309, align 4
  %311 = load float, float* %4, align 4
  %312 = fmul float %310, %311
  %313 = fpext float %312 to double
  %314 = fadd double %305, %313
  %315 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 8
  %317 = load float*, float** %316, align 8
  %318 = getelementptr inbounds float, float* %317, i64 2
  %319 = load float, float* %318, align 4
  %320 = load float, float* %5, align 4
  %321 = fmul float %319, %320
  %322 = fpext float %321 to double
  %323 = fadd double %314, %322
  %324 = load double*, double** %6, align 8
  %325 = getelementptr inbounds double, double* %324, i64 2
  store double %323, double* %325, align 8
  %326 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  store i32 %328, i32* %10, align 4
  %329 = load %struct.TYPE_7__*, %struct.TYPE_7__** %1, align 8
  %330 = load double*, double** %6, align 8
  %331 = load float, float* %3, align 4
  %332 = call i32 @CG_AddParticleToScene(%struct.TYPE_7__* %329, double* %330, float %331)
  br label %333

333:                                              ; preds = %244, %208, %177, %151, %125, %82
  %334 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  store %struct.TYPE_7__* %334, %struct.TYPE_7__** %1, align 8
  br label %57

335:                                              ; preds = %57
  %336 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_7__* %336, %struct.TYPE_7__** @active_particles, align 8
  ret void
}

declare dso_local i32 @CG_ClearParticles(...) #1

declare dso_local i32 @VectorCopy(i32, i32) #1

declare dso_local i32 @vectoangles(i32, double*) #1

declare dso_local i32 @AngleVectors(double*, i32, i32, i32) #1

declare dso_local i32 @CG_AddParticleToScene(%struct.TYPE_7__*, double*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
