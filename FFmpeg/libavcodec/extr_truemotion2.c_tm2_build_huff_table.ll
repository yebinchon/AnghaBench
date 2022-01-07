; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_build_huff_table.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_truemotion2.c_tm2_build_huff_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32*, i32*, i32*, i8* }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [69 x i8] c"Incorrect tree parameters - literal length: %i, max code length: %i\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Incorrect number of Huffman tree nodes: %i\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Got less bits than expected: %i of %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Got less codes than expected: %i of %i\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot build VLC table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_10__*)* @tm2_build_huff_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm2_build_huff_table(%struct.TYPE_9__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = call i8* @get_bits(i32* %10, i32 5)
  %12 = ptrtoint i8* %11 to i32
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = call i8* @get_bits(i32* %15, i32 5)
  %17 = ptrtoint i8* %16 to i32
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = call i8* @get_bits(i32* %20, i32 5)
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 8
  store i8* %21, i8** %22, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = call i32 @get_bits_long(i32* %24, i32 17)
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 1
  br i1 %30, label %43, label %31

31:                                               ; preds = %2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 32
  br i1 %34, label %43, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp sgt i32 %41, 25
  br i1 %42, label %43, label %54

43:                                               ; preds = %39, %35, %31, %2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @AV_LOG_ERROR, align 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i32, i8*, ...) @av_log(i32 %46, i32 %47, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %51)
  %53 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %53, i32* %3, align 4
  br label %231

54:                                               ; preds = %39
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp sle i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp sgt i32 %60, 65536
  br i1 %61, label %62, label %71

62:                                               ; preds = %58, %54
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @AV_LOG_ERROR, align 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i32, i8*, ...) @av_log(i32 %65, i32 %66, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %70, i32* %3, align 4
  br label %231

71:                                               ; preds = %58
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i32 1, i32* %76, align 4
  br label %77

77:                                               ; preds = %75, %71
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = add nsw i32 %79, 1
  %81 = ashr i32 %80, 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  store i32 %81, i32* %82, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @av_calloc(i32 %84, i32 4)
  %86 = bitcast i8* %85 to i32*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  store i32* %86, i32** %87, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = call i8* @av_calloc(i32 %89, i32 4)
  %91 = bitcast i8* %90 to i32*
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  store i32* %91, i32** %92, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = call i8* @av_calloc(i32 %94, i32 4)
  %96 = bitcast i8* %95 to i32*
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  store i32* %96, i32** %97, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %109

101:                                              ; preds = %77
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %103 = load i32*, i32** %102, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %107 = load i32*, i32** %106, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %112, label %109

109:                                              ; preds = %105, %101, %77
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = call i32 @AVERROR(i32 %110)
  store i32 %111, i32* %7, align 4
  br label %220

112:                                              ; preds = %105
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %114 = call i32 @tm2_read_tree(%struct.TYPE_9__* %113, i32 0, i32 0, %struct.TYPE_8__* %6)
  store i32 %114, i32* %7, align 4
  %115 = load i32, i32* %7, align 4
  %116 = icmp sge i32 %115, 0
  br i1 %116, label %117, label %132

117:                                              ; preds = %112
  %118 = load i32, i32* %7, align 4
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp ne i32 %118, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @AV_LOG_ERROR, align 4
  %127 = load i32, i32* %7, align 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, i8*, ...) @av_log(i32 %125, i32 %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %129)
  %131 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %122, %117, %112
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = icmp ne i32 %134, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %132
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i32, i8*, ...) @av_log(i32 %141, i32 %142, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %146)
  %148 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %148, i32* %7, align 4
  br label %149

149:                                              ; preds = %138, %132
  %150 = load i32, i32* %7, align 4
  %151 = icmp sge i32 %150, 0
  br i1 %151, label %152, label %219

152:                                              ; preds = %149
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 3
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %160 = load i32*, i32** %159, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @init_vlc(i32* %154, i32 %156, i32 %158, i32* %160, i32 4, i32 4, i32* %162, i32 4, i32 4, i32 0)
  store i32 %163, i32* %7, align 4
  %164 = load i32, i32* %7, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %152
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @AV_LOG_ERROR, align 4
  %171 = call i32 (i32, i32, i8*, ...) @av_log(i32 %169, i32 %170, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %218

172:                                              ; preds = %152
  %173 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %179, i32 0, i32 1
  store i32 %178, i32* %180, align 4
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = call i32* @av_malloc_array(i32 %183, i32 4)
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 2
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 2
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %194, label %191

191:                                              ; preds = %172
  %192 = load i32, i32* @ENOMEM, align 4
  %193 = call i32 @AVERROR(i32 %192)
  store i32 %193, i32* %7, align 4
  br label %220

194:                                              ; preds = %172
  store i32 0, i32* %8, align 4
  br label %195

195:                                              ; preds = %214, %194
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp slt i32 %196, %199
  br i1 %200, label %201, label %217

201:                                              ; preds = %195
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 2
  %210 = load i32*, i32** %209, align 8
  %211 = load i32, i32* %8, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32, i32* %210, i64 %212
  store i32 %207, i32* %213, align 4
  br label %214

214:                                              ; preds = %201
  %215 = load i32, i32* %8, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %8, align 4
  br label %195

217:                                              ; preds = %195
  br label %218

218:                                              ; preds = %217, %166
  br label %219

219:                                              ; preds = %218, %149
  br label %220

220:                                              ; preds = %219, %191, %109
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 7
  %222 = load i32*, i32** %221, align 8
  %223 = call i32 @av_free(i32* %222)
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 6
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @av_free(i32* %225)
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 5
  %228 = load i32*, i32** %227, align 8
  %229 = call i32 @av_free(i32* %228)
  %230 = load i32, i32* %7, align 4
  store i32 %230, i32* %3, align 4
  br label %231

231:                                              ; preds = %220, %62, %43
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_long(i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i8* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @tm2_read_tree(%struct.TYPE_9__*, i32, i32, %struct.TYPE_8__*) #1

declare dso_local i32 @init_vlc(i32*, i32, i32, i32*, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32* @av_malloc_array(i32, i32) #1

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
