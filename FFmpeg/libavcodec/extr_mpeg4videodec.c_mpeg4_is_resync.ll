; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_is_resync.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4videodec.c_mpeg4_is_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32, i32, %struct.TYPE_14__, i64 }
%struct.TYPE_14__ = type { i32 }

@FF_BUG_NO_PADDING = common dso_local global i32 0, align 4
@AV_PICTURE_TYPE_B = common dso_local global i32 0, align 4
@ff_mpeg4_resync_prefix = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*)* @mpeg4_is_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg4_is_resync(%struct.TYPE_13__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_13__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %3, align 8
  %11 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %11, i32 0, i32 1
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 3
  %15 = call i32 @get_bits_count(%struct.TYPE_14__* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 3
  %18 = call i32 @show_bits(%struct.TYPE_14__* %17, i32 16)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FF_BUG_NO_PADDING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %173

31:                                               ; preds = %25, %1
  br label %32

32:                                               ; preds = %55, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp sle i32 %33, 255
  br i1 %34, label %35, label %72

35:                                               ; preds = %32
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AV_PICTURE_TYPE_B, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %54, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 8, %45
  %47 = ashr i32 %42, %46
  %48 = icmp ne i32 %47, 1
  br i1 %48, label %54, label %49

49:                                               ; preds = %41
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %41, %35
  br label %72

55:                                               ; preds = %49
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 8, %60
  %62 = call i32 @skip_bits(%struct.TYPE_14__* %57, i32 %61)
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 8, %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, %66
  store i32 %68, i32* %5, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 3
  %71 = call i32 @show_bits(%struct.TYPE_14__* %70, i32 16)
  store i32 %71, i32* %6, align 4
  br label %32

72:                                               ; preds = %54, %32
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp sge i32 %74, %78
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  %81 = load i32, i32* %6, align 4
  %82 = ashr i32 %81, 8
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %5, align 4
  %84 = and i32 %83, 7
  %85 = sub nsw i32 7, %84
  %86 = ashr i32 127, %85
  %87 = load i32, i32* %6, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %6, align 4
  %89 = load i32, i32* %6, align 4
  %90 = icmp eq i32 %89, 127
  br i1 %90, label %91, label %95

91:                                               ; preds = %80
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  store i32 %94, i32* %2, align 4
  br label %173

95:                                               ; preds = %80
  br label %172

96:                                               ; preds = %72
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** @ff_mpeg4_resync_prefix, align 8
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, 7
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %97, %103
  br i1 %104, label %105, label %171

105:                                              ; preds = %96
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = sub nsw i32 %108, 1
  %110 = call i32 @av_log2(i32 %109)
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %9, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 3
  %114 = bitcast %struct.TYPE_14__* %10 to i8*
  %115 = bitcast %struct.TYPE_14__* %113 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %114, i8* align 4 %115, i64 4, i1 false)
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 3
  %118 = call i32 @skip_bits(%struct.TYPE_14__* %117, i32 1)
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 3
  %121 = call i32 @align_get_bits(%struct.TYPE_14__* %120)
  store i32 0, i32* %7, align 4
  br label %122

122:                                              ; preds = %132, %105
  %123 = load i32, i32* %7, align 4
  %124 = icmp slt i32 %123, 32
  br i1 %124, label %125, label %135

125:                                              ; preds = %122
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = call i64 @get_bits1(%struct.TYPE_14__* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %135

131:                                              ; preds = %125
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %7, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %122

135:                                              ; preds = %130, %122
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 3
  %138 = load i32, i32* %9, align 4
  %139 = call i32 @get_bits(%struct.TYPE_14__* %137, i32 %138)
  store i32 %139, i32* %8, align 4
  %140 = load i32, i32* %8, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %135
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %158, label %148

148:                                              ; preds = %142
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = call i32 @get_bits_count(%struct.TYPE_14__* %150)
  %152 = add nsw i32 %151, 6
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %152, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %148, %142, %135
  store i32 -1, i32* %8, align 4
  br label %159

159:                                              ; preds = %158, %148
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 3
  %162 = bitcast %struct.TYPE_14__* %161 to i8*
  %163 = bitcast %struct.TYPE_14__* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %162, i8* align 4 %163, i64 4, i1 false)
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %166 = call i32 @ff_mpeg4_get_video_packet_prefix_length(%struct.TYPE_12__* %165)
  %167 = icmp sge i32 %164, %166
  br i1 %167, label %168, label %170

168:                                              ; preds = %159
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %173

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %96
  br label %172

172:                                              ; preds = %171, %95
  store i32 0, i32* %2, align 4
  br label %173

173:                                              ; preds = %172, %168, %91, %30
  %174 = load i32, i32* %2, align 4
  ret i32 %174
}

declare dso_local i32 @get_bits_count(%struct.TYPE_14__*) #1

declare dso_local i32 @show_bits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @skip_bits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @av_log2(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @align_get_bits(%struct.TYPE_14__*) #1

declare dso_local i64 @get_bits1(%struct.TYPE_14__*) #1

declare dso_local i32 @get_bits(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @ff_mpeg4_get_video_packet_prefix_length(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
