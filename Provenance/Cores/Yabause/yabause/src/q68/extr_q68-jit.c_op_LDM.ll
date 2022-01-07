; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_LDM.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_LDM.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@EA_PREDECREMENT = common dso_local global i64 0, align 8
@EA_POSTINCREMENT = common dso_local global i64 0, align 8
@EA_INDIRECT = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_LDM to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_LDM(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @IFETCH(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 64
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @SIZE_L, align 4
  br label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @SIZE_W, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @EA_MODE(i32 %22)
  %24 = load i64, i64* @EA_ADDRESS_REG, align 8
  %25 = icmp sle i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @EA_MODE(i32 %27)
  %29 = load i64, i64* @EA_PREDECREMENT, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %26, %20
  %32 = load i32*, i32** %4, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @op_ill(i32* %32, i32 %33)
  store i32 %34, i32* %3, align 4
  br label %129

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = call i64 @EA_MODE(i32 %36)
  %38 = load i64, i64* @EA_POSTINCREMENT, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35
  %41 = load i32, i32* @EA_INDIRECT, align 4
  %42 = shl i32 %41, 3
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @EA_REG(i32 %43)
  %45 = or i32 %42, %44
  store i32 %45, i32* %8, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* %5, align 4
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %46, %40
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @SIZE_W, align 4
  %52 = load i32, i32* @ACCESS_READ, align 4
  %53 = call i32 @ea_resolve(i32* %49, i32 %50, i32 %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @op_ill(i32* %57, i32 %58)
  store i32 %59, i32* %3, align 4
  br label %129

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @current_entry, align 4
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %67 = load i32, i32* @FAULT_STATUS_RW_READ, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %64, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %63, %60
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %107, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp slt i32 %72, 16
  br i1 %73, label %74, label %112

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, 1
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %106

78:                                               ; preds = %74
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @SIZE_W, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %98

82:                                               ; preds = %78
  %83 = load i32, i32* %10, align 4
  %84 = icmp slt i32 %83, 8
  br i1 %84, label %85, label %90

85:                                               ; preds = %82
  %86 = load i32, i32* @current_entry, align 4
  %87 = load i32, i32* %10, align 4
  %88 = mul nsw i32 %87, 4
  %89 = call i32 @JIT_EMIT_LOAD_INC_W(i32 %86, i32 %88)
  br label %95

90:                                               ; preds = %82
  %91 = load i32, i32* @current_entry, align 4
  %92 = load i32, i32* %10, align 4
  %93 = mul nsw i32 %92, 4
  %94 = call i32 @JIT_EMIT_LOADA_INC_W(i32 %91, i32 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 4
  store i32 %97, i32* %9, align 4
  br label %105

98:                                               ; preds = %78
  %99 = load i32, i32* @current_entry, align 4
  %100 = load i32, i32* %10, align 4
  %101 = mul nsw i32 %100, 4
  %102 = call i32 @JIT_EMIT_LOAD_INC_L(i32 %99, i32 %101)
  %103 = load i32, i32* %9, align 4
  %104 = add nsw i32 %103, 8
  store i32 %104, i32* %9, align 4
  br label %105

105:                                              ; preds = %98, %95
  br label %106

106:                                              ; preds = %105, %74
  br label %107

107:                                              ; preds = %106
  %108 = load i32, i32* %10, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %10, align 4
  %110 = load i32, i32* %6, align 4
  %111 = lshr i32 %110, 1
  store i32 %111, i32* %6, align 4
  br label %71

112:                                              ; preds = %71
  %113 = load i32, i32* %5, align 4
  %114 = call i64 @EA_MODE(i32 %113)
  %115 = load i64, i64* @EA_POSTINCREMENT, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32, i32* @current_entry, align 4
  %119 = load i32, i32* %5, align 4
  %120 = call i32 @EA_REG(i32 %119)
  %121 = add nsw i32 8, %120
  %122 = mul nsw i32 %121, 4
  %123 = call i32 @JIT_EMIT_MOVEM_WRITEBACK(i32 %118, i32 %122)
  br label %124

124:                                              ; preds = %117, %112
  %125 = load i32, i32* @current_entry, align 4
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 8, %126
  %128 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %125, i32 %127)
  store i32 0, i32* %3, align 4
  br label %129

129:                                              ; preds = %124, %56, %31
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i32 @IFETCH(i32*) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_LOAD_INC_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_LOADA_INC_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_LOAD_INC_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_MOVEM_WRITEBACK(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
