; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_pcheck.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_pcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { i32 }
%struct.TYPE_2__ = type { i64 }

@SFB_LEVELS = common dso_local global i32 0, align 4
@SFB_PMARK_TH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfb*, i32)* @sfb_pcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfb_pcheck(%struct.sfb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sfb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.sfb* %0, %struct.sfb** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %5, i32** %8, align 8
  %10 = load %struct.sfb*, %struct.sfb** %4, align 8
  %11 = getelementptr inbounds %struct.sfb, %struct.sfb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = xor i32 %14, 1
  %16 = add nsw i32 %13, %15
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i32 @VERIFY(i32 %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SFB_LEVELS, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SFB_BINMASK(i32 %32)
  store i32 %33, i32* %7, align 4
  br label %42

34:                                               ; preds = %24
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @SFB_BINMASK(i32 %40)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %34, %27
  %43 = load %struct.sfb*, %struct.sfb** %4, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.TYPE_2__* @SFB_BINST(%struct.sfb* %43, i32 %44, i32 %45, i32 %46)
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @SFB_PMARK_TH, align 8
  %51 = icmp slt i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  store i32 0, i32* %3, align 4
  br label %58

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %52
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @SFB_BINMASK(i32) #1

declare dso_local %struct.TYPE_2__* @SFB_BINST(%struct.sfb*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
