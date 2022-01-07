; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_EXT.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_EXT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG0 = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_EXT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_EXT(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @INSN_GET_REG0, align 4
  %7 = load i32, i32* @current_entry, align 4
  %8 = load i32, i32* @reg0, align 4
  %9 = mul nsw i32 %8, 4
  %10 = call i32 @JIT_EMIT_GET_OP1_REGISTER(i32 %7, i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @cc_needed(i32* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 64
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @current_entry, align 4
  %19 = call i32 @JIT_EMIT_EXT_L(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @current_entry, align 4
  %24 = call i32 @JIT_EMIT_SETCC_LOGIC_L(i32 %23)
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* @current_entry, align 4
  %27 = load i32, i32* @reg0, align 4
  %28 = mul nsw i32 %27, 4
  %29 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %26, i32 %28)
  br label %43

30:                                               ; preds = %2
  %31 = load i32, i32* @current_entry, align 4
  %32 = call i32 @JIT_EMIT_EXT_W(i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @current_entry, align 4
  %37 = call i32 @JIT_EMIT_SETCC_LOGIC_W(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i32, i32* @current_entry, align 4
  %40 = load i32, i32* @reg0, align 4
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @JIT_EMIT_SET_REGISTER_W(i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32, i32* @current_entry, align 4
  %45 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %44, i32 4)
  ret i32 0
}

declare dso_local i32 @JIT_EMIT_GET_OP1_REGISTER(i32, i32) #1

declare dso_local i32 @cc_needed(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_EXT_L(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_L(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_EXT_W(i32) #1

declare dso_local i32 @JIT_EMIT_SETCC_LOGIC_W(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
