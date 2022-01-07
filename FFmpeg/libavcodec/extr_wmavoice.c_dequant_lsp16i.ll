; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp16i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp16i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant_lsp16i.vec_sizes = internal constant [5 x i32] [i32 256, i32 64, i32 128, i32 64, i32 128], align 16
@dequant_lsp16i.mul_lsf = internal constant [5 x double] [double 0x3F6B64CA1E49364F, double 0x3F46E8529950AE9E, double 0x3F6B36071458BAAA, double 0x3F50EECBEA46A8FC, double 0x3F6A21BA1EEF5A47], align 16
@dequant_lsp16i.base_lsf = internal constant [5 x double] [double 0xC03054690DE09353, double 0xC008E0008637BD06, double 0xC03065625A682B63, double 0xC0107314CA925FE9, double 0xC0309DCF893FAF42], align 16
@wmavoice_dq_lsp16i1 = common dso_local global i32 0, align 4
@wmavoice_dq_lsp16i2 = common dso_local global i32 0, align 4
@wmavoice_dq_lsp16i3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*)* @dequant_lsp16i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequant_lsp16i(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca [5 x i32], align 16
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @get_bits(i32* %6, i32 8)
  %8 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 16
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_bits(i32* %9, i32 6)
  %11 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @get_bits(i32* %12, i32 7)
  %14 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  store i32 %13, i32* %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @get_bits(i32* %15, i32 6)
  %17 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @get_bits(i32* %18, i32 7)
  %20 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  store i32 %19, i32* %20, align 16
  %21 = load double*, double** %4, align 8
  %22 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 0
  %23 = load i32, i32* @wmavoice_dq_lsp16i1, align 4
  %24 = call i32 @dequant_lsps(double* %21, i32 5, i32* %22, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dequant_lsp16i.vec_sizes, i64 0, i64 0), i32 2, i32 %23, double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.mul_lsf, i64 0, i64 0), double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.base_lsf, i64 0, i64 0))
  %25 = load double*, double** %4, align 8
  %26 = getelementptr inbounds double, double* %25, i64 5
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 2
  %28 = load i32, i32* @wmavoice_dq_lsp16i2, align 4
  %29 = call i32 @dequant_lsps(double* %26, i32 5, i32* %27, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dequant_lsp16i.vec_sizes, i64 0, i64 2), i32 2, i32 %28, double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.mul_lsf, i64 0, i64 2), double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.base_lsf, i64 0, i64 2))
  %30 = load double*, double** %4, align 8
  %31 = getelementptr inbounds double, double* %30, i64 10
  %32 = getelementptr inbounds [5 x i32], [5 x i32]* %5, i64 0, i64 4
  %33 = load i32, i32* @wmavoice_dq_lsp16i3, align 4
  %34 = call i32 @dequant_lsps(double* %31, i32 6, i32* %32, i32* getelementptr inbounds ([5 x i32], [5 x i32]* @dequant_lsp16i.vec_sizes, i64 0, i64 4), i32 1, i32 %33, double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.mul_lsf, i64 0, i64 4), double* getelementptr inbounds ([5 x double], [5 x double]* @dequant_lsp16i.base_lsf, i64 0, i64 4))
  ret void
}

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @dequant_lsps(double*, i32, i32*, i32*, i32, i32, double*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
