; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_buffersrc.c_av_buffersrc_parameters_set.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_buffersrc.c_av_buffersrc_parameters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__*, %struct.TYPE_16__* }
%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_15__, %struct.TYPE_14__, i32, i32, %struct.TYPE_11__ }

@AV_PIX_FMT_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_SAMPLE_FMT_NONE = common dso_local global i32 0, align 4
@AVERROR_BUG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_buffersrc_parameters_set(%struct.TYPE_17__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %8 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_16__* %9, %struct.TYPE_16__** %6, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %10, i32 0, i32 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %2
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 10
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 8
  %26 = bitcast %struct.TYPE_11__* %23 to i8*
  %27 = bitcast %struct.TYPE_11__* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 16, i1 false)
  br label %28

28:                                               ; preds = %21, %15, %2
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %172 [
    i32 128, label %37
    i32 129, label %135
  ]

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AV_PIX_FMT_NONE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %37
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %43, %37
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %51
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 8
  store i32 %59, i32* %61, align 8
  br label %62

62:                                               ; preds = %56, %51
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 6
  %65 = load i32, i32* %64, align 8
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %62
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 5
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %73
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %80, i32 0, i32 5
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 6
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  %90 = bitcast %struct.TYPE_14__* %87 to i8*
  %91 = bitcast %struct.TYPE_14__* %89 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %90, i8* align 8 %91, i64 8, i1 false)
  br label %92

92:                                               ; preds = %85, %79, %73
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 4
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 4
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %111

104:                                              ; preds = %98
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 5
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 4
  %109 = bitcast %struct.TYPE_15__* %106 to i8*
  %110 = bitcast %struct.TYPE_15__* %108 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %109, i8* align 8 %110, i64 8, i1 false)
  br label %111

111:                                              ; preds = %104, %98, %92
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %134

116:                                              ; preds = %111
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %117, i32 0, i32 4
  %119 = call i32 @av_buffer_unref(i32* %118)
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @av_buffer_ref(i32 %122)
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 4
  store i32 %123, i32* %125, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 4
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %116
  %131 = load i32, i32* @ENOMEM, align 4
  %132 = call i32 @AVERROR(i32 %131)
  store i32 %132, i32* %3, align 4
  br label %175

133:                                              ; preds = %116
  br label %134

134:                                              ; preds = %133, %111
  br label %174

135:                                              ; preds = %28
  %136 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @AV_SAMPLE_FMT_NONE, align 4
  %140 = icmp ne i32 %138, %139
  br i1 %140, label %141, label %149

141:                                              ; preds = %135
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %142, i32 0, i32 0
  store i32 1, i32* %143, align 8
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  br label %149

149:                                              ; preds = %141, %135
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %152, 0
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %160
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %165, %160
  br label %174

172:                                              ; preds = %28
  %173 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %173, i32* %3, align 4
  br label %175

174:                                              ; preds = %171, %134
  store i32 0, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %172, %130
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_buffer_unref(i32*) #2

declare dso_local i32 @av_buffer_ref(i32) #2

declare dso_local i32 @AVERROR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
