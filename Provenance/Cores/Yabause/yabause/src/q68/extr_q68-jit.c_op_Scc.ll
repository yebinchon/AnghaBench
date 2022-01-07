; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_Scc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_Scc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@INSN_GET_COND = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i32 0, align 4
@ACCESS_MODIFY = common dso_local global i32 0, align 4
@cond = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_Scc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_Scc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i64 @EA_MODE(i32 %7)
  %9 = load i64, i64* @EA_ADDRESS_REG, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32*, i32** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @opDBcc(i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %58

15:                                               ; preds = %2
  %16 = load i32, i32* @INSN_GET_COND, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i64 @EA_MODE(i32 %17)
  %19 = load i64, i64* @EA_DATA_REG, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %35

22:                                               ; preds = %15
  %23 = load i32*, i32** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @SIZE_B, align 4
  %26 = load i32, i32* @ACCESS_MODIFY, align 4
  %27 = call i32 @ea_resolve(i32* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %22
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @op_ill(i32* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  br label %58

34:                                               ; preds = %22
  br label %35

35:                                               ; preds = %34, %21
  %36 = load i32, i32* @cond, align 4
  %37 = load i32, i32* @current_entry, align 4
  %38 = call i32 @JIT_EMIT_TEST_cc(i32 %36, i32 %37)
  %39 = load i32, i32* @current_entry, align 4
  %40 = call i32 @JIT_EMIT_Scc(i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = call i64 @EA_MODE(i32 %41)
  %43 = load i64, i64* @EA_DATA_REG, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %35
  %46 = load i32, i32* @current_entry, align 4
  %47 = call i32 @JIT_EMIT_ADD_CYCLES_Scc_Dn(i32 %46)
  br label %53

48:                                               ; preds = %35
  %49 = load i32, i32* @current_entry, align 4
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 8, %50
  %52 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %49, i32 %51)
  br label %53

53:                                               ; preds = %48, %45
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @SIZE_B, align 4
  %57 = call i32 @ea_set(i32* %54, i32 %55, i32 %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %53, %30, %11
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @opDBcc(i32*, i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_TEST_cc(i32, i32) #1

declare dso_local i32 @JIT_EMIT_Scc(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES_Scc_Dn(i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
