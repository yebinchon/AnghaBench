; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_dtrace_decode_thumb16.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm/extr_disassembler.c_dtrace_decode_thumb16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_LDR_PC_IMMED = common dso_local global i32 0, align 4
@FASTTRAP_T_INV = common dso_local global i32 0, align 4
@FASTTRAP_T_COMMON = common dso_local global i32 0, align 4
@FASTTRAP_T_B_UNCOND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dtrace_decode_thumb16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_decode_thumb16(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @BITS(i32 %5, i32 10, i32 63)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 48
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @thumb16_shift_addsub_move_compare(i32 %11)
  store i32 %12, i32* %2, align 4
  br label %92

13:                                               ; preds = %1
  %14 = load i32, i32* %4, align 4
  %15 = icmp eq i32 %14, 16
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @thumb16_data_proc(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %92

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 17
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @thumb16_data_special_and_branch(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %92

25:                                               ; preds = %19
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, 62
  %28 = icmp eq i32 %27, 18
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* @FASTTRAP_T_LDR_PC_IMMED, align 4
  store i32 %30, i32* %2, align 4
  br label %92

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 60
  %34 = icmp eq i32 %33, 20
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 56
  %38 = icmp eq i32 %37, 24
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 56
  %42 = icmp eq i32 %41, 32
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %35, %31
  %44 = load i32, i32* %3, align 4
  %45 = call i32 @thumb16_loadstore_single(i32 %44)
  store i32 %45, i32* %2, align 4
  br label %92

46:                                               ; preds = %39
  %47 = load i32, i32* %4, align 4
  %48 = and i32 %47, 62
  %49 = icmp eq i32 %48, 40
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %51, i32* %2, align 4
  br label %92

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 62
  %55 = icmp eq i32 %54, 42
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %57, i32* %2, align 4
  br label %92

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = and i32 %59, 60
  %61 = icmp eq i32 %60, 44
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @thumb16_misc(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %92

65:                                               ; preds = %58
  %66 = load i32, i32* %4, align 4
  %67 = and i32 %66, 62
  %68 = icmp eq i32 %67, 48
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %70, i32* %2, align 4
  br label %92

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, 62
  %74 = icmp eq i32 %73, 50
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @FASTTRAP_T_COMMON, align 4
  store i32 %76, i32* %2, align 4
  br label %92

77:                                               ; preds = %71
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, 60
  %80 = icmp eq i32 %79, 52
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @thumb16_cond_supervisor(i32 %82)
  store i32 %83, i32* %2, align 4
  br label %92

84:                                               ; preds = %77
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, 62
  %87 = icmp eq i32 %86, 56
  br i1 %87, label %88, label %90

88:                                               ; preds = %84
  %89 = load i32, i32* @FASTTRAP_T_B_UNCOND, align 4
  store i32 %89, i32* %2, align 4
  br label %92

90:                                               ; preds = %84
  %91 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %88, %81, %75, %69, %62, %56, %50, %43, %29, %22, %16, %10
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @thumb16_shift_addsub_move_compare(i32) #1

declare dso_local i32 @thumb16_data_proc(i32) #1

declare dso_local i32 @thumb16_data_special_and_branch(i32) #1

declare dso_local i32 @thumb16_loadstore_single(i32) #1

declare dso_local i32 @thumb16_misc(i32) #1

declare dso_local i32 @thumb16_cond_supervisor(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
