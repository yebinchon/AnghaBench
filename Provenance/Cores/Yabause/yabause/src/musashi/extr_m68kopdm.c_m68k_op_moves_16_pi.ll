; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_moves_16_pi.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_moves_16_pi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@FLAG_S = common dso_local global i64 0, align 8
@REG_DFC = common dso_local global i32 0, align 4
@REG_DA = common dso_local global i32* null, align 8
@REG_SFC = common dso_local global i32 0, align 4
@REG_A = common dso_local global i32* null, align 8
@REG_D = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_moves_16_pi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CPU_TYPE, align 4
  %4 = call i64 @CPU_TYPE_IS_010_PLUS(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %76

6:                                                ; preds = %0
  %7 = load i64, i64* @FLAG_S, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %74

9:                                                ; preds = %6
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = call i32 (...) @EA_AY_PI_16()
  store i32 %11, i32* %2, align 4
  %12 = call i32 (...) @m68ki_trace_t0()
  %13 = load i32, i32* %1, align 4
  %14 = call i64 @BIT_B(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %9
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @REG_DFC, align 4
  %19 = load i32*, i32** @REG_DA, align 8
  %20 = load i32, i32* %1, align 4
  %21 = ashr i32 %20, 12
  %22 = and i32 %21, 15
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %19, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MASK_OUT_ABOVE_16(i32 %25)
  %27 = call i32 @m68ki_write_16_fc(i32 %17, i32 %18, i32 %26)
  br label %78

28:                                               ; preds = %9
  %29 = load i32, i32* %1, align 4
  %30 = call i64 @BIT_F(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %49

32:                                               ; preds = %28
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @REG_SFC, align 4
  %35 = call i32 @m68ki_read_16_fc(i32 %33, i32 %34)
  %36 = call i32 @MAKE_INT_16(i32 %35)
  %37 = load i32*, i32** @REG_A, align 8
  %38 = load i32, i32* %1, align 4
  %39 = ashr i32 %38, 12
  %40 = and i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %37, i64 %41
  store i32 %36, i32* %42, align 4
  %43 = load i32, i32* @CPU_TYPE, align 4
  %44 = call i64 @CPU_TYPE_IS_020_VARIANT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %32
  %47 = call i32 @USE_CYCLES(i32 2)
  br label %48

48:                                               ; preds = %46, %32
  br label %78

49:                                               ; preds = %28
  %50 = load i32*, i32** @REG_D, align 8
  %51 = load i32, i32* %1, align 4
  %52 = ashr i32 %51, 12
  %53 = and i32 %52, 7
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @MASK_OUT_BELOW_16(i32 %56)
  %58 = load i32, i32* %2, align 4
  %59 = load i32, i32* @REG_SFC, align 4
  %60 = call i32 @m68ki_read_16_fc(i32 %58, i32 %59)
  %61 = or i32 %57, %60
  %62 = load i32*, i32** @REG_D, align 8
  %63 = load i32, i32* %1, align 4
  %64 = ashr i32 %63, 12
  %65 = and i32 %64, 7
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %62, i64 %66
  store i32 %61, i32* %67, align 4
  %68 = load i32, i32* @CPU_TYPE, align 4
  %69 = call i64 @CPU_TYPE_IS_020_VARIANT(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %49
  %72 = call i32 @USE_CYCLES(i32 2)
  br label %73

73:                                               ; preds = %71, %49
  br label %78

74:                                               ; preds = %6
  %75 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %78

76:                                               ; preds = %0
  %77 = call i32 (...) @m68ki_exception_illegal()
  br label %78

78:                                               ; preds = %76, %74, %73, %48, %16
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_010_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AY_PI_16(...) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @m68ki_write_16_fc(i32, i32, i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_16(i32) #1

declare dso_local i64 @BIT_F(i32) #1

declare dso_local i32 @MAKE_INT_16(i32) #1

declare dso_local i32 @m68ki_read_16_fc(i32, i32) #1

declare dso_local i64 @CPU_TYPE_IS_020_VARIANT(i32) #1

declare dso_local i32 @USE_CYCLES(i32) #1

declare dso_local i32 @MASK_OUT_BELOW_16(i32) #1

declare dso_local i32 @m68ki_exception_privilege_violation(...) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
