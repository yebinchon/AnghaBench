; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opCMPM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opCMPM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@EA_POSTINCREMENT = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i64 0, align 8
@current_entry = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opCMPM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opCMPM(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @INSN_GET_REG, align 4
  %10 = load i32, i32* @INSN_GET_SIZE, align 4
  %11 = load i32, i32* @INSN_GET_REG0, align 4
  %12 = load i32, i32* @EA_POSTINCREMENT, align 4
  %13 = shl i32 %12, 3
  %14 = load i32, i32* @reg0, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @EA_POSTINCREMENT, align 4
  %17 = shl i32 %16, 3
  %18 = load i32, i32* @reg, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* @size, align 8
  %23 = call i32 @ea_get(i32* %20, i32 %21, i64 %22, i32 0, i32* %7, i32 1)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i64, i64* @size, align 8
  %27 = call i32 @ea_get(i32* %24, i32 %25, i64 %26, i32 0, i32* %7, i32 2)
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @cc_needed(i32* %28, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i64, i64* @size, align 8
  %32 = load i64, i64* @SIZE_B, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %2
  %35 = load i32, i32* @current_entry, align 4
  %36 = call i32 @JIT_EMIT_SUB_B(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @current_entry, align 4
  %41 = call i32 @JIT_EMIT_SETCC_CMP_B(i32 %40)
  br label %42

42:                                               ; preds = %39, %34
  br label %66

43:                                               ; preds = %2
  %44 = load i64, i64* @size, align 8
  %45 = load i64, i64* @SIZE_W, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load i32, i32* @current_entry, align 4
  %49 = call i32 @JIT_EMIT_SUB_W(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* @current_entry, align 4
  %54 = call i32 @JIT_EMIT_SETCC_CMP_W(i32 %53)
  br label %55

55:                                               ; preds = %52, %47
  br label %65

56:                                               ; preds = %43
  %57 = load i32, i32* @current_entry, align 4
  %58 = call i32 @JIT_EMIT_SUB_L(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @current_entry, align 4
  %63 = call i32 @JIT_EMIT_SETCC_CMP_L(i32 %62)
  br label %64

64:                                               ; preds = %61, %56
  br label %65

65:                                               ; preds = %64, %55
  br label %66

66:                                               ; preds = %65, %42
  %67 = load i32, i32* @current_entry, align 4
  %68 = load i64, i64* @SIZE_L, align 8
  %69 = icmp ne i64 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 20, i32 12
  %72 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %67, i32 %71)
  ret i32 0
}

declare dso_local i32 @ea_get(i32*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_SUB_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUB_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_CMP_L(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
