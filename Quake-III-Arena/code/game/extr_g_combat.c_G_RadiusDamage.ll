; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_G_RadiusDamage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_combat.c_G_RadiusDamage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64*, i64*, i32 }

@MAX_GENTITIES = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@g_entities = common dso_local global %struct.TYPE_12__* null, align 8
@qtrue = common dso_local global i32 0, align 4
@DAMAGE_RADIUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @G_RadiusDamage(i64* %0, %struct.TYPE_12__* %1, float %2, float %3, %struct.TYPE_12__* %4, i32 %5) #0 {
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i64* %0, i64** %7, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %8, align 8
  store float %2, float* %9, align 4
  store float %3, float* %10, align 4
  store %struct.TYPE_12__* %4, %struct.TYPE_12__** %11, align 8
  store i32 %5, i32* %12, align 4
  %26 = load i32, i32* @MAX_GENTITIES, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %16, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %17, align 8
  %30 = load i32, i32* @qfalse, align 4
  store i32 %30, i32* %25, align 4
  %31 = load float, float* %10, align 4
  %32 = fcmp olt float %31, 1.000000e+00
  br i1 %32, label %33, label %34

33:                                               ; preds = %6
  store float 1.000000e+00, float* %10, align 4
  br label %34

34:                                               ; preds = %33, %6
  store i32 0, i32* %23, align 4
  br label %35

35:                                               ; preds = %65, %34
  %36 = load i32, i32* %23, align 4
  %37 = icmp slt i32 %36, 3
  br i1 %37, label %38, label %68

38:                                               ; preds = %35
  %39 = load i64*, i64** %7, align 8
  %40 = load i32, i32* %23, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i64, i64* %39, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = sitofp i64 %43 to float
  %45 = load float, float* %10, align 4
  %46 = fsub float %44, %45
  %47 = fptosi float %46 to i64
  %48 = load i64*, i64** %19, align 8
  %49 = load i32, i32* %23, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  store i64 %47, i64* %51, align 8
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %23, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = sitofp i64 %56 to float
  %58 = load float, float* %10, align 4
  %59 = fadd float %57, %58
  %60 = fptosi float %59 to i64
  %61 = load i64*, i64** %20, align 8
  %62 = load i32, i32* %23, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  store i64 %60, i64* %64, align 8
  br label %65

65:                                               ; preds = %38
  %66 = load i32, i32* %23, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %23, align 4
  br label %35

68:                                               ; preds = %35
  %69 = load i64*, i64** %19, align 8
  %70 = load i64*, i64** %20, align 8
  %71 = load i32, i32* @MAX_GENTITIES, align 4
  %72 = call i32 @trap_EntitiesInBox(i64* %69, i64* %70, i32* %29, i32 %71)
  store i32 %72, i32* %18, align 4
  store i32 0, i32* %24, align 4
  br label %73

73:                                               ; preds = %227, %68
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %230

77:                                               ; preds = %73
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** @g_entities, align 8
  %79 = load i32, i32* %24, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %29, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i64 %83
  store %struct.TYPE_12__* %84, %struct.TYPE_12__** %15, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %87 = icmp eq %struct.TYPE_12__* %85, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %227

89:                                               ; preds = %77
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %89
  br label %227

95:                                               ; preds = %89
  store i32 0, i32* %23, align 4
  br label %96

96:                                               ; preds = %174, %95
  %97 = load i32, i32* %23, align 4
  %98 = icmp slt i32 %97, 3
  br i1 %98, label %99, label %177

99:                                               ; preds = %96
  %100 = load i64*, i64** %7, align 8
  %101 = load i32, i32* %23, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %100, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %23, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %104, %112
  br i1 %113, label %114, label %133

114:                                              ; preds = %99
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64*, i64** %117, align 8
  %119 = load i32, i32* %23, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %118, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = load i64*, i64** %7, align 8
  %124 = load i32, i32* %23, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %122, %127
  %129 = load i64*, i64** %21, align 8
  %130 = load i32, i32* %23, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i64, i64* %129, i64 %131
  store i64 %128, i64* %132, align 8
  br label %173

