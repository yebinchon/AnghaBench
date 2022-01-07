; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_STM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_STM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i64 0, align 8
@EA_INDIRECT = common dso_local global i32 0, align 4
@ACCESS_WRITE = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_STM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_STM(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @EA_MODE(i32 %12)
  %14 = load i64, i64* @EA_DATA_REG, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @op_EXT(i32* %17, i32 %18)
  store i32 %19, i32* %3, align 4
  br label %164

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @IFETCH(i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 64
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* @SIZE_L, align 4
  br label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @SIZE_W, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @EA_MODE(i32 %32)
  %34 = load i64, i64* @EA_ADDRESS_REG, align 8
  %35 = icmp sle i64 %33, %34
  br i1 %35, label %41, label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  %38 = call i64 @EA_MODE(i32 %37)
  %39 = load i64, i64* @EA_POSTINCREMENT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %36, %30
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @op_ill(i32* %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %164

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  %47 = call i64 @EA_MODE(i32 %46)
  %48 = load i64, i64* @EA_PREDECREMENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %56

50:                                               ; preds = %45
  %51 = load i32, i32* @EA_INDIRECT, align 4
  %52 = shl i32 %51, 3
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @EA_REG(i32 %53)
  %55 = or i32 %52, %54
  store i32 %55, i32* %8, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* %5, align 4
  store i32 %57, i32* %8, align 4
  br label %58

58:                                               ; preds = %56, %50
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* @SIZE_W, align 4
  %62 = load i32, i32* @ACCESS_WRITE, align 4
  %63 = call i32 @ea_resolve(i32* %59, i32 %60, i32 %61, i32 %62)
  store i32 %63, i32* %9, align 4
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load i32*, i32** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @op_ill(i32* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  br label %164

70:                                               ; preds = %58
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = load i32, i32* @current_entry, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %77 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %78 = or i32 %76, %77
  %79 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %74, i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %73, %70
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @EA_MODE(i32 %81)
  %83 = load i64, i64* @EA_PREDECREMENT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %125

85:                                               ; preds = %80
  store i32 15, i32* %10, align 4
  br label %86

86:                                               ; preds = %113, %85
  %87 = load i32, i32* %10, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %118

89:                                               ; preds = %86
  %90 = load i32, i32* %6, align 4
  %91 = and i32 %90, 1
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %112

93:                                               ; preds = %89
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @SIZE_W, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32, i32* @current_entry, align 4
  %99 = load i32, i32* %10, align 4
  %100 = mul nsw i32 %99, 4
  %101 = call i32 @JIT_EMIT_STORE_DEC_W(i32 %98, i32 %100)
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 4
  store i32 %103, i32* %9, align 4
  br label %111

104:                                              ; preds = %93
  %105 = load i32, i32* @current_entry, align 4
  %106 = load i32, i32* %10, align 4
  %107 = mul nsw i32 %106, 4
  %108 = call i32 @JIT_EMIT_STORE_DEC_L(i32 %105, i32 %107)
  %109 = load i32, i32* %9, align 4
  %110 = add nsw i32 %109, 8
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %104, %97
  br label %112

112:                                              ; preds = %111, %89
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %10, align 4
  %116 = load i32, i32* %6, align 4
  %117 = lshr i32 %116, 1
  store i32 %117, i32* %6, align 4
  br label %86

118:                                              ; preds = %86
  %119 = load i32, i32* @current_entry, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 @EA_REG(i32 %120)
  %122 = add nsw i32 8, %121
  %123 = mul nsw i32 %122, 4
  %124 = call i32 @JIT_EMIT_MOVEM_WRITEBACK(i32 %119, i32 %123)
  br label %159

125:                                              ; preds = %80
  store i32 0, i32* %11, align 4
  br label %126

126:                                              ; preds = %153, %125
  %127 = load i32, i32* %11, align 4
  %128 = icmp slt i32 %127, 16
  br i1 %128, label %129, label %158

129:                                              ; preds = %126
  %130 = load i32, i32* %6, align 4
  %131 = and i32 %130, 1
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @SIZE_W, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %144

137:                                              ; preds = %133
  %138 = load i32, i32* @current_entry, align 4
  %139 = load i32, i32* %11, align 4
  %140 = mul nsw i32 %139, 4
  %141 = call i32 @JIT_EMIT_STORE_INC_W(i32 %138, i32 %140)
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 4
  store i32 %143, i32* %9, align 4
  br label %151

144:                                              ; preds = %133
  %145 = load i32, i32* @current_entry, align 4
  %146 = load i32, i32* %11, align 4
  %147 = mul nsw i32 %146, 4
  %148 = call i32 @JIT_EMIT_STORE_INC_L(i32 %145, i32 %147)
  %149 = load i32, i32* %9, align 4
  %150 = add nsw i32 %149, 8
  store i32 %150, i32* %9, align 4
  br label %151

151:                                              ; preds = %144, %137
  br label %152

152:                                              ; preds = %151, %129
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* %11, align 4
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %11, align 4
  %156 = load i32, i32* %6, align 4
  %157 = lshr i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %126

158:                                              ; preds = %126
  br label %159

159:                                              ; preds = %158, %118
  %160 = load i32, i32* @current_entry, align 4
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 4, %161
  %163 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %160, i32 %162)
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %159, %66, %41, %16
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_EXT(i32*, i32) #1

declare dso_local i32 @IFETCH(i32*) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_STORE_DEC_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_STORE_DEC_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_MOVEM_WRITEBACK(i32, i32) #1

declare dso_local i32 @JIT_EMIT_STORE_INC_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_STORE_INC_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
