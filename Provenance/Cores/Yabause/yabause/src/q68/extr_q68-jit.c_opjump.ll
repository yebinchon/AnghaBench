; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opjump.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_opjump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@current_entry = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@ACCESS_READ = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@jit_PC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @opjump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opjump(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %9, 64
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @EA_MODE(i32 %11)
  switch i32 %12, label %28 [
    i32 133, label %13
    i32 135, label %14
    i32 134, label %15
    i32 132, label %16
  ]

13:                                               ; preds = %2
  store i32 8, i32* %7, align 4
  br label %32

14:                                               ; preds = %2
  store i32 10, i32* %7, align 4
  br label %32

15:                                               ; preds = %2
  store i32 14, i32* %7, align 4
  br label %32

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @EA_REG(i32 %17)
  switch i32 %18, label %23 [
    i32 130, label %19
    i32 131, label %20
    i32 129, label %21
    i32 128, label %22
  ]

19:                                               ; preds = %16
  store i32 10, i32* %7, align 4
  br label %27

20:                                               ; preds = %16
  store i32 12, i32* %7, align 4
  br label %27

21:                                               ; preds = %16
  store i32 10, i32* %7, align 4
  br label %27

22:                                               ; preds = %16
  store i32 14, i32* %7, align 4
  br label %27

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @op_ill(i32* %24, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %64

27:                                               ; preds = %22, %21, %20, %19
  br label %32

28:                                               ; preds = %2
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @op_ill(i32* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  br label %64

32:                                               ; preds = %27, %15, %14, %13
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %36, 8
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %35, %32
  %39 = load i32, i32* @current_entry, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @JIT_EMIT_ADD_CYCLES(i32 %39, i32 %40)
  %42 = load i32*, i32** %4, align 8
  %43 = call i32 @advance_PC(i32* %42)
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @SIZE_W, align 4
  %47 = load i32, i32* @ACCESS_READ, align 4
  %48 = call i32 @ea_resolve(i32* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %38
  %52 = load i32, i32* @current_entry, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %55 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %56 = or i32 %54, %55
  %57 = call i32 @JIT_EMIT_CHECK_ALIGNED_SP(i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* @current_entry, align 4
  %59 = load i32, i32* @jit_PC, align 4
  %60 = call i32 @JIT_EMIT_JSR(i32 %58, i32 %59)
  store i32 0, i32* %3, align 4
  br label %64

61:                                               ; preds = %38
  %62 = load i32, i32* @current_entry, align 4
  %63 = call i32 @JIT_EMIT_JMP(i32 %62)
  store i32 1, i32* %3, align 4
  br label %64

64:                                               ; preds = %61, %51, %28, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @JIT_EMIT_ADD_CYCLES(i32, i32) #1

declare dso_local i32 @advance_PC(i32*) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_ALIGNED_SP(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_JSR(i32, i32) #1

declare dso_local i32 @JIT_EMIT_JMP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
