; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_get_real_snd_rate.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_pollux.c_pollux_get_real_snd_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregl = common dso_local global i32* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"get_real_snd_rate: bad clk sources: %d %d\0A\00", align 1
@timer_drift = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"adjusted rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"get_real_snd_rate: got bad rate: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pollux_get_real_snd_rate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32*, i32** @memregl, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 14065
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 1
  %12 = and i32 %11, 7
  store i32 %12, i32* %4, align 4
  %13 = load i32*, i32** @memregl, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 14066
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 1
  %17 = and i32 %16, 7
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 7
  br i1 %22, label %23, label %29

23:                                               ; preds = %20, %1
  %24 = load i32, i32* @stderr, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  store i32 %28, i32* %2, align 4
  br label %83

29:                                               ; preds = %20
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32*, i32** @memregl, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 15362
  %35 = load i32, i32* %34, align 4
  br label %40

36:                                               ; preds = %29
  %37 = load i32*, i32** @memregl, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 15361
  %39 = load i32, i32* %38, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i32 [ %35, %32 ], [ %39, %36 ]
  %42 = call i32 @decode_pll(i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32*, i32** @memregl, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 14065
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 4
  %47 = and i32 %46, 63
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %6, align 4
  %51 = sdiv i32 %50, %49
  store i32 %51, i32* %6, align 4
  %52 = load i32*, i32** @memregl, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 14066
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 4
  %56 = and i32 %55, 63
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = sdiv i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sdiv i32 %61, 64
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @timer_drift, align 4
  %65 = mul nsw i32 %63, %64
  %66 = sdiv i32 %65, 1000000
  %67 = load i32, i32* %6, align 4
  %68 = sub nsw i32 %67, %66
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 7000
  br i1 %72, label %76, label %73

73:                                               ; preds = %40
  %74 = load i32, i32* %6, align 4
  %75 = icmp sgt i32 %74, 45100
  br i1 %75, label %76, label %81

76:                                               ; preds = %73, %40
  %77 = load i32, i32* @stderr, align 4
  %78 = load i32, i32* %6, align 4
  %79 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %77, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %3, align 4
  store i32 %80, i32* %2, align 4
  br label %83

81:                                               ; preds = %73
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %81, %76, %23
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #1

declare dso_local i32 @decode_pll(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
