; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_dtrace_decode_arm.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/arm64/extr_disassembler.c_dtrace_decode_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FASTTRAP_T_INV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_decode_arm(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @BITS(i32 %7, i32 28, i32 15)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @BITS(i32 %9, i32 25, i32 7)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @BITS(i32 %11, i32 4, i32 1)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 15
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @arm_unconditional(i32 %16)
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, 6
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @arm_dataproc_misc(i32 %23)
  store i32 %24, i32* %2, align 4
  br label %65

25:                                               ; preds = %18
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 2
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @arm_loadstore_wordbyte(i32 %29)
  store i32 %30, i32* %2, align 4
  br label %65

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* %6, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @arm_loadstore_wordbyte(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %65

40:                                               ; preds = %34, %31
  %41 = load i32, i32* %5, align 4
  %42 = icmp eq i32 %41, 3
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @arm_media(i32 %47)
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, 6
  %52 = icmp eq i32 %51, 4
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @arm_branch_link_blockdata(i32 %54)
  store i32 %55, i32* %2, align 4
  br label %65

56:                                               ; preds = %49
  %57 = load i32, i32* %5, align 4
  %58 = and i32 %57, 6
  %59 = icmp eq i32 %58, 6
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @arm_syscall_coproc(i32 %61)
  store i32 %62, i32* %2, align 4
  br label %65

63:                                               ; preds = %56
  %64 = load i32, i32* @FASTTRAP_T_INV, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %60, %53, %46, %37, %28, %22, %15
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @BITS(i32, i32, i32) #1

declare dso_local i32 @arm_unconditional(i32) #1

declare dso_local i32 @arm_dataproc_misc(i32) #1

declare dso_local i32 @arm_loadstore_wordbyte(i32) #1

declare dso_local i32 @arm_media(i32) #1

declare dso_local i32 @arm_branch_link_blockdata(i32) #1

declare dso_local i32 @arm_syscall_coproc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
