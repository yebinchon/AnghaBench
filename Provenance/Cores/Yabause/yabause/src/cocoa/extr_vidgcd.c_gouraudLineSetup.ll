; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_gouraudLineSetup.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/cocoa/extr_vidgcd.c_gouraudLineSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@leftColumnColor = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double*, double*, double*, i32, i64, i32, %struct.TYPE_5__*)* @gouraudLineSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gouraudLineSetup(double* %0, double* %1, double* %2, i32 %3, i64 %4, i32 %5, %struct.TYPE_5__* byval(%struct.TYPE_5__) align 8 %6) #0 {
  %8 = alloca %struct.TYPE_5__, align 4
  %9 = alloca { i64, i32 }, align 4
  %10 = alloca double*, align 8
  %11 = alloca double*, align 8
  %12 = alloca double*, align 8
  %13 = alloca i32, align 4
  %14 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  store i64 %4, i64* %14, align 4
  %15 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  store i32 %5, i32* %15, align 4
  %16 = bitcast %struct.TYPE_5__* %8 to i8*
  %17 = bitcast { i64, i32 }* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 12, i1 false)
  store double* %0, double** %10, align 8
  store double* %1, double** %11, align 8
  store double* %2, double** %12, align 8
  store i32 %3, i32* %13, align 4
  %18 = call i32 (...) @gouraudTable()
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %13, align 4
  %24 = call double @interpolate(i32 %20, i32 %22, i32 %23)
  %25 = load double*, double** %10, align 8
  store double %24, double* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %13, align 4
  %31 = call double @interpolate(i32 %27, i32 %29, i32 %30)
  %32 = load double*, double** %11, align 8
  store double %31, double* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call double @interpolate(i32 %34, i32 %36, i32 %37)
  %39 = load double*, double** %12, align 8
  store double %38, double* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 2), align 4
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 1), align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @leftColumnColor, i32 0, i32 0), align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gouraudTable(...) #2

declare dso_local double @interpolate(i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
