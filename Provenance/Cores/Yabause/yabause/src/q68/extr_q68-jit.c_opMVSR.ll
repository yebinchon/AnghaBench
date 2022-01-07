; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMVSR.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMVSR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_DATA_REG = common dso_local global i64 0, align 8
@current_entry = common dso_local global i32 0, align 4
@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@SIZE_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opMVSR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMVSR(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = ashr i32 %10, 9
  %12 = and i32 %11, 3
  switch i32 %12, label %25 [
    i32 0, label %13
    i32 1, label %20
    i32 2, label %24
  ]

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @EA_MODE(i32 %14)
  %16 = load i64, i64* @EA_DATA_REG, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 6, i32 8
  store i32 %19, i32* %8, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @op_ill(i32* %21, i32 %22)
  store i32 %23, i32* %3, align 4
  br label %86

24:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 12, i32* %8, align 4
  br label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @current_entry, align 4
  %27 = call i32 @JIT_EMIT_CHECK_SUPER(i32 %26)
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 12, i32* %8, align 4
  br label %28

28:                                               ; preds = %25, %24, %13
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @EA_MODE(i32 %29)
  %31 = load i64, i64* @EA_ADDRESS_REG, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @op_ill(i32* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %86

37:                                               ; preds = %28
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @SIZE_W, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @ea_get(i32* %38, i32 %39, i32 %40, i32 %41, i32* %9, i32 1)
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  br label %86

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, %47
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* @current_entry, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %50, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = call i32 @advance_PC(i32* %53)
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %73

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32, i32* @current_entry, align 4
  %62 = call i32 @JIT_EMIT_GET_OP1_CCR(i32 %61)
  br label %66

63:                                               ; preds = %57
  %64 = load i32, i32* @current_entry, align 4
  %65 = call i32 @JIT_EMIT_GET_OP1_SR(i32 %64)
  br label %66

66:                                               ; preds = %63, %60
  %67 = load i32, i32* @current_entry, align 4
  %68 = call i32 @JIT_EMIT_MOVE_W(i32 %67)
  %69 = load i32*, i32** %4, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load i32, i32* @SIZE_W, align 4
  %72 = call i32 @ea_set(i32* %69, i32 %70, i32 %71)
  br label %85

73:                                               ; preds = %46
  %74 = load i32, i32* @current_entry, align 4
  %75 = call i32 @JIT_EMIT_MOVE_W(i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @current_entry, align 4
  %80 = call i32 @JIT_EMIT_SET_CCR(i32 %79)
  br label %84

81:                                               ; preds = %73
  %82 = load i32, i32* @current_entry, align 4
  %83 = call i32 @JIT_EMIT_SET_SR(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  br label %85

85:                                               ; preds = %84, %66
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %85, %45, %33, %20
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_SUPER(i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

declare dso_local i32 @advance_PC(i32*) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_CCR(i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP1_SR(i32) #1

declare dso_local i32 @JIT_EMIT_MOVE_W(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_CCR(i32) #1

declare dso_local i32 @JIT_EMIT_SET_SR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
