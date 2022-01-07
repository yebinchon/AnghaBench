; ModuleID = '/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_scales.h_todB.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/oggvorbis/vorbis/extr_scales.h_todB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.anon = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float*)* @todB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @todB(float* %0) #0 {
  %2 = alloca float*, align 8
  %3 = alloca %union.anon, align 4
  store float* %0, float** %2, align 8
  %4 = load float*, float** %2, align 8
  %5 = load float, float* %4, align 4
  %6 = bitcast %union.anon* %3 to float*
  store float %5, float* %6, align 4
  %7 = bitcast %union.anon* %3 to i32*
  %8 = load i32, i32* %7, align 4
  %9 = and i32 %8, 2147483647
  %10 = bitcast %union.anon* %3 to i32*
  store i32 %9, i32* %10, align 4
  %11 = bitcast %union.anon* %3 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = sitofp i32 %12 to float
  %14 = fmul float %13, 0x3EA8151820000000
  %15 = fsub float %14, 0x4087E4EE00000000
  ret float %15
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
