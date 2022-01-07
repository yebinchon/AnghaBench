; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_l2.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P0 = common dso_local global i32 0, align 4
@Q0 = common dso_local global i32 0, align 4
@P1 = common dso_local global i32 0, align 4
@Q1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@Q2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32)* @loop_filter_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_filter_l2(i32* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* @P0, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @Q0, align 4
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = sub nsw i32 %14, %15
  %17 = call i32 @abs(i32 %16) #2
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %106

20:                                               ; preds = %4
  %21 = load i32, i32* @P1, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = call i32 @abs(i32 %23) #2
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %106

27:                                               ; preds = %20
  %28 = load i32, i32* @Q1, align 4
  %29 = load i32, i32* %10, align 4
  %30 = sub nsw i32 %28, %29
  %31 = call i32 @abs(i32 %30) #2
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %106

34:                                               ; preds = %27
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %35, %36
  %38 = add nsw i32 %37, 2
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = ashr i32 %39, 2
  %41 = add nsw i32 %40, 2
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* @P2, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %42, %43
  %45 = call i32 @abs(i32 %44) #2
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %34
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @abs(i32 %51) #2
  %53 = load i32, i32* %7, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %67

55:                                               ; preds = %48
  %56 = load i32, i32* @P1, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %58, %59
  %61 = ashr i32 %60, 2
  store i32 %61, i32* @P0, align 4
  %62 = load i32, i32* @P1, align 4
  %63 = mul nsw i32 2, %62
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %63, %64
  %66 = ashr i32 %65, 2
  store i32 %66, i32* @P1, align 4
  br label %73

67:                                               ; preds = %48, %34
  %68 = load i32, i32* @P1, align 4
  %69 = mul nsw i32 2, %68
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %69, %70
  %72 = ashr i32 %71, 2
  store i32 %72, i32* @P0, align 4
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i32, i32* @Q2, align 4
  %75 = load i32, i32* %10, align 4
  %76 = sub nsw i32 %74, %75
  %77 = call i32 @abs(i32 %76) #2
  %78 = load i32, i32* %8, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %73
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %9, align 4
  %83 = sub nsw i32 %81, %82
  %84 = call i32 @abs(i32 %83) #2
  %85 = load i32, i32* %7, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %80
  %88 = load i32, i32* @Q1, align 4
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %88, %89
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %90, %91
  %93 = ashr i32 %92, 2
  store i32 %93, i32* @Q0, align 4
  %94 = load i32, i32* @Q1, align 4
  %95 = mul nsw i32 2, %94
  %96 = load i32, i32* %11, align 4
  %97 = add nsw i32 %95, %96
  %98 = ashr i32 %97, 2
  store i32 %98, i32* @Q1, align 4
  br label %105

99:                                               ; preds = %80, %73
  %100 = load i32, i32* @Q1, align 4
  %101 = mul nsw i32 2, %100
  %102 = load i32, i32* %11, align 4
  %103 = add nsw i32 %101, %102
  %104 = ashr i32 %103, 2
  store i32 %104, i32* @Q0, align 4
  br label %105

105:                                              ; preds = %99, %87
  br label %106

106:                                              ; preds = %105, %27, %20, %4
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
