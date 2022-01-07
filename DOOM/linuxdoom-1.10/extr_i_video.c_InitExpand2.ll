; ModuleID = '/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_InitExpand2.c'
source_filename = "/home/carl/AnghaBench/DOOM/linuxdoom-1.10/extr_i_video.c_InitExpand2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { double }

@.str = private unnamed_addr constant [23 x i8] c"building exptable2...\0A\00", align 1
@exptable2 = common dso_local global double* null, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"done.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @InitExpand2() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double*, align 8
  %4 = alloca %union.anon, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %6 = load double*, double** @exptable2, align 8
  store double* %6, double** %3, align 8
  store i32 0, i32* %1, align 4
  br label %7

7:                                                ; preds = %47, %0
  %8 = load i32, i32* %1, align 4
  %9 = icmp slt i32 %8, 256
  br i1 %9, label %10, label %50

10:                                               ; preds = %7
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = shl i32 %12, 8
  %14 = or i32 %11, %13
  %15 = load i32, i32* %1, align 4
  %16 = shl i32 %15, 16
  %17 = or i32 %14, %16
  %18 = load i32, i32* %1, align 4
  %19 = shl i32 %18, 24
  %20 = or i32 %17, %19
  %21 = bitcast %union.anon* %4 to [2 x i32]*
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 0
  store i32 %20, i32* %22, align 8
  store i32 0, i32* %2, align 4
  br label %23

23:                                               ; preds = %43, %10
  %24 = load i32, i32* %2, align 4
  %25 = icmp slt i32 %24, 256
  br i1 %25, label %26, label %46

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %2, align 4
  %29 = shl i32 %28, 8
  %30 = or i32 %27, %29
  %31 = load i32, i32* %2, align 4
  %32 = shl i32 %31, 16
  %33 = or i32 %30, %32
  %34 = load i32, i32* %2, align 4
  %35 = shl i32 %34, 24
  %36 = or i32 %33, %35
  %37 = bitcast %union.anon* %4 to [2 x i32]*
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 1
  store i32 %36, i32* %38, align 4
  %39 = bitcast %union.anon* %4 to double*
  %40 = load double, double* %39, align 8
  %41 = load double*, double** %3, align 8
  %42 = getelementptr inbounds double, double* %41, i32 1
  store double* %42, double** %3, align 8
  store double %40, double* %41, align 8
  br label %43

43:                                               ; preds = %26
  %44 = load i32, i32* %2, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %2, align 4
  br label %23

46:                                               ; preds = %23
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %1, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %1, align 4
  br label %7

50:                                               ; preds = %7
  %51 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
