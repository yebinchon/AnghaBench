; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_acelp_fc_pulse_per_track.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_acelp_vectors.c_ff_acelp_fc_pulse_per_track.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_acelp_fc_pulse_per_track(i32* %0, i32* %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %17 = load i32, i32* %14, align 4
  %18 = shl i32 1, %17
  %19 = sub nsw i32 %18, 1
  store i32 %19, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %20

20:                                               ; preds = %49, %7
  %21 = load i32, i32* %16, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %52

24:                                               ; preds = %20
  %25 = load i32, i32* %12, align 4
  %26 = and i32 %25, 1
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i32 8191, i32 -8192
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %16, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %15, align 4
  %35 = and i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %32, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %31, %38
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %30, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %29
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* %11, align 4
  %46 = ashr i32 %45, %44
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %12, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %24
  %50 = load i32, i32* %16, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %16, align 4
  br label %20

52:                                               ; preds = %20
  %53 = load i32, i32* %12, align 4
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 8191, i32 -8192
  %58 = load i32*, i32** %8, align 8
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %58, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, %57
  store i32 %67, i32* %65, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
