; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfset_32_aw.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfset_32_aw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@REG_D = common dso_local global i32* null, align 8
@FLAG_N = common dso_local global i32 0, align 4
@FLAG_Z = common dso_local global i32 0, align 4
@VFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_V = common dso_local global i32 0, align 4
@CFLAG_CLEAR = common dso_local global i32 0, align 4
@FLAG_C = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_bfset_32_aw() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i32, i32* @CPU_TYPE, align 4
  %11 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %106

13:                                               ; preds = %0
  %14 = call i32 (...) @OPER_I_16()
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* %1, align 4
  %16 = ashr i32 %15, 6
  %17 = and i32 %16, 31
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %1, align 4
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = call i32 (...) @EA_AW_8()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i64 @BIT_B(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load i32*, i32** @REG_D, align 8
  %25 = load i32, i32* %2, align 4
  %26 = and i32 %25, 7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @MAKE_INT_32(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %23, %13
  %32 = load i32, i32* %1, align 4
  %33 = call i64 @BIT_5(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %31
  %36 = load i32*, i32** @REG_D, align 8
  %37 = load i32, i32* %3, align 4
  %38 = and i32 %37, 7
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %35, %31
  %43 = load i32, i32* %2, align 4
  %44 = sdiv i32 %43, 8
  %45 = load i32, i32* %9, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %2, align 4
  %48 = srem i32 %47, 8
  store i32 %48, i32* %2, align 4
  %49 = load i32, i32* %2, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %42
  %52 = load i32, i32* %2, align 4
  %53 = add nsw i32 %52, 8
  store i32 %53, i32* %2, align 4
  %54 = load i32, i32* %9, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %51, %42
  %57 = load i32, i32* %3, align 4
  %58 = sub nsw i32 %57, 1
  %59 = and i32 %58, 31
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %3, align 4
  %61 = load i32, i32* %3, align 4
  %62 = sub nsw i32 32, %61
  %63 = shl i32 -1, %62
  %64 = call i32 @MASK_OUT_ABOVE_32(i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %2, align 4
  %67 = ashr i32 %65, %66
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @m68ki_read_32(i32 %68)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* %2, align 4
  %72 = shl i32 %70, %71
  %73 = call i32 @NFLAG_32(i32 %72)
  store i32 %73, i32* @FLAG_N, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %74, %75
  store i32 %76, i32* @FLAG_Z, align 4
  %77 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %77, i32* @FLAG_V, align 4
  %78 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %78, i32* @FLAG_C, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = or i32 %80, %81
  %83 = call i32 @m68ki_write_32(i32 %79, i32 %82)
  %84 = load i32, i32* %3, align 4
  %85 = load i32, i32* %2, align 4
  %86 = add nsw i32 %84, %85
  %87 = icmp sgt i32 %86, 32
  br i1 %87, label %88, label %105

88:                                               ; preds = %56
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @MASK_OUT_ABOVE_8(i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %9, align 4
  %92 = add nsw i32 %91, 4
  %93 = call i32 @m68ki_read_8(i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @FLAG_Z, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* @FLAG_Z, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 4
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @m68ki_write_8(i32 %100, i32 %103)
  br label %105

105:                                              ; preds = %88, %56
  br label %108

106:                                              ; preds = %0
  %107 = call i32 (...) @m68ki_exception_illegal()
  br label %108

108:                                              ; preds = %106, %105
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AW_8(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @MAKE_INT_32(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @m68ki_read_32(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_write_32(i32, i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_8(i32) #1

declare dso_local i32 @m68ki_read_8(i32) #1

declare dso_local i32 @m68ki_write_8(i32, i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
