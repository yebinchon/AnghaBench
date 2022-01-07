; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap_opencl.c_get_rgb2rgb_matrix.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_tonemap_opencl.c_get_rgb2rgb_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@primaries_table = common dso_local global i32* null, align 8
@whitepoint_table = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, [3 x double]*)* @get_rgb2rgb_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_rgb2rgb_matrix(i32 %0, i32 %1, [3 x double]* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x double]*, align 8
  %7 = alloca [3 x [3 x double]], align 16
  %8 = alloca [3 x [3 x double]], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store [3 x double]* %2, [3 x double]** %6, align 8
  %9 = load i32*, i32** @primaries_table, align 8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32*, i32** @whitepoint_table, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  %17 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %18 = bitcast [3 x double]* %17 to double**
  %19 = call i32 @ff_fill_rgb2xyz_table(i32* %12, i32* %16, double** %18)
  %20 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %21 = bitcast [3 x double]* %20 to double**
  %22 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %8, i64 0, i64 0
  %23 = bitcast [3 x double]* %22 to double**
  %24 = call i32 @ff_matrix_invert_3x3(double** %21, double** %23)
  %25 = load i32*, i32** @primaries_table, align 8
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32*, i32** @whitepoint_table, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %34 = bitcast [3 x double]* %33 to double**
  %35 = call i32 @ff_fill_rgb2xyz_table(i32* %28, i32* %32, double** %34)
  %36 = load [3 x double]*, [3 x double]** %6, align 8
  %37 = bitcast [3 x double]* %36 to double**
  %38 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %7, i64 0, i64 0
  %39 = bitcast [3 x double]* %38 to double**
  %40 = getelementptr inbounds [3 x [3 x double]], [3 x [3 x double]]* %8, i64 0, i64 0
  %41 = bitcast [3 x double]* %40 to double**
  %42 = call i32 @ff_matrix_mul_3x3(double** %37, double** %39, double** %41)
  ret void
}

declare dso_local i32 @ff_fill_rgb2xyz_table(i32*, i32*, double**) #1

declare dso_local i32 @ff_matrix_invert_3x3(double**, double**) #1

declare dso_local i32 @ff_matrix_mul_3x3(double**, double**, double**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
