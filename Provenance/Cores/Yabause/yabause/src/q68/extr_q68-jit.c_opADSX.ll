; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opADSX.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opADSX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_SIZE = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@EA_PREDECREMENT = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@size = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i64 0, align 8
@current_entry = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opADSX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opADSX(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i32, i32* @INSN_GET_REG, align 4
  %12 = load i32, i32* @INSN_GET_SIZE, align 4
  %13 = load i32, i32* @INSN_GET_REG0, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 16384
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = and i32 %16, 8
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @EA_DATA_REG, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  %26 = shl i32 %25, 3
  %27 = load i32, i32* @reg0, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %35

33:                                               ; preds = %24
  %34 = load i32, i32* @EA_DATA_REG, align 4
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ %32, %31 ], [ %34, %33 ]
  %37 = shl i32 %36, 3
  %38 = load i32, i32* @reg, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %8, align 4
  %40 = load i32*, i32** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* @size, align 8
  %43 = call i32 @ea_get(i32* %40, i32 %41, i64 %42, i32 0, i32* %9, i32 1)
  %44 = load i32*, i32** %3, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i64, i64* @size, align 8
  %47 = call i32 @ea_get(i32* %44, i32 %45, i64 %46, i32 1, i32* %9, i32 2)
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @cc_needed(i32* %48, i32 %49)
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %90

53:                                               ; preds = %35
  %54 = load i64, i64* @size, align 8
  %55 = load i64, i64* @SIZE_B, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, i32* @current_entry, align 4
  %59 = call i32 @JIT_EMIT_ADDX_B(i32 %58)
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @current_entry, align 4
  %64 = call i32 @JIT_EMIT_SETCC_ADDX_B(i32 %63)
  br label %65

65:                                               ; preds = %62, %57
  br label %89

66:                                               ; preds = %53
  %67 = load i64, i64* @size, align 8
  %68 = load i64, i64* @SIZE_W, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %66
  %71 = load i32, i32* @current_entry, align 4
  %72 = call i32 @JIT_EMIT_ADDX_W(i32 %71)
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load i32, i32* @current_entry, align 4
  %77 = call i32 @JIT_EMIT_SETCC_ADDX_W(i32 %76)
  br label %78

78:                                               ; preds = %75, %70
  br label %88

79:                                               ; preds = %66
  %80 = load i32, i32* @current_entry, align 4
  %81 = call i32 @JIT_EMIT_ADDX_L(i32 %80)
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load i32, i32* @current_entry, align 4
  %86 = call i32 @JIT_EMIT_SETCC_ADDX_L(i32 %85)
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %78
  br label %89

89:                                               ; preds = %88, %65
  br label %127

90:                                               ; preds = %35
  %91 = load i64, i64* @size, align 8
  %92 = load i64, i64* @SIZE_B, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %90
  %95 = load i32, i32* @current_entry, align 4
  %96 = call i32 @JIT_EMIT_SUBX_B(i32 %95)
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @current_entry, align 4
  %101 = call i32 @JIT_EMIT_SETCC_SUBX_B(i32 %100)
  br label %102

102:                                              ; preds = %99, %94
  br label %126

103:                                              ; preds = %90
  %104 = load i64, i64* @size, align 8
  %105 = load i64, i64* @SIZE_W, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = load i32, i32* @current_entry, align 4
  %109 = call i32 @JIT_EMIT_SUBX_W(i32 %108)
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %107
  %113 = load i32, i32* @current_entry, align 4
  %114 = call i32 @JIT_EMIT_SETCC_SUBX_W(i32 %113)
  br label %115

115:                                              ; preds = %112, %107
  br label %125

116:                                              ; preds = %103
  %117 = load i32, i32* @current_entry, align 4
  %118 = call i32 @JIT_EMIT_SUBX_L(i32 %117)
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @current_entry, align 4
  %123 = call i32 @JIT_EMIT_SETCC_SUBX_L(i32 %122)
  br label %124

124:                                              ; preds = %121, %116
  br label %125

125:                                              ; preds = %124, %115
  br label %126

126:                                              ; preds = %125, %102
  br label %127

127:                                              ; preds = %126, %89
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* %8, align 4
  %130 = load i64, i64* @size, align 8
  %131 = call i32 @ea_set(i32* %128, i32 %129, i64 %130)
  %132 = load i32, i32* @current_entry, align 4
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %127
  %136 = load i64, i64* @size, align 8
  %137 = load i64, i64* @SIZE_L, align 8
  %138 = icmp eq i64 %136, %137
  %139 = zext i1 %138 to i64
  %140 = select i1 %138, i32 30, i32 18
  br label %147

141:                                              ; preds = %127
  %142 = load i64, i64* @size, align 8
  %143 = load i64, i64* @SIZE_L, align 8
  %144 = icmp eq i64 %142, %143
  %145 = zext i1 %144 to i64
  %146 = select i1 %144, i32 8, i32 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = phi i32 [ %140, %135 ], [ %146, %141 ]
  %149 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %132, i32 %148)
  ret i32 0
}

declare dso_local i32 @ea_get(i32*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_ADDX_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADDX_B(i32) #1

declare dso_local i32 @JIT_EMIT_ADDX_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADDX_W(i32) #1

declare dso_local i32 @JIT_EMIT_ADDX_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_ADDX_L(i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_B(i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_W(i32) #1

declare dso_local i32 @JIT_EMIT_SUBX_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_SUBX_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i64) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
