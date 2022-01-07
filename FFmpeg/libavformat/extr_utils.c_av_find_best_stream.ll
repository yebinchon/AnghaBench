; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_find_best_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_av_find_best_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_11__ = type { i32*, i32 }

@AVERROR_STREAM_NOT_FOUND = common dso_local global i32 0, align 4
@AVMEDIA_TYPE_AUDIO = common dso_local global i32 0, align 4
@AVERROR_DECODER_NOT_FOUND = common dso_local global i32 0, align 4
@AV_DISPOSITION_HEARING_IMPAIRED = common dso_local global i32 0, align 4
@AV_DISPOSITION_VISUAL_IMPAIRED = common dso_local global i32 0, align 4
@AV_DISPOSITION_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_find_best_stream(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3, i32** %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca %struct.TYPE_11__*, align 8
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_10__*, align 8
  %30 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32** %4, i32*** %11, align 8
  store i32 %5, i32* %12, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* @AVERROR_STREAM_NOT_FOUND, align 4
  store i32 %34, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32 -1, i32* %22, align 4
  store i32* null, i32** %24, align 8
  store i32* null, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %35 = load i32, i32* %10, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %6
  %38 = load i32, i32* %9, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.TYPE_11__* @av_find_program_from_stream(%struct.TYPE_12__* %41, i32* null, i32 %42)
  store %struct.TYPE_11__* %43, %struct.TYPE_11__** %27, align 8
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %45 = icmp ne %struct.TYPE_11__* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %24, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %14, align 4
  br label %53

53:                                               ; preds = %46, %40
  br label %54

54:                                               ; preds = %53, %37, %6
  store i32 0, i32* %13, align 4
  br label %55

55:                                               ; preds = %221, %54
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %224

59:                                               ; preds = %55
  %60 = load i32*, i32** %24, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = load i32*, i32** %24, align 8
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  br label %70

68:                                               ; preds = %59
  %69 = load i32, i32* %13, align 4
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi i32 [ %67, %62 ], [ %69, %68 ]
  store i32 %71, i32* %28, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %73, align 8
  %75 = load i32, i32* %28, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %74, i64 %76
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %29, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %80, align 8
  store %struct.TYPE_13__* %81, %struct.TYPE_13__** %30, align 8
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %70
  br label %221

88:                                               ; preds = %70
  %89 = load i32, i32* %9, align 4
  %90 = icmp sge i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i32, i32* %28, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %221

96:                                               ; preds = %91, %88
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @AVMEDIA_TYPE_AUDIO, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %111

100:                                              ; preds = %96
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %100
  %106 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %105, %100
  br label %221

111:                                              ; preds = %105, %96
  %112 = load i32**, i32*** %11, align 8
  %113 = icmp ne i32** %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32* @find_decoder(%struct.TYPE_12__* %115, %struct.TYPE_10__* %116, i32 %119)
  store i32* %120, i32** %25, align 8
  %121 = load i32*, i32** %25, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %129, label %123

123:                                              ; preds = %114
  %124 = load i32, i32* %15, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %123
  %127 = load i32, i32* @AVERROR_DECODER_NOT_FOUND, align 4
  store i32 %127, i32* %15, align 4
  br label %128

128:                                              ; preds = %126, %123
  br label %221

129:                                              ; preds = %114
  br label %130

130:                                              ; preds = %129, %111
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load i32, i32* @AV_DISPOSITION_HEARING_IMPAIRED, align 4
  %135 = load i32, i32* @AV_DISPOSITION_VISUAL_IMPAIRED, align 4
  %136 = or i32 %134, %135
  %137 = and i32 %133, %136
  %138 = icmp ne i32 %137, 0
  %139 = xor i1 %138, true
  %140 = zext i1 %139 to i32
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @AV_DISPOSITION_DEFAULT, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = add nsw i32 %140, %149
  store i32 %150, i32* %21, align 4
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %29, align 8
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %19, align 4
  %154 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  store i32 %156, i32* %23, align 4
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @FFMIN(i32 5, i32 %157)
  store i32 %158, i32* %20, align 4
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %21, align 4
  %161 = icmp sgt i32 %159, %160
  br i1 %161, label %198, label %162

162:                                              ; preds = %130
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i32, i32* %17, align 4
  %168 = load i32, i32* %20, align 4
  %169 = icmp sgt i32 %167, %168
  br i1 %169, label %198, label %170

170:                                              ; preds = %166, %162
  %171 = load i32, i32* %18, align 4
  %172 = load i32, i32* %21, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %20, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %182

178:                                              ; preds = %174
  %179 = load i32, i32* %22, align 4
  %180 = load i32, i32* %23, align 4
  %181 = icmp sgt i32 %179, %180
  br i1 %181, label %198, label %182

182:                                              ; preds = %178, %174, %170
  %183 = load i32, i32* %18, align 4
  %184 = load i32, i32* %21, align 4
  %185 = icmp eq i32 %183, %184
  br i1 %185, label %186, label %199

186:                                              ; preds = %182
  %187 = load i32, i32* %17, align 4
  %188 = load i32, i32* %20, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %199

190:                                              ; preds = %186
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* %23, align 4
  %193 = icmp eq i32 %191, %192
  br i1 %193, label %194, label %199

194:                                              ; preds = %190
  %195 = load i32, i32* %16, align 4
  %196 = load i32, i32* %19, align 4
  %197 = icmp sge i32 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %194, %178, %166, %130
  br label %221

199:                                              ; preds = %194, %190, %186, %182
  %200 = load i32, i32* %21, align 4
  store i32 %200, i32* %18, align 4
  %201 = load i32, i32* %19, align 4
  store i32 %201, i32* %16, align 4
  %202 = load i32, i32* %23, align 4
  store i32 %202, i32* %22, align 4
  %203 = load i32, i32* %20, align 4
  store i32 %203, i32* %17, align 4
  %204 = load i32, i32* %28, align 4
  store i32 %204, i32* %15, align 4
  %205 = load i32*, i32** %25, align 8
  store i32* %205, i32** %26, align 8
  %206 = load i32*, i32** %24, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %220

208:                                              ; preds = %199
  %209 = load i32, i32* %13, align 4
  %210 = load i32, i32* %14, align 4
  %211 = sub nsw i32 %210, 1
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %220

213:                                              ; preds = %208
  %214 = load i32, i32* %15, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %220

216:                                              ; preds = %213
  store i32* null, i32** %24, align 8
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %14, align 4
  store i32 0, i32* %13, align 4
  br label %220

220:                                              ; preds = %216, %213, %208, %199
  br label %221

221:                                              ; preds = %220, %198, %128, %110, %95, %87
  %222 = load i32, i32* %13, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %13, align 4
  br label %55

224:                                              ; preds = %55
  %225 = load i32**, i32*** %11, align 8
  %226 = icmp ne i32** %225, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %224
  %228 = load i32*, i32** %26, align 8
  %229 = load i32**, i32*** %11, align 8
  store i32* %228, i32** %229, align 8
  br label %230

230:                                              ; preds = %227, %224
  %231 = load i32, i32* %15, align 4
  ret i32 %231
}

declare dso_local %struct.TYPE_11__* @av_find_program_from_stream(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32* @find_decoder(%struct.TYPE_12__*, %struct.TYPE_10__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
