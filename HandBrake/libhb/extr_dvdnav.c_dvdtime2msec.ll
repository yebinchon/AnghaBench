; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_dvdtime2msec.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_dvdnav.c_dvdtime2msec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@__const.dvdtime2msec.frames_per_s = private unnamed_addr constant [4 x double] [double -1.000000e+00, double 2.500000e+01, double -1.000000e+00, double 2.997000e+01], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @dvdtime2msec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dvdtime2msec(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca [4 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %6 = bitcast [4 x double]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x double]* @__const.dvdtime2msec.frames_per_s to i8*), i64 32, i1 false)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, 192
  %11 = ashr i32 %10, 6
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [4 x double], [4 x double]* %3, i64 0, i64 %12
  %14 = load double, double* %13, align 8
  store double %14, double* %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 240
  %19 = ashr i32 %18, 3
  %20 = mul nsw i32 %19, 5
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  %25 = add nsw i32 %20, %24
  %26 = mul nsw i32 %25, 3600000
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %5, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, 240
  %32 = ashr i32 %31, 3
  %33 = mul nsw i32 %32, 5
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, 15
  %38 = add nsw i32 %33, %37
  %39 = mul nsw i32 %38, 60000
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %5, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %5, align 8
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 240
  %47 = ashr i32 %46, 3
  %48 = mul nsw i32 %47, 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = add nsw i32 %48, %52
  %54 = mul nsw i32 %53, 1000
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %5, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %5, align 8
  %58 = load double, double* %4, align 8
  %59 = fcmp ogt double %58, 0.000000e+00
  br i1 %59, label %60, label %80

60:                                               ; preds = %1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = and i32 %63, 48
  %65 = ashr i32 %64, 3
  %66 = mul nsw i32 %65, 5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, 15
  %71 = add nsw i32 %66, %70
  %72 = sitofp i32 %71 to double
  %73 = fmul double %72, 1.000000e+03
  %74 = load double, double* %4, align 8
  %75 = fdiv double %73, %74
  %76 = load i64, i64* %5, align 8
  %77 = sitofp i64 %76 to double
  %78 = fadd double %77, %75
  %79 = fptosi double %78 to i64
  store i64 %79, i64* %5, align 8
  br label %80

80:                                               ; preds = %60, %1
  %81 = load i64, i64* %5, align 8
  %82 = trunc i64 %81 to i32
  ret i32 %82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
