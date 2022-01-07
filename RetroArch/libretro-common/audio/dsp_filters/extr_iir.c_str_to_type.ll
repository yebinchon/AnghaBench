; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_str_to_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_iir.c_str_to_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LPF = common dso_local global i32 0, align 4
@HPF = common dso_local global i32 0, align 4
@BPCSGF = common dso_local global i32 0, align 4
@BPZPGF = common dso_local global i32 0, align 4
@APF = common dso_local global i32 0, align 4
@NOTCH = common dso_local global i32 0, align 4
@RIAA_phono = common dso_local global i32 0, align 4
@PEQ = common dso_local global i32 0, align 4
@BBOOST = common dso_local global i32 0, align 4
@LSH = common dso_local global i32 0, align 4
@HSH = common dso_local global i32 0, align 4
@RIAA_CD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @str_to_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @str_to_type(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @LPF, align 4
  %4 = call i32 @CHECK(i32 %3)
  %5 = load i32, i32* @HPF, align 4
  %6 = call i32 @CHECK(i32 %5)
  %7 = load i32, i32* @BPCSGF, align 4
  %8 = call i32 @CHECK(i32 %7)
  %9 = load i32, i32* @BPZPGF, align 4
  %10 = call i32 @CHECK(i32 %9)
  %11 = load i32, i32* @APF, align 4
  %12 = call i32 @CHECK(i32 %11)
  %13 = load i32, i32* @NOTCH, align 4
  %14 = call i32 @CHECK(i32 %13)
  %15 = load i32, i32* @RIAA_phono, align 4
  %16 = call i32 @CHECK(i32 %15)
  %17 = load i32, i32* @PEQ, align 4
  %18 = call i32 @CHECK(i32 %17)
  %19 = load i32, i32* @BBOOST, align 4
  %20 = call i32 @CHECK(i32 %19)
  %21 = load i32, i32* @LSH, align 4
  %22 = call i32 @CHECK(i32 %21)
  %23 = load i32, i32* @HSH, align 4
  %24 = call i32 @CHECK(i32 %23)
  %25 = load i32, i32* @RIAA_CD, align 4
  %26 = call i32 @CHECK(i32 %25)
  %27 = load i32, i32* @LPF, align 4
  ret i32 %27
}

declare dso_local i32 @CHECK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
