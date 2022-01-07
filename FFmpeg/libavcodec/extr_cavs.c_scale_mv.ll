; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_scale_mv.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_scale_mv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32*, %struct.TYPE_5__*, i32)* @scale_mv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scale_mv(%struct.TYPE_6__* %0, i32* %1, i32* %2, %struct.TYPE_5__* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_5__* %3, %struct.TYPE_5__** %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @FFMAX(i32 %17, i32 0)
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* %11, align 4
  %27 = mul nsw i32 %25, %26
  %28 = add nsw i32 %27, 256
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @FF_SIGNBIT(i32 %31)
  %33 = add nsw i32 %28, %32
  %34 = ashr i32 %33, 9
  %35 = load i32*, i32** %7, align 8
  store i32 %34, i32* %35, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %10, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %40, %41
  %43 = add nsw i32 %42, 256
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @FF_SIGNBIT(i32 %46)
  %48 = add nsw i32 %43, %47
  %49 = ashr i32 %48, 9
  %50 = load i32*, i32** %8, align 8
  store i32 %49, i32* %50, align 4
  ret void
}

declare dso_local i64 @FFMAX(i32, i32) #1

declare dso_local i32 @FF_SIGNBIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
