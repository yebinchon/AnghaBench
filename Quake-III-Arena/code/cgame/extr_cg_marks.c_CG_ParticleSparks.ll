; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_ParticleSparks.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_marks.c_CG_ParticleSparks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { float, double, double, double, double, float*, i32*, i32*, i32, i32, i64, i32, i64, i64, i64, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@free_particles = common dso_local global %struct.TYPE_8__* null, align 8
@active_particles = common dso_local global %struct.TYPE_8__* null, align 8
@cg = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@EMISIVEFADE = common dso_local global i32 0, align 4
@cgs = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@P_SMOKE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CG_ParticleSparks(i8** %0, i8** %1, i32 %2, float %3, float %4, float %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %7, align 8
  store i8** %1, i8*** %8, align 8
  store i32 %2, i32* %9, align 4
  store float %3, float* %10, align 4
  store float %4, float* %11, align 4
  store float %5, float* %12, align 4
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** @free_particles, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %6
  br label %166

17:                                               ; preds = %6
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** @free_particles, align 8
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %13, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 15
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** @free_particles, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** @active_particles, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 15
  store %struct.TYPE_8__* %22, %struct.TYPE_8__** %24, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  store %struct.TYPE_8__* %25, %struct.TYPE_8__** @active_particles, align 8
  %26 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 14
  store i64 %26, i64* %28, align 8
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 13
  store i64 %32, i64* %34, align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @cg, i32 0, i32 0), align 8
  %36 = load i32, i32* %9, align 4
  %37 = sdiv i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %35, %38
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 12
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @EMISIVEFADE, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store float 0x3FD99999A0000000, float* %46, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 10
  store i64 0, i64* %48, align 8
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store double 5.000000e-01, double* %50, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 2
  store double 5.000000e-01, double* %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 3
  store double 5.000000e-01, double* %54, align 8
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 4
  store double 5.000000e-01, double* %56, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @cgs, i32 0, i32 0, i32 0), align 4
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 9
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @P_SMOKE, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 8
  store i32 %60, i32* %62, align 8
  %63 = load i8**, i8*** %7, align 8
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 5
  %66 = load float*, float** %65, align 8
  %67 = call i32 @VectorCopy(i8** %63, float* %66)
  %68 = call i32 (...) @crandom()
  %69 = sitofp i32 %68 to float
  %70 = load float, float* %10, align 4
  %71 = fmul float %69, %70
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 5
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 0
  %76 = load float, float* %75, align 4
  %77 = fadd float %76, %71
  store float %77, float* %75, align 4
  %78 = call i32 (...) @crandom()
  %79 = sitofp i32 %78 to float
  %80 = load float, float* %11, align 4
  %81 = fmul float %79, %80
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 5
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 1
  %86 = load float, float* %85, align 4
  %87 = fadd float %86, %81
  store float %87, float* %85, align 4
  %88 = load i8**, i8*** %8, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 0
  %90 = load i8*, i8** %89, align 8
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  store i32 %91, i32* %95, align 4
  %96 = load i8**, i8*** %8, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 6
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 %99, i32* %103, align 4
  %104 = load i8**, i8*** %8, align 8
  %105 = getelementptr inbounds i8*, i8** %104, i64 2
  %106 = load i8*, i8** %105, align 8
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  store i32 %107, i32* %111, align 4
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 7
  %114 = load i32*, i32** %113, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 2
  store i32 0, i32* %115, align 4
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 0, i32* %119, align 4
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 7
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  store i32 0, i32* %123, align 4
  %124 = call i32 (...) @crandom()
  %125 = mul nsw i32 %124, 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 6
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %125
  store i32 %131, i32* %129, align 4
  %132 = call i32 (...) @crandom()
  %133 = mul nsw i32 %132, 4
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, %133
  store i32 %139, i32* %137, align 4
  %140 = call i32 (...) @crandom()
  %141 = mul nsw i32 %140, 10
  %142 = add nsw i32 20, %141
  %143 = sitofp i32 %142 to float
  %144 = load float, float* %12, align 4
  %145 = fmul float %143, %144
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 6
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 2
  %150 = load i32, i32* %149, align 4
  %151 = sitofp i32 %150 to float
  %152 = fadd float %151, %145
  %153 = fptosi float %152 to i32
  store i32 %153, i32* %149, align 4
  %154 = call i32 (...) @crandom()
  %155 = mul nsw i32 %154, 4
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 7
  %158 = load i32*, i32** %157, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %155, i32* %159, align 4
  %160 = call i32 (...) @crandom()
  %161 = mul nsw i32 %160, 4
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 7
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  store i32 %161, i32* %165, align 4
  br label %166

166:                                              ; preds = %17, %16
  ret void
}

declare dso_local i32 @VectorCopy(i8**, float*) #1

declare dso_local i32 @crandom(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
