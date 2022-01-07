; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_ParticleSnow.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_ParticleSnow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float, i32, i32, i32, i32, i32*, i32, i32, i64*, i64*, i32, i64, i64, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"CG_ParticleSnow pshader == ZERO!\0A\00", align 1
@free_particles = common dso_local global %struct.TYPE_5__* null, align 8
@active_particles = common dso_local global %struct.TYPE_5__* null, align 8
@cg = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@P_WEATHER_TURBULENT = common dso_local global i32 0, align 4
@P_WEATHER = common dso_local global i32 0, align 4
@qtrue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParticleSnow(i64 %0, i8** %1, i8** %2, i32 %3, float %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_5__*, align 8
  store i64 %0, i64* %7, align 8
  store i8** %1, i8*** %8, align 8
  store i8** %2, i8*** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %6
  %17 = call i32 @CG_Printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %18

18:                                               ; preds = %16, %6
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  br label %177

22:                                               ; preds = %18
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @free_particles, align 8
  store %struct.TYPE_5__* %23, %struct.TYPE_5__** %13, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 15
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** @free_particles, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** @active_particles, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 15
  store %struct.TYPE_5__* %27, %struct.TYPE_5__** %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** @active_particles, align 8
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @cg, i32 0, i32 0), align 4
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 14
  store i32 %31, i32* %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 13
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  store float 0x3FD99999A0000000, float* %37, align 8
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 12
  store i64 0, i64* %39, align 8
  %40 = load i8**, i8*** %8, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 2
  %42 = load i8*, i8** %41, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load i8**, i8*** %9, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 2
  %48 = load i8*, i8** %47, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 11
  store i64 %52, i64* %54, align 8
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 3
  store i32 1, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 4
  store i32 1, i32* %58, align 8
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 5
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  store i32 -50, i32* %62, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %22
  %66 = load i32, i32* @P_WEATHER_TURBULENT, align 4
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 10
  store i32 %66, i32* %68, align 8
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 5
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 2
  store i32 -65, i32* %72, align 4
  br label %77

73:                                               ; preds = %22
  %74 = load i32, i32* @P_WEATHER, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 8
  br label %77

77:                                               ; preds = %73, %65
  %78 = load i8**, i8*** %8, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 9
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @VectorCopy(i8** %78, i64* %81)
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 9
  %85 = load i64*, i64** %84, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 0
  %87 = load i64, i64* %86, align 8
  %88 = sitofp i64 %87 to float
  %89 = call i32 (...) @crandom()
  %90 = sitofp i32 %89 to float
  %91 = load float, float* %11, align 4
  %92 = fmul float %90, %91
  %93 = fadd float %88, %92
  %94 = fptosi float %93 to i64
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 9
  %97 = load i64*, i64** %96, align 8
  %98 = getelementptr inbounds i64, i64* %97, i64 0
  store i64 %94, i64* %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 9
  %101 = load i64*, i64** %100, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64, i64* %102, align 8
  %104 = sitofp i64 %103 to float
  %105 = call i32 (...) @crandom()
  %106 = sitofp i32 %105 to float
  %107 = load float, float* %11, align 4
  %108 = fmul float %106, %107
  %109 = fadd float %104, %108
  %110 = fptosi float %109 to i64
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 9
  %113 = load i64*, i64** %112, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  store i64 %110, i64* %114, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 9
  %117 = load i64*, i64** %116, align 8
  %118 = getelementptr inbounds i64, i64* %117, i64 2
  %119 = load i64, i64* %118, align 8
  %120 = call i32 (...) @crandom()
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = sub nsw i32 %123, %126
  %128 = mul nsw i32 %120, %127
  %129 = sext i32 %128 to i64
  %130 = add nsw i64 %119, %129
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 9
  %133 = load i64*, i64** %132, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  store i64 %130, i64* %134, align 8
  %135 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 5
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 0, i32* %138, align 4
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 5
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  store i32 0, i32* %142, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 8
  %145 = load i64*, i64** %144, align 8
  %146 = getelementptr inbounds i64, i64* %145, i64 2
  store i64 0, i64* %146, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 8
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  store i64 0, i64* %150, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 8
  %153 = load i64*, i64** %152, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 0
  store i64 0, i64* %154, align 8
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %170

157:                                              ; preds = %77
  %158 = call i32 (...) @crandom()
  %159 = mul nsw i32 %158, 16
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 5
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 0
  store i32 %159, i32* %163, align 4
  %164 = call i32 (...) @crandom()
  %165 = mul nsw i32 %164, 16
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 1
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %157, %77
  %171 = load i32, i32* %12, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 6
  store i32 %171, i32* %173, align 8
  %174 = load i32, i32* @qtrue, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %170, %21
  ret void
}

declare dso_local i32 @CG_Printf(i8*) #1

declare dso_local i32 @VectorCopy(i8**, i64*) #1

declare dso_local i32 @crandom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
