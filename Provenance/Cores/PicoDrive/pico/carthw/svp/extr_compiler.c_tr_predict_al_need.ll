; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_predict_al_need.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/pico/carthw/svp/extr_compiler.c_tr_predict_al_need.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@known_regs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@SSP_PC = common dso_local global i64 0, align 8
@SSP_A = common dso_local global i32 0, align 4
@SSP_P = common dso_local global i32 0, align 4
@SSP_AL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @tr_predict_al_need to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tr_predict_al_need() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @known_regs, i32 0, i32 0), align 8
  %7 = load i64, i64* @SSP_PC, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %0, %57
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @PROGRAM(i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = ashr i32 %14, 9
  switch i32 %15, label %57 [
    i32 0, label %16
    i32 2, label %35
    i32 10, label %35
    i32 16, label %35
    i32 48, label %35
    i32 64, label %35
    i32 96, label %35
    i32 112, label %35
    i32 4, label %43
    i32 6, label %43
    i32 20, label %43
    i32 52, label %43
    i32 68, label %43
    i32 100, label %43
    i32 116, label %43
    i32 36, label %46
    i32 38, label %46
    i32 72, label %46
    i32 27, label %46
    i32 75, label %46
    i32 91, label %47
    i32 80, label %48
    i32 81, label %56
    i32 83, label %56
    i32 84, label %56
    i32 85, label %56
    i32 89, label %56
    i32 92, label %56
  ]

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = ashr i32 %17, 4
  %19 = and i32 %18, 15
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = and i32 %20, 15
  store i32 %21, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @SSP_A, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %16
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @SSP_P, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25, %16
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SSP_AL, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %25
  store i32 0, i32* %1, align 4
  br label %60

34:                                               ; preds = %29
  br label %57

35:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  %36 = load i32, i32* %4, align 4
  %37 = and i32 %36, 15
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32, i32* @SSP_AL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %1, align 4
  br label %60

42:                                               ; preds = %35
  br label %57

43:                                               ; preds = %11, %11, %11, %11, %11, %11, %11
  %44 = load i32, i32* %5, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %5, align 4
  br label %57

46:                                               ; preds = %11, %11, %11, %11, %11
  store i32 1, i32* %1, align 4
  br label %60

47:                                               ; preds = %11
  store i32 0, i32* %1, align 4
  br label %60

48:                                               ; preds = %11
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, 15
  store i32 %50, i32* %2, align 4
  %51 = load i32, i32* %2, align 4
  %52 = load i32, i32* @SSP_AL, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %1, align 4
  br label %60

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %11, %11, %11, %11, %11, %11, %55
  store i32 0, i32* %1, align 4
  br label %60

57:                                               ; preds = %11, %43, %42, %34
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  br label %11

60:                                               ; preds = %56, %54, %47, %46, %41, %33
  %61 = load i32, i32* %1, align 4
  ret i32 %61
}

declare dso_local i32 @PROGRAM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
