; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_parse_seektable.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpc8.c_mpc8_parse_seektable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"No stream added before parsing seek table\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@TAG_SEEKTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"No seek table at given position\0A\00", align 1
@INT_MAX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Bad seek table size\0A\00", align 1
@AV_INPUT_BUFFER_PADDING_SIZE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"seek table truncated\0A\00", align 1
@UINT_MAX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"Seek table is too big\0A\00", align 1
@AVINDEX_KEYFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @mpc8_parse_seektable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc8_parse_seektable(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %5, align 8
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = call i32 @av_log(%struct.TYPE_6__* %24, i32 %25, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %188

27:                                               ; preds = %2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @SEEK_SET, align 4
  %33 = call i32 @avio_seek(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mpc8_get_chunk_header(i32 %36, i32* %6, i32* %7)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @TAG_SEEKTABLE, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 @av_log(%struct.TYPE_6__* %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %188

45:                                               ; preds = %27
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @INT_MAX, align 4
  %48 = sdiv i32 %47, 10
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* %7, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %50, %45
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %55 = load i32, i32* @AV_LOG_ERROR, align 4
  %56 = call i32 @av_log(%struct.TYPE_6__* %54, i32 %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %188

57:                                               ; preds = %50
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32* @av_malloc(i64 %61)
  store i32* %62, i32** %10, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %57
  br label %188

65:                                               ; preds = %57
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @avio_read(i32 %68, i32* %69, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* %7, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %81

75:                                               ; preds = %65
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %77 = load i32, i32* @AV_LOG_ERROR, align 4
  %78 = call i32 @av_log(%struct.TYPE_6__* %76, i32 %77, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %79 = load i32*, i32** %10, align 8
  %80 = call i32 @av_free(i32* %79)
  br label %188

81:                                               ; preds = %65
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %7, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i64, i64* @AV_INPUT_BUFFER_PADDING_SIZE, align 8
  %87 = call i32 @memset(i32* %85, i32 0, i64 %86)
  %88 = load i32*, i32** %10, align 8
  %89 = load i32, i32* %7, align 4
  %90 = mul nsw i32 %89, 8
  %91 = call i32 @init_get_bits(i32* %15, i32* %88, i32 %90)
  %92 = call i32 @gb_get_v(i32* %15)
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @UINT_MAX, align 4
  %95 = sdiv i32 %94, 4
  %96 = icmp sgt i32 %93, %95
  br i1 %96, label %104, label %97

97:                                               ; preds = %81
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 1152
  %103 = icmp sgt i32 %98, %102
  br i1 %103, label %104, label %110

104:                                              ; preds = %97, %81
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %106 = load i32, i32* @AV_LOG_ERROR, align 4
  %107 = call i32 @av_log(%struct.TYPE_6__* %105, i32 %106, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %108 = load i32*, i32** %10, align 8
  %109 = call i32 @av_free(i32* %108)
  br label %188

110:                                              ; preds = %97
  %111 = call i32 @get_bits(i32* %15, i32 4)
  store i32 %111, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %112

112:                                              ; preds = %135, %110
  %113 = load i32, i32* %11, align 4
  %114 = icmp slt i32 %113, 2
  br i1 %114, label %115, label %138

115:                                              ; preds = %112
  %116 = call i32 @gb_get_v(i32* %15)
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %116, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %11, align 4
  %123 = sub nsw i32 1, %122
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 %124
  store i32 %121, i32* %125, align 4
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %134 = call i32 @av_add_index_entry(i32 %130, i32 %131, i32 %132, i32 0, i32 0, i32 %133)
  br label %135

135:                                              ; preds = %115
  %136 = load i32, i32* %11, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %11, align 4
  br label %112

138:                                              ; preds = %112
  br label %139

139:                                              ; preds = %182, %138
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %140, %141
  br i1 %142, label %143, label %185

143:                                              ; preds = %139
  %144 = call i32 @get_unary(i32* %15, i32 1, i32 33)
  %145 = shl i32 %144, 12
  store i32 %145, i32* %12, align 4
  %146 = call i32 @get_bits(i32* %15, i32 12)
  %147 = load i32, i32* %12, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* %12, align 4
  %150 = and i32 %149, 1
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %143
  %153 = load i32, i32* %12, align 4
  %154 = and i32 %153, -2
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %12, align 4
  br label %156

156:                                              ; preds = %152, %143
  %157 = load i32, i32* %12, align 4
  %158 = ashr i32 %157, 1
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = mul nsw i32 %160, 2
  %162 = add nsw i32 %158, %161
  %163 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = sub nsw i32 %162, %164
  store i32 %165, i32* %8, align 4
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = getelementptr inbounds i32, i32* %168, i64 0
  %170 = load i32, i32* %169, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %11, align 4
  %173 = load i32, i32* %13, align 4
  %174 = shl i32 %172, %173
  %175 = load i32, i32* @AVINDEX_KEYFRAME, align 4
  %176 = call i32 @av_add_index_entry(i32 %170, i32 %171, i32 %174, i32 0, i32 0, i32 %175)
  %177 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %178 = load i32, i32* %177, align 4
  %179 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %178, i32* %179, align 4
  %180 = load i32, i32* %8, align 4
  %181 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %180, i32* %181, align 4
  br label %182

182:                                              ; preds = %156
  %183 = load i32, i32* %11, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %11, align 4
  br label %139

185:                                              ; preds = %139
  %186 = load i32*, i32** %10, align 8
  %187 = call i32 @av_free(i32* %186)
  br label %188

188:                                              ; preds = %185, %104, %75, %64, %53, %41, %23
  ret void
}

declare dso_local i32 @av_log(%struct.TYPE_6__*, i32, i8*) #1

declare dso_local i32 @avio_seek(i32, i32, i32) #1

declare dso_local i32 @mpc8_get_chunk_header(i32, i32*, i32*) #1

declare dso_local i32* @av_malloc(i64) #1

declare dso_local i32 @avio_read(i32, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @gb_get_v(i32*) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @av_add_index_entry(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
