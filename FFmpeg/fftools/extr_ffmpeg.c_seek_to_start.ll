; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_seek_to_start.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_seek_to_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, i64, i64, %struct.TYPE_14__, %struct.TYPE_20__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_20__ = type { i64, i32 }
%struct.TYPE_17__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32 }

@INT64_MIN = common dso_local global i32 0, align 4
@input_streams = common dso_local global %struct.TYPE_16__** null, align 8
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_19__*)* @seek_to_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seek_to_start(%struct.TYPE_17__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__, align 4
  %13 = alloca %struct.TYPE_18__, align 4
  %14 = alloca %struct.TYPE_18__, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %16 = load i32, i32* @INT64_MIN, align 4
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @avformat_seek_file(%struct.TYPE_19__* %15, i32 -1, i32 %16, i32 %19, i32 %22, i32 0)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %3, align 4
  br label %218

28:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %63

35:                                               ; preds = %29
  %36 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @input_streams, align 8
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %36, i64 %42
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %43, align 8
  store %struct.TYPE_16__* %44, %struct.TYPE_16__** %6, align 8
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 5
  %47 = load %struct.TYPE_20__*, %struct.TYPE_20__** %46, align 8
  store %struct.TYPE_20__* %47, %struct.TYPE_20__** %7, align 8
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %35
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  store i32 1, i32* %10, align 4
  br label %59

59:                                               ; preds = %58, %53, %35
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %29

63:                                               ; preds = %29
  store i32 0, i32* %8, align 4
  br label %64

64:                                               ; preds = %203, %63
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %206

70:                                               ; preds = %64
  %71 = load %struct.TYPE_16__**, %struct.TYPE_16__*** @input_streams, align 8
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %8, align 4
  %76 = add nsw i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %71, i64 %77
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %78, align 8
  store %struct.TYPE_16__* %79, %struct.TYPE_16__** %6, align 8
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 5
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %81, align 8
  store %struct.TYPE_20__* %82, %struct.TYPE_20__** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %115

85:                                               ; preds = %70
  %86 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %113

91:                                               ; preds = %85
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %113

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %12, i32 0, i32 1
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  store i32 %101, i32* %98, align 4
  %102 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = bitcast %struct.TYPE_18__* %12 to i64*
  %111 = load i64, i64* %110, align 4
  %112 = call i32 @av_rescale_q(i32 %104, i64 %111, i32 %109)
  store i32 %112, i32* %11, align 4
  br label %114

113:                                              ; preds = %91, %85
  br label %203

114:                                              ; preds = %96
  br label %164

115:                                              ; preds = %70
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 4
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %136

121:                                              ; preds = %115
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @av_inv_q(i64 %125)
  %127 = bitcast %struct.TYPE_18__* %13 to i64*
  store i64 %126, i64* %127, align 4
  %128 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %128, i32 0, i32 1
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = bitcast %struct.TYPE_18__* %13 to i64*
  %134 = load i64, i64* %133, align 4
  %135 = call i32 @av_rescale_q(i32 1, i64 %134, i32 %132)
  store i32 %135, i32* %11, align 4
  br label %163

136:                                              ; preds = %115
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %161

144:                                              ; preds = %136
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i64 @av_inv_q(i64 %150)
  %152 = bitcast %struct.TYPE_18__* %14 to i64*
  store i64 %151, i64* %152, align 4
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = bitcast %struct.TYPE_18__* %14 to i64*
  %159 = load i64, i64* %158, align 4
  %160 = call i32 @av_rescale_q(i32 1, i64 %159, i32 %157)
  store i32 %160, i32* %11, align 4
  br label %162

161:                                              ; preds = %136
  store i32 1, i32* %11, align 4
  br label %162

162:                                              ; preds = %161, %144
  br label %163

163:                                              ; preds = %162, %121
  br label %164

164:                                              ; preds = %163, %114
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %164
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  store i32 %174, i32* %176, align 8
  br label %177

177:                                              ; preds = %169, %164
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 3
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = sub nsw i64 %180, %183
  %185 = load i32, i32* %11, align 4
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %186, %184
  %188 = trunc i64 %187 to i32
  store i32 %188, i32* %11, align 4
  %189 = load i32, i32* %11, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 4
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 1
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @duration_max(i32 %189, i32* %191, i32 %196, i32 %199)
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 3
  store i32 %200, i32* %202, align 8
  br label %203

203:                                              ; preds = %177, %113
  %204 = load i32, i32* %8, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %8, align 4
  br label %64

206:                                              ; preds = %64
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 2
  %209 = load i64, i64* %208, align 8
  %210 = icmp sgt i64 %209, 0
  br i1 %210, label %211, label %216

211:                                              ; preds = %206
  %212 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %213 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %212, i32 0, i32 2
  %214 = load i64, i64* %213, align 8
  %215 = add nsw i64 %214, -1
  store i64 %215, i64* %213, align 8
  br label %216

216:                                              ; preds = %211, %206
  %217 = load i32, i32* %9, align 4
  store i32 %217, i32* %3, align 4
  br label %218

218:                                              ; preds = %216, %26
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @avformat_seek_file(%struct.TYPE_19__*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @av_rescale_q(i32, i64, i32) #1

declare dso_local i64 @av_inv_q(i64) #1

declare dso_local i32 @duration_max(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
