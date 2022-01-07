; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_history.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_history.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_REMEMBER_PC_STEPS = common dso_local global i32 0, align 4
@CPU_remember_PC = common dso_local global i64* null, align 8
@CPU_remember_PC_curpos = common dso_local global i32 0, align 4
@CPU_remember_xpos = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [9 x i8] c"%3d %3d \00", align 1
@CPU_remember_op = common dso_local global i32** null, align 8
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_history to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_history() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca [3 x i32], align 4
  store i32 0, i32* %1, align 4
  br label %6

6:                                                ; preds = %96, %0
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %99

10:                                               ; preds = %6
  %11 = load i64*, i64** @CPU_remember_PC, align 8
  %12 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %13 = load i32, i32* %1, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %16 = srem i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %11, i64 %17
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %4, align 8
  %20 = load i32*, i32** @CPU_remember_xpos, align 8
  %21 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %22 = load i32, i32* %1, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %25 = srem i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %20, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = ashr i32 %29, 8
  %31 = load i32, i32* %2, align 4
  %32 = and i32 %31, 255
  %33 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %32)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %64, %10
  %35 = load i32, i32* %3, align 4
  %36 = icmp slt i32 %35, 3
  br i1 %36, label %37, label %67

37:                                               ; preds = %34
  %38 = load i64, i64* %4, align 8
  %39 = load i32, i32* %3, align 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %38, %40
  %42 = call i32 @MEMORY_SafeGetByte(i64 %41)
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %44
  store i32 %42, i32* %45, align 4
  %46 = load i64, i64* %4, align 8
  %47 = load i32, i32* %3, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %46, %48
  %50 = load i32**, i32*** @CPU_remember_op, align 8
  %51 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %52 = load i32, i32* %1, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %55 = srem i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %50, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %3, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MEMORY_dPutByte(i64 %49, i32 %62)
  br label %64

64:                                               ; preds = %37
  %65 = load i32, i32* %3, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %3, align 4
  br label %34

67:                                               ; preds = %34
  %68 = load i32, i32* @stdout, align 4
  %69 = load i64*, i64** @CPU_remember_PC, align 8
  %70 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %71 = load i32, i32* %1, align 4
  %72 = add nsw i32 %70, %71
  %73 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %74 = srem i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %69, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = call i32 @show_instruction(i32 %68, i64 %77)
  store i32 0, i32* %3, align 4
  br label %79

79:                                               ; preds = %92, %67
  %80 = load i32, i32* %3, align 4
  %81 = icmp slt i32 %80, 3
  br i1 %81, label %82, label %95

82:                                               ; preds = %79
  %83 = load i64, i64* %4, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %83, %85
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MEMORY_dPutByte(i64 %86, i32 %90)
  br label %92

92:                                               ; preds = %82
  %93 = load i32, i32* %3, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %3, align 4
  br label %79

95:                                               ; preds = %79
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %1, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %1, align 4
  br label %6

99:                                               ; preds = %6
  ret void
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i32 @MEMORY_SafeGetByte(i64) #1

declare dso_local i32 @MEMORY_dPutByte(i64, i32) #1

declare dso_local i32 @show_instruction(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
