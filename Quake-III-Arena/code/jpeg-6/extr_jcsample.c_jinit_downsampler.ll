; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcsample.c_jinit_downsampler.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jcsample.c_jinit_downsampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i64, %struct.TYPE_12__*, i64, %struct.jpeg_downsampler*, %struct.TYPE_9__* }
%struct.TYPE_12__ = type { i32, i32 }
%struct.jpeg_downsampler = type { i32 }
%struct.TYPE_9__ = type { i64 (i32, i32, i32)* }
%struct.TYPE_11__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i8*, i32, i32 }

@TRUE = common dso_local global i8* null, align 8
@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_downsampler = common dso_local global i32 0, align 4
@start_pass_downsample = common dso_local global i32 0, align 4
@sep_downsample = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@JERR_CCIR601_NOTIMPL = common dso_local global i32 0, align 4
@fullsize_downsample = common dso_local global i32 0, align 4
@h2v1_downsample = common dso_local global i32 0, align 4
@h2v2_downsample = common dso_local global i32 0, align 4
@int_downsample = common dso_local global i32 0, align 4
@JERR_FRACT_SAMPLE_NOTIMPL = common dso_local global i32 0, align 4
@JTRC_SMOOTH_NOTIMPL = common dso_local global i32 0, align 4
@fullsize_smooth_downsample = common dso_local global i32 0, align 4
@h2v2_smooth_downsample = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_downsampler(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i8*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %7 = load i8*, i8** @TRUE, align 8
  store i8* %7, i8** %6, align 8
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 7
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %14 = ptrtoint %struct.TYPE_13__* %13 to i32
  %15 = load i32, i32* @JPOOL_IMAGE, align 4
  %16 = load i32, i32* @my_downsampler, align 4
  %17 = call i32 @SIZEOF(i32 %16)
  %18 = call i64 %12(i32 %14, i32 %15, i32 %17)
  %19 = inttoptr i64 %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %21 = bitcast %struct.TYPE_11__* %20 to %struct.jpeg_downsampler*
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 6
  store %struct.jpeg_downsampler* %21, %struct.jpeg_downsampler** %23, align 8
  %24 = load i32, i32* @start_pass_downsample, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @sep_downsample, align 4
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 8
  %32 = load i8*, i8** @FALSE, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %1
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %42 = load i32, i32* @JERR_CCIR601_NOTIMPL, align 4
  %43 = call i32 @ERREXIT(%struct.TYPE_13__* %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %1
  store i32 0, i32* %4, align 4
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %5, align 8
  br label %48

48:                                               ; preds = %165, %44
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %170

54:                                               ; preds = %48
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %78

62:                                               ; preds = %54
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = icmp eq i32 %65, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %62
  %71 = load i32, i32* @fullsize_downsample, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %71, i32* %77, align 4
  br label %164

78:                                               ; preds = %62, %54
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 2
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %82, %85
  br i1 %86, label %87, label %104

87:                                               ; preds = %78
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %90, %93
  br i1 %94, label %95, label %104

95:                                               ; preds = %87
  %96 = load i8*, i8** @FALSE, align 8
  store i8* %96, i8** %6, align 8
  %97 = load i32, i32* @h2v1_downsample, align 4
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %4, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %97, i32* %103, align 4
  br label %163

104:                                              ; preds = %87, %78
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = mul nsw i32 %107, 2
  %109 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %108, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %104
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %116, 2
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %113
  %123 = load i32, i32* @h2v2_downsample, align 4
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %4, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  br label %162

130:                                              ; preds = %113, %104
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = srem i32 %133, %136
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %130
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = srem i32 %142, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %157

148:                                              ; preds = %139
  %149 = load i8*, i8** @FALSE, align 8
  store i8* %149, i8** %6, align 8
  %150 = load i32, i32* @int_downsample, align 4
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* %4, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  store i32 %150, i32* %156, align 4
  br label %161

157:                                              ; preds = %139, %130
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %159 = load i32, i32* @JERR_FRACT_SAMPLE_NOTIMPL, align 4
  %160 = call i32 @ERREXIT(%struct.TYPE_13__* %158, i32 %159)
  br label %161

161:                                              ; preds = %157, %148
  br label %162

162:                                              ; preds = %161, %122
  br label %163

163:                                              ; preds = %162, %95
  br label %164

164:                                              ; preds = %163, %70
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %4, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %4, align 4
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 1
  store %struct.TYPE_12__* %169, %struct.TYPE_12__** %5, align 8
  br label %48

170:                                              ; preds = %48
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
