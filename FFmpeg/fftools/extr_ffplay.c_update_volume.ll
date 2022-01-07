; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_update_volume.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffplay.c_update_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SDL_MIX_MAXVOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i32, double)* @update_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_volume(%struct.TYPE_3__* %0, i32 %1, double %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store double %2, double* %6, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = sitofp i32 %16 to double
  %18 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %19 = sitofp i32 %18 to double
  %20 = fdiv double %17, %19
  %21 = fptosi double %20 to i32
  %22 = call i32 @log(i32 %21)
  %23 = mul nsw i32 20, %22
  %24 = call i32 @log(i32 10)
  %25 = sdiv i32 %23, %24
  %26 = sitofp i32 %25 to double
  br label %28

27:                                               ; preds = %3
  br label %28

28:                                               ; preds = %27, %13
  %29 = phi double [ %26, %13 ], [ -1.000000e+03, %27 ]
  store double %29, double* %7, align 8
  %30 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %31 = load double, double* %7, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sitofp i32 %32 to double
  %34 = load double, double* %6, align 8
  %35 = fmul double %33, %34
  %36 = fadd double %31, %35
  %37 = fdiv double %36, 2.000000e+01
  %38 = call i32 @pow(double 1.000000e+01, double %37)
  %39 = mul nsw i32 %30, %38
  %40 = call i32 @lrint(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %28
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %49, %50
  br label %54

52:                                               ; preds = %28
  %53 = load i32, i32* %8, align 4
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ %51, %46 ], [ %53, %52 ]
  %56 = load i32, i32* @SDL_MIX_MAXVOLUME, align 4
  %57 = call double @av_clip(i32 %55, i32 0, i32 %56)
  %58 = fptosi double %57 to i32
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 4
  ret void
}

declare dso_local i32 @log(i32) #1

declare dso_local i32 @lrint(i32) #1

declare dso_local i32 @pow(double, double) #1

declare dso_local double @av_clip(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
