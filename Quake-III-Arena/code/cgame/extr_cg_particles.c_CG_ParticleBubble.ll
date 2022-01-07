; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_particles.c_CG_ParticleBubble.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_particles.c_CG_ParticleBubble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, i32, i32, float, float, i32*, i32, i32, i64*, i64*, i32, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CG_ParticleSnow pshader == ZERO!\0A\00", align 1
@free_particles = common dso_local global %struct.TYPE_5__* null, align 8
@active_particles = common dso_local global %struct.TYPE_5__* null, align 8
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@P_BUBBLE_TURBULENT = common dso_local global i32 0, align 4
@P_BUBBLE = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParticleBubble(i64 %0, i8** %1, i8** %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  %14 = alloca float, align 4
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %6
  %18 = call i32 @CG_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %6
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %188

23:                                               ; preds = %19
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %13, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 15
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** @free_particles, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @active_particles, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 15
  store %struct.TYPE_5__* %28, %struct.TYPE_5__** %30, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** @active_particles, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 14
  store i32 %32, i32* %34, align 8
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 13
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store float 0x3FD99999A0000000, float* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 12
  store i64 0, i64* %40, align 8
  %41 = load i8**, i8*** %8, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 2
  %43 = load i8*, i8** %42, align 8
  %44 = ptrtoint i8* %43 to i32
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load i8**, i8*** %9, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 11
  store i64 %53, i64* %55, align 8
  %56 = call i32 (...) @crandom()
  %57 = sitofp i32 %56 to double
  %58 = fmul double %57, 5.000000e-01
  %59 = fadd double 1.000000e+00, %58
  %60 = fptrunc double %59 to float
  store float %60, float* %14, align 4
  %61 = load float, float* %14, align 4
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store float %61, float* %63, align 4
  %64 = load float, float* %14, align 4
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 4
  store float %64, float* %66, align 8
  %67 = call i32 (...) @crandom()
  %68 = mul nsw i32 %67, 10
  %69 = add nsw i32 50, %68
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %69, i32* %73, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %23
  %77 = load i32, i32* @P_BUBBLE_TURBULENT, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 10
  store i32 %77, i32* %79, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 65, i32* %83, align 4
  br label %88

84:                                               ; preds = %23
  %85 = load i32, i32* @P_BUBBLE, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 10
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i8**, i8*** %8, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 9
  %92 = load i64*, i64** %91, align 8
  %93 = call i32 @VectorCopy(i8** %89, i64* %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 9
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 0
  %98 = load i64, i64* %97, align 8
  %99 = sitofp i64 %98 to float
  %100 = call i32 (...) @crandom()
  %101 = sitofp i32 %100 to float
  %102 = load float, float* %11, align 4
  %103 = fmul float %101, %102
  %104 = fadd float %99, %103
  %105 = fptosi float %104 to i64
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 9
  %108 = load i64*, i64** %107, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 0
  store i64 %105, i64* %109, align 8
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 9
  %112 = load i64*, i64** %111, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 1
  %114 = load i64, i64* %113, align 8
  %115 = sitofp i64 %114 to float
  %116 = call i32 (...) @crandom()
  %117 = sitofp i32 %116 to float
  %118 = load float, float* %11, align 4
  %119 = fmul float %117, %118
  %120 = fadd float %115, %119
  %121 = fptosi float %120 to i64
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 9
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 1
  store i64 %121, i64* %125, align 8
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 9
  %128 = load i64*, i64** %127, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 2
  %130 = load i64, i64* %129, align 8
  %131 = call i32 (...) @crandom()
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %134, %137
  %139 = mul nsw i32 %131, %138
  %140 = sext i32 %139 to i64
  %141 = add nsw i64 %130, %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 9
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 2
  store i64 %141, i64* %145, align 8
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 5
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 0, i32* %149, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 5
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 0, i32* %153, align 4
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 8
  %156 = load i64*, i64** %155, align 8
  %157 = getelementptr inbounds i64, i64* %156, i64 2
  store i64 0, i64* %157, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 8
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 1
  store i64 0, i64* %161, align 8
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 8
  %164 = load i64*, i64** %163, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %88
  %169 = call i32 (...) @crandom()
  %170 = mul nsw i32 %169, 4
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 5
  %173 = load i32*, i32** %172, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 0
  store i32 %170, i32* %174, align 4
  %175 = call i32 (...) @crandom()
  %176 = mul nsw i32 %175, 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 5
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  store i32 %176, i32* %180, align 4
  br label %181

181:                                              ; preds = %168, %88
  %182 = load i32, i32* %12, align 4
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 6
  store i32 %182, i32* %184, align 8
  %185 = load i32, i32* @qtrue, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 7
  store i32 %185, i32* %187, align 4
  br label %188

188:                                              ; preds = %181, %22
  ret void
}

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @crandom(...) #1

declare dso_local i32 @VectorCopy(i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
