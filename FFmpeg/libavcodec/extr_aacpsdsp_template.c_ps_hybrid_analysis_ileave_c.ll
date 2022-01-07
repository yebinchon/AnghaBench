; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_analysis_ileave_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_analysis_ileave_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([32 x [2 x i32]]*, [38 x [64 x i32]]*, i32, i32)* @ps_hybrid_analysis_ileave_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_hybrid_analysis_ileave_c([32 x [2 x i32]]* %0, [38 x [64 x i32]]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [32 x [2 x i32]]*, align 8
  %6 = alloca [38 x [64 x i32]]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [32 x [2 x i32]]* %0, [32 x [2 x i32]]** %5, align 8
  store [38 x [64 x i32]]* %1, [38 x [64 x i32]]** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  br label %10

10:                                               ; preds = %57, %4
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %11, 64
  br i1 %12, label %13, label %60

13:                                               ; preds = %10
  store i32 0, i32* %9, align 4
  br label %14

14:                                               ; preds = %53, %13
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %56

18:                                               ; preds = %14
  %19 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %6, align 8
  %20 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %19, i64 0
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %20, i64 0, i64 %22
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [64 x i32], [64 x i32]* %23, i64 0, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %28, i64 %30
  %32 = load i32, i32* %9, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %31, i64 0, i64 %33
  %35 = getelementptr inbounds [2 x i32], [2 x i32]* %34, i64 0, i64 0
  store i32 %27, i32* %35, align 4
  %36 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %6, align 8
  %37 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %36, i64 1
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %37, i64 0, i64 %39
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i32], [64 x i32]* %40, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %5, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %45, i64 %47
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %48, i64 0, i64 %50
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i64 0, i64 1
  store i32 %44, i32* %52, align 4
  br label %53

53:                                               ; preds = %18
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %14

56:                                               ; preds = %14
  br label %57

57:                                               ; preds = %56
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %10

60:                                               ; preds = %10
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
