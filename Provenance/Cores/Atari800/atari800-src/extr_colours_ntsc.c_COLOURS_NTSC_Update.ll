; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_Update.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_colours_ntsc.c_COLOURS_NTSC_Update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@colorburst_angle = common dso_local global i32 0, align 4
@COLOURS_NTSC_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @COLOURS_NTSC_Update(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca [768 x double], align 16
  store i32* %0, i32** %2, align 8
  %4 = getelementptr inbounds [768 x double], [768 x double]* %3, i64 0, i64 0
  %5 = load i32, i32* @colorburst_angle, align 4
  %6 = sub nsw i32 0, %5
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 0), align 4
  %8 = load i32, i32* @M_PI, align 4
  %9 = mul nsw i32 %7, %8
  %10 = add nsw i32 %6, %9
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @COLOURS_NTSC_setup, i32 0, i32 1), align 4
  %12 = call i32 @UpdateYIQTable(double* %4, i32 %10, i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = getelementptr inbounds [768 x double], [768 x double]* %3, i64 0, i64 0
  %15 = call i32 @YIQ2RGB(i32* %13, double* %14)
  ret void
}

declare dso_local i32 @UpdateYIQTable(double*, i32, i32) #1

declare dso_local i32 @YIQ2RGB(i32*, double*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
