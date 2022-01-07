; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_BCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_op_BCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@EA_PREDECREMENT = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@SIZE_B = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_BCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_BCD(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* @INSN_GET_REG, align 4
  %11 = load i32, i32* @INSN_GET_REG0, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 16384
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 8
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @EA_DATA_REG, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  %24 = shl i32 %23, 3
  %25 = load i32, i32* @reg0, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* @EA_PREDECREMENT, align 4
  br label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @EA_DATA_REG, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = shl i32 %34, 3
  %36 = load i32, i32* @reg, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %8, align 4
  %38 = load i32*, i32** %3, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @SIZE_B, align 4
  %41 = call i32 @ea_get(i32* %38, i32 %39, i32 %40, i32 0, i32* %9, i32 1)
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @SIZE_B, align 4
  %45 = call i32 @ea_get(i32* %42, i32 %43, i32 %44, i32 1, i32* %9, i32 2)
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %33
  %49 = load i32, i32* @current_entry, align 4
  %50 = call i32 @JIT_EMIT_ABCD(i32 %49)
  br label %54

51:                                               ; preds = %33
  %52 = load i32, i32* @current_entry, align 4
  %53 = call i32 @JIT_EMIT_SBCD(i32 %52)
  br label %54

54:                                               ; preds = %51, %48
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SIZE_B, align 4
  %58 = call i32 @ea_set(i32* %55, i32 %56, i32 %57)
  %59 = load i32, i32* @current_entry, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 18, i32 6
  %64 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %59, i32 %63)
  ret i32 0
}

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_ABCD(i32) #1

declare dso_local i32 @JIT_EMIT_SBCD(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
