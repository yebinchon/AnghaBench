; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_synthesis_deint_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacpsdsp_template.c_ps_hybrid_synthesis_deint_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ([38 x [64 x i32]]*, [32 x [2 x i32]]*, i32, i32)* @ps_hybrid_synthesis_deint_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ps_hybrid_synthesis_deint_c([38 x [64 x i32]]* %0, [32 x [2 x i32]]* %1, i32 %2, i32 %3) #0 {
  %5 = alloca [38 x [64 x i32]]*, align 8
  %6 = alloca [32 x [2 x i32]]*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store [38 x [64 x i32]]* %0, [38 x [64 x i32]]** %5, align 8
  store [32 x [2 x i32]]* %1, [32 x [2 x i32]]** %6, align 8
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
  %19 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %19, i64 %21
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %22, i64 0, i64 %24
  %26 = getelementptr inbounds [2 x i32], [2 x i32]* %25, i64 0, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %5, align 8
  %29 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %28, i64 0
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %29, i64 0, i64 %31
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [64 x i32], [64 x i32]* %32, i64 0, i64 %34
  store i32 %27, i32* %35, align 4
  %36 = load [32 x [2 x i32]]*, [32 x [2 x i32]]** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %36, i64 %38
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [32 x [2 x i32]], [32 x [2 x i32]]* %39, i64 0, i64 %41
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load [38 x [64 x i32]]*, [38 x [64 x i32]]** %5, align 8
  %46 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %45, i64 1
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [38 x [64 x i32]], [38 x [64 x i32]]* %46, i64 0, i64 %48
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [64 x i32], [64 x i32]* %49, i64 0, i64 %51
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
