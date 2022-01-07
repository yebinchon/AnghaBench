; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_get_video_buffer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavutil/extr_frame.c_get_video_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64*, i64*, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @get_video_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_video_buffer(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = call i32* @av_pix_fmt_desc_get(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @FFMAX(i32 32, i32 %15)
  store i32 %16, i32* %10, align 4
  %17 = load i32*, i32** %6, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = call i32 @AVERROR(i32 %20)
  store i32 %21, i32* %3, align 4
  br label %218

22:                                               ; preds = %2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @av_image_check_size(i32 %25, i32 %28, i32 0, i32* null)
  store i32 %29, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %218

33:                                               ; preds = %22
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %118, label %40

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = icmp sle i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  store i32 32, i32* %5, align 4
  br label %44

44:                                               ; preds = %43, %40
  store i32 1, i32* %8, align 4
  br label %45

45:                                               ; preds = %78, %44
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp sle i32 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i8* @FFALIGN(i32 %58, i32 %59)
  %61 = call i32 @av_image_fill_linesizes(i32* %52, i32 %55, i8* %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %49
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %218

66:                                               ; preds = %49
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %5, align 4
  %73 = sub nsw i32 %72, 1
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %77, label %76

76:                                               ; preds = %66
  br label %82

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %8, align 4
  br label %45

82:                                               ; preds = %76, %45
  store i32 0, i32* %8, align 4
  br label %83

83:                                               ; preds = %114, %82
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 4
  br i1 %85, label %86, label %95

86:                                               ; preds = %83
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %86, %83
  %96 = phi i1 [ false, %83 ], [ %94, %86 ]
  br i1 %96, label %97, label %117

97:                                               ; preds = %95
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %5, align 4
  %106 = call i8* @FFALIGN(i32 %104, i32 %105)
  %107 = ptrtoint i8* %106 to i32
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  store i32 %107, i32* %113, align 4
  br label %114

114:                                              ; preds = %97
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %83

117:                                              ; preds = %95
  br label %118

118:                                              ; preds = %117, %33
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i8* @FFALIGN(i32 %121, i32 32)
  %123 = ptrtoint i8* %122 to i32
  store i32 %123, i32* %9, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 3
  %126 = load i64*, i64** %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @av_image_fill_pointers(i64* %126, i32 %129, i32 %130, i32* null, i32* %133)
  store i32 %134, i32* %7, align 4
  %135 = icmp slt i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %118
  %137 = load i32, i32* %7, align 4
  store i32 %137, i32* %3, align 4
  br label %218

138:                                              ; preds = %118
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* %10, align 4
  %141 = mul nsw i32 4, %140
  %142 = add nsw i32 %139, %141
  %143 = call %struct.TYPE_6__* @av_buffer_alloc(i32 %142)
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %146, i64 0
  store %struct.TYPE_6__* %143, %struct.TYPE_6__** %147, align 8
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 5
  %150 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %150, i64 0
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %151, align 8
  %153 = icmp ne %struct.TYPE_6__* %152, null
  br i1 %153, label %157, label %154

154:                                              ; preds = %138
  %155 = load i32, i32* @ENOMEM, align 4
  %156 = call i32 @AVERROR(i32 %155)
  store i32 %156, i32* %7, align 4
  br label %214

157:                                              ; preds = %138
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 3
  %160 = load i64*, i64** %159, align 8
  %161 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 6
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %9, align 4
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 5
  %167 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %167, i64 0
  %169 = load %struct.TYPE_6__*, %struct.TYPE_6__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @av_image_fill_pointers(i64* %160, i32 %163, i32 %164, i32* %171, i32* %174)
  store i32 %175, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %178

177:                                              ; preds = %157
  br label %214

178:                                              ; preds = %157
  store i32 1, i32* %8, align 4
  br label %179

179:                                              ; preds = %205, %178
  %180 = load i32, i32* %8, align 4
  %181 = icmp slt i32 %180, 4
  br i1 %181, label %182, label %208

182:                                              ; preds = %179
  %183 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 3
  %185 = load i64*, i64** %184, align 8
  %186 = load i32, i32* %8, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i64, i64* %185, i64 %187
  %189 = load i64, i64* %188, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %204

191:                                              ; preds = %182
  %192 = load i32, i32* %8, align 4
  %193 = load i32, i32* %10, align 4
  %194 = mul nsw i32 %192, %193
  %195 = sext i32 %194 to i64
  %196 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 3
  %198 = load i64*, i64** %197, align 8
  %199 = load i32, i32* %8, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds i64, i64* %198, i64 %200
  %202 = load i64, i64* %201, align 8
  %203 = add nsw i64 %202, %195
  store i64 %203, i64* %201, align 8
  br label %204

204:                                              ; preds = %191, %182
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %8, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %8, align 4
  br label %179

208:                                              ; preds = %179
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %209, i32 0, i32 3
  %211 = load i64*, i64** %210, align 8
  %212 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %212, i32 0, i32 4
  store i64* %211, i64** %213, align 8
  store i32 0, i32* %3, align 4
  br label %218

214:                                              ; preds = %177, %154
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %216 = call i32 @av_frame_unref(%struct.TYPE_5__* %215)
  %217 = load i32, i32* %7, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %214, %208, %136, %64, %31, %19
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32* @av_pix_fmt_desc_get(i32) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_image_check_size(i32, i32, i32, i32*) #1

declare dso_local i32 @av_image_fill_linesizes(i32*, i32, i8*) #1

declare dso_local i8* @FFALIGN(i32, i32) #1

declare dso_local i32 @av_image_fill_pointers(i64*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_6__* @av_buffer_alloc(i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
