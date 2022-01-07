; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_raw_reorder_bsf.c_vp9_raw_reorder_frame_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vp9_raw_reorder_bsf.c_vp9_raw_reorder_frame_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i8*, i8*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Invalid frame marker: %u.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [74 x i8] c"Profile reserved_zero bit set: unsupported profile or invalid bitstream.\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Invalid frame sync code: %06x.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @vp9_raw_reorder_frame_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp9_raw_reorder_frame_parse(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 6
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 8, %25
  %27 = call i32 @init_get_bits(i32* %6, i32 %20, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %194

32:                                               ; preds = %2
  %33 = call i8* @get_bits(i32* %6, i32 2)
  %34 = ptrtoint i8* %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load i32*, i32** %4, align 8
  %39 = load i32, i32* @AV_LOG_ERROR, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %38, i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %3, align 4
  br label %194

43:                                               ; preds = %32
  %44 = call i8* @get_bits1(i32* %6)
  %45 = ptrtoint i8* %44 to i32
  store i32 %45, i32* %9, align 4
  %46 = call i8* @get_bits1(i32* %6)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = shl i32 %48, 1
  %50 = load i32, i32* %9, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %69

58:                                               ; preds = %43
  %59 = call i8* @get_bits1(i32* %6)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i32*, i32** %4, align 8
  %65 = load i32, i32* @AV_LOG_ERROR, align 4
  %66 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %64, i32 %65, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %67, i32* %3, align 4
  br label %194

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68, %43
  %70 = call i8* @get_bits1(i32* %6)
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %69
  %79 = call i8* @get_bits(i32* %6, i32 3)
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 5
  store i8* %79, i8** %81, align 8
  store i32 0, i32* %3, align 4
  br label %194

82:                                               ; preds = %69
  %83 = call i8* @get_bits1(i32* %6)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 4
  store i8* %83, i8** %85, align 8
  %86 = call i8* @get_bits1(i32* %6)
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = call i8* @get_bits1(i32* %6)
  %90 = ptrtoint i8* %89 to i32
  store i32 %90, i32* %12, align 4
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i8*, i8** %92, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %109

95:                                               ; preds = %82
  %96 = call i8* @get_bits(i32* %6, i32 24)
  %97 = ptrtoint i8* %96 to i32
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 4817730
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load i32*, i32** %4, align 8
  %102 = load i32, i32* @AV_LOG_ERROR, align 4
  %103 = load i32, i32* %13, align 4
  %104 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %101, i32 %102, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %105, i32* %3, align 4
  br label %194

106:                                              ; preds = %95
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  store i32 255, i32* %108, align 8
  br label %193

109:                                              ; preds = %82
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  %112 = load i8*, i8** %111, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = call i8* @get_bits1(i32* %6)
  %116 = ptrtoint i8* %115 to i32
  store i32 %116, i32* %14, align 4
  br label %118

117:                                              ; preds = %109
  store i32 0, i32* %14, align 4
  br label %118

118:                                              ; preds = %117, %114
  %119 = load i32, i32* %12, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %118
  %122 = call i32 @skip_bits(i32* %6, i32 2)
  br label %123

123:                                              ; preds = %121, %118
  %124 = load i32, i32* %14, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %187

126:                                              ; preds = %123
  %127 = call i8* @get_bits(i32* %6, i32 24)
  %128 = ptrtoint i8* %127 to i32
  store i32 %128, i32* %13, align 4
  %129 = load i32, i32* %13, align 4
  %130 = icmp ne i32 %129, 4817730
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32*, i32** %4, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %132, i32 %133, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %134)
  %136 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %136, i32* %3, align 4
  br label %194

137:                                              ; preds = %126
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ugt i32 %140, 0
  br i1 %141, label %142, label %182

142:                                              ; preds = %137
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp uge i32 %145, 2
  br i1 %146, label %147, label %149

147:                                              ; preds = %142
  %148 = call i32 @skip_bits(i32* %6, i32 1)
  br label %149

149:                                              ; preds = %147, %142
  %150 = call i8* @get_bits(i32* %6, i32 3)
  %151 = ptrtoint i8* %150 to i32
  store i32 %151, i32* %15, align 4
  %152 = load i32, i32* %15, align 4
  %153 = icmp ne i32 %152, 7
  br i1 %153, label %154, label %168

154:                                              ; preds = %149
  %155 = call i32 @skip_bits(i32* %6, i32 1)
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = icmp eq i32 %158, 1
  br i1 %159, label %165, label %160

160:                                              ; preds = %154
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = icmp eq i32 %163, 3
  br i1 %164, label %165, label %167

165:                                              ; preds = %160, %154
  %166 = call i32 @skip_bits(i32* %6, i32 3)
  br label %167

167:                                              ; preds = %165, %160
  br label %181

168:                                              ; preds = %149
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %178, label %173

173:                                              ; preds = %168
  %174 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %180

178:                                              ; preds = %173, %168
  %179 = call i32 @skip_bits(i32* %6, i32 1)
  br label %180

180:                                              ; preds = %178, %173
  br label %181

181:                                              ; preds = %180, %167
  br label %182

182:                                              ; preds = %181, %137
  %183 = call i8* @get_bits(i32* %6, i32 8)
  %184 = ptrtoint i8* %183 to i32
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %192

187:                                              ; preds = %123
  %188 = call i8* @get_bits(i32* %6, i32 8)
  %189 = ptrtoint i8* %188 to i32
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 2
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %187, %182
  br label %193

193:                                              ; preds = %192, %106
  store i32 0, i32* %3, align 4
  br label %194

194:                                              ; preds = %193, %131, %100, %78, %63, %37, %30
  %195 = load i32, i32* %3, align 4
  ret i32 %195
}

declare dso_local i32 @init_get_bits(i32*, i32, i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i8* @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
