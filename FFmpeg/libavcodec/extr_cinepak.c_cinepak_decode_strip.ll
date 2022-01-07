; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_decode_strip.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cinepak.c_cinepak_decode_strip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64 }
%struct.TYPE_7__ = type { i64, i64, i64, i64, i32, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_7__*, i32*, i32)* @cinepak_decode_strip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cinepak_decode_strip(%struct.TYPE_8__* %0, %struct.TYPE_7__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %13, i64 %15
  store i32* %16, i32** %10, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %48, label %24

24:                                               ; preds = %4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %48, label %32

32:                                               ; preds = %24
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sge i64 %35, %38
  br i1 %39, label %48, label %40

40:                                               ; preds = %32
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sge i64 %43, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %40, %32, %24, %4
  %49 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %49, i32* %5, align 4
  br label %121

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %114, %50
  %52 = load i32*, i32** %8, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32*, i32** %10, align 8
  %55 = icmp ule i32* %53, %54
  br i1 %55, label %56, label %119

56:                                               ; preds = %51
  %57 = load i32*, i32** %8, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %11, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = call i32 @AV_RB24(i32* %61)
  %63 = sub nsw i32 %62, 4
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %12, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %5, align 4
  br label %121

68:                                               ; preds = %56
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 4
  store i32* %70, i32** %8, align 8
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32*, i32** %10, align 8
  %76 = icmp ugt i32* %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %68
  %78 = load i32*, i32** %10, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = ptrtoint i32* %78 to i64
  %81 = ptrtoint i32* %79 to i64
  %82 = sub i64 %80, %81
  %83 = sdiv exact i64 %82, 4
  br label %87

84:                                               ; preds = %68
  %85 = load i32, i32* %12, align 4
  %86 = sext i32 %85 to i64
  br label %87

87:                                               ; preds = %84, %77
  %88 = phi i64 [ %83, %77 ], [ %86, %84 ]
  %89 = trunc i64 %88 to i32
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %11, align 4
  switch i32 %90, label %114 [
    i32 32, label %91
    i32 33, label %91
    i32 36, label %91
    i32 37, label %91
    i32 34, label %99
    i32 35, label %99
    i32 38, label %99
    i32 39, label %99
    i32 48, label %107
    i32 49, label %107
    i32 50, label %107
  ]

91:                                               ; preds = %87, %87, %87, %87
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %12, align 4
  %97 = load i32*, i32** %8, align 8
  %98 = call i32 @cinepak_decode_codebook(i32 %94, i32 %95, i32 %96, i32* %97)
  br label %114

99:                                               ; preds = %87, %87, %87, %87
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = load i32, i32* %12, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 @cinepak_decode_codebook(i32 %102, i32 %103, i32 %104, i32* %105)
  br label %114

107:                                              ; preds = %87, %87, %87
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %12, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = call i32 @cinepak_decode_vectors(%struct.TYPE_8__* %108, %struct.TYPE_7__* %109, i32 %110, i32 %111, i32* %112)
  store i32 %113, i32* %5, align 4
  br label %121

114:                                              ; preds = %87, %99, %91
  %115 = load i32, i32* %12, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = sext i32 %115 to i64
  %118 = getelementptr inbounds i32, i32* %116, i64 %117
  store i32* %118, i32** %8, align 8
  br label %51

119:                                              ; preds = %51
  %120 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %120, i32* %5, align 4
  br label %121

121:                                              ; preds = %119, %107, %66, %48
  %122 = load i32, i32* %5, align 4
  ret i32 %122
}

declare dso_local i32 @AV_RB24(i32*) #1

declare dso_local i32 @cinepak_decode_codebook(i32, i32, i32, i32*) #1

declare dso_local i32 @cinepak_decode_vectors(%struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
