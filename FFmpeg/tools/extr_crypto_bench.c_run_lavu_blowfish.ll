; ModuleID = '/home/carl/AnghaBench/FFmpeg/tools/extr_crypto_bench.c_run_lavu_blowfish.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tools/extr_crypto_bench.c_run_lavu_blowfish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVBlowfish = type { i32 }

@run_lavu_blowfish.blowfish = internal global %struct.AVBlowfish* null, align 8
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@hardcoded_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32)* @run_lavu_blowfish to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_lavu_blowfish(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.AVBlowfish*, %struct.AVBlowfish** @run_lavu_blowfish.blowfish, align 8
  %8 = icmp ne %struct.AVBlowfish* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = call %struct.AVBlowfish* (...) @av_blowfish_alloc()
  store %struct.AVBlowfish* %10, %struct.AVBlowfish** @run_lavu_blowfish.blowfish, align 8
  %11 = icmp ne %struct.AVBlowfish* %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %9
  %13 = call i32 @fatal_error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %9, %3
  %15 = load %struct.AVBlowfish*, %struct.AVBlowfish** @run_lavu_blowfish.blowfish, align 8
  %16 = load i32, i32* @hardcoded_key, align 4
  %17 = call i32 @av_blowfish_init(%struct.AVBlowfish* %15, i32 %16, i32 16)
  %18 = load %struct.AVBlowfish*, %struct.AVBlowfish** @run_lavu_blowfish.blowfish, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %6, align 4
  %22 = lshr i32 %21, 3
  %23 = call i32 @av_blowfish_crypt(%struct.AVBlowfish* %18, i32* %19, i32* %20, i32 %22, i32* null, i32 0)
  ret void
}

declare dso_local %struct.AVBlowfish* @av_blowfish_alloc(...) #1

declare dso_local i32 @fatal_error(i8*) #1

declare dso_local i32 @av_blowfish_init(%struct.AVBlowfish*, i32, i32) #1

declare dso_local i32 @av_blowfish_crypt(%struct.AVBlowfish*, i32*, i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
