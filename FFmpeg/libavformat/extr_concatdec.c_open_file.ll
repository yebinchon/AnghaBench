; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_open_file.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_concatdec.c_open_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_19__*, i64, %struct.TYPE_16__*, %struct.TYPE_16__* }
%struct.TYPE_19__ = type { i32, i64, i32 }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AVFMT_FLAG_CUSTOM_IO = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Impossible to open '%s'\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"lavf.concatdec.start_time\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"lavf.concatdec.duration\00", align 1
@INT64_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, i32)* @open_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_file(%struct.TYPE_18__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %6, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i64 %16
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %7, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = icmp ne %struct.TYPE_19__* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = call i32 @avformat_close_input(%struct.TYPE_19__** %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = call %struct.TYPE_19__* (...) @avformat_alloc_context()
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %28, i32 0, i32 0
  store %struct.TYPE_19__* %27, %struct.TYPE_19__** %29, align 8
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = icmp ne %struct.TYPE_19__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %3, align 4
  br label %216

37:                                               ; preds = %26
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @AVFMT_FLAG_CUSTOM_IO, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 8
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  store i32 %52, i32* %56, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %58, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = call i32 @ff_copy_whiteblacklists(%struct.TYPE_19__* %59, %struct.TYPE_18__* %60)
  store i32 %61, i32* %8, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %37
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %216

65:                                               ; preds = %37
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 6
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @avformat_open_input(%struct.TYPE_19__** %67, i32 %70, i32* null, i32* null)
  store i32 %71, i32* %8, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %65
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = call i32 @avformat_find_stream_info(%struct.TYPE_19__* %76, i32* null)
  store i32 %77, i32* %8, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %73, %65
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %81 = load i32, i32* @AV_LOG_ERROR, align 4
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 6
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @av_log(%struct.TYPE_18__* %80, i32 %81, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = call i32 @avformat_close_input(%struct.TYPE_19__** %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %216

90:                                               ; preds = %73
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %92 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %92, i32 0, i32 3
  store %struct.TYPE_16__* %91, %struct.TYPE_16__** %93, align 8
  %94 = load i32, i32* %5, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %90
  br label %117

97:                                               ; preds = %90
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = sub i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %100, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %107, i32 0, i32 2
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %108, align 8
  %110 = load i32, i32* %5, align 4
  %111 = sub i32 %110, 1
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %106, %115
  br label %117

117:                                              ; preds = %97, %96
  %118 = phi i64 [ 0, %96 ], [ %116, %97 ]
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  br label %135

129:                                              ; preds = %117
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  br label %135

135:                                              ; preds = %129, %128
  %136 = phi i64 [ 0, %128 ], [ %134, %129 ]
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 4
  %141 = load i64, i64* %140, align 8
  %142 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %143 = icmp eq i64 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %135
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  br label %152

148:                                              ; preds = %135
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 4
  %151 = load i64, i64* %150, align 8
  br label %152

152:                                              ; preds = %148, %144
  %153 = phi i64 [ %147, %144 ], [ %151, %148 ]
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 3
  store i64 %153, i64* %155, align 8
  %156 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %158, align 8
  %160 = call i64 @get_best_effort_duration(%struct.TYPE_16__* %156, %struct.TYPE_19__* %159)
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %187

167:                                              ; preds = %152
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %168, i32 0, i32 5
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = call i32 @av_dict_set_int(i32* %169, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %172, i32 0)
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %186

179:                                              ; preds = %167
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = load i64, i64* %183, align 8
  %185 = call i32 @av_dict_set_int(i32* %181, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64 %184, i32 0)
  br label %186

186:                                              ; preds = %179, %167
  br label %187

187:                                              ; preds = %186, %152
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %189 = call i32 @match_streams(%struct.TYPE_18__* %188)
  store i32 %189, i32* %8, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %187
  %192 = load i32, i32* %8, align 4
  store i32 %192, i32* %3, align 4
  br label %216

193:                                              ; preds = %187
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %198 = icmp ne i64 %196, %197
  br i1 %198, label %199, label %215

199:                                              ; preds = %193
  %200 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %201 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = load i32, i32* @INT64_MIN, align 4
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 4
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 4
  %209 = load i64, i64* %208, align 8
  %210 = call i32 @avformat_seek_file(%struct.TYPE_19__* %202, i32 -1, i32 %203, i64 %206, i64 %209, i32 0)
  store i32 %210, i32* %8, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %214

212:                                              ; preds = %199
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %3, align 4
  br label %216

214:                                              ; preds = %199
  br label %215

215:                                              ; preds = %214, %193
  store i32 0, i32* %3, align 4
  br label %216

216:                                              ; preds = %215, %212, %191, %79, %63, %34
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i32 @avformat_close_input(%struct.TYPE_19__**) #1

declare dso_local %struct.TYPE_19__* @avformat_alloc_context(...) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_copy_whiteblacklists(%struct.TYPE_19__*, %struct.TYPE_18__*) #1

declare dso_local i32 @avformat_open_input(%struct.TYPE_19__**, i32, i32*, i32*) #1

declare dso_local i32 @avformat_find_stream_info(%struct.TYPE_19__*, i32*) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*, i32) #1

declare dso_local i64 @get_best_effort_duration(%struct.TYPE_16__*, %struct.TYPE_19__*) #1

declare dso_local i32 @av_dict_set_int(i32*, i8*, i64, i32) #1

declare dso_local i32 @match_streams(%struct.TYPE_18__*) #1

declare dso_local i32 @avformat_seek_file(%struct.TYPE_19__*, i32, i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
