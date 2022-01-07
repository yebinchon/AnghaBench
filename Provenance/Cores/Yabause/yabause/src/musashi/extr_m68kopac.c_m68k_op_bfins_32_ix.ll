; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfins_32_ix.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopac.c_m68k_op_bfins_32_ix.c"
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
define dso_local void @m68k_op_bfins_32_ix() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = load i32, i32* @CPU_TYPE, align 4
  %14 = call i64 @CPU_TYPE_IS_EC020_PLUS(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %128

16:                                               ; preds = %0
  %17 = call i32 (...) @OPER_I_16()
  store i32 %17, i32* %1, align 4
  %18 = load i32, i32* %1, align 4
  %19 = ashr i32 %18, 6
  %20 = and i32 %19, 31
  store i32 %20, i32* %2, align 4
  %21 = load i32, i32* %1, align 4
  store i32 %21, i32* %3, align 4
  %22 = load i32*, i32** @REG_D, align 8
  %23 = load i32, i32* %1, align 4
  %24 = ashr i32 %23, 12
  %25 = and i32 %24, 7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %22, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %29 = call i32 (...) @EA_AY_IX_8()
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %1, align 4
  %31 = call i64 @BIT_B(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %16
  %34 = load i32*, i32** @REG_D, align 8
  %35 = load i32, i32* %2, align 4
  %36 = and i32 %35, 7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @MAKE_INT_32(i32 %39)
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %33, %16
  %42 = load i32, i32* %1, align 4
  %43 = call i64 @BIT_5(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %41
  %46 = load i32*, i32** @REG_D, align 8
  %47 = load i32, i32* %3, align 4
  %48 = and i32 %47, 7
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %45, %41
  %53 = load i32, i32* %2, align 4
  %54 = sdiv i32 %53, 8
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %12, align 4
  %57 = load i32, i32* %2, align 4
  %58 = srem i32 %57, 8
  store i32 %58, i32* %2, align 4
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %52
  %62 = load i32, i32* %2, align 4
  %63 = add nsw i32 %62, 8
  store i32 %63, i32* %2, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %61, %52
  %67 = load i32, i32* %3, align 4
  %68 = sub nsw i32 %67, 1
  %69 = and i32 %68, 31
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %3, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sub nsw i32 32, %71
  %73 = shl i32 -1, %72
  %74 = call i32 @MASK_OUT_ABOVE_32(i32 %73)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %2, align 4
  %77 = ashr i32 %75, %76
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* %3, align 4
  %80 = sub nsw i32 32, %79
  %81 = shl i32 %78, %80
  %82 = call i32 @MASK_OUT_ABOVE_32(i32 %81)
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @NFLAG_32(i32 %83)
  store i32 %84, i32* @FLAG_N, align 4
  %85 = load i32, i32* %4, align 4
  store i32 %85, i32* @FLAG_Z, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* %2, align 4
  %88 = ashr i32 %86, %87
  store i32 %88, i32* %5, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @m68ki_read_32(i32 %89)
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* @VFLAG_CLEAR, align 4
  store i32 %91, i32* @FLAG_V, align 4
  %92 = load i32, i32* @CFLAG_CLEAR, align 4
  store i32 %92, i32* @FLAG_C, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %9, align 4
  %96 = xor i32 %95, -1
  %97 = and i32 %94, %96
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @m68ki_write_32(i32 %93, i32 %99)
  %101 = load i32, i32* %3, align 4
  %102 = load i32, i32* %2, align 4
  %103 = add nsw i32 %101, %102
  %104 = icmp sgt i32 %103, 32
  br i1 %104, label %105, label %127

105:                                              ; preds = %66
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @MASK_OUT_ABOVE_8(i32 %106)
  store i32 %107, i32* %11, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @MASK_OUT_ABOVE_8(i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 4
  %112 = call i32 @m68ki_read_8(i32 %111)
  store i32 %112, i32* %10, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @FLAG_Z, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* @FLAG_Z, align 4
  %118 = load i32, i32* %12, align 4
  %119 = add nsw i32 %118, 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* %11, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @m68ki_write_8(i32 %119, i32 %125)
  br label %127

127:                                              ; preds = %105, %66
  br label %130

128:                                              ; preds = %0
  %129 = call i32 (...) @m68ki_exception_illegal()
  br label %130

130:                                              ; preds = %128, %127
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @EA_AY_IX_8(...) #1

declare dso_local i64 @BIT_B(i32) #1

declare dso_local i32 @MAKE_INT_32(i32) #1

declare dso_local i64 @BIT_5(i32) #1

declare dso_local i32 @MASK_OUT_ABOVE_32(i32) #1

declare dso_local i32 @NFLAG_32(i32) #1

declare dso_local i32 @m68ki_read_32(i32) #1

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
