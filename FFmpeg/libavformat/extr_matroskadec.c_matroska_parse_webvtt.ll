; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_webvtt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_parse_webvtt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i32, i8*, i8*, i32 }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_PKT_DATA_WEBVTT_IDENTIFIER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AV_PKT_DATA_WEBVTT_SETTINGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_11__*, i8*, i32, i8*, i8*, i32)* @matroska_parse_webvtt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_parse_webvtt(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_11__* %2, i8* %3, i32 %4, i8* %5, i8* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8, align 1
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %10, align 8
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %19, align 8
  %32 = load i32, i32* %14, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %9, align 4
  br label %252

36:                                               ; preds = %8
  %37 = load i8*, i8** %13, align 8
  store i8* %37, i8** %27, align 8
  %38 = load i8*, i8** %13, align 8
  %39 = load i32, i32* %14, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, i8* %38, i64 %40
  store i8* %41, i8** %28, align 8
  %42 = load i8*, i8** %27, align 8
  store i8* %42, i8** %20, align 8
  store i32 -1, i32* %24, align 4
  br label %43

43:                                               ; preds = %72, %36
  %44 = load i8*, i8** %27, align 8
  %45 = load i8*, i8** %28, align 8
  %46 = icmp ult i8* %44, %45
  br i1 %46, label %47, label %75

47:                                               ; preds = %43
  %48 = load i8*, i8** %27, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %50, 13
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %27, align 8
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 10
  br i1 %56, label %57, label %72

57:                                               ; preds = %52, %47
  %58 = load i8*, i8** %27, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = ptrtoint i8* %58 to i64
  %61 = ptrtoint i8* %59 to i64
  %62 = sub i64 %60, %61
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %24, align 4
  %64 = load i8*, i8** %27, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 13
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = load i8*, i8** %27, align 8
  %70 = getelementptr inbounds i8, i8* %69, i32 1
  store i8* %70, i8** %27, align 8
  br label %71

71:                                               ; preds = %68, %57
  br label %75

72:                                               ; preds = %52
  %73 = load i8*, i8** %27, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %27, align 8
  br label %43

75:                                               ; preds = %71, %43
  %76 = load i8*, i8** %27, align 8
  %77 = load i8*, i8** %28, align 8
  %78 = icmp uge i8* %76, %77
  br i1 %78, label %84, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %27, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  %83 = icmp ne i32 %82, 10
  br i1 %83, label %84, label %86

84:                                               ; preds = %79, %75
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %9, align 4
  br label %252

86:                                               ; preds = %79
  %87 = load i8*, i8** %27, align 8
  %88 = getelementptr inbounds i8, i8* %87, i32 1
  store i8* %88, i8** %27, align 8
  %89 = load i8*, i8** %27, align 8
  store i8* %89, i8** %21, align 8
  store i32 -1, i32* %25, align 4
  br label %90

90:                                               ; preds = %119, %86
  %91 = load i8*, i8** %27, align 8
  %92 = load i8*, i8** %28, align 8
  %93 = icmp ult i8* %91, %92
  br i1 %93, label %94, label %122

94:                                               ; preds = %90
  %95 = load i8*, i8** %27, align 8
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 13
  br i1 %98, label %104, label %99

99:                                               ; preds = %94
  %100 = load i8*, i8** %27, align 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %119

104:                                              ; preds = %99, %94
  %105 = load i8*, i8** %27, align 8
  %106 = load i8*, i8** %21, align 8
  %107 = ptrtoint i8* %105 to i64
  %108 = ptrtoint i8* %106 to i64
  %109 = sub i64 %107, %108
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %25, align 4
  %111 = load i8*, i8** %27, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 13
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i8*, i8** %27, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 1
  store i8* %117, i8** %27, align 8
  br label %118

118:                                              ; preds = %115, %104
  br label %122

119:                                              ; preds = %99
  %120 = load i8*, i8** %27, align 8
  %121 = getelementptr inbounds i8, i8* %120, i32 1
  store i8* %121, i8** %27, align 8
  br label %90

122:                                              ; preds = %118, %90
  %123 = load i8*, i8** %27, align 8
  %124 = load i8*, i8** %28, align 8
  %125 = icmp uge i8* %123, %124
  br i1 %125, label %131, label %126

126:                                              ; preds = %122
  %127 = load i8*, i8** %27, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 10
  br i1 %130, label %131, label %133

131:                                              ; preds = %126, %122
  %132 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %132, i32* %9, align 4
  br label %252

133:                                              ; preds = %126
  %134 = load i8*, i8** %27, align 8
  %135 = getelementptr inbounds i8, i8* %134, i32 1
  store i8* %135, i8** %27, align 8
  %136 = load i8*, i8** %27, align 8
  store i8* %136, i8** %22, align 8
  %137 = load i8*, i8** %28, align 8
  %138 = load i8*, i8** %27, align 8
  %139 = ptrtoint i8* %137 to i64
  %140 = ptrtoint i8* %138 to i64
  %141 = sub i64 %139, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %26, align 4
  br label %143

143:                                              ; preds = %162, %133
  %144 = load i32, i32* %26, align 4
  %145 = icmp sgt i32 %144, 0
  br i1 %145, label %146, label %164

146:                                              ; preds = %143
  %147 = load i32, i32* %26, align 4
  %148 = sub nsw i32 %147, 1
  store i32 %148, i32* %30, align 4
  %149 = load i8*, i8** %27, align 8
  %150 = load i32, i32* %30, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i8, i8* %149, i64 %151
  %153 = load i8, i8* %152, align 1
  store i8 %153, i8* %31, align 1
  %154 = load i8, i8* %31, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp ne i32 %155, 13
  br i1 %156, label %157, label %162

157:                                              ; preds = %146
  %158 = load i8, i8* %31, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 10
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  br label %164

162:                                              ; preds = %157, %146
  %163 = load i32, i32* %30, align 4
  store i32 %163, i32* %26, align 4
  br label %143

164:                                              ; preds = %161, %143
  %165 = load i32, i32* %26, align 4
  %166 = icmp sle i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %164
  %168 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %168, i32* %9, align 4
  br label %252

169:                                              ; preds = %164
  %170 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %171 = load i32, i32* %26, align 4
  %172 = call i32 @av_new_packet(%struct.TYPE_12__* %170, i32 %171)
  store i32 %172, i32* %29, align 4
  %173 = load i32, i32* %29, align 4
  %174 = icmp slt i32 %173, 0
  br i1 %174, label %175, label %177

175:                                              ; preds = %169
  %176 = load i32, i32* %29, align 4
  store i32 %176, i32* %9, align 4
  br label %252

177:                                              ; preds = %169
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = load i8*, i8** %22, align 8
  %182 = load i32, i32* %26, align 4
  %183 = call i32 @memcpy(i8* %180, i8* %181, i32 %182)
  %184 = load i32, i32* %24, align 4
  %185 = icmp sgt i32 %184, 0
  br i1 %185, label %186, label %203

186:                                              ; preds = %177
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %188 = load i32, i32* @AV_PKT_DATA_WEBVTT_IDENTIFIER, align 4
  %189 = load i32, i32* %24, align 4
  %190 = call i8* @av_packet_new_side_data(%struct.TYPE_12__* %187, i32 %188, i32 %189)
  store i8* %190, i8** %23, align 8
  %191 = load i8*, i8** %23, align 8
  %192 = icmp ne i8* %191, null
  br i1 %192, label %198, label %193

193:                                              ; preds = %186
  %194 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %195 = call i32 @av_packet_unref(%struct.TYPE_12__* %194)
  %196 = load i32, i32* @ENOMEM, align 4
  %197 = call i32 @AVERROR(i32 %196)
  store i32 %197, i32* %9, align 4
  br label %252

198:                                              ; preds = %186
  %199 = load i8*, i8** %23, align 8
  %200 = load i8*, i8** %20, align 8
  %201 = load i32, i32* %24, align 4
  %202 = call i32 @memcpy(i8* %199, i8* %200, i32 %201)
  br label %203

203:                                              ; preds = %198, %177
  %204 = load i32, i32* %25, align 4
  %205 = icmp sgt i32 %204, 0
  br i1 %205, label %206, label %223

206:                                              ; preds = %203
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %208 = load i32, i32* @AV_PKT_DATA_WEBVTT_SETTINGS, align 4
  %209 = load i32, i32* %25, align 4
  %210 = call i8* @av_packet_new_side_data(%struct.TYPE_12__* %207, i32 %208, i32 %209)
  store i8* %210, i8** %23, align 8
  %211 = load i8*, i8** %23, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %218, label %213

213:                                              ; preds = %206
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %215 = call i32 @av_packet_unref(%struct.TYPE_12__* %214)
  %216 = load i32, i32* @ENOMEM, align 4
  %217 = call i32 @AVERROR(i32 %216)
  store i32 %217, i32* %9, align 4
  br label %252

218:                                              ; preds = %206
  %219 = load i8*, i8** %23, align 8
  %220 = load i8*, i8** %21, align 8
  %221 = load i32, i32* %25, align 4
  %222 = call i32 @memcpy(i8* %219, i8* %220, i32 %221)
  br label %223

223:                                              ; preds = %218, %203
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %227, i32 0, i32 4
  store i32 %226, i32* %228, align 8
  %229 = load i8*, i8** %15, align 8
  %230 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %230, i32 0, i32 3
  store i8* %229, i8** %231, align 8
  %232 = load i8*, i8** %16, align 8
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 2
  store i8* %232, i8** %234, align 8
  %235 = load i32, i32* %17, align 4
  %236 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 1
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 1
  %240 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %241 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %240, i32 0, i32 0
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %243 = call i32 @ff_packet_list_put(i32* %239, i32* %241, %struct.TYPE_12__* %242, i32 0)
  store i32 %243, i32* %29, align 4
  %244 = load i32, i32* %29, align 4
  %245 = icmp slt i32 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %223
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  %248 = call i32 @av_packet_unref(%struct.TYPE_12__* %247)
  %249 = load i32, i32* @ENOMEM, align 4
  %250 = call i32 @AVERROR(i32 %249)
  store i32 %250, i32* %9, align 4
  br label %252

251:                                              ; preds = %223
  store i32 0, i32* %9, align 4
  br label %252

252:                                              ; preds = %251, %246, %213, %193, %175, %167, %131, %84, %34
  %253 = load i32, i32* %9, align 4
  ret i32 %253
}

declare dso_local i32 @av_new_packet(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @av_packet_new_side_data(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_12__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_packet_list_put(i32*, i32*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
