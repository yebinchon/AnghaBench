; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_gouraudLineSetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_vidsoft.c_gouraudLineSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@leftColumnColor = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double*, i32, i64, i32, %struct.TYPE_5__*, i32*, i32*, i32*, i32*)* @gouraudLineSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gouraudLineSetup(double* %0, double* %1, double* %2, i32 %3, i64 %4, i32 %5, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %6, i32* %7, i32* %8, i32* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca { i64, i32 }, align 4
  %14 = alloca double*, align 8
  %15 = alloca double*, align 8
  %16 = alloca double*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 0
  store i64 %4, i64* %22, align 4
  %23 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %13, i32 0, i32 1
  store i32 %5, i32* %23, align 4
  %24 = bitcast %struct.TYPE_5__* %12 to i8*
  %25 = bitcast { i64, i32 }* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  store double* %0, double** %14, align 8
  store double* %1, double** %15, align 8
  store double* %2, double** %16, align 8
  store i32 %3, i32* %17, align 4
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  store i32* %10, i32** %21, align 8
  %26 = load i32*, i32** %18, align 8
  %27 = load i32*, i32** %19, align 8
  %28 = load i32*, i32** %20, align 8
  %29 = call i32 @gouraudTable(i32* %26, i32* %27, i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %17, align 4
  %35 = call double @interpolate(i32 %31, i32 %33, i32 %34)
  %36 = load double*, double** %14, align 8
  store double %35, double* %36, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %17, align 4
  %42 = call double @interpolate(i32 %38, i32 %40, i32 %41)
  %43 = load double*, double** %15, align 8
  store double %42, double* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %17, align 4
  %49 = call double @interpolate(i32 %45, i32 %47, i32 %48)
  %50 = load double*, double** %16, align 8
  store double %49, double* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 2), align 4
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 1), align 4
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gouraudTable(i32*, i32*, i32*) #2

declare dso_local double @interpolate(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
