; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_page_granular_prot.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_page_granular_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_TT_L1_PT_OFFMASK = common dso_local global i32 0, align 4
@cpu_tte = common dso_local global i32* null, align 8
@ARM_TTE_BLOCK_APMASK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NX_MASK = common dso_local global i32 0, align 4
@ARM_TTE_BLOCK_NX = common dso_local global i32 0, align 4
@ARM_TT_L1_PT_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i32, i32, i32, i32)* @arm_vm_page_granular_prot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_vm_page_granular_prot(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* %8, align 8
  %22 = add i64 %20, %21
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %13, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @ARM_TT_L1_PT_OFFMASK, align 4
  %26 = add nsw i32 %24, %25
  %27 = load i32, i32* @ARM_TT_L1_PT_OFFMASK, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @ARM_TT_L1_PT_OFFMASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %15, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %11, align 4
  %39 = call i32 @arm_vm_page_granular_helper(i32 %34, i32 %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %96, %6
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %102

44:                                               ; preds = %40
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %14, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %14, align 4
  %51 = add nsw i32 %50, 1
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @arm_vm_page_granular_helper(i32 %48, i32 %49, i32 %51, i32 %52, i32 %53)
  br label %96

55:                                               ; preds = %44
  %56 = load i32*, i32** @cpu_tte, align 8
  %57 = load i32, i32* %14, align 4
  %58 = call i64 @ttenum(i32 %57)
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32* %59, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %60

60:                                               ; preds = %92, %55
  %61 = load i32, i32* %17, align 4
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %95

63:                                               ; preds = %60
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %17, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %18, align 4
  %69 = load i32, i32* %18, align 4
  %70 = load i32, i32* @ARM_TTE_BLOCK_APMASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @ARM_TTE_BLOCK_AP(i32 %73)
  %75 = or i32 %72, %74
  store i32 %75, i32* %18, align 4
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @ARM_TTE_BLOCK_NX_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %18, align 4
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %63
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* @ARM_TTE_BLOCK_NX, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %18, align 4
  br label %86

86:                                               ; preds = %82, %63
  %87 = load i32, i32* %18, align 4
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %87, i32* %91, align 4
  br label %92

92:                                               ; preds = %86
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %17, align 4
  br label %60

95:                                               ; preds = %60
  br label %96

96:                                               ; preds = %95, %47
  %97 = load i64, i64* @ARM_TT_L1_PT_SIZE, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = add nsw i64 %99, %97
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %14, align 4
  br label %40

102:                                              ; preds = %40
  %103 = load i32, i32* %7, align 4
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %13, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @arm_vm_page_granular_helper(i32 %103, i32 %104, i32 %105, i32 %106, i32 %107)
  ret void
}

declare dso_local i32 @arm_vm_page_granular_helper(i32, i32, i32, i32, i32) #1

declare dso_local i64 @ttenum(i32) #1

declare dso_local i32 @ARM_TTE_BLOCK_AP(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
