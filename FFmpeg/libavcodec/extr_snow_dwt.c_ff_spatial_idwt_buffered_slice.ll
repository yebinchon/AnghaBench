; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_ff_spatial_idwt_buffered_slice.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_snow_dwt.c_ff_spatial_idwt_buffered_slice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_spatial_idwt_buffered_slice(i32* %0, %struct.TYPE_5__* %1, i32* %2, i32* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 3, i32 5
  store i32 %26, i32* %21, align 4
  %27 = load i32, i32* %18, align 4
  %28 = icmp eq i32 %27, 2
  br i1 %28, label %29, label %30

29:                                               ; preds = %10
  br label %96

30:                                               ; preds = %10
  %31 = load i32, i32* %19, align 4
  %32 = sub nsw i32 %31, 1
  store i32 %32, i32* %22, align 4
  br label %33

33:                                               ; preds = %93, %30
  %34 = load i32, i32* %22, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %96

36:                                               ; preds = %33
  br label %37

37:                                               ; preds = %91, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = load i32, i32* %22, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %22, align 4
  %46 = ashr i32 %44, %45
  %47 = load i32, i32* %21, align 4
  %48 = add nsw i32 %46, %47
  %49 = load i32, i32* %16, align 4
  %50 = load i32, i32* %22, align 4
  %51 = ashr i32 %49, %50
  %52 = call i64 @FFMIN(i32 %48, i32 %51)
  %53 = icmp sle i64 %43, %52
  br i1 %53, label %54, label %92

54:                                               ; preds = %37
  %55 = load i32, i32* %18, align 4
  switch i32 %55, label %91 [
    i32 128, label %56
    i32 129, label %74
  ]

56:                                               ; preds = %54
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %59 = load i32, i32* %22, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = load i32*, i32** %13, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %22, align 4
  %66 = ashr i32 %64, %65
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %22, align 4
  %69 = ashr i32 %67, %68
  %70 = load i32, i32* %17, align 4
  %71 = load i32, i32* %22, align 4
  %72 = shl i32 %70, %71
  %73 = call i32 @spatial_compose97i_dy_buffered(i32* %57, %struct.TYPE_5__* %61, i32* %62, i32* %63, i32 %66, i32 %69, i32 %72)
  br label %91

74:                                               ; preds = %54
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %77
  %79 = load i32*, i32** %13, align 8
  %80 = load i32*, i32** %14, align 8
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %22, align 4
  %83 = ashr i32 %81, %82
  %84 = load i32, i32* %16, align 4
  %85 = load i32, i32* %22, align 4
  %86 = ashr i32 %84, %85
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %22, align 4
  %89 = shl i32 %87, %88
  %90 = call i32 @spatial_compose53i_dy_buffered(%struct.TYPE_5__* %78, i32* %79, i32* %80, i32 %83, i32 %86, i32 %89)
  br label %91

91:                                               ; preds = %54, %74, %56
  br label %37

92:                                               ; preds = %37
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %22, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %22, align 4
  br label %33

96:                                               ; preds = %29, %33
  ret void
}

declare dso_local i64 @FFMIN(i32, i32) #1

declare dso_local i32 @spatial_compose97i_dy_buffered(i32*, %struct.TYPE_5__*, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @spatial_compose53i_dy_buffered(%struct.TYPE_5__*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
