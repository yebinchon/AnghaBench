; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.h_ff_mpeg4_pred_dc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mpeg4video.h_ff_mpeg4_pred_dc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32**, i32*, i64, i64, i64, i64, i32, %struct.TYPE_5__*, i32, i64 }
%struct.TYPE_5__ = type { i32 }

@IS_3IV1 = common dso_local global i64 0, align 8
@AV_EF_BITSTREAM = common dso_local global i32 0, align 4
@AV_EF_AGGRESSIVE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"dc<0 at %dx%d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"dc overflow at %dx%d\0A\00", align 1
@FF_BUG_DC_CLIP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*, i32)* @ff_mpeg4_pred_dc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ff_mpeg4_pred_dc(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp slt i32 %20, 4
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %17, align 4
  br label %30

26:                                               ; preds = %5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %17, align 4
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i64, i64* @IS_3IV1, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 8, i32* %17, align 4
  br label %34

34:                                               ; preds = %33, %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %15, align 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 0
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %46, i64 %54
  store i32* %55, i32** %19, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 -1
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %12, align 4
  %59 = load i32*, i32** %19, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sub nsw i32 -1, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %19, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 0, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %65, i64 %68
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %14, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 12
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %34
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 3
  br i1 %77, label %78, label %95

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = icmp ne i32 %79, 2
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 1024, i32* %14, align 4
  store i32 1024, i32* %13, align 4
  br label %82

82:                                               ; preds = %81, %78
  %83 = load i32, i32* %8, align 4
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %94

85:                                               ; preds = %82
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 5
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %88, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 1024, i32* %12, align 4
  store i32 1024, i32* %13, align 4
  br label %94

94:                                               ; preds = %93, %85, %82
  br label %95

95:                                               ; preds = %94, %75, %34
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 5
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 6
  %101 = load i64, i64* %100, align 8
  %102 = icmp eq i64 %98, %101
  br i1 %102, label %103, label %123

103:                                              ; preds = %95
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 7
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 8
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %109, 1
  %111 = icmp eq i64 %106, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %103
  %113 = load i32, i32* %8, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %8, align 4
  %117 = icmp eq i32 %116, 4
  br i1 %117, label %121, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %8, align 4
  %120 = icmp eq i32 %119, 5
  br i1 %120, label %121, label %122

121:                                              ; preds = %118, %115, %112
  store i32 1024, i32* %13, align 4
  br label %122

122:                                              ; preds = %121, %118
  br label %123

123:                                              ; preds = %122, %103, %95
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* %13, align 4
  %126 = sub nsw i32 %124, %125
  %127 = call i64 @abs(i32 %126)
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %14, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i64 @abs(i32 %130)
  %132 = icmp slt i64 %127, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %14, align 4
  store i32 %134, i32* %16, align 4
  %135 = load i32*, i32** %10, align 8
  store i32 1, i32* %135, align 4
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %12, align 4
  store i32 %137, i32* %16, align 4
  %138 = load i32*, i32** %10, align 8
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  %140 = load i32, i32* %16, align 4
  %141 = load i32, i32* %17, align 4
  %142 = ashr i32 %141, 1
  %143 = add nsw i32 %140, %142
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @FASTDIV(i32 %143, i32 %144)
  store i32 %145, i32* %16, align 4
  %146 = load i32, i32* %11, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* %16, align 4
  %151 = sub nsw i32 %149, %150
  store i32 %151, i32* %18, align 4
  br label %157

152:                                              ; preds = %139
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %9, align 4
  %155 = add nsw i32 %154, %153
  store i32 %155, i32* %9, align 4
  %156 = load i32, i32* %9, align 4
  store i32 %156, i32* %18, align 4
  br label %157

157:                                              ; preds = %152, %148
  %158 = load i32, i32* %17, align 4
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %159, %158
  store i32 %160, i32* %9, align 4
  %161 = load i32, i32* %9, align 4
  %162 = and i32 %161, -2048
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %229

164:                                              ; preds = %157
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 11
  %167 = load i32, i32* %166, align 8
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %215, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 10
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @AV_EF_BITSTREAM, align 4
  %176 = load i32, i32* @AV_EF_AGGRESSIVE, align 4
  %177 = or i32 %175, %176
  %178 = and i32 %174, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %215

180:                                              ; preds = %169
  %181 = load i32, i32* %9, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %196

183:                                              ; preds = %180
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 10
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %185, align 8
  %187 = load i32, i32* @AV_LOG_ERROR, align 4
  %188 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 5
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 7
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @av_log(%struct.TYPE_5__* %186, i32 %187, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %190, i64 %193)
  %195 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %195, i32* %6, align 4
  br label %234

196:                                              ; preds = %180
  %197 = load i32, i32* %9, align 4
  %198 = load i32, i32* %17, align 4
  %199 = add nsw i32 2048, %198
  %200 = icmp sgt i32 %197, %199
  br i1 %200, label %201, label %214

201:                                              ; preds = %196
  %202 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 10
  %204 = load %struct.TYPE_5__*, %struct.TYPE_5__** %203, align 8
  %205 = load i32, i32* @AV_LOG_ERROR, align 4
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 5
  %208 = load i64, i64* %207, align 8
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %209, i32 0, i32 7
  %211 = load i64, i64* %210, align 8
  %212 = call i32 @av_log(%struct.TYPE_5__* %204, i32 %205, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %208, i64 %211)
  %213 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %213, i32* %6, align 4
  br label %234

214:                                              ; preds = %196
  br label %215

215:                                              ; preds = %214, %169, %164
  %216 = load i32, i32* %9, align 4
  %217 = icmp slt i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %215
  store i32 0, i32* %9, align 4
  br label %228

219:                                              ; preds = %215
  %220 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 8
  %223 = load i32, i32* @FF_BUG_DC_CLIP, align 4
  %224 = and i32 %222, %223
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %227, label %226

226:                                              ; preds = %219
  store i32 2047, i32* %9, align 4
  br label %227

227:                                              ; preds = %226, %219
  br label %228

228:                                              ; preds = %227, %218
  br label %229

229:                                              ; preds = %228, %157
  %230 = load i32, i32* %9, align 4
  %231 = load i32*, i32** %19, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  store i32 %230, i32* %232, align 4
  %233 = load i32, i32* %18, align 4
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %229, %201, %183
  %235 = load i32, i32* %6, align 4
  ret i32 %235
}

declare dso_local i64 @abs(i32) #1

declare dso_local i32 @FASTDIV(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_5__*, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
