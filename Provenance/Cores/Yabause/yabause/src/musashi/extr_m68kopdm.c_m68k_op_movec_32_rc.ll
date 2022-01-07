; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_movec_32_rc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/musashi/extr_m68kopdm.c_m68k_op_movec_32_rc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TYPE = common dso_local global i32 0, align 4
@FLAG_S = common dso_local global i64 0, align 8
@REG_DA = common dso_local global i32* null, align 8
@REG_SFC = common dso_local global i32 0, align 4
@REG_DFC = common dso_local global i32 0, align 4
@REG_CACR = common dso_local global i32 0, align 4
@REG_USP = common dso_local global i32 0, align 4
@REG_VBR = common dso_local global i32 0, align 4
@REG_CAAR = common dso_local global i32 0, align 4
@FLAG_M = common dso_local global i32 0, align 4
@REG_MSP = common dso_local global i32 0, align 4
@REG_SP = common dso_local global i32 0, align 4
@REG_ISP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @m68k_op_movec_32_rc() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @CPU_TYPE, align 4
  %3 = call i64 @CPU_TYPE_IS_010_PLUS(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %129

5:                                                ; preds = %0
  %6 = load i64, i64* @FLAG_S, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %127

8:                                                ; preds = %5
  %9 = call i32 (...) @OPER_I_16()
  store i32 %9, i32* %1, align 4
  %10 = call i32 (...) @m68ki_trace_t0()
  %11 = load i32, i32* %1, align 4
  %12 = and i32 %11, 4095
  switch i32 %12, label %125 [
    i32 0, label %13
    i32 1, label %22
    i32 2, label %31
    i32 2048, label %45
    i32 2049, label %53
    i32 2050, label %61
    i32 2051, label %75
    i32 2052, label %100
  ]

13:                                               ; preds = %8
  %14 = load i32*, i32** @REG_DA, align 8
  %15 = load i32, i32* %1, align 4
  %16 = ashr i32 %15, 12
  %17 = and i32 %16, 15
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, 7
  store i32 %21, i32* @REG_SFC, align 4
  br label %131

22:                                               ; preds = %8
  %23 = load i32*, i32** @REG_DA, align 8
  %24 = load i32, i32* %1, align 4
  %25 = ashr i32 %24, 12
  %26 = and i32 %25, 15
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 7
  store i32 %30, i32* @REG_DFC, align 4
  br label %131

31:                                               ; preds = %8
  %32 = load i32, i32* @CPU_TYPE, align 4
  %33 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %31
  %36 = load i32*, i32** @REG_DA, align 8
  %37 = load i32, i32* %1, align 4
  %38 = ashr i32 %37, 12
  %39 = and i32 %38, 15
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* @REG_CACR, align 4
  br label %131

43:                                               ; preds = %31
  %44 = call i32 (...) @m68ki_exception_illegal()
  br label %131

45:                                               ; preds = %8
  %46 = load i32*, i32** @REG_DA, align 8
  %47 = load i32, i32* %1, align 4
  %48 = ashr i32 %47, 12
  %49 = and i32 %48, 15
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %46, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* @REG_USP, align 4
  br label %131

53:                                               ; preds = %8
  %54 = load i32*, i32** @REG_DA, align 8
  %55 = load i32, i32* %1, align 4
  %56 = ashr i32 %55, 12
  %57 = and i32 %56, 15
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %54, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* @REG_VBR, align 4
  br label %131

61:                                               ; preds = %8
  %62 = load i32, i32* @CPU_TYPE, align 4
  %63 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32*, i32** @REG_DA, align 8
  %67 = load i32, i32* %1, align 4
  %68 = ashr i32 %67, 12
  %69 = and i32 %68, 15
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %71, align 4
  store i32 %72, i32* @REG_CAAR, align 4
  br label %131

73:                                               ; preds = %61
  %74 = call i32 (...) @m68ki_exception_illegal()
  br label %131

75:                                               ; preds = %8
  %76 = load i32, i32* @CPU_TYPE, align 4
  %77 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %98

79:                                               ; preds = %75
  %80 = load i32, i32* @FLAG_M, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load i32*, i32** @REG_DA, align 8
  %84 = load i32, i32* %1, align 4
  %85 = ashr i32 %84, 12
  %86 = and i32 %85, 15
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* @REG_MSP, align 4
  br label %131

90:                                               ; preds = %79
  %91 = load i32*, i32** @REG_DA, align 8
  %92 = load i32, i32* %1, align 4
  %93 = ashr i32 %92, 12
  %94 = and i32 %93, 15
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  %97 = load i32, i32* %96, align 4
  store i32 %97, i32* @REG_SP, align 4
  br label %131

98:                                               ; preds = %75
  %99 = call i32 (...) @m68ki_exception_illegal()
  br label %131

100:                                              ; preds = %8
  %101 = load i32, i32* @CPU_TYPE, align 4
  %102 = call i32 @CPU_TYPE_IS_EC020_PLUS(i32 %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %123

104:                                              ; preds = %100
  %105 = load i32, i32* @FLAG_M, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %104
  %108 = load i32*, i32** @REG_DA, align 8
  %109 = load i32, i32* %1, align 4
  %110 = ashr i32 %109, 12
  %111 = and i32 %110, 15
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %108, i64 %112
  %114 = load i32, i32* %113, align 4
  store i32 %114, i32* @REG_SP, align 4
  br label %131

115:                                              ; preds = %104
  %116 = load i32*, i32** @REG_DA, align 8
  %117 = load i32, i32* %1, align 4
  %118 = ashr i32 %117, 12
  %119 = and i32 %118, 15
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* @REG_ISP, align 4
  br label %131

123:                                              ; preds = %100
  %124 = call i32 (...) @m68ki_exception_illegal()
  br label %131

125:                                              ; preds = %8
  %126 = call i32 (...) @m68ki_exception_illegal()
  br label %131

127:                                              ; preds = %5
  %128 = call i32 (...) @m68ki_exception_privilege_violation()
  br label %131

129:                                              ; preds = %0
  %130 = call i32 (...) @m68ki_exception_illegal()
  br label %131

131:                                              ; preds = %129, %127, %125, %123, %115, %107, %98, %90, %82, %73, %65, %53, %45, %43, %35, %22, %13
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
