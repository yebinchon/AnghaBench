; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_subframe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flacdec.c_decode_subframe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32**, i64, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@FLAC_CHMODE_RIGHT_SIDE = common dso_local global i64 0, align 8
@FLAC_CHMODE_LEFT_SIDE = common dso_local global i64 0, align 8
@FLAC_CHMODE_MID_SIDE = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"invalid subframe padding\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Invalid number of wasted bits > available bits (%d) - left=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Decorrelated bit depth > 32\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"invalid coding type\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @decode_subframe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_subframe(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32**, i32*** %16, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32*, i32** %17, i64 %19
  %21 = load i32*, i32** %20, align 8
  store i32* %21, i32** %6, align 8
  store i32 0, i32* %8, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %2
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @FLAC_CHMODE_RIGHT_SIDE, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %54

38:                                               ; preds = %2
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FLAC_CHMODE_LEFT_SIDE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FLAC_CHMODE_MID_SIDE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44, %38
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %44
  br label %54

54:                                               ; preds = %53, %37
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 4
  %57 = call i64 @get_bits1(i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AV_LOG_ERROR, align 4
  %64 = call i32 (i32, i32, i8*, ...) @av_log(i32 %62, i32 %63, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %65, i32* %3, align 4
  br label %246

66:                                               ; preds = %54
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 4
  %69 = call i32 @get_bits(i32* %68, i32 6)
  store i32 %69, i32* %7, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 4
  %72 = call i64 @get_bits1(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %116

74:                                               ; preds = %66
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 4
  %77 = call i32 @get_bits_left(i32* %76)
  store i32 %77, i32* %13, align 4
  %78 = load i32, i32* %13, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %96, label %80

80:                                               ; preds = %74
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %9, align 4
  %83 = icmp slt i32 %81, %82
  br i1 %83, label %84, label %90

84:                                               ; preds = %80
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @show_bits_long(i32* %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84, %80
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @show_bits_long(i32* %92, i32 %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %90, %84, %74
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %13, align 4
  %103 = call i32 (i32, i32, i8*, ...) @av_log(i32 %99, i32 %100, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %101, i32 %102)
  %104 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %104, i32* %3, align 4
  br label %246

105:                                              ; preds = %90
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 4
  %110 = call i32 @get_bits_left(i32* %109)
  %111 = call i32 @get_unary(i32* %107, i32 1, i32 %110)
  %112 = add nsw i32 1, %111
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = sub nsw i32 %114, %113
  store i32 %115, i32* %9, align 4
  br label %116

116:                                              ; preds = %105, %66
  %117 = load i32, i32* %9, align 4
  %118 = icmp sgt i32 %117, 32
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @avpriv_report_missing_feature(i32 %122, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %124, i32* %3, align 4
  br label %246

125:                                              ; preds = %116
  %126 = load i32, i32* %7, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %150

128:                                              ; preds = %125
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 4
  %131 = load i32, i32* %9, align 4
  %132 = call i8* @get_sbits_long(i32* %130, i32 %131)
  %133 = ptrtoint i8* %132 to i32
  store i32 %133, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %134

134:                                              ; preds = %146, %128
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %134
  %141 = load i32, i32* %11, align 4
  %142 = load i32*, i32** %6, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %141, i32* %145, align 4
  br label %146

146:                                              ; preds = %140
  %147 = load i32, i32* %10, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %10, align 4
  br label %134

149:                                              ; preds = %134
  br label %216

150:                                              ; preds = %125
  %151 = load i32, i32* %7, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %174

153:                                              ; preds = %150
  store i32 0, i32* %10, align 4
  br label %154

154:                                              ; preds = %170, %153
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = icmp slt i32 %155, %158
  br i1 %159, label %160, label %173

160:                                              ; preds = %154
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 4
  %163 = load i32, i32* %9, align 4
  %164 = call i8* @get_sbits_long(i32* %162, i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %6, align 8
  %167 = load i32, i32* %10, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  store i32 %165, i32* %169, align 4
  br label %170

170:                                              ; preds = %160
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %154

173:                                              ; preds = %154
  br label %215

174:                                              ; preds = %150
  %175 = load i32, i32* %7, align 4
  %176 = icmp sge i32 %175, 8
  br i1 %176, label %177, label %191

177:                                              ; preds = %174
  %178 = load i32, i32* %7, align 4
  %179 = icmp sle i32 %178, 12
  br i1 %179, label %180, label %191

180:                                              ; preds = %177
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %182 = load i32*, i32** %6, align 8
  %183 = load i32, i32* %7, align 4
  %184 = and i32 %183, -9
  %185 = load i32, i32* %9, align 4
  %186 = call i32 @decode_subframe_fixed(%struct.TYPE_7__* %181, i32* %182, i32 %184, i32 %185)
  store i32 %186, i32* %12, align 4
  %187 = icmp slt i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %180
  %189 = load i32, i32* %12, align 4
  store i32 %189, i32* %3, align 4
  br label %246

190:                                              ; preds = %180
  br label %214

191:                                              ; preds = %177, %174
  %192 = load i32, i32* %7, align 4
  %193 = icmp sge i32 %192, 32
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %196 = load i32*, i32** %6, align 8
  %197 = load i32, i32* %7, align 4
  %198 = and i32 %197, -33
  %199 = add nsw i32 %198, 1
  %200 = load i32, i32* %9, align 4
  %201 = call i32 @decode_subframe_lpc(%struct.TYPE_7__* %195, i32* %196, i32 %199, i32 %200)
  store i32 %201, i32* %12, align 4
  %202 = icmp slt i32 %201, 0
  br i1 %202, label %203, label %205

203:                                              ; preds = %194
  %204 = load i32, i32* %12, align 4
  store i32 %204, i32* %3, align 4
  br label %246

205:                                              ; preds = %194
  br label %213

206:                                              ; preds = %191
  %207 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @AV_LOG_ERROR, align 4
  %211 = call i32 (i32, i32, i8*, ...) @av_log(i32 %209, i32 %210, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %212 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %212, i32* %3, align 4
  br label %246

213:                                              ; preds = %205
  br label %214

214:                                              ; preds = %213, %190
  br label %215

215:                                              ; preds = %214, %173
  br label %216

216:                                              ; preds = %215, %149
  %217 = load i32, i32* %8, align 4
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %245

219:                                              ; preds = %216
  %220 = load i32, i32* %8, align 4
  %221 = icmp slt i32 %220, 32
  br i1 %221, label %222, label %245

222:                                              ; preds = %219
  store i32 0, i32* %14, align 4
  br label %223

223:                                              ; preds = %241, %222
  %224 = load i32, i32* %14, align 4
  %225 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %244

229:                                              ; preds = %223
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* %14, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds i32, i32* %230, i64 %232
  %234 = load i32, i32* %233, align 4
  %235 = load i32, i32* %8, align 4
  %236 = shl i32 %234, %235
  %237 = load i32*, i32** %6, align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  store i32 %236, i32* %240, align 4
  br label %241

241:                                              ; preds = %229
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  br label %223

244:                                              ; preds = %223
  br label %245

245:                                              ; preds = %244, %219, %216
  store i32 0, i32* %3, align 4
  br label %246

246:                                              ; preds = %245, %206, %203, %188, %119, %96, %59
  %247 = load i32, i32* %3, align 4
  ret i32 %247
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits_left(i32*) #1

declare dso_local i32 @show_bits_long(i32*, i32) #1

declare dso_local i32 @get_unary(i32*, i32, i32) #1

declare dso_local i32 @avpriv_report_missing_feature(i32, i8*) #1

declare dso_local i8* @get_sbits_long(i32*, i32) #1

declare dso_local i32 @decode_subframe_fixed(%struct.TYPE_7__*, i32*, i32, i32) #1

declare dso_local i32 @decode_subframe_lpc(%struct.TYPE_7__*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
