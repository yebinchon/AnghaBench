; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_nal_encode.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_encx264.c_nal_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, %struct.TYPE_17__, i64 }
%struct.TYPE_17__ = type { i64, i32, i32, i8*, i32, i8* }
%struct.TYPE_21__ = type { %struct.TYPE_16__*, %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i64, i32 }

@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@HB_FRAME_IDR = common dso_local global i64 0, align 8
@HB_FRAME_P = common dso_local global i64 0, align 8
@HB_FRAME_B = common dso_local global i64 0, align 8
@HB_FRAME_BREF = common dso_local global i8* null, align 8
@HB_FRAME_I = common dso_local global i64 0, align 8
@HB_FLAG_FRAMETYPE_KEY = common dso_local global i32 0, align 4
@HB_FLAG_FRAMETYPE_REF = common dso_local global i32 0, align 4
@NAL_PRIORITY_DISPOSABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_23__* (%struct.TYPE_21__*, %struct.TYPE_18__*, i32, %struct.TYPE_19__*)* @nal_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_23__* @nal_encode(%struct.TYPE_21__* %0, %struct.TYPE_18__* %1, i32 %2, %struct.TYPE_19__* %3) #0 {
  %5 = alloca %struct.TYPE_21__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %5, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_19__* %3, %struct.TYPE_19__** %8, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %9, align 8
  %14 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %15, align 8
  store %struct.TYPE_20__* %16, %struct.TYPE_20__** %10, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %18, align 8
  store %struct.TYPE_22__* %19, %struct.TYPE_22__** %11, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_23__* @hb_video_buffer_init(i32 %22, i32 %25)
  store %struct.TYPE_23__* %26, %struct.TYPE_23__** %9, align 8
  %27 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  store i64 0, i64* %31, align 8
  %32 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 5
  store i8* %32, i8** %35, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 4
  store i32 %38, i32* %41, align 8
  %42 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %43 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 4
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %4
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 0, %66
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  br label %72

72:                                               ; preds = %63, %58, %4
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %98 [
    i32 129, label %76
    i32 128, label %81
    i32 132, label %86
    i32 131, label %91
    i32 130, label %97
  ]

76:                                               ; preds = %72
  %77 = load i64, i64* @HB_FRAME_IDR, align 8
  %78 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  br label %103

81:                                               ; preds = %72
  %82 = load i64, i64* @HB_FRAME_P, align 8
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  store i64 %82, i64* %85, align 8
  br label %103

86:                                               ; preds = %72
  %87 = load i64, i64* @HB_FRAME_B, align 8
  %88 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 0
  store i64 %87, i64* %90, align 8
  br label %103

91:                                               ; preds = %72
  %92 = load i8*, i8** @HB_FRAME_BREF, align 8
  %93 = ptrtoint i8* %92 to i64
  %94 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  store i64 %93, i64* %96, align 8
  br label %103

97:                                               ; preds = %72
  br label %98

98:                                               ; preds = %72, %97
  %99 = load i64, i64* @HB_FRAME_I, align 8
  %100 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %101 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 0
  store i64 %99, i64* %102, align 8
  br label %103

103:                                              ; preds = %98, %91, %86, %81, %76
  %104 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 1
  store i32 0, i32* %106, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %123

111:                                              ; preds = %103
  %112 = load i32, i32* @HB_FLAG_FRAMETYPE_KEY, align 4
  %113 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 8
  %118 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %119 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %122 = call i32 @hb_chapter_dequeue(i32 %120, %struct.TYPE_23__* %121)
  br label %123

123:                                              ; preds = %111, %103
  %124 = load i32, i32* @HB_FLAG_FRAMETYPE_REF, align 4
  %125 = xor i32 %124, -1
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = and i32 %129, %125
  store i32 %130, i32* %128, align 8
  store i32 0, i32* %12, align 4
  br label %131

131:                                              ; preds = %212, %123
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %7, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %215

135:                                              ; preds = %131
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i64 %138
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %13, align 4
  %142 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sext i32 %147 to i64
  %149 = add nsw i64 %144, %148
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %151 = load i32, i32* %12, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = call i32 @memcpy(i64 %149, i32 %155, i32 %156)
  %158 = load i32, i32* %13, align 4
  %159 = icmp slt i32 %158, 1
  br i1 %159, label %160, label %161

160:                                              ; preds = %135
  br label %212

161:                                              ; preds = %135
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i64 %164
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  switch i32 %167, label %176 [
    i32 133, label %168
    i32 137, label %168
    i32 134, label %175
    i32 135, label %175
    i32 136, label %175
  ]

168:                                              ; preds = %161, %161
  %169 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %170 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %174, label %173

173:                                              ; preds = %168
  br label %212

174:                                              ; preds = %168
  br label %177

175:                                              ; preds = %161, %161, %161
  br label %176

176:                                              ; preds = %161, %175
  br label %177

177:                                              ; preds = %176, %174
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %179 = load i32, i32* %12, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i64 %180
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 2
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @NAL_PRIORITY_DISPOSABLE, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %206

186:                                              ; preds = %177
  %187 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %188 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %188, i32 0, i32 0
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @HB_FRAME_B, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load i8*, i8** @HB_FRAME_BREF, align 8
  %195 = ptrtoint i8* %194 to i64
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 1
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  store i64 %195, i64* %198, align 8
  br label %199

199:                                              ; preds = %193, %186
  %200 = load i32, i32* @HB_FLAG_FRAMETYPE_REF, align 4
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 8
  %205 = or i32 %204, %200
  store i32 %205, i32* %203, align 8
  br label %206

206:                                              ; preds = %199, %177
  %207 = load i32, i32* %13, align 4
  %208 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %209 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, %207
  store i32 %211, i32* %209, align 8
  br label %212

212:                                              ; preds = %206, %173, %160
  %213 = load i32, i32* %12, align 4
  %214 = add nsw i32 %213, 1
  store i32 %214, i32* %12, align 4
  br label %131

215:                                              ; preds = %131
  %216 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %222

220:                                              ; preds = %215
  %221 = call i32 @hb_buffer_close(%struct.TYPE_23__** %9)
  br label %222

222:                                              ; preds = %220, %215
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  ret %struct.TYPE_23__* %223
}

declare dso_local %struct.TYPE_23__* @hb_video_buffer_init(i32, i32) #1

declare dso_local i32 @hb_chapter_dequeue(i32, %struct.TYPE_23__*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @hb_buffer_close(%struct.TYPE_23__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
