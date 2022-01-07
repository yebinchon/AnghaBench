; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_set_ram_timing_vals.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/platform/libpicofe/gp2x/extr_soc_mmsp2.c_set_ram_timing_vals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memregs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [18 x i8] c"RAM timings set.\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"RAM timings invalid.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32)* @set_ram_timing_vals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ram_timing_vals(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @TIMING_CHECK(i32 %18, i32 -2, i32 1)
  %20 = load i32, i32* %10, align 4
  %21 = call i32 @TIMING_CHECK(i32 %20, i32 -1, i32 15)
  %22 = load i32, i32* %11, align 4
  %23 = call i32 @TIMING_CHECK(i32 %22, i32 -1, i32 15)
  %24 = load i32, i32* %12, align 4
  %25 = call i32 @TIMING_CHECK(i32 %24, i32 -1, i32 15)
  %26 = load i32, i32* %13, align 4
  %27 = call i32 @TIMING_CHECK(i32 %26, i32 -1, i32 15)
  %28 = load i32, i32* %14, align 4
  %29 = call i32 @TIMING_CHECK(i32 %28, i32 -1, i32 15)
  %30 = load i32, i32* %15, align 4
  %31 = call i32 @TIMING_CHECK(i32 %30, i32 -1, i32 15)
  %32 = load i32, i32* %16, align 4
  %33 = call i32 @TIMING_CHECK(i32 %32, i32 -1, i32 15)
  %34 = call i32 @spend_cycles(i32 1)
  %35 = load i32, i32* %13, align 4
  %36 = and i32 %35, 15
  %37 = shl i32 %36, 12
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, 15
  %40 = shl i32 %39, 8
  %41 = or i32 %37, %40
  %42 = load i32, i32* %15, align 4
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 4
  %45 = or i32 %41, %44
  %46 = load i32, i32* %16, align 4
  %47 = and i32 %46, 15
  %48 = or i32 %45, %47
  %49 = load i32*, i32** @memregs, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 7169
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* %9, align 4
  %52 = and i32 %51, 1
  %53 = shl i32 %52, 12
  %54 = or i32 32768, %53
  %55 = load i32, i32* %10, align 4
  %56 = and i32 %55, 15
  %57 = shl i32 %56, 8
  %58 = or i32 %54, %57
  %59 = load i32, i32* %11, align 4
  %60 = and i32 %59, 15
  %61 = shl i32 %60, 4
  %62 = or i32 %58, %61
  %63 = load i32, i32* %12, align 4
  %64 = and i32 %63, 15
  %65 = or i32 %62, %64
  %66 = load i32*, i32** @memregs, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 7170
  store i32 %65, i32* %67, align 4
  %68 = call i32 @spend_cycles(i32 131072)
  store i32 0, i32* %17, align 4
  br label %69

69:                                               ; preds = %80, %8
  %70 = load i32, i32* %17, align 4
  %71 = icmp slt i32 %70, 8192
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32*, i32** @memregs, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7170
  %75 = load i32, i32* %74, align 4
  %76 = and i32 %75, 32768
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %83

79:                                               ; preds = %72
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %17, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %17, align 4
  br label %69

83:                                               ; preds = %78, %69
  %84 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %88

85:                                               ; No predecessors!
  %86 = load i32, i32* @stderr, align 4
  %87 = call i32 @fprintf(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %88

88:                                               ; preds = %85, %83
  ret void
}

declare dso_local i32 @TIMING_CHECK(i32, i32, i32) #1

declare dso_local i32 @spend_cycles(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
