; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_set.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-jit.c_ea_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIZE_B = common dso_local global i32 0, align 4
@current_entry = common dso_local global i32 0, align 4
@SIZE_W = common dso_local global i32 0, align 4
@FAULT_STATUS_IN_DATA = common dso_local global i32 0, align 4
@FAULT_STATUS_RW_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @ea_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ea_set(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = call i32 @EA_MODE(i32 %7)
  switch i32 %8, label %56 [
    i32 128, label %9
    i32 129, label %37
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SIZE_B, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* @current_entry, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @EA_REG(i32 %15)
  %17 = mul nsw i32 %16, 4
  %18 = call i32 @JIT_EMIT_SET_REGISTER_B(i32 %14, i32 %17)
  br label %36

19:                                               ; preds = %9
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @SIZE_W, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %19
  %24 = load i32, i32* @current_entry, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @EA_REG(i32 %25)
  %27 = mul nsw i32 %26, 4
  %28 = call i32 @JIT_EMIT_SET_REGISTER_W(i32 %24, i32 %27)
  br label %35

29:                                               ; preds = %19
  %30 = load i32, i32* @current_entry, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @EA_REG(i32 %31)
  %33 = mul nsw i32 %32, 4
  %34 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %29, %23
  br label %36

36:                                               ; preds = %35, %13
  br label %87

37:                                               ; preds = %3
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @SIZE_W, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load i32, i32* @current_entry, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @EA_REG(i32 %43)
  %45 = add nsw i32 8, %44
  %46 = mul nsw i32 %45, 4
  %47 = call i32 @JIT_EMIT_SET_AREG_W(i32 %42, i32 %46)
  br label %55

48:                                               ; preds = %37
  %49 = load i32, i32* @current_entry, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @EA_REG(i32 %50)
  %52 = add nsw i32 8, %51
  %53 = mul nsw i32 %52, 4
  %54 = call i32 @JIT_EMIT_SET_REGISTER_L(i32 %49, i32 %53)
  br label %55

55:                                               ; preds = %48, %41
  br label %87

56:                                               ; preds = %3
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @SIZE_B, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* @current_entry, align 4
  %62 = call i32 @JIT_EMIT_SET_EA_B(i32 %61)
  br label %86

63:                                               ; preds = %56
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @SIZE_W, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i32, i32* @current_entry, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %71 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %68, i32 %69, i32 %72)
  %74 = load i32, i32* @current_entry, align 4
  %75 = call i32 @JIT_EMIT_SET_EA_W(i32 %74)
  br label %85

76:                                               ; preds = %63
  %77 = load i32, i32* @current_entry, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @FAULT_STATUS_IN_DATA, align 4
  %80 = load i32, i32* @FAULT_STATUS_RW_WRITE, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32 %77, i32 %78, i32 %81)
  %83 = load i32, i32* @current_entry, align 4
  %84 = call i32 @JIT_EMIT_SET_EA_L(i32 %83)
  br label %85

85:                                               ; preds = %76, %67
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %55, %36
  ret void
}

declare dso_local i32 @EA_MODE(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_B(i32, i32) #1

declare dso_local i32 @EA_REG(i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_REGISTER_L(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_AREG_W(i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_EA_B(i32) #1

declare dso_local i32 @JIT_EMIT_CHECK_ALIGNED_EA(i32, i32, i32) #1

declare dso_local i32 @JIT_EMIT_SET_EA_W(i32) #1

declare dso_local i32 @JIT_EMIT_SET_EA_L(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
