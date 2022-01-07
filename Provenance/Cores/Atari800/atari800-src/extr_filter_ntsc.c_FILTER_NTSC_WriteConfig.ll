; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_WriteConfig.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_filter_ntsc.c_FILTER_NTSC_WriteConfig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { double, double, double, double, double, double }

@.str = private unnamed_addr constant [26 x i8] c"FILTER_NTSC_SHARPNESS=%g\0A\00", align 1
@FILTER_NTSC_setup = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"FILTER_NTSC_RESOLUTION=%g\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"FILTER_NTSC_ARTIFACTS=%g\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FILTER_NTSC_FRINGING=%g\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"FILTER_NTSC_BLEED=%g\0A\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"FILTER_NTSC_BURST_PHASE=%g\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FILTER_NTSC_WriteConfig(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 0), align 8
  %5 = call i32 @fprintf(i32* %3, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), double %4)
  %6 = load i32*, i32** %2, align 8
  %7 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 1), align 8
  %8 = call i32 @fprintf(i32* %6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), double %7)
  %9 = load i32*, i32** %2, align 8
  %10 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 2), align 8
  %11 = call i32 @fprintf(i32* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), double %10)
  %12 = load i32*, i32** %2, align 8
  %13 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 3), align 8
  %14 = call i32 @fprintf(i32* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), double %13)
  %15 = load i32*, i32** %2, align 8
  %16 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 4), align 8
  %17 = call i32 @fprintf(i32* %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), double %16)
  %18 = load i32*, i32** %2, align 8
  %19 = load double, double* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @FILTER_NTSC_setup, i32 0, i32 5), align 8
  %20 = call i32 @fprintf(i32* %18, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), double %19)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
