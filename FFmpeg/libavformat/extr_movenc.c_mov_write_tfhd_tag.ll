; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tfhd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tfhd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i64, i32, i32, i32, i32, %struct.TYPE_9__*, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i32 }

@MOV_TFHD_DEFAULT_SIZE = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_DURATION = common dso_local global i32 0, align 4
@MOV_TFHD_BASE_DATA_OFFSET = common dso_local global i32 0, align 4
@MOV_TFHD_DURATION_IS_EMPTY = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_FLAGS = common dso_local global i32 0, align 4
@FF_MOV_FLAG_OMIT_TFHD_OFFSET = common dso_local global i32 0, align 4
@FF_MOV_FLAG_DEFAULT_BASE_MOOF = common dso_local global i32 0, align 4
@MOV_TFHD_DEFAULT_BASE_IS_MOOF = common dso_local global i32 0, align 4
@MODE_ISM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"tfhd\00", align 1
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES = common dso_local global i32 0, align 4
@MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC = common dso_local global i32 0, align 4
@MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i32)* @mov_write_tfhd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_tfhd_tag(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @avio_tell(i32* %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @MOV_TFHD_DEFAULT_SIZE, align 4
  %14 = load i32, i32* @MOV_TFHD_DEFAULT_DURATION, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @MOV_TFHD_DURATION_IS_EMPTY, align 4
  %24 = load i32, i32* %10, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %10, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* @MOV_TFHD_DEFAULT_FLAGS, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @FF_MOV_FLAG_OMIT_TFHD_OFFSET, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %10, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %30
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @FF_MOV_FLAG_DEFAULT_BASE_MOOF, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %42
  %50 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %10, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* @MOV_TFHD_DEFAULT_BASE_IS_MOOF, align 4
  %55 = load i32, i32* %10, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %49, %42
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MODE_ISM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i32, i32* @MOV_TFHD_DEFAULT_SIZE, align 4
  %65 = load i32, i32* @MOV_TFHD_DEFAULT_DURATION, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %68 = or i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %10, align 4
  br label %72

72:                                               ; preds = %63, %57
  %73 = load i32*, i32** %5, align 8
  %74 = call i32 @avio_wb32(i32* %73, i32 0)
  %75 = load i32*, i32** %5, align 8
  %76 = call i32 @ffio_wfourcc(i32* %75, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %77 = load i32*, i32** %5, align 8
  %78 = call i32 @avio_w8(i32* %77, i32 0)
  %79 = load i32*, i32** %5, align 8
  %80 = load i32, i32* %10, align 4
  %81 = call i32 @avio_wb24(i32* %79, i32 %80)
  %82 = load i32*, i32** %5, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @avio_wb32(i32* %82, i32 %85)
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @MOV_TFHD_BASE_DATA_OFFSET, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %72
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @avio_wb64(i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %91, %72
  %96 = load i32, i32* %10, align 4
  %97 = load i32, i32* @MOV_TFHD_DEFAULT_DURATION, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %110

100:                                              ; preds = %95
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %102 = call i32 @get_cluster_duration(%struct.TYPE_10__* %101, i32 0)
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  %105 = load i32*, i32** %5, align 8
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @avio_wb32(i32* %105, i32 %108)
  br label %110

110:                                              ; preds = %100, %95
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* @MOV_TFHD_DEFAULT_SIZE, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %137

115:                                              ; preds = %110
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 7
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  br label %128

127:                                              ; preds = %115
  br label %128

128:                                              ; preds = %127, %120
  %129 = phi i32 [ %126, %120 ], [ 1, %127 ]
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @avio_wb32(i32* %132, i32 %135)
  br label %140

137:                                              ; preds = %110
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 4
  store i32 -1, i32* %139, align 8
  br label %140

140:                                              ; preds = %137, %128
  %141 = load i32, i32* %10, align 4
  %142 = load i32, i32* @MOV_TFHD_DEFAULT_FLAGS, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %183

145:                                              ; preds = %140
  %146 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp sgt i32 %148, 1
  br i1 %149, label %150, label %159

150:                                              ; preds = %145
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 7
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i64 1
  %156 = call i32 @get_sample_flags(%struct.TYPE_10__* %151, %struct.TYPE_12__* %155)
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %157, i32 0, i32 5
  store i32 %156, i32* %158, align 4
  br label %177

159:                                              ; preds = %145
  %160 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %160, i32 0, i32 6
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %167, label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_DEPENDS_YES, align 4
  %169 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_IS_NON_SYNC, align 4
  %170 = or i32 %168, %169
  br label %173

171:                                              ; preds = %159
  %172 = load i32, i32* @MOV_FRAG_SAMPLE_FLAG_DEPENDS_NO, align 4
  br label %173

173:                                              ; preds = %171, %167
  %174 = phi i32 [ %170, %167 ], [ %172, %171 ]
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 5
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %173, %150
  %178 = load i32*, i32** %5, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @avio_wb32(i32* %178, i32 %181)
  br label %183

183:                                              ; preds = %177, %140
  %184 = load i32*, i32** %5, align 8
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @update_size(i32* %184, i32 %185)
  ret i32 %186
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @get_cluster_duration(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @get_sample_flags(%struct.TYPE_10__*, %struct.TYPE_12__*) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
