; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_set_gain.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/sound/extr_sn76496.c_SN76496_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SN76496 = type { i32* }

@MAX_OUTPUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SN76496*, i32)* @SN76496_set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SN76496_set_gain(%struct.SN76496* %0, i32 %1) #0 {
  %3 = alloca %struct.SN76496*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store %struct.SN76496* %0, %struct.SN76496** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 255
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* @MAX_OUTPUT, align 4
  %10 = sdiv i32 %9, 3
  %11 = sitofp i32 %10 to double
  store double %11, double* %6, align 8
  br label %12

12:                                               ; preds = %16, %2
  %13 = load i32, i32* %4, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %4, align 4
  %15 = icmp sgt i32 %13, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load double, double* %6, align 8
  %18 = fmul double %17, 0x3FF05F6878EDDB18
  store double %18, double* %6, align 8
  br label %12

19:                                               ; preds = %12
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %50, %19
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 15
  br i1 %22, label %23, label %53

23:                                               ; preds = %20
  %24 = load double, double* %6, align 8
  %25 = load i32, i32* @MAX_OUTPUT, align 4
  %26 = sdiv i32 %25, 3
  %27 = sitofp i32 %26 to double
  %28 = fcmp ogt double %24, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load i32, i32* @MAX_OUTPUT, align 4
  %31 = sdiv i32 %30, 3
  %32 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %33 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %31, i32* %37, align 4
  br label %47

38:                                               ; preds = %23
  %39 = load double, double* %6, align 8
  %40 = fptosi double %39 to i32
  %41 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %42 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %40, i32* %46, align 4
  br label %47

47:                                               ; preds = %38, %29
  %48 = load double, double* %6, align 8
  %49 = fdiv double %48, 0x3FF4248EF90A4B10
  store double %49, double* %6, align 8
  br label %50

50:                                               ; preds = %47
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %20

53:                                               ; preds = %20
  %54 = load %struct.SN76496*, %struct.SN76496** %3, align 8
  %55 = getelementptr inbounds %struct.SN76496, %struct.SN76496* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 15
  store i32 0, i32* %57, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
