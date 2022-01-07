; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_assemble_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_av1.c_cbs_av1_assemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__*, i64, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64 }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @cbs_av1_assemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_av1_assemble_fragment(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %9
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = add i64 %24, %23
  store i64 %25, i64* %6, align 8
  br label %26

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %8, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %32 = add i64 %30, %31
  %33 = call %struct.TYPE_7__* @av_buffer_alloc(i64 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %35, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = icmp ne %struct.TYPE_7__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %29
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = call i32 @AVERROR(i32 %41)
  store i32 %42, i32* %3, align 4
  br label %109

43:                                               ; preds = %29
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  store i64 %48, i64* %50, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* %6, align 8
  %55 = add i64 %53, %54
  %56 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %57 = call i32 @memset(i64 %55, i32 0, i64 %56)
  store i64 0, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %58

58:                                               ; preds = %97, %43
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %59, %62
  br i1 %63, label %64, label %100

64:                                               ; preds = %58
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = add i64 %67, %68
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = load i32, i32* %8, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memcpy(i64 %69, i32 %77, i64 %85)
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* %7, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %64
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %58

100:                                              ; preds = %58
  %101 = load i64, i64* %7, align 8
  %102 = load i64, i64* %6, align 8
  %103 = icmp eq i64 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @av_assert0(i32 %104)
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %100, %40
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.TYPE_7__* @av_buffer_alloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @memcpy(i64, i32, i64) #1

declare dso_local i32 @av_assert0(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
