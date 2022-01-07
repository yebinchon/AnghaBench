; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_very_broken_op.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_twinvqdec.c_very_broken_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }

@tabs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @very_broken_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @very_broken_op(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* %5, align 4
  %11 = mul nsw i32 %9, %10
  %12 = add nsw i32 %11, 200
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = srem i32 %13, 400
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = srem i32 %17, 5
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %6, align 4
  %22 = sdiv i32 %21, 400
  store i32 %22, i32* %3, align 4
  br label %59

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = sdiv i32 %24, 400
  store i32 %25, i32* %6, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tabs, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sdiv i32 %27, 5
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tabs, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %34, 5
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 1
  %45 = mul nsw i32 2, %44
  %46 = load i32, i32* %7, align 4
  %47 = sdiv i32 %45, %46
  %48 = call i32 @av_log2(i32 %47)
  %49 = mul nsw i32 %42, %48
  %50 = load i32, i32* %6, align 4
  %51 = sub nsw i32 %50, 1
  %52 = load i32, i32* %7, align 4
  %53 = srem i32 %51, %52
  %54 = add nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %41, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %40, %57
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %23, %20
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @av_log2(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
