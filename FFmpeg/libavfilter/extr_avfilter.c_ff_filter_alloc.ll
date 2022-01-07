; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_alloc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_avfilter.c_ff_filter_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32*, %struct.TYPE_12__*, i32* }
%struct.TYPE_12__ = type { i32, i64 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)*, i32, i32, i32* }

@avfilter_class = common dso_local global i32 0, align 4
@default_execute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_11__* @ff_filter_alloc(%struct.TYPE_12__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %9 = icmp ne %struct.TYPE_12__* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %239

11:                                               ; preds = %2
  %12 = call i8* @av_mallocz(i32 88)
  %13 = bitcast i8* %12 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %6, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %239

17:                                               ; preds = %11
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 11
  store i32* @avfilter_class, i32** %19, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 10
  store %struct.TYPE_12__* %20, %struct.TYPE_12__** %22, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load i8*, i8** %5, align 8
  %27 = call i32* @av_strdup(i8* %26)
  br label %29

28:                                               ; preds = %17
  br label %29

29:                                               ; preds = %28, %25
  %30 = phi i32* [ %27, %25 ], [ null, %28 ]
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 9
  store i32* %30, i32** %32, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %51

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @av_mallocz(i32 %40)
  %42 = bitcast i8* %41 to %struct.TYPE_11__*
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 3
  store %struct.TYPE_11__* %42, %struct.TYPE_11__** %44, align 8
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = icmp ne %struct.TYPE_11__* %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %37
  br label %205

50:                                               ; preds = %37
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %53, align 8
  %55 = icmp ne i64 (%struct.TYPE_11__*)* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %51
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 1
  %59 = load i64 (%struct.TYPE_11__*)*, i64 (%struct.TYPE_11__*)** %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %61 = call i64 %59(%struct.TYPE_11__* %60)
  %62 = icmp slt i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %205

64:                                               ; preds = %56
  store i32 1, i32* %7, align 4
  br label %65

65:                                               ; preds = %64, %51
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %67 = call i32 @av_opt_set_defaults(%struct.TYPE_11__* %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 5
  %70 = load i32*, i32** %69, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 5
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = bitcast %struct.TYPE_11__* %78 to i32**
  store i32* %75, i32** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %81, align 8
  %83 = call i32 @av_opt_set_defaults(%struct.TYPE_11__* %82)
  br label %84

84:                                               ; preds = %72, %65
  %85 = call i8* @av_mallocz(i32 88)
  %86 = bitcast i8* %85 to %struct.TYPE_11__*
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  store %struct.TYPE_11__* %86, %struct.TYPE_11__** %88, align 8
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = icmp ne %struct.TYPE_11__* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %205

94:                                               ; preds = %84
  %95 = load i32, i32* @default_execute, align 4
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 8
  store i32 %95, i32* %99, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @avfilter_pad_count(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %94
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = call i8* @av_malloc_array(i32 %114, i32 4)
  %116 = bitcast i8* %115 to %struct.TYPE_11__*
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 6
  store %struct.TYPE_11__* %116, %struct.TYPE_11__** %118, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 6
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** %120, align 8
  %122 = icmp ne %struct.TYPE_11__* %121, null
  br i1 %122, label %124, label %123

123:                                              ; preds = %111
  br label %205

124:                                              ; preds = %111
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 6
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = mul i64 4, %134
  %136 = trunc i64 %135 to i32
  %137 = call i32 @memcpy(%struct.TYPE_11__* %127, i32 %130, i32 %136)
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i8* @av_mallocz_array(i32 %140, i32 8)
  %142 = bitcast i8* %141 to %struct.TYPE_11__*
  %143 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %143, i32 0, i32 7
  store %struct.TYPE_11__* %142, %struct.TYPE_11__** %144, align 8
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %145, i32 0, i32 7
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %146, align 8
  %148 = icmp ne %struct.TYPE_11__* %147, null
  br i1 %148, label %150, label %149

149:                                              ; preds = %124
  br label %205

150:                                              ; preds = %124
  br label %151

151:                                              ; preds = %150, %94
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 8
  %155 = call i8* @avfilter_pad_count(i32 %154)
  %156 = ptrtoint i8* %155 to i32
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %203

163:                                              ; preds = %151
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i8* @av_malloc_array(i32 %166, i32 4)
  %168 = bitcast i8* %167 to %struct.TYPE_11__*
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 4
  store %struct.TYPE_11__* %168, %struct.TYPE_11__** %170, align 8
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = icmp ne %struct.TYPE_11__* %173, null
  br i1 %174, label %176, label %175

175:                                              ; preds = %163
  br label %205

176:                                              ; preds = %163
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 4
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = mul i64 4, %186
  %188 = trunc i64 %187 to i32
  %189 = call i32 @memcpy(%struct.TYPE_11__* %179, i32 %182, i32 %188)
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @av_mallocz_array(i32 %192, i32 8)
  %194 = bitcast i8* %193 to %struct.TYPE_11__*
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 5
  store %struct.TYPE_11__* %194, %struct.TYPE_11__** %196, align 8
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 5
  %199 = load %struct.TYPE_11__*, %struct.TYPE_11__** %198, align 8
  %200 = icmp ne %struct.TYPE_11__* %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %176
  br label %205

202:                                              ; preds = %176
  br label %203

203:                                              ; preds = %202, %151
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_11__* %204, %struct.TYPE_11__** %3, align 8
  br label %239

205:                                              ; preds = %201, %175, %149, %123, %93, %63, %49
  %206 = load i32, i32* %7, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %214

208:                                              ; preds = %205
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 2
  %211 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %210, align 8
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %213 = call i32 %211(%struct.TYPE_11__* %212)
  br label %214

214:                                              ; preds = %208, %205
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 7
  %217 = call i32 @av_freep(%struct.TYPE_11__** %216)
  %218 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 6
  %220 = call i32 @av_freep(%struct.TYPE_11__** %219)
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i32 0, i32* %222, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 5
  %225 = call i32 @av_freep(%struct.TYPE_11__** %224)
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 4
  %228 = call i32 @av_freep(%struct.TYPE_11__** %227)
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  store i32 0, i32* %230, align 4
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 3
  %233 = call i32 @av_freep(%struct.TYPE_11__** %232)
  %234 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 2
  %236 = call i32 @av_freep(%struct.TYPE_11__** %235)
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %238 = call i32 @av_free(%struct.TYPE_11__* %237)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %3, align 8
  br label %239

239:                                              ; preds = %214, %203, %16, %10
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  ret %struct.TYPE_11__* %240
}

declare dso_local i8* @av_mallocz(i32) #1

declare dso_local i32* @av_strdup(i8*) #1

declare dso_local i32 @av_opt_set_defaults(%struct.TYPE_11__*) #1

declare dso_local i8* @avfilter_pad_count(i32) #1

declare dso_local i8* @av_malloc_array(i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i8* @av_mallocz_array(i32, i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_11__**) #1

declare dso_local i32 @av_free(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
