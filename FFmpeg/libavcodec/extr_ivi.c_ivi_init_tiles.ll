; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_init_tiles.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ivi.c_ivi_init_tiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i64, i64, i64, i8*, i8*, i64, i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"ref_tile mismatch\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*, i32, i32, i32, i32)* @ivi_init_tiles to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivi_init_tiles(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  store %struct.TYPE_5__* %19, %struct.TYPE_5__** %16, align 8
  store i32 0, i32* %15, align 4
  br label %20

20:                                               ; preds = %131, %6
  %21 = load i32, i32* %15, align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %135

26:                                               ; preds = %20
  store i32 0, i32* %14, align 4
  br label %27

27:                                               ; preds = %126, %26
  %28 = load i32, i32* %14, align 4
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %130

33:                                               ; preds = %27
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %14, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %13, align 4
  %51 = call i8* @FFMIN(i32 %49, i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 6
  store i8* %51, i8** %53, align 8
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sub nsw i32 %56, %57
  %59 = load i32, i32* %12, align 4
  %60 = call i8* @FFMIN(i32 %58, i32 %59)
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 5
  store i8* %60, i8** %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 7
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 8
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  %69 = load i8*, i8** %68, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i64 @IVI_MBs_PER_TILE(i8* %69, i8* %72, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = call i32 @av_freep(i64* %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = call i64 @av_mallocz_array(i64 %84, i32 4)
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %33
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = call i32 @AVERROR(i32 %93)
  store i32 %94, i32* %7, align 4
  br label %136

95:                                               ; preds = %33
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  store i64 0, i64* %97, align 8
  %98 = load i32, i32* %10, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %11, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %123

103:                                              ; preds = %100, %95
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %106, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32, i32* @AV_LOG_DEBUG, align 4
  %113 = call i32 @av_log(i32* null, i32 %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %114 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %114, i32* %7, align 4
  br label %136

115:                                              ; preds = %103
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 4
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 1
  store %struct.TYPE_5__* %122, %struct.TYPE_5__** %9, align 8
  br label %123

123:                                              ; preds = %115, %100
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 1
  store %struct.TYPE_5__* %125, %struct.TYPE_5__** %16, align 8
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %14, align 4
  br label %27

130:                                              ; preds = %27
  br label %131

131:                                              ; preds = %130
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %15, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %15, align 4
  br label %20

135:                                              ; preds = %20
  store i32 0, i32* %7, align 4
  br label %136

136:                                              ; preds = %135, %111, %92
  %137 = load i32, i32* %7, align 4
  ret i32 %137
}

declare dso_local i8* @FFMIN(i32, i32) #1

declare dso_local i64 @IVI_MBs_PER_TILE(i8*, i8*, i32) #1

declare dso_local i32 @av_freep(i64*) #1

declare dso_local i64 @av_mallocz_array(i64, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
