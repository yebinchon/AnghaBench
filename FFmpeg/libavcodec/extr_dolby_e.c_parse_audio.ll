; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_audio.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dolby_e.c_parse_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__**, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@AV_EF_EXPLODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, i32, i32)* @parse_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_audio(%struct.TYPE_11__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %14 = call i32 @parse_key(%struct.TYPE_11__* %13)
  store i32 %14, i32* %12, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i32, i32* %12, align 4
  store i32 %17, i32* %5, align 4
  br label %108

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %102, %18
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %105

24:                                               ; preds = %20
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %45, label %33

33:                                               ; preds = %24
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %102

45:                                               ; preds = %24
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %12, align 4
  %55 = call i32 @convert_input(%struct.TYPE_11__* %46, i32 %53, i32 %54)
  store i32 %55, i32* %11, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %5, align 4
  br label %108

59:                                               ; preds = %45
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @parse_channel(%struct.TYPE_11__* %60, i32 %61, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %59
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @AV_EF_EXPLODE, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %5, align 4
  br label %108

76:                                               ; preds = %65
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %78, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %79, i64 %81
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  store i64 0, i64* %87, align 8
  br label %88

88:                                               ; preds = %76, %59
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %92, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @skip_input(%struct.TYPE_11__* %89, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = icmp slt i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %88
  %100 = load i32, i32* %11, align 4
  store i32 %100, i32* %5, align 4
  br label %108

101:                                              ; preds = %88
  br label %102

102:                                              ; preds = %101, %33
  %103 = load i32, i32* %10, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %10, align 4
  br label %20

105:                                              ; preds = %20
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %107 = call i32 @skip_input(%struct.TYPE_11__* %106, i32 1)
  store i32 %107, i32* %5, align 4
  br label %108

108:                                              ; preds = %105, %99, %74, %57, %16
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @parse_key(%struct.TYPE_11__*) #1

declare dso_local i32 @convert_input(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @parse_channel(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @skip_input(%struct.TYPE_11__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
