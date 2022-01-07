; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_bit.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@INSN_GET_REG = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_L = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_bit(i32* %0, i32 %1) #0 {
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
  %12 = call i64 @EA_MODE(i32 %11)
  %13 = load i64, i64* @EA_ADDRESS_REG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, 256
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @opMOVP(i32* %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %119

23:                                               ; preds = %15
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @op_ill(i32* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %119

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = ashr i32 %28, 6
  %30 = and i32 %29, 3
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, 256
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @INSN_GET_REG, align 4
  %36 = load i32, i32* @current_entry, align 4
  %37 = load i32, i32* @reg, align 4
  %38 = mul nsw i32 %37, 4
  %39 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %36, i32 %38)
  store i32 0, i32* %7, align 4
  br label %46

40:                                               ; preds = %27
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @IFETCH(i32* %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @current_entry, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32 %43, i32 %44)
  store i32 4, i32* %7, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @EA_MODE(i32 %47)
  %49 = load i64, i64* @EA_DATA_REG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @SIZE_L, align 4
  br label %55

53:                                               ; preds = %46
  %54 = load i32, i32* @SIZE_B, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  store i32 %56, i32* %9, align 4
  %57 = load i32*, i32** %4, align 8
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ea_get(i32* %57, i32 %58, i32 %59, i32 1, i32* %10, i32 2)
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %119

64:                                               ; preds = %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @SIZE_L, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %64
  %72 = load i32, i32* %6, align 4
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74, %71
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %7, align 4
  br label %80

80:                                               ; preds = %77, %74, %64
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* @SIZE_B, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %80
  %85 = load i32, i32* @current_entry, align 4
  %86 = call i32 @JIT_EMIT_BTST_B(i32 %85)
  br label %90

87:                                               ; preds = %80
  %88 = load i32, i32* @current_entry, align 4
  %89 = call i32 @JIT_EMIT_BTST_L(i32 %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %6, align 4
  switch i32 %91, label %92 [
    i32 1, label %93
    i32 2, label %96
    i32 3, label %99
  ]

92:                                               ; preds = %90
  br label %102

93:                                               ; preds = %90
  %94 = load i32, i32* @current_entry, align 4
  %95 = call i32 @JIT_EMIT_BCHG(i32 %94)
  br label %102

96:                                               ; preds = %90
  %97 = load i32, i32* @current_entry, align 4
  %98 = call i32 @JIT_EMIT_BCLR(i32 %97)
  br label %102

99:                                               ; preds = %90
  %100 = load i32, i32* @current_entry, align 4
  %101 = call i32 @JIT_EMIT_BSET(i32 %100)
  br label %102

102:                                              ; preds = %99, %96, %93, %92
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %9, align 4
  %109 = call i32 @ea_set(i32* %106, i32 %107, i32 %108)
  br label %110

110:                                              ; preds = %105, %102
  %111 = load i32, i32* @current_entry, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp eq i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 4, i32 8
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %115, %116
  %118 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %111, i32 %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %110, %63, %23, %19
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @opMOVP(i32*, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_REGISTER(i32, i32) #1

declare dso_local i32 @IFETCH(i32*) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_IMMEDIATE(i32, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_BTST_B(i32) #1

declare dso_local i32 @JIT_EMIT_BTST_L(i32) #1

declare dso_local i32 @JIT_EMIT_BCHG(i32) #1

declare dso_local i32 @JIT_EMIT_BCLR(i32) #1

declare dso_local i32 @JIT_EMIT_BSET(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
