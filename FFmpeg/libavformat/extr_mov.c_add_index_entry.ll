; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_add_index_entry.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_add_index_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32, i32, i32, i32)* @add_index_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_index_entry(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_7__*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 -1, i32* %16, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 20
  store i64 %24, i64* %17, align 8
  %25 = load i64, i64* %17, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ugt i64 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %6
  %31 = load i64, i64* %17, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 2, %34
  %36 = trunc i64 %35 to i32
  %37 = call i64 @FFMAX(i64 %31, i32 %36)
  br label %40

38:                                               ; preds = %6
  %39 = load i64, i64* %17, align 8
  br label %40

40:                                               ; preds = %38, %30
  %41 = phi i64 [ %37, %30 ], [ %39, %38 ]
  store i64 %41, i64* %18, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = load i32, i32* @UINT_MAX, align 4
  %48 = sext i32 %47 to i64
  %49 = udiv i64 %48, 20
  %50 = icmp uge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32 -1, i32* %7, align 4
  br label %92

52:                                               ; preds = %40
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = bitcast i64* %57 to i32*
  %59 = load i64, i64* %18, align 8
  %60 = call %struct.TYPE_7__* @av_fast_realloc(%struct.TYPE_7__* %55, i32* %58, i64 %59)
  store %struct.TYPE_7__* %60, %struct.TYPE_7__** %14, align 8
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %62 = icmp ne %struct.TYPE_7__* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %52
  store i32 -1, i32* %7, align 4
  br label %92

64:                                               ; preds = %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  store %struct.TYPE_7__* %65, %struct.TYPE_7__** %67, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  store i32 %70, i32* %16, align 4
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %74
  store %struct.TYPE_7__* %75, %struct.TYPE_7__** %15, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 4
  store i32 %88, i32* %90, align 4
  %91 = load i32, i32* %16, align 4
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %64, %63, %51
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @FFMAX(i64, i32) #1

declare dso_local %struct.TYPE_7__* @av_fast_realloc(%struct.TYPE_7__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
