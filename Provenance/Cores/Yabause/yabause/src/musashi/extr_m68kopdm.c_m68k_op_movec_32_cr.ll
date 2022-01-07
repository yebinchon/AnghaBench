; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_movec_32_cr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_movec_32_cr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@FLAG_S = common dso_local global i64 0, align 8
@REG_SFC = common dso_local global i32 0, align 4
@REG_DA = common dso_local global i32* null, align 8
@REG_DFC = common dso_local global i32 0, align 4
@REG_CACR = common dso_local global i32 0, align 4
@REG_USP = common dso_local global i32 0, align 4
@REG_VBR = common dso_local global i32 0, align 4
@REG_CAAR = common dso_local global i32 0, align 4
@FLAG_M = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i32 0, align 4
@REG_MSP = common dso_local global i32 0, align 4
@REG_ISP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_movec_32_cr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CPU_TYPE, align 4
  %3 = call i64 @CPU_TYPE_IS_010_PLUS(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %119

5:                                                ; preds = %0
  %6 = load i64, i64* @FLAG_S, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %117

8:                                                ; preds = %5
  %9 = call i32 (...) @OPER_I_16()
  store i32 %9, i32* %1, align 4
  %10 = call i32 (...) @m68ki_trace_t0()
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, 4095
  switch i32 %12, label %114 [
    i32 0, label %13
    i32 1, label %21
    i32 2, label %29
    i32 2048, label %42
    i32 2049, label %50
    i32 2050, label %58
    i32 2051, label %72
    i32 2052, label %93
  ]

13:                                               ; preds = %8
  %14 = load i32, i32* @REG_SFC, align 4
  %15 = load i32*, i32** @REG_DA, align 8
  %16 = load i32, i32* %1, align 4
  %17 = ashr i32 %16, 12
  %18 = and i32 %17, 15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %15, i64 %19
  store i32 %14, i32* %20, align 4
  br label %121

21:                                               ; preds = %8
  %22 = load i32, i32* @REG_DFC, align 4
  %23 = load i32*, i32** @REG_DA, align 8
  %24 = load i32, i32* %1, align 4
  %25 = ashr i32 %24, 12
  %26 = and i32 %25, 15
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  store i32 %22, i32* %28, align 4
  br label %121

29:                                               ; preds = %8
  %30 = load i32, i32* @CPU_TYPE, align 4
  %31 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %29
  %34 = load i32, i32* @REG_CACR, align 4
  %35 = load i32*, i32** @REG_DA, align 8
  %36 = load i32, i32* %1, align 4
  %37 = ashr i32 %36, 12
  %38 = and i32 %37, 15
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32 %34, i32* %40, align 4
  br label %121

41:                                               ; preds = %29
  br label %121

42:                                               ; preds = %8
  %43 = load i32, i32* @REG_USP, align 4
  %44 = load i32*, i32** @REG_DA, align 8
  %45 = load i32, i32* %1, align 4
  %46 = ashr i32 %45, 12
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  store i32 %43, i32* %49, align 4
  br label %121

50:                                               ; preds = %8
  %51 = load i32, i32* @REG_VBR, align 4
  %52 = load i32*, i32** @REG_DA, align 8
  %53 = load i32, i32* %1, align 4
  %54 = ashr i32 %53, 12
  %55 = and i32 %54, 15
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %52, i64 %56
  store i32 %51, i32* %57, align 4
  br label %121

58:                                               ; preds = %8
  %59 = load i32, i32* @CPU_TYPE, align 4
  %60 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %58
  %63 = load i32, i32* @REG_CAAR, align 4
  %64 = load i32*, i32** @REG_DA, align 8
  %65 = load i32, i32* %1, align 4
  %66 = ashr i32 %65, 12
  %67 = and i32 %66, 15
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  store i32 %63, i32* %69, align 4
  br label %121

70:                                               ; preds = %58
  %71 = call i32 (...) @m68ki_exception_illegal()
  br label %116

72:                                               ; preds = %8
  %73 = load i32, i32* @CPU_TYPE, align 4
  %74 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %73)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* @FLAG_M, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76
  %80 = load i32, i32* @REG_SP, align 4
  br label %83

81:                                               ; preds = %76
  %82 = load i32, i32* @REG_MSP, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load i32*, i32** @REG_DA, align 8
  %86 = load i32, i32* %1, align 4
  %87 = ashr i32 %86, 12
  %88 = and i32 %87, 15
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  store i32 %84, i32* %90, align 4
  br label %121

91:                                               ; preds = %72
  %92 = call i32 (...) @m68ki_exception_illegal()
  br label %121

93:                                               ; preds = %8
  %94 = load i32, i32* @CPU_TYPE, align 4
  %95 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %93
  %98 = load i32, i32* @FLAG_M, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @REG_ISP, align 4
  br label %104

102:                                              ; preds = %97
  %103 = load i32, i32* @REG_SP, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i32 [ %101, %100 ], [ %103, %102 ]
  %106 = load i32*, i32** @REG_DA, align 8
  %107 = load i32, i32* %1, align 4
  %108 = ashr i32 %107, 12
  %109 = and i32 %108, 15
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32 %105, i32* %111, align 4
  br label %121

112:                                              ; preds = %93
  %113 = call i32 (...) @m68ki_exception_illegal()
  br label %121

114:                                              ; preds = %8
  %115 = call i32 (...) @m68ki_exception_illegal()
  br label %121

116:                                              ; preds = %70
  br label %117

117:                                              ; preds = %116, %5
  %118 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %121

119:                                              ; preds = %0
  %120 = call i32 (...) @m68ki_exception_illegal()
  br label %121

121:                                              ; preds = %119, %117, %114, %112, %104, %91, %83, %62, %50, %42, %41, %33, %21, %13
  ret void
}

declare dso_local i64 @CPU_TYPE_IS_010_PLUS(i32) #1

declare dso_local i32 @OPER_I_16(...) #1

declare dso_local i32 @m68ki_trace_t0(...) #1

declare dso_local i32 @CPU_TYPE_IS_EC020_PLUS(i32) #1

declare dso_local i32 @m68ki_exception_illegal(...) #1

declare dso_local i32 @m68ki_exception_privilege_violation(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
