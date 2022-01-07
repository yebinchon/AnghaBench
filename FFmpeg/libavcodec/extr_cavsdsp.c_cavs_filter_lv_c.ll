; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_cavs_filter_lv_c.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_cavs_filter_lv_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32, i32)* @cavs_filter_lv_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cavs_filter_lv_c(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %13, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %36

18:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %19

19:                                               ; preds = %32, %18
  %20 = load i32, i32* %15, align 4
  %21 = icmp slt i32 %20, 16
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i32*, i32** %8, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %9, align 4
  %26 = mul nsw i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %23, i64 %27
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @loop_filter_l2(i32* %28, i32 1, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22
  %33 = load i32, i32* %15, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %15, align 4
  br label %19

35:                                               ; preds = %19
  br label %81

36:                                               ; preds = %7
  %37 = load i32, i32* %13, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %58

39:                                               ; preds = %36
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %54, %39
  %41 = load i32, i32* %15, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %9, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @loop_filter_l1(i32* %49, i32 1, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %43
  %55 = load i32, i32* %15, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %15, align 4
  br label %40

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57, %36
  %59 = load i32, i32* %14, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %58
  store i32 8, i32* %15, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = load i32, i32* %15, align 4
  %64 = icmp slt i32 %63, 16
  br i1 %64, label %65, label %79

65:                                               ; preds = %62
  %66 = load i32*, i32** %8, align 8
  %67 = load i32, i32* %15, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %66, i64 %70
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @loop_filter_l1(i32* %71, i32 1, i32 %72, i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %65
  %77 = load i32, i32* %15, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %15, align 4
  br label %62

79:                                               ; preds = %62
  br label %80

80:                                               ; preds = %79, %58
  br label %81

81:                                               ; preds = %80, %35
  ret void
}

declare dso_local i32 @loop_filter_l2(i32*, i32, i32, i32) #1

declare dso_local i32 @loop_filter_l1(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
