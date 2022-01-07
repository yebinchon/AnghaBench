; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_histogram.c_query_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_histogram.c_query_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__**, %struct.TYPE_9__** }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@levels_in_pix_fmts = common dso_local global i32* null, align 8
@AV_PIX_FMT_FLAG_RGB = common dso_local global i32 0, align 4
@levels_out_rgb8_pix_fmts = common dso_local global i32* null, align 8
@levels_out_rgb9_pix_fmts = common dso_local global i32* null, align 8
@levels_out_rgb10_pix_fmts = common dso_local global i32* null, align 8
@levels_out_rgb12_pix_fmts = common dso_local global i32* null, align 8
@levels_out_yuv8_pix_fmts = common dso_local global i32* null, align 8
@levels_out_yuv9_pix_fmts = common dso_local global i32* null, align 8
@levels_out_yuv10_pix_fmts = common dso_local global i32* null, align 8
@levels_out_yuv12_pix_fmts = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*)* @query_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @query_formats(%struct.TYPE_14__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %13, i64 0
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %22, i64 0
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %19, %1
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = call i32 @AVERROR(i32 %31)
  store i32 %32, i32* %2, align 4
  br label %195

33:                                               ; preds = %19
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %36, i64 0
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %56, label %42

42:                                               ; preds = %33
  %43 = load i32*, i32** @levels_in_pix_fmts, align 8
  %44 = call i32 @ff_make_format_list(i32* %43)
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %47, i64 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = call i32 @ff_formats_ref(i32 %44, i32* %50)
  store i32 %51, i32* %10, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %2, align 4
  br label %195

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %59, i64 0
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  store %struct.TYPE_13__* %63, %struct.TYPE_13__** %4, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %68)
  store %struct.TYPE_12__* %69, %struct.TYPE_12__** %5, align 8
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %7, align 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i64 0
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  store i32 %80, i32* %9, align 4
  store i32 1, i32* %8, align 4
  br label %81

81:                                               ; preds = %116, %56
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %119

87:                                               ; preds = %81
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = call %struct.TYPE_12__* @av_pix_fmt_desc_get(i32 %94)
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AV_PIX_FMT_FLAG_RGB, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %96, %101
  br i1 %102, label %112, label %103

103:                                              ; preds = %87
  %104 = load i32, i32* %9, align 4
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i64 0
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %104, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %103, %87
  %113 = load i32, i32* @EAGAIN, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %2, align 4
  br label %195

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %8, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %8, align 4
  br label %81

119:                                              ; preds = %81
  %120 = load i32, i32* %7, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = icmp eq i32 %123, 8
  br i1 %124, label %125, label %127

125:                                              ; preds = %122
  %126 = load i32*, i32** @levels_out_rgb8_pix_fmts, align 8
  store i32* %126, i32** %6, align 8
  br label %181

127:                                              ; preds = %122, %119
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %127
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, 9
  br i1 %132, label %133, label %135

133:                                              ; preds = %130
  %134 = load i32*, i32** @levels_out_rgb9_pix_fmts, align 8
  store i32* %134, i32** %6, align 8
  br label %180

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %7, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load i32, i32* %9, align 4
  %140 = icmp eq i32 %139, 10
  br i1 %140, label %141, label %143

141:                                              ; preds = %138
  %142 = load i32*, i32** @levels_out_rgb10_pix_fmts, align 8
  store i32* %142, i32** %6, align 8
  br label %179

143:                                              ; preds = %138, %135
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load i32, i32* %9, align 4
  %148 = icmp eq i32 %147, 12
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32*, i32** @levels_out_rgb12_pix_fmts, align 8
  store i32* %150, i32** %6, align 8
  br label %178

151:                                              ; preds = %146, %143
  %152 = load i32, i32* %9, align 4
  %153 = icmp eq i32 %152, 8
  br i1 %153, label %154, label %156

154:                                              ; preds = %151
  %155 = load i32*, i32** @levels_out_yuv8_pix_fmts, align 8
  store i32* %155, i32** %6, align 8
  br label %177

156:                                              ; preds = %151
  %157 = load i32, i32* %9, align 4
  %158 = icmp eq i32 %157, 9
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load i32*, i32** @levels_out_yuv9_pix_fmts, align 8
  store i32* %160, i32** %6, align 8
  br label %176

161:                                              ; preds = %156
  %162 = load i32, i32* %9, align 4
  %163 = icmp eq i32 %162, 10
  br i1 %163, label %164, label %166

164:                                              ; preds = %161
  %165 = load i32*, i32** @levels_out_yuv10_pix_fmts, align 8
  store i32* %165, i32** %6, align 8
  br label %175

166:                                              ; preds = %161
  %167 = load i32, i32* %9, align 4
  %168 = icmp eq i32 %167, 12
  br i1 %168, label %169, label %171

169:                                              ; preds = %166
  %170 = load i32*, i32** @levels_out_yuv12_pix_fmts, align 8
  store i32* %170, i32** %6, align 8
  br label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @EAGAIN, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %2, align 4
  br label %195

174:                                              ; preds = %169
  br label %175

175:                                              ; preds = %174, %164
  br label %176

176:                                              ; preds = %175, %159
  br label %177

177:                                              ; preds = %176, %154
  br label %178

178:                                              ; preds = %177, %149
  br label %179

179:                                              ; preds = %178, %141
  br label %180

180:                                              ; preds = %179, %133
  br label %181

181:                                              ; preds = %180, %125
  %182 = load i32*, i32** %6, align 8
  %183 = call i32 @ff_make_format_list(i32* %182)
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %186, i64 0
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 0
  %190 = call i32 @ff_formats_ref(i32 %183, i32* %189)
  store i32 %190, i32* %10, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %181
  %193 = load i32, i32* %10, align 4
  store i32 %193, i32* %2, align 4
  br label %195

194:                                              ; preds = %181
  store i32 0, i32* %2, align 4
  br label %195

195:                                              ; preds = %194, %192, %171, %112, %53, %30
  %196 = load i32, i32* %2, align 4
  ret i32 %196
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_formats_ref(i32, i32*) #1

declare dso_local i32 @ff_make_format_list(i32*) #1

declare dso_local %struct.TYPE_12__* @av_pix_fmt_desc_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
