; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opNBCD.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opNBCD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opNBCD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opNBCD(i32* %0, i32 %1) #0 {
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
  %14 = call i32 @op_ill(i32* %12, i32 %13)
  store i32 %14, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SIZE_B, align 4
  %19 = call i32 @ea_get(i32* %16, i32 %17, i32 %18, i32 1, i32* %6, i32 1)
  %20 = load i32, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %42

23:                                               ; preds = %15
  %24 = load i32, i32* @current_entry, align 4
  %25 = call i32 @JIT_EMIT_GET_OP2_IMMEDIATE(i32 %24, i32 0)
  %26 = load i32, i32* @current_entry, align 4
  %27 = call i32 @JIT_EMIT_SBCD(i32 %26)
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @SIZE_B, align 4
  %31 = call i32 @ea_set(i32* %28, i32 %29, i32 %30)
  %32 = load i32, i32* @current_entry, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @EA_MODE(i32 %33)
  %35 = load i64, i64* @EA_DATA_REG, align 8
  %36 = icmp eq i64 %34, %35
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 6, i32 8
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %38, %39
  %41 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %32, i32 %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %23, %22, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @ea_get(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @JIT_EMIT_GET_OP2_IMMEDIATE(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SBCD(i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
