; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_MONITOR_ShowState.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_MONITOR_ShowState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [57 x i8] c"%3d %3d A=%02X X=%02X Y=%02X S=%02X P=%c%c*-%c%c%c%c PC=\00", align 1
@ANTIC_ypos = common dso_local global i32 0, align 4
@ANTIC_XPOS = common dso_local global i32 0, align 4
@CPU_regP = common dso_local global i32 0, align 4
@CPU_D_FLAG = common dso_local global i32 0, align 4
@CPU_I_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @MONITOR_ShowState(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i8 signext %6, i8 signext %7, i8 signext %8, i8 signext %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8, align 1
  %19 = alloca i8, align 1
  %20 = alloca i8, align 1
  store i32* %0, i32** %11, align 8
  store i32 %1, i32* %12, align 4
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8 %6, i8* %17, align 1
  store i8 %7, i8* %18, align 1
  store i8 %8, i8* %19, align 1
  store i8 %9, i8* %20, align 1
  %21 = load i32*, i32** %11, align 8
  %22 = load i32, i32* @ANTIC_ypos, align 4
  %23 = load i32, i32* @ANTIC_XPOS, align 4
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* %16, align 4
  %28 = load i8, i8* %17, align 1
  %29 = load i8, i8* %18, align 1
  %30 = load i32, i32* @CPU_regP, align 4
  %31 = load i32, i32* @CPU_D_FLAG, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 68, i32 45
  %36 = trunc i32 %35 to i8
  %37 = load i32, i32* @CPU_regP, align 4
  %38 = load i32, i32* @CPU_I_FLAG, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 73, i32 45
  %43 = trunc i32 %42 to i8
  %44 = load i8, i8* %19, align 1
  %45 = load i8, i8* %20, align 1
  %46 = call i32 @fprintf(i32* %21, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i8 signext %28, i8 signext %29, i8 signext %36, i8 signext %43, i8 signext %44, i8 signext %45)
  %47 = load i32*, i32** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @show_instruction(i32* %47, i32 %48)
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32, i32, i32, i32, i32, i32, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext, i8 signext) #1

declare dso_local i32 @show_instruction(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
