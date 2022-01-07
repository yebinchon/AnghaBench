; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTimer.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/cgame/extr_cg_draw.c_CG_DrawTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@cg = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@cgs = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@.str = private unnamed_addr constant [8 x i8] c"%i:%i%i\00", align 1
@BIGCHAR_WIDTH = common dso_local global i32 0, align 4
@BIGCHAR_HEIGHT = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float)* @CG_DrawTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @CG_DrawTimer(float %0) #0 {
  %2 = alloca float, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store float %0, float* %2, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cg, i32 0, i32 0), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @cgs, i32 0, i32 0), align 4
  %11 = sub nsw i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = sdiv i32 %12, 1000
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sdiv i32 %14, 60
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = mul nsw i32 %16, 60
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %18, %17
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 10
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = mul nsw i32 %22, 10
  %24 = load i32, i32* %6, align 4
  %25 = sub nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i8* @va(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = call i32 @CG_DrawStrlen(i8* %30)
  %32 = load i32, i32* @BIGCHAR_WIDTH, align 4
  %33 = mul nsw i32 %31, %32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = sub nsw i32 635, %34
  %36 = load float, float* %2, align 4
  %37 = fadd float %36, 2.000000e+00
  %38 = load i8*, i8** %3, align 8
  %39 = call i32 @CG_DrawBigString(i32 %35, float %37, i8* %38, float 1.000000e+00)
  %40 = load float, float* %2, align 4
  %41 = load float, float* @BIGCHAR_HEIGHT, align 4
  %42 = fadd float %40, %41
  %43 = fadd float %42, 4.000000e+00
  ret float %43
}

declare dso_local i8* @va(i8*, i32, i32, i32) #1

declare dso_local i32 @CG_DrawStrlen(i8*) #1

declare dso_local i32 @CG_DrawBigString(i32, float, i8*, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
