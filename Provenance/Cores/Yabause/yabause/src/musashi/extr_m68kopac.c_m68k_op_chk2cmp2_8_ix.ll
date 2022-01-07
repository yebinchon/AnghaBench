; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk2cmp2_8_ix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_chk2cmp2_8_ix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_DA = common dso_local global i32* null, align 8
@FLAG_C = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@EXCEPTION_CHK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_chk2cmp2_8_ix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @CPU_TYPE, align 4
  %7 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %75

9:                                                ; preds = %0
  %10 = call i32 (...) @OPER_I_16()
  store i32 %10, i32* %1, align 4
  %11 = load i32*, i32** @REG_DA, align 8
  %12 = load i32, i32* %1, align 4
  %13 = ashr i32 %12, 12
  %14 = and i32 %13, 15
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 255
  store i32 %18, i32* %2, align 4
  %19 = call i32 (...) @EA_AY_IX_8()
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @m68ki_read_8(i32 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @m68ki_read_8(i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @BIT_F(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %9
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @MAKE_INT_8(i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @MAKE_INT_8(i32 %31)
  %33 = sub nsw i32 %30, %32
  store i32 %33, i32* @FLAG_C, align 4
  br label %38

34:                                               ; preds = %9
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* %4, align 4
  %37 = sub nsw i32 %35, %36
  store i32 %37, i32* @FLAG_C, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* %2, align 4
  %41 = icmp eq i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp eq i32 %43, %44
  %46 = zext i1 %45 to i32
  %47 = or i32 %42, %46
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* @FLAG_Z, align 4
  %51 = call i64 (...) @COND_CS()
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %38
  %54 = load i32, i32* %1, align 4
  %55 = call i64 @BIT_B(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %53
  %58 = load i32, i32* @EXCEPTION_CHK, align 4
  %59 = call i32 @m68ki_exception_trap(i32 %58)
  br label %60

60:                                               ; preds = %57, %53
  br label %77

61:                                               ; preds = %38
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %2, align 4
  %64 = sub nsw i32 %62, %63
  store i32 %64, i32* @FLAG_C, align 4
  %65 = call i64 (...) @COND_CS()
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %1, align 4
  %69 = call i64 @BIT_B(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i32, i32* @EXCEPTION_CHK, align 4
  %73 = call i32 @m68ki_exception_trap(i32 %72)
  br label %74

74:                                               ; preds = %71, %67, %61
  br label %77

75:                                               ; preds = %0
  %76 = call i32 (...) @m68ki_exception_illegal()
  br label %77

77:                                               ; preds = %75, %74, %60
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AY_IX_8(...) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @BIT_F(i32) #1

declare dso_local i32 @MAKE_INT_8(i32) #1

declare dso_local i64 @COND_CS(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @m68ki_exception_trap(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
