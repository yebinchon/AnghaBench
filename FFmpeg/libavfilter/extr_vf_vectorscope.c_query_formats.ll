; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_vectorscope.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__**, %struct.TYPE_10__**, %struct.TYPE_13__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@in2_pix_fmts = common dso_local global i32* null, align 8
@in1_pix_fmts = common dso_local global i32* null, align 8
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@out_rgb8_pix_fmts = common dso_local global i32* null, align 8
@out_rgb9_pix_fmts = common dso_local global i32* null, align 8
@out_rgb10_pix_fmts = common dso_local global i32* null, align 8
@out_rgb12_pix_fmts = common dso_local global i32* null, align 8
@out_yuv8_pix_fmts = common dso_local global i32* null, align 8
@out_yuv9_pix_fmts = common dso_local global i32* null, align 8
@out_yuv10_pix_fmts = common dso_local global i32* null, align 8
@out_yuv12_pix_fmts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %4, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %21, align 8
  %23 = icmp ne %struct.TYPE_15__* %22, null
  br i1 %23, label %24, label %35

24:                                               ; preds = %1
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %27, i64 0
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %24, %1
  %36 = load i32, i32* @EAGAIN, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %2, align 4
  br label %224

38:                                               ; preds = %24
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %41, i64 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %85, label %47

47:                                               ; preds = %38
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %67, label %57

57:                                               ; preds = %52, %47
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %52
  %68 = load i32*, i32** @in2_pix_fmts, align 8
  store i32* %68, i32** %12, align 8
  br label %71

69:                                               ; preds = %62, %57
  %70 = load i32*, i32** @in1_pix_fmts, align 8
  store i32* %70, i32** %12, align 8
  br label %71

71:                                               ; preds = %69, %67
  %72 = load i32*, i32** %12, align 8
  %73 = call i32 @ff_make_format_list(i32* %72)
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %76, i64 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = call i32 @ff_formats_ref(i32 %73, i32* %79)
  store i32 %80, i32* %11, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %2, align 4
  br label %224

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %38
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %88, i64 0
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %91, align 8
  store %struct.TYPE_15__* %92, %struct.TYPE_15__** %7, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %97)
  store %struct.TYPE_14__* %98, %struct.TYPE_14__** %6, align 8
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %103 = and i32 %101, %102
  store i32 %103, i32* %9, align 4
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i64 0
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  store i32 %109, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %110

110:                                              ; preds = %145, %85
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp slt i32 %111, %114
  br i1 %115, label %116, label %148

116:                                              ; preds = %110
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = call %struct.TYPE_14__* @av_pix_fmt_desc_get(i32 %123)
  store %struct.TYPE_14__* %124, %struct.TYPE_14__** %6, align 8
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %125, %130
  br i1 %131, label %141, label %132

132:                                              ; preds = %116
  %133 = load i32, i32* %8, align 4
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %133, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %132, %116
  %142 = load i32, i32* @EAGAIN, align 4
  %143 = call i32 @AVERROR(i32 %142)
  store i32 %143, i32* %2, align 4
  br label %224

144:                                              ; preds = %132
  br label %145

145:                                              ; preds = %144
  %146 = load i32, i32* %10, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %10, align 4
  br label %110

148:                                              ; preds = %110
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %156

151:                                              ; preds = %148
  %152 = load i32, i32* %8, align 4
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32*, i32** @out_rgb8_pix_fmts, align 8
  store i32* %155, i32** %5, align 8
  br label %210

156:                                              ; preds = %151, %148
  %157 = load i32, i32* %9, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = icmp eq i32 %160, 9
  br i1 %161, label %162, label %164

162:                                              ; preds = %159
  %163 = load i32*, i32** @out_rgb9_pix_fmts, align 8
  store i32* %163, i32** %5, align 8
  br label %209

164:                                              ; preds = %159, %156
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %164
  %168 = load i32, i32* %8, align 4
  %169 = icmp eq i32 %168, 10
  br i1 %169, label %170, label %172

170:                                              ; preds = %167
  %171 = load i32*, i32** @out_rgb10_pix_fmts, align 8
  store i32* %171, i32** %5, align 8
  br label %208

172:                                              ; preds = %167, %164
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %180

175:                                              ; preds = %172
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 12
  br i1 %177, label %178, label %180

178:                                              ; preds = %175
  %179 = load i32*, i32** @out_rgb12_pix_fmts, align 8
  store i32* %179, i32** %5, align 8
  br label %207

180:                                              ; preds = %175, %172
  %181 = load i32, i32* %8, align 4
  %182 = icmp eq i32 %181, 8
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i32*, i32** @out_yuv8_pix_fmts, align 8
  store i32* %184, i32** %5, align 8
  br label %206

185:                                              ; preds = %180
  %186 = load i32, i32* %8, align 4
  %187 = icmp eq i32 %186, 9
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = load i32*, i32** @out_yuv9_pix_fmts, align 8
  store i32* %189, i32** %5, align 8
  br label %205

190:                                              ; preds = %185
  %191 = load i32, i32* %8, align 4
  %192 = icmp eq i32 %191, 10
  br i1 %192, label %193, label %195

193:                                              ; preds = %190
  %194 = load i32*, i32** @out_yuv10_pix_fmts, align 8
  store i32* %194, i32** %5, align 8
  br label %204

195:                                              ; preds = %190
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 12
  br i1 %197, label %198, label %200

198:                                              ; preds = %195
  %199 = load i32*, i32** @out_yuv12_pix_fmts, align 8
  store i32* %199, i32** %5, align 8
  br label %203

200:                                              ; preds = %195
  %201 = load i32, i32* @EAGAIN, align 4
  %202 = call i32 @AVERROR(i32 %201)
  store i32 %202, i32* %2, align 4
  br label %224

203:                                              ; preds = %198
  br label %204

204:                                              ; preds = %203, %193
  br label %205

205:                                              ; preds = %204, %188
  br label %206

206:                                              ; preds = %205, %183
  br label %207

207:                                              ; preds = %206, %178
  br label %208

208:                                              ; preds = %207, %170
  br label %209

209:                                              ; preds = %208, %162
  br label %210

210:                                              ; preds = %209, %154
  %211 = load i32*, i32** %5, align 8
  %212 = call i32 @ff_make_format_list(i32* %211)
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %215, i64 0
  %217 = load %struct.TYPE_12__*, %struct.TYPE_12__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = call i32 @ff_formats_ref(i32 %212, i32* %218)
  store i32 %219, i32* %11, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %210
  %222 = load i32, i32* %11, align 4
  store i32 %222, i32* %2, align 4
  br label %224

223:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %224

224:                                              ; preds = %223, %221, %200, %141, %82, %35
  %225 = load i32, i32* %2, align 4
  ret i32 %225
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(i32, i32*) #1

declare dso_local i32 @ff_make_format_list(i32*) #1

declare dso_local %struct.TYPE_14__* @av_pix_fmt_desc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