133:                                              ; preds = %99
  %134 = load i64*, i64** %7, align 8
  %135 = load i32, i32* %23, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %134, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64*, i64** %141, align 8
  %143 = load i32, i32* %23, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i64, i64* %142, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %138, %146
  br i1 %147, label %148, label %167

148:                                              ; preds = %133
  %149 = load i64*, i64** %7, align 8
  %150 = load i32, i32* %23, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 1
  %157 = load i64*, i64** %156, align 8
  %158 = load i32, i32* %23, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i64, i64* %157, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = sub nsw i64 %153, %161
  %163 = load i64*, i64** %21, align 8
  %164 = load i32, i32* %23, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds i64, i64* %163, i64 %165
  store i64 %162, i64* %166, align 8
  br label %172

167:                                              ; preds = %133
  %168 = load i64*, i64** %21, align 8
  %169 = load i32, i32* %23, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i64, i64* %168, i64 %170
  store i64 0, i64* %171, align 8
  br label %172

172:                                              ; preds = %167, %148
  br label %173

173:                                              ; preds = %172, %114
  br label %174

174:                                              ; preds = %173
  %175 = load i32, i32* %23, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %23, align 4
  br label %96

177:                                              ; preds = %96
  %178 = load i64*, i64** %21, align 8
  %179 = call float @VectorLength(i64* %178)
  store float %179, float* %14, align 4
  %180 = load float, float* %14, align 4
  %181 = load float, float* %10, align 4
  %182 = fcmp oge float %180, %181
  br i1 %182, label %183, label %184

183:                                              ; preds = %177
  br label %227

184:                                              ; preds = %177
  %185 = load float, float* %9, align 4
  %186 = fpext float %185 to double
  %187 = load float, float* %14, align 4
  %188 = load float, float* %10, align 4
  %189 = fdiv float %187, %188
  %190 = fpext float %189 to double
  %191 = fsub double 1.000000e+00, %190
  %192 = fmul double %186, %191
  %193 = fptrunc double %192 to float
  store float %193, float* %13, align 4
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %195 = load i64*, i64** %7, align 8
  %196 = call i64 @CanDamage(%struct.TYPE_12__* %194, i64* %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %226

198:                                              ; preds = %184
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %201 = call i64 @LogAccuracyHit(%struct.TYPE_12__* %199, %struct.TYPE_12__* %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %198
  %204 = load i32, i32* @qtrue, align 4
  store i32 %204, i32* %25, align 4
  br label %205

205:                                              ; preds = %203, %198
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load i64*, i64** %7, align 8
  %211 = load i64*, i64** %22, align 8
  %212 = call i32 @VectorSubtract(i32 %209, i64* %210, i64* %211)
  %213 = load i64*, i64** %22, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 2
  %215 = load i64, i64* %214, align 8
  %216 = add nsw i64 %215, 24
  store i64 %216, i64* %214, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %219 = load i64*, i64** %22, align 8
  %220 = load i64*, i64** %7, align 8
  %221 = load float, float* %13, align 4
  %222 = fptosi float %221 to i32
  %223 = load i32, i32* @DAMAGE_RADIUS, align 4
  %224 = load i32, i32* %12, align 4
  %225 = call i32 @G_Damage(%struct.TYPE_12__* %217, i32* null, %struct.TYPE_12__* %218, i64* %219, i64* %220, i32 %222, i32 %223, i32 %224)
  br label %226

226:                                              ; preds = %205, %184
  br label %227

227:                                              ; preds = %226, %183, %94, %88
  %228 = load i32, i32* %24, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %24, align 4
  br label %73

230:                                              ; preds = %73
  %231 = load i32, i32* %25, align 4
  %232 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %232)
  ret i32 %231
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trap_EntitiesInBox(i64*, i64*, i32*, i32) #2

declare dso_local float @VectorLength(i64*) #2

declare dso_local i64 @CanDamage(%struct.TYPE_12__*, i64*) #2

declare dso_local i64 @LogAccuracyHit(%struct.TYPE_12__*, %struct.TYPE_12__*) #2

declare dso_local i32 @VectorSubtract(i32, i64*, i64*) #2

declare dso_local i32 @G_Damage(%struct.TYPE_12__*, i32*, %struct.TYPE_12__*, i64*, i64*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
