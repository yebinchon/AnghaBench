; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_2xbr.c_eq8.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_filters/extr_2xbr.c_eq8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @eq8(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %10, align 4
  %19 = and i32 %17, %18
  %20 = ashr i32 %19, 16
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %10, align 4
  %23 = and i32 %21, %22
  %24 = ashr i32 %23, 16
  %25 = sub nsw i32 %20, %24
  %26 = call i32 @abs(i32 %25) #3
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %27, %28
  %30 = ashr i32 %29, 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = ashr i32 %33, 8
  %35 = sub nsw i32 %30, %34
  %36 = call i32 @abs(i32 %35) #3
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = and i32 %40, %41
  %43 = sub nsw i32 %39, %42
  %44 = call i32 @abs(i32 %43) #3
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = sitofp i32 %45 to double
  %47 = fmul double 2.990000e-01, %46
  %48 = load i32, i32* %12, align 4
  %49 = sitofp i32 %48 to double
  %50 = fmul double 5.870000e-01, %49
  %51 = fadd double %47, %50
  %52 = load i32, i32* %13, align 4
  %53 = sitofp i32 %52 to double
  %54 = fmul double 1.140000e-01, %53
  %55 = fadd double %51, %54
  %56 = call i32 @fabs(double %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %11, align 4
  %58 = sitofp i32 %57 to double
  %59 = fmul double -1.690000e-01, %58
  %60 = load i32, i32* %12, align 4
  %61 = sitofp i32 %60 to double
  %62 = fmul double 3.310000e-01, %61
  %63 = fsub double %59, %62
  %64 = load i32, i32* %13, align 4
  %65 = sitofp i32 %64 to double
  %66 = fmul double 5.000000e-01, %65
  %67 = fadd double %63, %66
  %68 = call i32 @fabs(double %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sitofp i32 %69 to double
  %71 = fmul double 5.000000e-01, %70
  %72 = load i32, i32* %12, align 4
  %73 = sitofp i32 %72 to double
  %74 = fmul double 4.190000e-01, %73
  %75 = fsub double %71, %74
  %76 = load i32, i32* %13, align 4
  %77 = sitofp i32 %76 to double
  %78 = fmul double 8.100000e-02, %77
  %79 = fsub double %75, %78
  %80 = call i32 @fabs(double %79)
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %14, align 4
  %82 = icmp sge i32 48, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %5
  %84 = load i32, i32* %15, align 4
  %85 = icmp sge i32 7, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %83
  %87 = load i32, i32* %16, align 4
  %88 = icmp sge i32 6, %87
  br label %89

89:                                               ; preds = %86, %83, %5
  %90 = phi i1 [ false, %83 ], [ false, %5 ], [ %88, %86 ]
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 1, i32 0
  ret i32 %92
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @fabs(double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
