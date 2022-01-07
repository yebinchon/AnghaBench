; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfins_32_d.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfins_32_d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@DY = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bfins_32_d() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = load i32, i32* @CPU_TYPE, align 4
  %8 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %80

10:                                               ; preds = %0
  %11 = call i32 (...) @OPER_I_16()
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = ashr i32 %12, 6
  %14 = and i32 %13, 31
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* %1, align 4
  store i32 %15, i32* %3, align 4
  store i32* @DY, i32** %4, align 8
  %16 = load i32*, i32** @REG_D, align 8
  %17 = load i32, i32* %1, align 4
  %18 = ashr i32 %17, 12
  %19 = and i32 %18, 7
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %16, i64 %20
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %1, align 4
  %24 = call i64 @BIT_B(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %10
  %27 = load i32*, i32** @REG_D, align 8
  %28 = load i32, i32* %2, align 4
  %29 = and i32 %28, 7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %26, %10
  %34 = load i32, i32* %1, align 4
  %35 = call i64 @BIT_5(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load i32*, i32** @REG_D, align 8
  %39 = load i32, i32* %3, align 4
  %40 = and i32 %39, 7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %37, %33
  %45 = load i32, i32* %2, align 4
  %46 = and i32 %45, 31
  store i32 %46, i32* %2, align 4
  %47 = load i32, i32* %3, align 4
  %48 = sub nsw i32 %47, 1
  %49 = and i32 %48, 31
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %3, align 4
  %52 = sub nsw i32 32, %51
  %53 = shl i32 -1, %52
  %54 = call i32 @MASK_OUT_ABOVE_32(i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @ROR_32(i32 %55, i32 %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %3, align 4
  %60 = sub nsw i32 32, %59
  %61 = shl i32 %58, %60
  %62 = call i32 @MASK_OUT_ABOVE_32(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @NFLAG_32(i32 %63)
  store i32 %64, i32* @FLAG_N, align 4
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* @FLAG_Z, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* %2, align 4
  %68 = call i32 @ROR_32(i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %69, i32* @FLAG_V, align 4
  %70 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %70, i32* @FLAG_C, align 4
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, -1
  %73 = load i32*, i32** %4, align 8
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %72
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %4, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  br label %82

80:                                               ; preds = %0
  %81 = call i32 (...) @m68ki_exception_illegal()
  br label %82

82:                                               ; preds = %80, %44
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @ROR_32(i32, i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
