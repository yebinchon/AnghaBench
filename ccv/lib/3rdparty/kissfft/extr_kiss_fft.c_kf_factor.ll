; ModuleID = '/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kf_factor.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/3rdparty/kissfft/extr_kiss_fft.c_kf_factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*)* @kf_factor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kf_factor(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  store i32 4, i32* %5, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to double
  %9 = call i32 @sqrt(double %8)
  %10 = call double @floor(i32 %9)
  store double %10, double* %6, align 8
  br label %11

11:                                               ; preds = %42, %2
  br label %12

12:                                               ; preds = %31, %11
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* %5, align 4
  %15 = srem i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %21 [
    i32 4, label %19
    i32 2, label %20
  ]

19:                                               ; preds = %17
  store i32 2, i32* %5, align 4
  br label %24

20:                                               ; preds = %17
  store i32 3, i32* %5, align 4
  br label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 2
  store i32 %23, i32* %5, align 4
  br label %24

24:                                               ; preds = %21, %20, %19
  %25 = load i32, i32* %5, align 4
  %26 = sitofp i32 %25 to double
  %27 = load double, double* %6, align 8
  %28 = fcmp ogt double %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %29, %24
  br label %12

32:                                               ; preds = %12
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = sdiv i32 %34, %33
  store i32 %35, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %4, align 8
  store i32 %36, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %4, align 8
  store i32 %39, i32* %40, align 4
  br label %42

42:                                               ; preds = %32
  %43 = load i32, i32* %3, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %11, label %45

45:                                               ; preds = %42
  ret void
}

declare dso_local double @floor(i32) #1

declare dso_local i32 @sqrt(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
