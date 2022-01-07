; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_add_ctts_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_add_ctts_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__**, i32*, i32*, i32, i32)* @add_ctts_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_ctts_entry(%struct.TYPE_5__** %0, i32* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %15, align 4
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = mul i64 %18, 8
  store i64 %19, i64* %13, align 8
  %20 = load i64, i64* %13, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %21, align 4
  %23 = zext i32 %22 to i64
  %24 = icmp ugt i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %5
  %26 = load i64, i64* %13, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32, i32* %27, align 4
  %29 = mul i32 2, %28
  %30 = call i64 @FFMAX(i64 %26, i32 %29)
  br label %33

31:                                               ; preds = %5
  %32 = load i64, i64* %13, align 8
  br label %33

33:                                               ; preds = %31, %25
  %34 = phi i64 [ %30, %25 ], [ %32, %31 ]
  store i64 %34, i64* %14, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %35, align 4
  %37 = zext i32 %36 to i64
  %38 = load i32, i32* @UINT_MAX, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 8
  %41 = sub i64 %40, 1
  %42 = icmp uge i64 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %33
  store i32 -1, i32* %6, align 4
  br label %76

44:                                               ; preds = %33
  %45 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i64, i64* %14, align 8
  %49 = call %struct.TYPE_5__* @av_fast_realloc(%struct.TYPE_5__* %46, i32* %47, i64 %48)
  store %struct.TYPE_5__* %49, %struct.TYPE_5__** %12, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %51 = icmp ne %struct.TYPE_5__* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %76

53:                                               ; preds = %44
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %55, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %65 = load i32*, i32** %8, align 8
  %66 = load i32, i32* %65, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %63, i32* %69, align 4
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = add i32 %71, 1
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %8, align 8
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %53, %52, %43
  %77 = load i32, i32* %6, align 4
  ret i32 %77
}

declare dso_local i64 @FFMAX(i64, i32) #1

declare dso_local %struct.TYPE_5__* @av_fast_realloc(%struct.TYPE_5__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
