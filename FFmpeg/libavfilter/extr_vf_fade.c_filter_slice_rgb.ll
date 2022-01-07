; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fade.c_filter_slice_rgb.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_fade.c_filter_slice_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8*, i32, i32)* @filter_slice_rgb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_slice_rgb(%struct.TYPE_9__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  store %struct.TYPE_7__* %15, %struct.TYPE_7__** %9, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %10, align 8
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %7, align 4
  %29 = add nsw i32 %28, 1
  %30 = mul nsw i32 %27, %29
  %31 = load i32, i32* %8, align 4
  %32 = sdiv i32 %30, %31
  store i32 %32, i32* %12, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @filter_rgb(%struct.TYPE_7__* %38, %struct.TYPE_8__* %39, i32 %40, i32 %41, i32 1, i32 4)
  br label %69

43:                                               ; preds = %4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 %46, 3
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @filter_rgb(%struct.TYPE_7__* %49, %struct.TYPE_8__* %50, i32 %51, i32 %52, i32 0, i32 3)
  br label %68

54:                                               ; preds = %43
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 4
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @filter_rgb(%struct.TYPE_7__* %60, %struct.TYPE_8__* %61, i32 %62, i32 %63, i32 0, i32 4)
  br label %67

65:                                               ; preds = %54
  %66 = call i32 @av_assert0(i32 0)
  br label %67

67:                                               ; preds = %65, %59
  br label %68

68:                                               ; preds = %67, %48
  br label %69

69:                                               ; preds = %68, %37
  ret i32 0
}

declare dso_local i32 @filter_rgb(%struct.TYPE_7__*, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
