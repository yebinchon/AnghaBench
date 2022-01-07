; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp10i.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_dequant_lsp10i.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dequant_lsp10i.vec_sizes = internal constant [4 x i32] [i32 256, i32 64, i32 32, i32 32], align 16
@dequant_lsp10i.mul_lsf = internal constant [4 x double] [double 0x3F756038004CD903, double 0x3F57F700B541FD00, double 0x3F4F8420174FB4CB, double 0x3F528E5BAAD0129C], align 16
@dequant_lsp10i.base_lsf = internal constant [4 x double] [double 0xC03B963992C8C500, double 0xC01F901083DBC233, double 0xC0112513B5BF6A0E, double 0xC01D6494D50EBAAE], align 16
@wmavoice_dq_lsp10i = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, double*)* @dequant_lsp10i to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dequant_lsp10i(i32* %0, double* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca double*, align 8
  %5 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  store double* %1, double** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @get_bits(i32* %6, i32 8)
  %8 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  store i32 %7, i32* %8, align 16
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @get_bits(i32* %9, i32 6)
  %11 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 %10, i32* %11, align 4
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @get_bits(i32* %12, i32 5)
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 2
  store i32 %13, i32* %14, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @get_bits(i32* %15, i32 5)
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %16, i32* %17, align 4
  %18 = load double*, double** %4, align 8
  %19 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %20 = load i32, i32* @wmavoice_dq_lsp10i, align 4
  %21 = call i32 @dequant_lsps(double* %18, i32 10, i32* %19, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @dequant_lsp10i.vec_sizes, i64 0, i64 0), i32 4, i32 %20, double* getelementptr inbounds ([4 x double], [4 x double]* @dequant_lsp10i.mul_lsf, i64 0, i64 0), double* getelementptr inbounds ([4 x double], [4 x double]* @dequant_lsp10i.base_lsf, i64 0, i64 0))
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
