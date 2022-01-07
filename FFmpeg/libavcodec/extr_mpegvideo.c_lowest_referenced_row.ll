; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_lowest_referenced_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpegvideo.c_lowest_referenced_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32***, i32, i64, i64, i32 }

@INT_MIN = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@PICT_FRAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @lowest_referenced_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lowest_referenced_row(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @INT_MIN, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* @INT_MAX, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %8, align 4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PICT_FRAME, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %2
  br label %88

32:                                               ; preds = %26
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  switch i32 %35, label %39 [
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
  ]

36:                                               ; preds = %32
  store i32 1, i32* %12, align 4
  br label %40

37:                                               ; preds = %32
  store i32 2, i32* %12, align 4
  br label %40

38:                                               ; preds = %32
  store i32 4, i32* %12, align 4
  br label %40

39:                                               ; preds = %32
  br label %88

40:                                               ; preds = %38, %37, %36
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %65, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  %48 = load i32***, i32**** %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32**, i32*** %48, i64 %50
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @FFMAX(i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @FFMIN(i32 %62, i32 %63)
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %45
  %66 = load i32, i32* %11, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %11, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load i32, i32* %7, align 4
  %70 = sub nsw i32 0, %69
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @FFMAX(i32 %70, i32 %71)
  %73 = load i32, i32* %8, align 4
  %74 = shl i32 %72, %73
  %75 = add nsw i32 %74, 63
  %76 = ashr i32 %75, 6
  store i32 %76, i32* %10, align 4
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = load i32, i32* %10, align 4
  %81 = sext i32 %80 to i64
  %82 = add nsw i64 %79, %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 1
  %87 = call i32 @av_clip(i64 %82, i32 0, i32 %86)
  store i32 %87, i32* %3, align 4
  br label %93

88:                                               ; preds = %39, %31
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = sub nsw i32 %91, 1
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %68
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_clip(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
