; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___dsp_shutdown.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_system.c___dsp_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DSPCR_DSPRESET = common dso_local global i32 0, align 4
@DSPCR_HALT = common dso_local global i32 0, align 4
@_dspReg = common dso_local global i32* null, align 8
@DSPCR_DSPINT = common dso_local global i32 0, align 4
@DSPCR_ARINT = common dso_local global i32 0, align 4
@DSPCR_AIINT = common dso_local global i32 0, align 4
@DSPCR_RES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @__dsp_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__dsp_shutdown() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @DSPCR_DSPRESET, align 4
  %3 = load i32, i32* @DSPCR_HALT, align 4
  %4 = or i32 %2, %3
  %5 = load i32*, i32** @_dspReg, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 5
  store i32 %4, i32* %6, align 4
  %7 = load i32*, i32** @_dspReg, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 27
  %9 = load i32, i32* %8, align 4
  %10 = and i32 %9, -32769
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %17, %0
  %12 = load i32*, i32** @_dspReg, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 5
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, 1024
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %11

18:                                               ; preds = %11
  br label %19

19:                                               ; preds = %25, %18
  %20 = load i32*, i32** @_dspReg, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 5
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 512
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %19

26:                                               ; preds = %19
  %27 = load i32, i32* @DSPCR_DSPRESET, align 4
  %28 = load i32, i32* @DSPCR_DSPINT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DSPCR_ARINT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DSPCR_AIINT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DSPCR_HALT, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** @_dspReg, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 5
  store i32 %35, i32* %37, align 4
  %38 = load i32*, i32** @_dspReg, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %52, %26
  %41 = load i32*, i32** @_dspReg, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @_SHIFTL(i32 %43, i32 16, i32 16)
  %45 = load i32*, i32** @_dspReg, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 65535
  %49 = or i32 %44, %48
  %50 = and i32 %49, -2147483648
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %40
  br label %40

53:                                               ; preds = %40
  %54 = call i32 (...) @gettick()
  store i32 %54, i32* %1, align 4
  br label %55

55:                                               ; preds = %60, %53
  %56 = call i32 (...) @gettick()
  %57 = load i32, i32* %1, align 4
  %58 = sub nsw i32 %56, %57
  %59 = icmp slt i32 %58, 44
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %55

61:                                               ; preds = %55
  %62 = load i32, i32* @DSPCR_RES, align 4
  %63 = load i32*, i32** @_dspReg, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 5
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %74, %61
  %68 = load i32*, i32** @_dspReg, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 5
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DSPCR_RES, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  br label %67

75:                                               ; preds = %67
  ret void
}

declare dso_local i32 @_SHIFTL(i32, i32, i32) #1

declare dso_local i32 @gettick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
