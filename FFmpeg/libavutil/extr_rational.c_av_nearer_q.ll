; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_rational.c_av_nearer_q.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_rational.c_av_nearer_q.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@AV_ROUND_UP = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_nearer_q(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_7__, align 4
  %5 = alloca %struct.TYPE_7__, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = bitcast %struct.TYPE_7__* %4 to i64*
  store i64 %0, i64* %11, align 4
  %12 = bitcast %struct.TYPE_7__* %5 to i64*
  store i64 %1, i64* %12, align 4
  %13 = bitcast %struct.TYPE_7__* %6 to i64*
  store i64 %2, i64* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %15, %17
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %20, %22
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %7, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 2, %26
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %27, %29
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @AV_ROUND_UP, align 4
  %36 = call i32 @av_rescale_rnd(i32 %31, i32 %33, i32 %34, i32 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @AV_ROUND_DOWN, align 4
  %42 = call i32 @av_rescale_rnd(i32 %37, i32 %39, i32 %40, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %9, align 4
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %43, %45
  %47 = zext i1 %46 to i32
  %48 = load i32, i32* %10, align 4
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp slt i32 %48, %50
  %52 = zext i1 %51 to i32
  %53 = sub nsw i32 %47, %52
  %54 = bitcast %struct.TYPE_7__* %6 to i64*
  %55 = load i64, i64* %54, align 4
  %56 = bitcast %struct.TYPE_7__* %5 to i64*
  %57 = load i64, i64* %56, align 4
  %58 = call i32 @av_cmp_q(i64 %55, i64 %57)
  %59 = mul nsw i32 %53, %58
  ret i32 %59
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

declare dso_local i32 @av_cmp_q(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
