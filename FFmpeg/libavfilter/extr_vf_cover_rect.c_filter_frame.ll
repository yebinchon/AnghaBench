; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cover_rect.c_filter_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_vf_cover_rect.c_filter_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32*, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, i32, i64, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"lavfi.rect.x\00", align 1
@AV_DICT_MATCH_CASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"lavfi.rect.y\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"lavfi.rect.w\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"lavfi.rect.h\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MODE_BLUR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.TYPE_18__*)* @filter_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filter_frame(%struct.TYPE_19__* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  %9 = alloca %struct.TYPE_21__*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %21, align 8
  store %struct.TYPE_20__* %22, %struct.TYPE_20__** %6, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %24, align 8
  store %struct.TYPE_17__* %25, %struct.TYPE_17__** %7, align 8
  store i32 -1, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %18, align 8
  store i8* null, i8** %19, align 8
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %30 = call %struct.TYPE_21__* @av_dict_get(i32 %28, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null, i32 %29)
  store %struct.TYPE_21__* %30, %struct.TYPE_21__** %8, align 8
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %35 = call %struct.TYPE_21__* @av_dict_get(i32 %33, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %34)
  store %struct.TYPE_21__* %35, %struct.TYPE_21__** %9, align 8
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %40 = call %struct.TYPE_21__* @av_dict_get(i32 %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %39)
  store %struct.TYPE_21__* %40, %struct.TYPE_21__** %10, align 8
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @AV_DICT_MATCH_CASE, align 4
  %45 = call %struct.TYPE_21__* @av_dict_get(i32 %43, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32* null, i32 %44)
  store %struct.TYPE_21__* %45, %struct.TYPE_21__** %11, align 8
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %47 = icmp ne %struct.TYPE_21__* %46, null
  br i1 %47, label %48, label %74

48:                                               ; preds = %2
  %49 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %50 = icmp ne %struct.TYPE_21__* %49, null
  br i1 %50, label %51, label %74

51:                                               ; preds = %48
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %53 = icmp ne %struct.TYPE_21__* %52, null
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %56 = icmp ne %struct.TYPE_21__* %55, null
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @strtol(i32 %60, i8** %16, i32 10)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.TYPE_21__*, %struct.TYPE_21__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @strtol(i32 %64, i8** %17, i32 10)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @strtol(i32 %68, i8** %18, i32 10)
  store i32 %69, i32* %14, align 4
  %70 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @strtol(i32 %72, i8** %19, i32 10)
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %57, %54, %51, %48, %2
  %75 = load i8*, i8** %16, align 8
  %76 = icmp ne i8* %75, null
  br i1 %76, label %77, label %106

77:                                               ; preds = %74
  %78 = load i8*, i8** %16, align 8
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %106, label %82

82:                                               ; preds = %77
  %83 = load i8*, i8** %17, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %106

85:                                               ; preds = %82
  %86 = load i8*, i8** %17, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %106, label %90

90:                                               ; preds = %85
  %91 = load i8*, i8** %18, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %106

93:                                               ; preds = %90
  %94 = load i8*, i8** %18, align 8
  %95 = load i8, i8* %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load i8*, i8** %19, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i8*, i8** %19, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %101, %98, %93, %90, %85, %82, %77, %74
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %113 = call i32 @ff_filter_frame(i32 %111, %struct.TYPE_18__* %112)
  store i32 %113, i32* %3, align 4
  br label %236

114:                                              ; preds = %101
  %115 = load i32, i32* %12, align 4
  %116 = icmp slt i32 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %114
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %14, align 4
  store i32 0, i32* %12, align 4
  br label %121

121:                                              ; preds = %117, %114
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* %15, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %128

128:                                              ; preds = %124, %121
  %129 = load i32, i32* %14, align 4
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %12, align 4
  %134 = sub nsw i32 %132, %133
  %135 = call i32 @FFMIN(i32 %129, i32 %134)
  store i32 %135, i32* %14, align 4
  %136 = load i32, i32* %15, align 4
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %139, %140
  %142 = call i32 @FFMIN(i32 %136, i32 %141)
  store i32 %142, i32* %15, align 4
  %143 = load i32, i32* %14, align 4
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp sgt i32 %143, %146
  br i1 %147, label %160, label %148

148:                                              ; preds = %128
  %149 = load i32, i32* %15, align 4
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = icmp sgt i32 %149, %152
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %14, align 4
  %156 = icmp sle i32 %155, 0
  br i1 %156, label %160, label %157

157:                                              ; preds = %154
  %158 = load i32, i32* %15, align 4
  %159 = icmp sle i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %157, %154, %148, %128
  %161 = load i32, i32* @EINVAL, align 4
  %162 = call i32 @AVERROR(i32 %161)
  store i32 %162, i32* %3, align 4
  br label %236

163:                                              ; preds = %157
  %164 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %164, i32 0, i32 3
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %165, align 8
  %167 = icmp ne %struct.TYPE_16__* %166, null
  br i1 %167, label %168, label %188

168:                                              ; preds = %163
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 3
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = icmp ne i32 %169, %174
  br i1 %175, label %184, label %176

176:                                              ; preds = %168
  %177 = load i32, i32* %15, align 4
  %178 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %178, i32 0, i32 3
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %177, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %176, %168
  %185 = load i32, i32* @EINVAL, align 4
  %186 = call i32 @AVERROR(i32 %185)
  store i32 %186, i32* %3, align 4
  br label %236

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %163
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %191 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  %192 = load i32, i32* %15, align 4
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = load i32, i32* %14, align 4
  %200 = sub nsw i32 %198, %199
  %201 = call i32 @av_clip(i32 %195, i32 0, i32 %200)
  store i32 %201, i32* %12, align 4
  %202 = load i32, i32* %13, align 4
  %203 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %204 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %15, align 4
  %207 = sub nsw i32 %205, %206
  %208 = call i32 @av_clip(i32 %202, i32 0, i32 %207)
  store i32 %208, i32* %13, align 4
  %209 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %210 = call i32 @av_frame_make_writable(%struct.TYPE_18__* %209)
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 2
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @MODE_BLUR, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %222

216:                                              ; preds = %188
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %219 = load i32, i32* %12, align 4
  %220 = load i32, i32* %13, align 4
  %221 = call i32 @blur(%struct.TYPE_17__* %217, %struct.TYPE_18__* %218, i32 %219, i32 %220)
  br label %228

222:                                              ; preds = %188
  %223 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %225 = load i32, i32* %12, align 4
  %226 = load i32, i32* %13, align 4
  %227 = call i32 @cover_rect(%struct.TYPE_17__* %223, %struct.TYPE_18__* %224, i32 %225, i32 %226)
  br label %228

228:                                              ; preds = %222, %216
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %235 = call i32 @ff_filter_frame(i32 %233, %struct.TYPE_18__* %234)
  store i32 %235, i32* %3, align 4
  br label %236

236:                                              ; preds = %228, %184, %160, %106
  %237 = load i32, i32* %3, align 4
  ret i32 %237
}

declare dso_local %struct.TYPE_21__* @av_dict_get(i32, i8*, i32*, i32) #1

declare dso_local i32 @strtol(i32, i8**, i32) #1

declare dso_local i32 @ff_filter_frame(i32, %struct.TYPE_18__*) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_frame_make_writable(%struct.TYPE_18__*) #1

declare dso_local i32 @blur(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @cover_rect(%struct.TYPE_17__*, %struct.TYPE_18__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
