; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_cpe.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_decode_cpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { %struct.TYPE_21__*, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_22__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32*, i32, %struct.TYPE_24__, i64 }
%struct.TYPE_24__ = type { i8* }

@AOT_ER_AAC_ELD = common dso_local global i64 0, align 8
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AOT_AAC_MAIN = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"ms_present = 3 is reserved.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_23__*, i32*, %struct.TYPE_22__*)* @decode_cpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_cpe(%struct.TYPE_23__* %0, i32* %1, %struct.TYPE_22__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_22__* %2, %struct.TYPE_22__** %7, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_21__*, %struct.TYPE_21__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @AOT_ER_AAC_ELD, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %3
  %26 = load i32*, i32** %6, align 8
  %27 = call i64 @get_bits1(i32* %26)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %25, %3
  %30 = phi i1 [ true, %3 ], [ %28, %25 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %146

34:                                               ; preds = %29
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %36 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %38, i64 0
  %40 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %39, i32 0, i32 0
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @decode_ics_info(%struct.TYPE_23__* %35, %struct.TYPE_25__* %40, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %34
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %4, align 4
  br label %209

46:                                               ; preds = %34
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_19__*, %struct.TYPE_19__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %49, i64 1
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %8, align 4
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = bitcast %struct.TYPE_25__* %60 to i8*
  %67 = bitcast %struct.TYPE_25__* %65 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %66, i8* align 8 %67, i64 32, i1 false)
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i64 1
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %68, i32* %76, align 4
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %79, i64 1
  %81 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %46
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_21__*, %struct.TYPE_21__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %88, i64 1
  %90 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AOT_AAC_MAIN, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %123

95:                                               ; preds = %85
  %96 = load i32*, i32** %6, align 8
  %97 = call i8* @get_bits(i32* %96, i32 1)
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i64 1
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 0
  store i8* %97, i8** %104, align 8
  %105 = icmp ne i8* %97, null
  br i1 %105, label %106, label %122

106:                                              ; preds = %95
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i64 1
  %111 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %111, i32 0, i32 2
  %113 = load i32*, i32** %6, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_19__*, %struct.TYPE_19__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %116, i64 1
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @decode_ltp(%struct.TYPE_24__* %112, i32* %113, i32 %120)
  br label %122

122:                                              ; preds = %106, %95
  br label %123

123:                                              ; preds = %122, %85, %46
  %124 = load i32*, i32** %6, align 8
  %125 = call i8* @get_bits(i32* %124, i32 2)
  %126 = ptrtoint i8* %125 to i32
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp eq i32 %127, 3
  br i1 %128, label %129, label %136

129:                                              ; preds = %123
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @AV_LOG_ERROR, align 4
  %134 = call i32 @av_log(i32 %132, i32 %133, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %135 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %135, i32* %4, align 4
  br label %209

136:                                              ; preds = %123
  %137 = load i32, i32* %11, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = load i32, i32* %11, align 4
  %143 = call i32 @decode_mid_side_stereo(%struct.TYPE_22__* %140, i32* %141, i32 %142)
  br label %144

144:                                              ; preds = %139, %136
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145, %29
  %147 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i64 0
  %152 = load i32*, i32** %6, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @decode_ics(%struct.TYPE_23__* %147, %struct.TYPE_19__* %151, i32* %152, i32 %153, i32 0)
  store i32 %154, i32* %9, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %4, align 4
  br label %209

158:                                              ; preds = %146
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i64 1
  %164 = load i32*, i32** %6, align 8
  %165 = load i32, i32* %10, align 4
  %166 = call i32 @decode_ics(%struct.TYPE_23__* %159, %struct.TYPE_19__* %163, i32* %164, i32 %165, i32 0)
  store i32 %166, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %9, align 4
  store i32 %169, i32* %4, align 4
  br label %209

170:                                              ; preds = %158
  %171 = load i32, i32* %10, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %204

173:                                              ; preds = %170
  %174 = load i32, i32* %11, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %173
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %179 = call i32 @apply_mid_side_stereo(%struct.TYPE_23__* %177, %struct.TYPE_22__* %178)
  br label %180

180:                                              ; preds = %176, %173
  %181 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %181, i32 0, i32 0
  %183 = load %struct.TYPE_21__*, %struct.TYPE_21__** %182, align 8
  %184 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %183, i64 1
  %185 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @AOT_AAC_MAIN, align 8
  %189 = icmp eq i64 %187, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %180
  %191 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i64 0
  %196 = call i32 @apply_prediction(%struct.TYPE_23__* %191, %struct.TYPE_19__* %195)
  %197 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i64 1
  %202 = call i32 @apply_prediction(%struct.TYPE_23__* %197, %struct.TYPE_19__* %201)
  br label %203

203:                                              ; preds = %190, %180
  br label %204

204:                                              ; preds = %203, %170
  %205 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %207 = load i32, i32* %11, align 4
  %208 = call i32 @apply_intensity_stereo(%struct.TYPE_23__* %205, %struct.TYPE_22__* %206, i32 %207)
  store i32 0, i32* %4, align 4
  br label %209

209:                                              ; preds = %204, %168, %156, %129, %44
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i64 @decode_ics_info(%struct.TYPE_23__*, %struct.TYPE_25__*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @decode_ltp(%struct.TYPE_24__*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @decode_mid_side_stereo(%struct.TYPE_22__*, i32*, i32) #1

declare dso_local i32 @decode_ics(%struct.TYPE_23__*, %struct.TYPE_19__*, i32*, i32, i32) #1

declare dso_local i32 @apply_mid_side_stereo(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @apply_prediction(%struct.TYPE_23__*, %struct.TYPE_19__*) #1

declare dso_local i32 @apply_intensity_stereo(%struct.TYPE_23__*, %struct.TYPE_22__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
