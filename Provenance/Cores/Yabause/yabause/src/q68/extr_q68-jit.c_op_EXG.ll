; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_EXG.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_EXG.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_EXG to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_EXG(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @INSN_GET_REG, align 4
  %8 = load i32, i32* @INSN_GET_REG0, align 4
  %9 = load i32, i32* %5, align 4
  %10 = and i32 %9, 248
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 64
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load i32, i32* @current_entry, align 4
  %15 = load i32, i32* @reg, align 4
  %16 = mul nsw i32 %15, 4
  %17 = load i32, i32* @reg0, align 4
  %18 = mul nsw i32 %17, 4
  %19 = call i32 @JIT_EMIT_EXG(i32 %14, i32 %16, i32 %18)
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp eq i32 %21, 72
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load i32, i32* @current_entry, align 4
  %25 = load i32, i32* @reg, align 4
  %26 = add nsw i32 8, %25
  %27 = mul nsw i32 %26, 4
  %28 = load i32, i32* @reg0, align 4
  %29 = add nsw i32 8, %28
  %30 = mul nsw i32 %29, 4
  %31 = call i32 @JIT_EMIT_EXG(i32 %24, i32 %27, i32 %30)
  br label %48

32:                                               ; preds = %20
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 136
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* @current_entry, align 4
  %37 = load i32, i32* @reg, align 4
  %38 = mul nsw i32 %37, 4
  %39 = load i32, i32* @reg0, align 4
  %40 = add nsw i32 8, %39
  %41 = mul nsw i32 %40, 4
  %42 = call i32 @JIT_EMIT_EXG(i32 %36, i32 %38, i32 %41)
  br label %47

43:                                               ; preds = %32
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @op_ill(i32* %44, i32 %45)
  store i32 %46, i32* %3, align 4
  br label %52

47:                                               ; preds = %35
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48, %13
  %50 = load i32, i32* @current_entry, align 4
  %51 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %50, i32 6)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %49, %43
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @JIT_EMIT_EXG(i32, i32, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
