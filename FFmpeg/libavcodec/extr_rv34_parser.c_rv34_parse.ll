; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34_parser.c_rv34_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rv34_parser.c_rv34_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.TYPE_8__ = type { i64 }

@AV_CODEC_ID_RV30 = common dso_local global i64 0, align 8
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@rv_to_av_frame_type = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_8__*, i32**, i32*, i32*, i32)* @rv34_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rv34_parse(%struct.TYPE_7__* %0, %struct.TYPE_8__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  store %struct.TYPE_6__* %20, %struct.TYPE_6__** %14, align 8
  %21 = load i32, i32* %13, align 4
  %22 = load i32*, i32** %12, align 8
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 8
  %25 = add nsw i32 13, %24
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = load i32*, i32** %12, align 8
  %29 = load i32**, i32*** %10, align 8
  store i32* %28, i32** %29, align 8
  %30 = load i32, i32* %13, align 4
  %31 = load i32*, i32** %11, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %7, align 4
  br label %124

33:                                               ; preds = %6
  %34 = load i32*, i32** %12, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 9
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  %41 = call i32 @AV_RB32(i32* %40)
  store i32 %41, i32* %17, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AV_CODEC_ID_RV30, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load i32, i32* %17, align 4
  %49 = ashr i32 %48, 27
  %50 = and i32 %49, 3
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %17, align 4
  %52 = ashr i32 %51, 7
  %53 = and i32 %52, 8191
  store i32 %53, i32* %16, align 4
  br label %61

54:                                               ; preds = %33
  %55 = load i32, i32* %17, align 4
  %56 = ashr i32 %55, 29
  %57 = and i32 %56, 3
  store i32 %57, i32* %15, align 4
  %58 = load i32, i32* %17, align 4
  %59 = ashr i32 %58, 6
  %60 = and i32 %59, 8191
  store i32 %60, i32* %16, align 4
  br label %61

61:                                               ; preds = %54, %47
  %62 = load i32, i32* %15, align 4
  %63 = icmp ne i32 %62, 3
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i32, i32* %16, align 4
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 8
  br label %111

79:                                               ; preds = %64, %61
  %80 = load i32, i32* %15, align 4
  %81 = icmp ne i32 %80, 3
  br i1 %81, label %82, label %96

82:                                               ; preds = %79
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %16, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %86, %89
  %91 = and i32 %90, 8191
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %85, %92
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  store i64 %93, i64* %95, align 8
  br label %110

96:                                               ; preds = %79
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %16, align 4
  %104 = sub nsw i32 %102, %103
  %105 = and i32 %104, 8191
  %106 = sext i32 %105 to i64
  %107 = sub nsw i64 %99, %106
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  store i64 %107, i64* %109, align 8
  br label %110

110:                                              ; preds = %96, %82
  br label %111

111:                                              ; preds = %110, %70
  %112 = load i32*, i32** @rv_to_av_frame_type, align 8
  %113 = load i32, i32* %15, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 8
  %119 = load i32*, i32** %12, align 8
  %120 = load i32**, i32*** %10, align 8
  store i32* %119, i32** %120, align 8
  %121 = load i32, i32* %13, align 4
  %122 = load i32*, i32** %11, align 8
  store i32 %121, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %111, %27
  %125 = load i32, i32* %7, align 4
  ret i32 %125
}

declare dso_local i32 @AV_RB32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
