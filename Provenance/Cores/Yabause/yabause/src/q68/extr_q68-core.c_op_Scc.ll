; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_Scc.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/q68/extr_q68-core.c_op_Scc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EA_ADDRESS_REG = common dso_local global i64 0, align 8
@INSN_GET_COND = common dso_local global i32 0, align 4
@cond = common dso_local global i32 0, align 4
@EA_DATA_REG = common dso_local global i64 0, align 8
@SIZE_B = common dso_local global i32 0, align 4
@ACCESS_MODIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @op_Scc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @op_Scc(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @EA_MODE(i32 %8)
  %10 = load i64, i64* @EA_ADDRESS_REG, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @opDBcc(i32* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  br label %59

16:                                               ; preds = %2
  %17 = load i32, i32* @INSN_GET_COND, align 4
  %18 = load i32, i32* @cond, align 4
  %19 = call i32 @INSN_COND_TRUE(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @EA_MODE(i32 %20)
  %22 = load i64, i64* @EA_DATA_REG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %7, align 4
  br label %38

25:                                               ; preds = %16
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @SIZE_B, align 4
  %29 = load i32, i32* @ACCESS_MODIFY, align 4
  %30 = call i32 @ea_resolve(i32* %26, i32 %27, i32 %28, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @op_ill(i32* %34, i32 %35)
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %25
  br label %38

38:                                               ; preds = %37, %24
  %39 = load i32*, i32** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @SIZE_B, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 255, i32 0
  %46 = call i32 @ea_set(i32* %39, i32 %40, i32 %41, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @EA_MODE(i32 %47)
  %49 = load i64, i64* @EA_DATA_REG, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %38
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 6, i32 4
  store i32 %55, i32* %3, align 4
  br label %59

56:                                               ; preds = %38
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 8, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %56, %51, %33, %12
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i64 @EA_MODE(i32) #1

declare dso_local i32 @opDBcc(i32*, i32) #1

declare dso_local i32 @INSN_COND_TRUE(i32) #1

declare dso_local i32 @ea_resolve(i32*, i32, i32, i32) #1

declare dso_local i32 @op_ill(i32*, i32) #1

declare dso_local i32 @ea_set(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
