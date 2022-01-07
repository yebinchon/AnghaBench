; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_mpeg2.c_cbs_mpeg2_assemble_fragment.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cbs_mpeg2.c_cbs_mpeg2_assemble_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i64, %struct.TYPE_5__*, %struct.TYPE_7__* }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_7__ = type { i32* }

@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*)* @cbs_mpeg2_assemble_fragment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cbs_mpeg2_assemble_fragment(i32* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %5, align 8
  store i64 0, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %29, %2
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %11
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = add nsw i64 3, %25
  %27 = load i64, i64* %7, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %7, align 8
  br label %29

29:                                               ; preds = %17
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %35 = add i64 %33, %34
  %36 = call %struct.TYPE_7__* @av_buffer_alloc(i64 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  store %struct.TYPE_7__* %36, %struct.TYPE_7__** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = icmp ne %struct.TYPE_7__* %41, null
  br i1 %42, label %46, label %43

43:                                               ; preds = %32
  %44 = load i32, i32* @ENOMEM, align 4
  %45 = call i32 @AVERROR(i32 %44)
  store i32 %45, i32* %3, align 4
  br label %112

46:                                               ; preds = %32
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  store i32* %51, i32** %6, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %92, %46
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %95

58:                                               ; preds = %52
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %63
  store %struct.TYPE_5__* %64, %struct.TYPE_5__** %10, align 8
  %65 = load i32*, i32** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %8, align 8
  %68 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32 0, i32* %68, align 4
  %69 = load i32*, i32** %6, align 8
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  %72 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32 0, i32* %72, align 4
  %73 = load i32*, i32** %6, align 8
  %74 = load i64, i64* %8, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %8, align 8
  %76 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32 1, i32* %76, align 4
  %77 = load i32*, i32** %6, align 8
  %78 = load i64, i64* %8, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @memcpy(i32* %79, i32 %82, i64 %85)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %8, align 8
  %91 = add i64 %90, %89
  store i64 %91, i64* %8, align 8
  br label %92

92:                                               ; preds = %58
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %52

95:                                               ; preds = %52
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %7, align 8
  %98 = icmp eq i64 %96, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @av_assert0(i32 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* %7, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %105 = call i32 @memset(i32* %103, i32 0, i64 %104)
  %106 = load i32*, i32** %6, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 1
  store i32* %106, i32** %108, align 8
  %109 = load i64, i64* %7, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 2
  store i64 %109, i64* %111, align 8
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %95, %43
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.TYPE_7__* @av_buffer_alloc(i64) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
