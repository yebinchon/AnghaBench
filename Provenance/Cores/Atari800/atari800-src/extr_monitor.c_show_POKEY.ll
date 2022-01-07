; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_POKEY.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_POKEY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [88 x i8] c"AUDF1= %02X    AUDF2= %02X    AUDF3= %02X    AUDF4= %02X    AUDCTL=%02X    KBCODE=%02X\0A\00", align 1
@POKEY_AUDF = common dso_local global i32* null, align 8
@POKEY_CHAN1 = common dso_local global i64 0, align 8
@POKEY_CHAN2 = common dso_local global i64 0, align 8
@POKEY_CHAN3 = common dso_local global i64 0, align 8
@POKEY_CHAN4 = common dso_local global i64 0, align 8
@POKEY_AUDCTL = common dso_local global i32* null, align 8
@POKEY_KBCODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [88 x i8] c"AUDC1= %02X    AUDC2= %02X    AUDC3= %02X    AUDC4= %02X    IRQEN= %02X    IRQST= %02X\0A\00", align 1
@POKEY_AUDC = common dso_local global i32* null, align 8
@POKEY_IRQEN = common dso_local global i32 0, align 4
@POKEY_IRQST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"SKSTAT=%02X    SKCTL= %02X\0A\00", align 1
@POKEY_SKSTAT = common dso_local global i32 0, align 4
@POKEY_SKCTL = common dso_local global i32 0, align 4
@POKEYSND_stereo_enabled = common dso_local global i64 0, align 8
@POKEY_CHIP2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_POKEY to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_POKEY() #0 {
  %1 = load i32*, i32** @POKEY_AUDF, align 8
  %2 = load i64, i64* @POKEY_CHAN1, align 8
  %3 = getelementptr inbounds i32, i32* %1, i64 %2
  %4 = load i32, i32* %3, align 4
  %5 = load i32*, i32** @POKEY_AUDF, align 8
  %6 = load i64, i64* @POKEY_CHAN2, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @POKEY_AUDF, align 8
  %10 = load i64, i64* @POKEY_CHAN3, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = load i32*, i32** @POKEY_AUDF, align 8
  %14 = load i64, i64* @POKEY_CHAN4, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** @POKEY_AUDCTL, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @POKEY_KBCODE, align 4
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0), i32 %4, i32 %8, i32 %12, i32 %16, i32 %19, i32 %20)
  %22 = load i32*, i32** @POKEY_AUDC, align 8
  %23 = load i64, i64* @POKEY_CHAN1, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** @POKEY_AUDC, align 8
  %27 = load i64, i64* @POKEY_CHAN2, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** @POKEY_AUDC, align 8
  %31 = load i64, i64* @POKEY_CHAN3, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** @POKEY_AUDC, align 8
  %35 = load i64, i64* @POKEY_CHAN4, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @POKEY_IRQEN, align 4
  %39 = load i32, i32* @POKEY_IRQST, align 4
  %40 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %29, i32 %33, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @POKEY_SKSTAT, align 4
  %42 = load i32, i32* @POKEY_SKCTL, align 4
  %43 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
