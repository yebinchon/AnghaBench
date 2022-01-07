; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVP.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opMOVP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INSN_GET_REG = common dso_local global i32 0, align 4
@INSN_GET_REG0 = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@reg0 = common dso_local global i32 0, align 4
@reg = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opMOVP to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opMOVP(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @INSN_GET_REG, align 4
  %9 = load i32, i32* @INSN_GET_REG0, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 128
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 64
  store i32 %13, i32* %6, align 4
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @IFETCH(i32* %14)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %38

18:                                               ; preds = %2
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = load i32, i32* @current_entry, align 4
  %23 = load i32, i32* @reg0, align 4
  %24 = mul nsw i32 %23, 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @reg, align 4
  %27 = mul nsw i32 %26, 4
  %28 = call i32 @JIT_EMIT_MOVEP_WRITE_L(i32 %22, i32 %24, i32 %25, i32 %27)
  br label %37

29:                                               ; preds = %18
  %30 = load i32, i32* @current_entry, align 4
  %31 = load i32, i32* @reg0, align 4
  %32 = mul nsw i32 %31, 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @reg, align 4
  %35 = mul nsw i32 %34, 4
  %36 = call i32 @JIT_EMIT_MOVEP_WRITE_W(i32 %30, i32 %32, i32 %33, i32 %35)
  br label %37

37:                                               ; preds = %29, %21
  br label %58

38:                                               ; preds = %2
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load i32, i32* @current_entry, align 4
  %43 = load i32, i32* @reg0, align 4
  %44 = mul nsw i32 %43, 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @reg, align 4
  %47 = mul nsw i32 %46, 4
  %48 = call i32 @JIT_EMIT_MOVEP_READ_L(i32 %42, i32 %44, i32 %45, i32 %47)
  br label %57

49:                                               ; preds = %38
  %50 = load i32, i32* @current_entry, align 4
  %51 = load i32, i32* @reg0, align 4
  %52 = mul nsw i32 %51, 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @reg, align 4
  %55 = mul nsw i32 %54, 4
  %56 = call i32 @JIT_EMIT_MOVEP_READ_W(i32 %50, i32 %52, i32 %53, i32 %55)
  br label %57

57:                                               ; preds = %49, %41
  br label %58

58:                                               ; preds = %57, %37
  %59 = load i32, i32* @current_entry, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 24, i32 16
  %64 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %59, i32 %63)
  ret i32 0
}

declare dso_local i32 @IFETCH(i32*) #1

declare dso_local i32 @JIT_EMIT_MOVEP_WRITE_L(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_MOVEP_WRITE_W(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_MOVEP_READ_L(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_MOVEP_READ_W(i32, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
