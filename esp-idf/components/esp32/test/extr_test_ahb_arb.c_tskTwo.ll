; ModuleID = '/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_tskTwo.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/esp32/test/extr_test_ahb_arb.c_tskTwo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FB2ADDR = common dso_local global i64 0, align 8
@test_s32c1i_lock = common dso_local global i64 0, align 8
@state = common dso_local global i32 0, align 4
@lock = common dso_local global i32 0, align 4
@ctr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tskTwo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tskTwo(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca void (i32*, i32, i32, i32*)*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = load i64, i64* @FB2ADDR, align 8
  %10 = inttoptr i64 %9 to i32*
  store i32* %10, i32** %4, align 8
  %11 = load i64, i64* @test_s32c1i_lock, align 8
  %12 = inttoptr i64 %11 to i32*
  store i32* %12, i32** %5, align 8
  %13 = load i64, i64* @FB2ADDR, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to void (i32*, i32, i32, i32*)*
  store void (i32*, i32, i32, i32*)* %15, void (i32*, i32, i32, i32*)** %6, align 8
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %25, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 100
  br i1 %18, label %19, label %28

19:                                               ; preds = %16
  %20 = load i32*, i32** %5, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %5, align 8
  %22 = load i32, i32* %20, align 4
  %23 = load i32*, i32** %4, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %4, align 8
  store i32 %22, i32* %23, align 4
  br label %25

25:                                               ; preds = %19
  %26 = load i32, i32* %3, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %3, align 4
  br label %16

28:                                               ; preds = %16
  br label %29

29:                                               ; preds = %28, %64
  br label %30

30:                                               ; preds = %33, %29
  %31 = load i32, i32* @state, align 4
  %32 = icmp ne i32 %31, 1
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  br label %30

34:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %56, %34
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 16384
  br i1 %37, label %38, label %59

38:                                               ; preds = %35
  %39 = load void (i32*, i32, i32, i32*)*, void (i32*, i32, i32, i32*)** %6, align 8
  call void %39(i32* @lock, i32 2, i32 0, i32* @ctr)
  %40 = load i32, i32* %3, align 4
  %41 = and i32 %40, 31
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %38
  %44 = call i32 (...) @rand()
  %45 = and i32 %44, 31
  store i32 %45, i32* %8, align 4
  store volatile i32 0, i32* %7, align 4
  br label %46

46:                                               ; preds = %51, %43
  %47 = load volatile i32, i32* %7, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %46
  br label %51

51:                                               ; preds = %50
  %52 = load volatile i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store volatile i32 %53, i32* %7, align 4
  br label %46

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %38
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %35

59:                                               ; preds = %35
  br label %60

60:                                               ; preds = %63, %59
  %61 = load i32, i32* @state, align 4
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  br label %60

64:                                               ; preds = %60
  br label %29
}

declare dso_local i32 @rand(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
