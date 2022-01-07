; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_wb_valid.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_assem_x64.c_wb_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HOST_REGS = common dso_local global i32 0, align 4
@EXCLUDE_REG = common dso_local global i32 0, align 4
@TBIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wb_valid(i8* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %64, %5
  %15 = load i32, i32* %11, align 4
  %16 = load i32, i32* @HOST_REGS, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %67

18:                                               ; preds = %14
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* @EXCLUDE_REG, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %18
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %10, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %12, align 4
  %32 = and i32 %31, 63
  %33 = ashr i32 %30, %32
  %34 = and i32 %33, 1
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %22
  %37 = load i32, i32* %12, align 4
  %38 = icmp sge i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %36
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load i32, i32* %11, align 4
  %45 = ashr i32 %43, %44
  %46 = and i32 %45, 1
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load i32, i32* %12, align 4
  %50 = icmp sge i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @TBIT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @emit_storereg(i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %55, %51, %48
  br label %60

60:                                               ; preds = %59, %39
  br label %61

61:                                               ; preds = %60, %36
  br label %62

62:                                               ; preds = %61, %22
  br label %63

63:                                               ; preds = %62, %18
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %14

67:                                               ; preds = %14
  ret void
}

declare dso_local i32 @emit_storereg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
