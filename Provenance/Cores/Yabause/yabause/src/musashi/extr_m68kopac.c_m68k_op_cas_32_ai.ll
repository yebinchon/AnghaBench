; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cas_32_ai.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_cas_32_ai.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_cas_32_ai() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CPU_TYPE, align 4
  %7 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %55

9:                                                ; preds = %0
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = call i32 (...) @EA_AY_AI_32()
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @m68ki_read_32(i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32*, i32** @REG_D, align 8
  %15 = load i32, i32* %1, align 4
  %16 = and i32 %15, 7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %19, %21
  store i32 %22, i32* %5, align 4
  %23 = call i32 (...) @m68ki_trace_t0()
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @NFLAG_32(i32 %24)
  store i32 %25, i32* @FLAG_N, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @MASK_OUT_ABOVE_32(i32 %26)
  store i32 %27, i32* @FLAG_Z, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @VFLAG_SUB_32(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* @FLAG_V, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @CFLAG_SUB_32(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* @FLAG_C, align 4
  %38 = call i64 (...) @COND_NE()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %9
  %41 = load i32, i32* %3, align 4
  %42 = load i32*, i32** %4, align 8
  store i32 %41, i32* %42, align 4
  br label %54

43:                                               ; preds = %9
  %44 = call i32 @USE_CYCLES(i32 3)
  %45 = load i32, i32* %2, align 4
  %46 = load i32*, i32** @REG_D, align 8
  %47 = load i32, i32* %1, align 4
  %48 = ashr i32 %47, 6
  %49 = and i32 %48, 7
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @m68ki_write_32(i32 %45, i32 %52)
  br label %54

54:                                               ; preds = %43, %40
  br label %57

55:                                               ; preds = %0
  %56 = call i32 (...) @m68ki_exception_illegal()
  br label %57

57:                                               ; preds = %55, %54
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AY_AI_32(...) #1

declare dso_local i32 @m68ki_read_32(i32) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @VFLAG_SUB_32(i32, i32, i32) #1

declare dso_local i32 @CFLAG_SUB_32(i32, i32, i32) #1

declare dso_local i64 @COND_NE(...) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @m68ki_write_32(i32, i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
