; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsm_parser.c_gsm_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_gsm_parser.c_gsm_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@GSM_BLOCK_SIZE = common dso_local global i32 0, align 4
@GSM_FRAME_SIZE = common dso_local global i32 0, align 4
@GSM_MS_BLOCK_SIZE = common dso_local global i32 0, align 4
@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32**, i32*, i32*, i32)* @gsm_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gsm_parse(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %14, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 3
  store i32* %21, i32** %15, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %59, label %26

26:                                               ; preds = %6
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %56 [
    i32 129, label %30
    i32 128, label %37
  ]

30:                                               ; preds = %26
  %31 = load i32, i32* @GSM_BLOCK_SIZE, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load i32, i32* @GSM_FRAME_SIZE, align 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %58

37:                                               ; preds = %26
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  br label %48

46:                                               ; preds = %37
  %47 = load i32, i32* @GSM_MS_BLOCK_SIZE, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = phi i32 [ %45, %42 ], [ %47, %46 ]
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @GSM_FRAME_SIZE, align 4
  %53 = mul nsw i32 %52, 2
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %58

56:                                               ; preds = %26
  %57 = call i32 @av_assert0(i32 0)
  br label %58

58:                                               ; preds = %56, %48, %30
  br label %59

59:                                               ; preds = %58, %6
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %59
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %13, align 4
  %75 = icmp sle i32 %73, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %16, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 2
  store i32 0, i32* %81, align 4
  br label %89

82:                                               ; preds = %70
  %83 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %83, i32* %16, align 4
  %84 = load i32, i32* %13, align 4
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = sub nsw i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %82, %76
  %90 = load i32*, i32** %15, align 8
  %91 = load i32, i32* %16, align 4
  %92 = call i64 @ff_combine_frame(i32* %90, i32 %91, i32** %12, i32* %13)
  %93 = icmp slt i64 %92, 0
  br i1 %93, label %97, label %94

94:                                               ; preds = %89
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94, %89
  %98 = load i32**, i32*** %10, align 8
  store i32* null, i32** %98, align 8
  %99 = load i32*, i32** %11, align 8
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %13, align 4
  store i32 %100, i32* %7, align 4
  br label %112

101:                                              ; preds = %94
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load i32*, i32** %12, align 8
  %108 = load i32**, i32*** %10, align 8
  store i32* %107, i32** %108, align 8
  %109 = load i32, i32* %13, align 4
  %110 = load i32*, i32** %11, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %7, align 4
  br label %112

112:                                              ; preds = %101, %97
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i64 @ff_combine_frame(i32*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
