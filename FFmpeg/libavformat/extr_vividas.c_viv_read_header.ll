; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_vividas.c_viv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_12__*, i8* }
%struct.TYPE_12__ = type { i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"number of tracks %d is not 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SEEK_CUR = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @viv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @viv_read_header(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [187 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  store %struct.TYPE_13__* %21, %struct.TYPE_13__** %4, align 8
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @avio_skip(i32* %25, i32 9)
  %27 = load i32*, i32** %5, align 8
  %28 = call i8* @avio_tell(i32* %27)
  %29 = ptrtoint i8* %28 to i32
  store i32 %29, i32* %6, align 4
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @ffio_read_varlen(i32* %30)
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @avio_r8(i32* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %45

38:                                               ; preds = %1
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @av_log(%struct.TYPE_14__* %39, i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = call i32 @AVERROR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %186

45:                                               ; preds = %1
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @avio_r8(i32* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @SEEK_CUR, align 4
  %51 = call i32 @avio_seek(i32* %48, i32 %49, i32 %50)
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds [187 x i32], [187 x i32]* %11, i64 0, i64 0
  %54 = call i32 @avio_read(i32* %52, i32* %53, i32 187)
  %55 = getelementptr inbounds [187 x i32], [187 x i32]* %11, i64 0, i64 0
  %56 = call i32 @decode_key(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = call i32 @avio_rl32(i32* %60)
  br label %62

62:                                               ; preds = %94, %45
  %63 = load i32*, i32** %5, align 8
  %64 = call i8* @avio_tell(i32* %63)
  %65 = ptrtoint i8* %64 to i32
  store i32 %65, i32* %16, align 4
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp sge i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %101

70:                                               ; preds = %62
  %71 = load i32*, i32** %5, align 8
  %72 = call i32 @ffio_read_varlen(i32* %71)
  store i32 %72, i32* %17, align 4
  %73 = load i32*, i32** %5, align 8
  %74 = call i64 @avio_feof(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %17, align 4
  %78 = icmp sle i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %76, %70
  %80 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %80, i32* %2, align 4
  br label %186

81:                                               ; preds = %76
  %82 = load i32*, i32** %5, align 8
  %83 = call i32 @avio_r8(i32* %82)
  store i32 %83, i32* %18, align 4
  %84 = load i32, i32* %18, align 4
  %85 = icmp eq i32 %84, 22
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  %88 = getelementptr inbounds [187 x i32], [187 x i32]* %11, i64 0, i64 0
  %89 = call i32 @avio_read(i32* %87, i32* %88, i32 187)
  %90 = getelementptr inbounds [187 x i32], [187 x i32]* %11, i64 0, i64 0
  %91 = call i32 @decode_key(i32* %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @avio_rl32(i32* %92)
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %86, %81
  %95 = load i32*, i32** %5, align 8
  %96 = load i32, i32* %16, align 4
  %97 = load i32, i32* %17, align 4
  %98 = add nsw i32 %96, %97
  %99 = load i32, i32* @SEEK_SET, align 4
  %100 = call i32 @avio_seek(i32* %95, i32 %98, i32 %99)
  br label %62

101:                                              ; preds = %69
  %102 = load i32, i32* %12, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %9, align 4
  %106 = load i32*, i32** %5, align 8
  %107 = load i32, i32* %13, align 4
  %108 = call i32* @read_vblock(i32* %106, i32* %10, i32 %107, i32* %9, i32 0)
  store i32* %108, i32** %14, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %114, label %111

111:                                              ; preds = %104
  %112 = load i32, i32* @EIO, align 4
  %113 = call i32 @AVERROR(i32 %112)
  store i32 %113, i32* %2, align 4
  br label %186

114:                                              ; preds = %104
  %115 = load i32*, i32** %14, align 8
  %116 = call i32 @av_free(i32* %115)
  br label %117

117:                                              ; preds = %114, %101
  %118 = load i32, i32* %8, align 4
  store i32 %118, i32* %9, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = load i32, i32* %8, align 4
  %121 = call i32* @read_vblock(i32* %119, i32* %10, i32 %120, i32* %9, i32 0)
  store i32* %121, i32** %14, align 8
  %122 = load i32*, i32** %14, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %117
  %125 = load i32, i32* @EIO, align 4
  %126 = call i32 @AVERROR(i32 %125)
  store i32 %126, i32* %2, align 4
  br label %186

127:                                              ; preds = %117
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i32, i32* %10, align 4
  %132 = call i32 @track_header(%struct.TYPE_13__* %128, %struct.TYPE_14__* %129, i32* %130, i32 %131)
  store i32 %132, i32* %15, align 4
  %133 = load i32*, i32** %14, align 8
  %134 = call i32 @av_free(i32* %133)
  %135 = load i32, i32* %15, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %127
  %138 = load i32, i32* %15, align 4
  store i32 %138, i32* %2, align 4
  br label %186

139:                                              ; preds = %127
  %140 = load i32*, i32** %5, align 8
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %10, align 4
  %143 = call i32* @read_vblock(i32* %140, i32* %10, i32 %141, i32* %9, i32 %142)
  store i32* %143, i32** %14, align 8
  %144 = load i32*, i32** %14, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %139
  %147 = load i32, i32* @EIO, align 4
  %148 = call i32 @AVERROR(i32 %147)
  store i32 %148, i32* %2, align 4
  br label %186

149:                                              ; preds = %139
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %152 = load i32*, i32** %14, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @track_index(%struct.TYPE_13__* %150, %struct.TYPE_14__* %151, i32* %152, i32 %153)
  store i32 %154, i32* %15, align 4
  %155 = load i32*, i32** %14, align 8
  %156 = call i32 @av_free(i32* %155)
  %157 = load i32, i32* %15, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %149
  %160 = load i32, i32* %15, align 4
  store i32 %160, i32* %2, align 4
  br label %186

161:                                              ; preds = %149
  %162 = load i32*, i32** %5, align 8
  %163 = call i8* @avio_tell(i32* %162)
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 4
  store i8* %163, i8** %165, align 8
  %166 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %168, 0
  br i1 %169, label %170, label %182

170:                                              ; preds = %161
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 2
  store i32 0, i32* %172, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %175 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %175, i32 0, i32 3
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i64 0
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @load_sb_block(%struct.TYPE_14__* %173, %struct.TYPE_13__* %174, i32 %180)
  br label %185

182:                                              ; preds = %161
  %183 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 2
  store i32 -1, i32* %184, align 8
  br label %185

185:                                              ; preds = %182, %170
  store i32 0, i32* %2, align 4
  br label %186

186:                                              ; preds = %185, %159, %146, %137, %124, %111, %79, %38
  %187 = load i32, i32* %2, align 4
  ret i32 %187
}

declare dso_local i32 @avio_skip(i32*, i32) #1

declare dso_local i8* @avio_tell(i32*) #1

declare dso_local i32 @ffio_read_varlen(i32*) #1

declare dso_local i32 @avio_r8(i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_14__*, i32, i8*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @avio_seek(i32*, i32, i32) #1

declare dso_local i32 @avio_read(i32*, i32*, i32) #1

declare dso_local i32 @decode_key(i32*) #1

declare dso_local i32 @avio_rl32(i32*) #1

declare dso_local i64 @avio_feof(i32*) #1

declare dso_local i32* @read_vblock(i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @av_free(i32*) #1

declare dso_local i32 @track_header(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @track_index(%struct.TYPE_13__*, %struct.TYPE_14__*, i32*, i32) #1

declare dso_local i32 @load_sb_block(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
