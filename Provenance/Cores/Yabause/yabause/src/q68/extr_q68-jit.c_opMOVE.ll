; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVE.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_B = common dso_local global i32 0, align 4
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@ACCESS_WRITE = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opMOVE to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMOVE(i32* %0, i32 %1) #0 {
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
  %11 = load i32, i32* %5, align 4
  %12 = ashr i32 %11, 12
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SIZE_B, align 4
  br label %26

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = ashr i32 %17, 12
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SIZE_L, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SIZE_W, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  br label %26

26:                                               ; preds = %24, %14
  %27 = phi i32 [ %15, %14 ], [ %25, %24 ]
  store i32 %27, i32* %6, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @ea_get(i32* %28, i32 %29, i32 %30, i32 0, i32* %7, i32 1)
  %32 = load i32, i32* %7, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %128

35:                                               ; preds = %26
  %36 = load i32, i32* %5, align 4
  %37 = ashr i32 %36, 9
  %38 = and i32 %37, 7
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 3
  %41 = and i32 %40, 56
  %42 = or i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i64 @EA_MODE(i32 %43)
  %45 = load i64, i64* @EA_ADDRESS_REG, align 8
  %46 = icmp sle i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  br label %61

48:                                               ; preds = %35
  %49 = load i32*, i32** %4, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @ACCESS_WRITE, align 4
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
  br label %128

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %47
  %62 = load i32*, i32** %4, align 8
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @cc_needed(i32* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @EA_MODE(i32 %65)
  %67 = load i64, i64* @EA_ADDRESS_REG, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %61
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @SIZE_W, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @current_entry, align 4
  %75 = call i32 @JIT_EMIT_EXT_L(i32 %74)
  br label %79

76:                                               ; preds = %69
  %77 = load i32, i32* @current_entry, align 4
  %78 = call i32 @JIT_EMIT_MOVE_L(i32 %77)
  br label %79

79:                                               ; preds = %76, %73
  br label %117

80:                                               ; preds = %61
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* @SIZE_B, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @current_entry, align 4
  %86 = call i32 @JIT_EMIT_MOVE_B(i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %84
  %90 = load i32, i32* @current_entry, align 4
  %91 = call i32 @JIT_EMIT_SETCC_LOGIC_B(i32 %90)
  br label %92

92:                                               ; preds = %89, %84
  br label %116

93:                                               ; preds = %80
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* @SIZE_W, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load i32, i32* @current_entry, align 4
  %99 = call i32 @JIT_EMIT_MOVE_W(i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @current_entry, align 4
  %104 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %103)
  br label %105

105:                                              ; preds = %102, %97
  br label %115

106:                                              ; preds = %93
  %107 = load i32, i32* @current_entry, align 4
  %108 = call i32 @JIT_EMIT_MOVE_L(i32 %107)
  %109 = load i32, i32* %10, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @current_entry, align 4
  %113 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %112)
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114, %105
  br label %116

116:                                              ; preds = %115, %92
  br label %117

117:                                              ; preds = %116, %79
  %118 = load i32*, i32** %4, align 8
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i32 @ea_set(i32* %118, i32 %119, i32 %120)
  %122 = load i32, i32* @current_entry, align 4
  %123 = load i32, i32* %7, align 4
  %124 = add nsw i32 4, %123
  %125 = load i32, i32* %9, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %122, i32 %126)
  store i32 0, i32* %3, align 4
  br label %128

128:                                              ; preds = %117, %56, %34
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_EXT_L(i32) #1

declare dso_local i32 @JIT_EMIT_MOVE_L(i32) #1

declare dso_local i32 @JIT_EMIT_MOVE_B(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_B(i32) #1

declare dso_local i32 @JIT_EMIT_MOVE_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_L(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
