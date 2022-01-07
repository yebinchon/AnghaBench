; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_ff_hevc_hls_filter.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_filter.c_ff_hevc_hls_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32, %struct.TYPE_12__*, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

@AVDISCARD_ALL = common dso_local global i64 0, align 8
@AVDISCARD_NONKEY = common dso_local global i64 0, align 8
@AVDISCARD_NONINTRA = common dso_local global i64 0, align 8
@HEVC_SLICE_I = common dso_local global i64 0, align 8
@AVDISCARD_BIDIR = common dso_local global i64 0, align 8
@HEVC_SLICE_B = common dso_local global i64 0, align 8
@AVDISCARD_NONREF = common dso_local global i64 0, align 8
@FF_THREAD_FRAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_hevc_hls_filter(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sge i32 %12, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AVDISCARD_ALL, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %86, label %30

30:                                               ; preds = %4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @AVDISCARD_NONKEY, align 8
  %37 = icmp sge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %30
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %40 = call i32 @IS_IDR(%struct.TYPE_16__* %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %86

42:                                               ; preds = %38, %30
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AVDISCARD_NONINTRA, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %51, i32 0, i32 5
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @HEVC_SLICE_I, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %86, label %57

57:                                               ; preds = %50, %42
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AVDISCARD_BIDIR, align 8
  %64 = icmp sge i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @HEVC_SLICE_B, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %86, label %72

72:                                               ; preds = %65, %57
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @AVDISCARD_NONREF, align 8
  %79 = icmp sge i64 %77, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @ff_hevc_nal_is_nonref(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80, %65, %50, %38, %4
  store i32 1, i32* %10, align 4
  br label %87

87:                                               ; preds = %86, %80, %72
  %88 = load i32, i32* %10, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %87
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = load i32, i32* %6, align 4
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @deblocking_filter_CTB(%struct.TYPE_16__* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %90, %87
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %200

103:                                              ; preds = %95
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %200, label %106

106:                                              ; preds = %103
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %8, align 4
  %115 = sub nsw i32 %113, %114
  %116 = icmp sge i32 %107, %115
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %11, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %132

120:                                              ; preds = %106
  %121 = load i32, i32* %6, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %120
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %125 = load i32, i32* %6, align 4
  %126 = load i32, i32* %8, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %8, align 4
  %130 = sub nsw i32 %128, %129
  %131 = call i32 @sao_filter_CTB(%struct.TYPE_16__* %124, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %123, %120, %106
  %133 = load i32, i32* %6, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %145

135:                                              ; preds = %132
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %145

138:                                              ; preds = %135
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* %8, align 4
  %142 = sub nsw i32 %140, %141
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @sao_filter_CTB(%struct.TYPE_16__* %139, i32 %142, i32 %143)
  br label %145

145:                                              ; preds = %138, %135, %132
  %146 = load i32, i32* %7, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %172

148:                                              ; preds = %145
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* %8, align 4
  %156 = sub nsw i32 %154, %155
  %157 = call i32 @sao_filter_CTB(%struct.TYPE_16__* %152, i32 %153, i32 %156)
  %158 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @FF_THREAD_FRAME, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %171

164:                                              ; preds = %151
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = load i32, i32* %7, align 4
  %170 = call i32 @ff_thread_report_progress(i32* %168, i32 %169, i32 0)
  br label %171

171:                                              ; preds = %164, %151
  br label %172

172:                                              ; preds = %171, %148, %145
  %173 = load i32, i32* %9, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %199

175:                                              ; preds = %172
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %199

178:                                              ; preds = %175
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @sao_filter_CTB(%struct.TYPE_16__* %179, i32 %180, i32 %181)
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @FF_THREAD_FRAME, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %178
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %192, i32 0, i32 0
  %194 = load i32, i32* %7, align 4
  %195 = load i32, i32* %8, align 4
  %196 = add nsw i32 %194, %195
  %197 = call i32 @ff_thread_report_progress(i32* %193, i32 %196, i32 0)
  br label %198

198:                                              ; preds = %189, %178
  br label %199

199:                                              ; preds = %198, %175, %172
  br label %221

200:                                              ; preds = %103, %95
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %202 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* @FF_THREAD_FRAME, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %220

207:                                              ; preds = %200
  %208 = load i32, i32* %9, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %220

210:                                              ; preds = %207
  %211 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %212 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %211, i32 0, i32 1
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 0
  %215 = load i32, i32* %7, align 4
  %216 = load i32, i32* %8, align 4
  %217 = add nsw i32 %215, %216
  %218 = sub nsw i32 %217, 4
  %219 = call i32 @ff_thread_report_progress(i32* %214, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %210, %207, %200
  br label %221

221:                                              ; preds = %220, %199
  ret void
}

declare dso_local i32 @IS_IDR(%struct.TYPE_16__*) #1

declare dso_local i64 @ff_hevc_nal_is_nonref(i32) #1

declare dso_local i32 @deblocking_filter_CTB(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @sao_filter_CTB(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ff_thread_report_progress(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
