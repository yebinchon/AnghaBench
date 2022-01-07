; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_cond_check.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_cond_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@A_COND_AL = common dso_local global i32 0, align 4
@dirty_regb = common dso_local global i32 0, align 4
@KRREG_ST = common dso_local global i32 0, align 4
@A_COND_EQ = common dso_local global i32 0, align 4
@A_COND_NE = common dso_local global i32 0, align 4
@A_COND_MI = common dso_local global i32 0, align 4
@A_COND_PL = common dso_local global i32 0, align 4
@EL_ANOMALY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"unimplemented cond?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tr_cond_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_cond_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = and i32 %5, 256
  %7 = ashr i32 %6, 8
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 240
  switch i32 %9, label %60 [
    i32 0, label %10
    i32 80, label %12
    i32 112, label %36
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @A_COND_AL, align 4
  store i32 %11, i32* %2, align 4
  br label %64

12:                                               ; preds = %1
  %13 = load i32, i32* @dirty_regb, align 4
  %14 = load i32, i32* @KRREG_ST, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @A_COND_EQ, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @A_COND_NE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %2, align 4
  br label %64

26:                                               ; preds = %12
  %27 = call i32 @EOP_TST_IMM(i32 6, i32 0, i32 4)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @A_COND_NE, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @A_COND_EQ, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %2, align 4
  br label %64

36:                                               ; preds = %1
  %37 = load i32, i32* @dirty_regb, align 4
  %38 = load i32, i32* @KRREG_ST, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %36
  %42 = load i32, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = load i32, i32* @A_COND_MI, align 4
  br label %48

46:                                               ; preds = %41
  %47 = load i32, i32* @A_COND_PL, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  store i32 %49, i32* %2, align 4
  br label %64

50:                                               ; preds = %36
  %51 = call i32 @EOP_TST_IMM(i32 6, i32 0, i32 8)
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @A_COND_NE, align 4
  br label %58

56:                                               ; preds = %50
  %57 = load i32, i32* @A_COND_EQ, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %2, align 4
  br label %64

60:                                               ; preds = %1
  %61 = load i32, i32* @EL_ANOMALY, align 4
  %62 = call i32 @elprintf(i32 %61, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %63 = call i32 (...) @tr_unhandled()
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %60, %58, %48, %34, %24, %10
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @EOP_TST_IMM(i32, i32, i32) #1

declare dso_local i32 @elprintf(i32, i8*) #1

declare dso_local i32 @tr_unhandled(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
