; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_seek_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_utils.c_avformat_seek_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i64, %struct.TYPE_12__*, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { {}*, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AVSEEK_FLAG_BACKWARD = common dso_local global i32 0, align 4
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i64 0, align 8
@AV_ROUND_UP = common dso_local global i32 0, align 4
@AV_ROUND_PASS_MINMAX = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avformat_seek_file(%struct.TYPE_14__* %0, i32 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_13__, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i64, i64* %10, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %6
  %22 = load i64, i64* %12, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %6
  store i32 -1, i32* %7, align 4
  br label %206

26:                                               ; preds = %21
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, -1
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %30, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %26
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @AVERROR(i32 %36)
  store i32 %37, i32* %7, align 4
  br label %206

38:                                               ; preds = %29
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %13, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %13, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = bitcast {}** %55 to i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)**
  %57 = load i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)*, i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)* %57, null
  br i1 %58, label %59, label %129

59:                                               ; preds = %47
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %61 = call i32 @ff_read_frame_flush(%struct.TYPE_14__* %60)
  %62 = load i32, i32* %9, align 4
  %63 = icmp eq i32 %62, -1
  br i1 %63, label %64, label %108

64:                                               ; preds = %59
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %108

69:                                               ; preds = %64
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 3
  %72 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %72, i64 0
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = bitcast %struct.TYPE_13__* %15 to i8*
  %77 = bitcast %struct.TYPE_13__* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %76, i8* align 8 %77, i64 16, i1 false)
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %80 = bitcast %struct.TYPE_13__* %15 to { i64, i32 }*
  %81 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %80, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @av_rescale_q(i64 %78, i32 %79, i64 %82, i32 %84)
  store i64 %85, i64* %11, align 8
  %86 = load i64, i64* %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @AV_TIME_BASE, align 8
  %92 = mul nsw i64 %90, %91
  %93 = load i32, i32* @AV_ROUND_UP, align 4
  %94 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %95 = or i32 %93, %94
  %96 = call i64 @av_rescale_rnd(i64 %86, i32 %88, i64 %92, i32 %95)
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @AV_TIME_BASE, align 8
  %103 = mul nsw i64 %101, %102
  %104 = load i32, i32* @AV_ROUND_DOWN, align 4
  %105 = load i32, i32* @AV_ROUND_PASS_MINMAX, align 4
  %106 = or i32 %104, %105
  %107 = call i64 @av_rescale_rnd(i64 %97, i32 %99, i64 %103, i32 %106)
  store i64 %107, i64* %12, align 8
  store i32 0, i32* %9, align 4
  br label %108

108:                                              ; preds = %69, %64, %59
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 0
  %113 = bitcast {}** %112 to i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)**
  %114 = load i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)*, i32 (%struct.TYPE_14__*, i32, i64, i64, i64, i32)** %113, align 8
  %115 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* %13, align 4
  %121 = call i32 %114(%struct.TYPE_14__* %115, i32 %116, i64 %117, i64 %118, i64 %119, i32 %120)
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %14, align 4
  %123 = icmp sge i32 %122, 0
  br i1 %123, label %124, label %127

124:                                              ; preds = %108
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = call i32 @avformat_queue_attached_pictures(%struct.TYPE_14__* %125)
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %124, %108
  %128 = load i32, i32* %14, align 4
  store i32 %128, i32* %7, align 4
  br label %206

129:                                              ; preds = %47
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %129
  br label %137

137:                                              ; preds = %136, %129
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 2
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %145, label %144

144:                                              ; preds = %137
  br i1 true, label %145, label %205

145:                                              ; preds = %144, %137
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %10, align 8
  %148 = sub nsw i64 %146, %147
  %149 = load i64, i64* %12, align 8
  %150 = load i64, i64* %11, align 8
  %151 = sub nsw i64 %149, %150
  %152 = icmp sgt i64 %148, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  br label %156

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %153
  %157 = phi i32 [ %154, %153 ], [ 0, %155 ]
  store i32 %157, i32* %16, align 4
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = load i64, i64* %11, align 8
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* %16, align 4
  %163 = or i32 %161, %162
  %164 = call i32 @av_seek_frame(%struct.TYPE_14__* %158, i32 %159, i64 %160, i32 %163)
  store i32 %164, i32* %17, align 4
  %165 = load i32, i32* %17, align 4
  %166 = icmp slt i32 %165, 0
  br i1 %166, label %167, label %203

167:                                              ; preds = %156
  %168 = load i64, i64* %11, align 8
  %169 = load i64, i64* %10, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %171, label %203

171:                                              ; preds = %167
  %172 = load i64, i64* %12, align 8
  %173 = load i64, i64* %11, align 8
  %174 = icmp ne i64 %172, %173
  br i1 %174, label %175, label %203

175:                                              ; preds = %171
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  br label %184

182:                                              ; preds = %175
  %183 = load i64, i64* %10, align 8
  br label %184

184:                                              ; preds = %182, %180
  %185 = phi i64 [ %181, %180 ], [ %183, %182 ]
  %186 = load i32, i32* %13, align 4
  %187 = load i32, i32* %16, align 4
  %188 = or i32 %186, %187
  %189 = call i32 @av_seek_frame(%struct.TYPE_14__* %176, i32 %177, i64 %185, i32 %188)
  store i32 %189, i32* %17, align 4
  %190 = load i32, i32* %17, align 4
  %191 = icmp sge i32 %190, 0
  br i1 %191, label %192, label %202

192:                                              ; preds = %184
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %194 = load i32, i32* %9, align 4
  %195 = load i64, i64* %11, align 8
  %196 = load i32, i32* %13, align 4
  %197 = load i32, i32* %16, align 4
  %198 = load i32, i32* @AVSEEK_FLAG_BACKWARD, align 4
  %199 = xor i32 %197, %198
  %200 = or i32 %196, %199
  %201 = call i32 @av_seek_frame(%struct.TYPE_14__* %193, i32 %194, i64 %195, i32 %200)
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %192, %184
  br label %203

203:                                              ; preds = %202, %171, %167, %156
  %204 = load i32, i32* %17, align 4
  store i32 %204, i32* %7, align 4
  br label %206

205:                                              ; preds = %144
  store i32 -1, i32* %7, align 4
  br label %206

206:                                              ; preds = %205, %203, %127, %35, %25
  %207 = load i32, i32* %7, align 4
  ret i32 %207
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_read_frame_flush(%struct.TYPE_14__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @av_rescale_q(i64, i32, i64, i32) #1

declare dso_local i64 @av_rescale_rnd(i64, i32, i64, i32) #1

declare dso_local i32 @avformat_queue_attached_pictures(%struct.TYPE_14__*) #1

declare dso_local i32 @av_seek_frame(%struct.TYPE_14__*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
