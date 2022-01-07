; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_l1.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavsdsp.c_loop_filter_l1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P0 = common dso_local global i32 0, align 4
@Q0 = common dso_local global i32 0, align 4
@P1 = common dso_local global i32 0, align 4
@Q1 = common dso_local global i32 0, align 4
@P2 = common dso_local global i32 0, align 4
@Q2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @loop_filter_l1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_filter_l1(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* @P0, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* @Q0, align 4
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sub nsw i32 %16, %17
  %19 = call i32 @abs(i32 %18) #3
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %5
  %23 = load i32, i32* @P1, align 4
  %24 = load i32, i32* %11, align 4
  %25 = sub nsw i32 %23, %24
  %26 = call i32 @abs(i32 %25) #3
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %111

29:                                               ; preds = %22
  %30 = load i32, i32* @Q1, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sub nsw i32 %30, %31
  %33 = call i32 @abs(i32 %32) #3
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %111

36:                                               ; preds = %29
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 %37, %38
  %40 = mul nsw i32 %39, 3
  %41 = load i32, i32* @P1, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* @Q1, align 4
  %44 = sub nsw i32 %42, %43
  %45 = add nsw i32 %44, 4
  %46 = ashr i32 %45, 3
  %47 = load i32, i32* %10, align 4
  %48 = sub nsw i32 0, %47
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @av_clip(i32 %46, i32 %48, i32 %49)
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @av_clip_uint8(i32 %53)
  store i32 %54, i32* @P0, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %13, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @av_clip_uint8(i32 %57)
  store i32 %58, i32* @Q0, align 4
  %59 = load i32, i32* @P2, align 4
  %60 = load i32, i32* %11, align 4
  %61 = sub nsw i32 %59, %60
  %62 = call i32 @abs(i32 %61) #3
  %63 = load i32, i32* %9, align 4
  %64 = icmp slt i32 %62, %63
  br i1 %64, label %65, label %84

65:                                               ; preds = %36
  %66 = load i32, i32* @P0, align 4
  %67 = load i32, i32* @P1, align 4
  %68 = sub nsw i32 %66, %67
  %69 = mul nsw i32 %68, 3
  %70 = load i32, i32* @P2, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @Q0, align 4
  %73 = sub nsw i32 %71, %72
  %74 = add nsw i32 %73, 4
  %75 = ashr i32 %74, 3
  %76 = load i32, i32* %10, align 4
  %77 = sub nsw i32 0, %76
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @av_clip(i32 %75, i32 %77, i32 %78)
  store i32 %79, i32* %13, align 4
  %80 = load i32, i32* @P1, align 4
  %81 = load i32, i32* %13, align 4
  %82 = add nsw i32 %80, %81
  %83 = call i32 @av_clip_uint8(i32 %82)
  store i32 %83, i32* @P1, align 4
  br label %84

84:                                               ; preds = %65, %36
  %85 = load i32, i32* @Q2, align 4
  %86 = load i32, i32* %12, align 4
  %87 = sub nsw i32 %85, %86
  %88 = call i32 @abs(i32 %87) #3
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %110

91:                                               ; preds = %84
  %92 = load i32, i32* @Q1, align 4
  %93 = load i32, i32* @Q0, align 4
  %94 = sub nsw i32 %92, %93
  %95 = mul nsw i32 %94, 3
  %96 = load i32, i32* @P0, align 4
  %97 = add nsw i32 %95, %96
  %98 = load i32, i32* @Q2, align 4
  %99 = sub nsw i32 %97, %98
  %100 = add nsw i32 %99, 4
  %101 = ashr i32 %100, 3
  %102 = load i32, i32* %10, align 4
  %103 = sub nsw i32 0, %102
  %104 = load i32, i32* %10, align 4
  %105 = call i32 @av_clip(i32 %101, i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* @Q1, align 4
  %107 = load i32, i32* %13, align 4
  %108 = sub nsw i32 %106, %107
  %109 = call i32 @av_clip_uint8(i32 %108)
  store i32 %109, i32* @Q1, align 4
  br label %110

110:                                              ; preds = %91, %84
  br label %111

111:                                              ; preds = %110, %29, %22, %5
  ret void
}

; Function Attrs: nounwind readnone
declare dso_local i32 @abs(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #2

declare dso_local i32 @av_clip_uint8(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
