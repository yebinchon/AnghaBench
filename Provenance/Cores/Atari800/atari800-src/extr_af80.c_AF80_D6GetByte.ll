; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_D6GetByte.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_af80.c_AF80_D6GetByte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@not_enable_2k_character_ram = common dso_local global i32 0, align 4
@not_enable_2k_attribute_ram = common dso_local global i32 0, align 4
@not_enable_crtc_registers = common dso_local global i32 0, align 4
@video_bank_select = common dso_local global i64 0, align 8
@crtreg = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"AF80 Read addr:%4x cpu:%4x\0A\00", align 1
@CPU_remember_PC = common dso_local global i32* null, align 8
@CPU_remember_PC_curpos = common dso_local global i32 0, align 4
@CPU_REMEMBER_PC_STEPS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AF80_D6GetByte(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 255, i32* %5, align 4
  %6 = load i32, i32* @not_enable_2k_character_ram, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @MEMORY_dGetByte(i32 %9)
  store i32 %10, i32* %5, align 4
  br label %54

11:                                               ; preds = %2
  %12 = load i32, i32* @not_enable_2k_attribute_ram, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @MEMORY_dGetByte(i32 %15)
  store i32 %16, i32* %5, align 4
  br label %53

17:                                               ; preds = %11
  %18 = load i32, i32* @not_enable_crtc_registers, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %52, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* @video_bank_select, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %20
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 255
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %39

27:                                               ; preds = %23
  %28 = load i32*, i32** @crtreg, align 8
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 255
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 255
  %36 = icmp eq i32 %35, 58
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 1, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %27
  br label %39

39:                                               ; preds = %38, %23
  %40 = load i32, i32* %3, align 4
  %41 = load i32*, i32** @CPU_remember_PC, align 8
  %42 = load i32, i32* @CPU_remember_PC_curpos, align 4
  %43 = sub nsw i32 %42, 1
  %44 = load i32, i32* @CPU_REMEMBER_PC_STEPS, align 4
  %45 = srem i32 %43, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %41, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %48)
  %50 = call i32 @D(i32 %49)
  br label %51

51:                                               ; preds = %39, %20
  br label %52

52:                                               ; preds = %51, %17
  br label %53

53:                                               ; preds = %52, %14
  br label %54

54:                                               ; preds = %53, %8
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @MEMORY_dGetByte(i32) #1

declare dso_local i32 @D(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
