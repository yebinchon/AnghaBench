; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_title_scan.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_stream.c_hb_stream_title_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, i8*, i32, i32, %struct.TYPE_29__, %struct.TYPE_26__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_28__, i32, i32, i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_32__ = type { i32, i32, i32, i32, i32 }

@ffmpeg = common dso_local global i64 0, align 8
@HB_STREAM_TYPE = common dso_local global i32 0, align 4
@transport = common dso_local global i64 0, align 8
@HB_TS_DEMUXER = common dso_local global i32 0, align 4
@P = common dso_local global i32 0, align 4
@HB_PS_DEMUXER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Chapter 1\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"stream doesn't seem to have video IDR frames\00", align 1
@HBTF_NO_IDR = common dso_local global i32 0, align 4
@TS_HAS_PCR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"transport stream missing PCRs - using video DTS instead\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_30__* @hb_stream_title_scan(%struct.TYPE_31__* %0, %struct.TYPE_30__* %1) #0 {
  %3 = alloca %struct.TYPE_30__*, align 8
  %4 = alloca %struct.TYPE_31__*, align 8
  %5 = alloca %struct.TYPE_30__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_31__* %0, %struct.TYPE_31__** %4, align 8
  store %struct.TYPE_30__* %1, %struct.TYPE_30__** %5, align 8
  %11 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ffmpeg, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %18 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %19 = call %struct.TYPE_30__* @ffmpeg_title_scan(%struct.TYPE_31__* %17, %struct.TYPE_30__* %18)
  store %struct.TYPE_30__* %19, %struct.TYPE_30__** %3, align 8
  br label %185

20:                                               ; preds = %2
  %21 = load i32, i32* @HB_STREAM_TYPE, align 4
  %22 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %22, i32 0, i32 12
  store i32 %21, i32* %23, align 4
  %24 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %24, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i8* @hb_strr_dir_sep(i8* %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = load i8*, i8** %7, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8* %35, i8** %6, align 8
  br label %36

36:                                               ; preds = %33, %20
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @strdup(i8* %37)
  %39 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %41, i32 0, i32 11
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @strrchr(i32 %43, i8 signext 46)
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %36
  %48 = load i8*, i8** %8, align 8
  store i8 0, i8* %48, align 1
  br label %49

49:                                               ; preds = %47, %36
  %50 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %51 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %52 = call i32 @hb_init_audio_list(%struct.TYPE_31__* %50, %struct.TYPE_30__* %51)
  %53 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %54 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %55 = call i32 @hb_init_subtitle_list(%struct.TYPE_31__* %53, %struct.TYPE_30__* %54)
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %57 = call i32 @pes_index_of_video(%struct.TYPE_31__* %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = call i32 @hb_title_close(%struct.TYPE_30__** %5)
  store %struct.TYPE_30__* null, %struct.TYPE_30__** %3, align 8
  br label %185

62:                                               ; preds = %49
  %63 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_27__*, %struct.TYPE_27__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %66, i64 %68
  %70 = call i32 @get_id(%struct.TYPE_27__* %69)
  %71 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_27__*, %struct.TYPE_27__** %75, align 8
  %77 = load i32, i32* %9, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %82, i32 0, i32 9
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %84, i32 0, i32 5
  %86 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 4
  %95 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  store i32 1, i32* %97, align 4
  %98 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %98, i32 0, i32 7
  %100 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %99, i32 0, i32 1
  store i32 90000, i32* %100, align 4
  %101 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @transport, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %62
  %107 = load i32, i32* @HB_TS_DEMUXER, align 4
  %108 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %108, i32 0, i32 6
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %111 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @P, align 4
  %116 = call i32 @update_ts_streams(%struct.TYPE_31__* %110, i32 %114, i32 0, i32 -1, i32 %115, i32* null)
  br label %121

117:                                              ; preds = %62
  %118 = load i32, i32* @HB_PS_DEMUXER, align 4
  %119 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 4
  br label %121

121:                                              ; preds = %117, %106
  %122 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %126 = call i32 @hb_stream_duration(%struct.TYPE_31__* %124, %struct.TYPE_30__* %125)
  %127 = call %struct.TYPE_32__* @calloc(i32 20, i32 1)
  store %struct.TYPE_32__* %127, %struct.TYPE_32__** %10, align 8
  %128 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %129 = call i32 @hb_chapter_set_title(%struct.TYPE_32__* %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %131 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %130, i32 0, i32 0
  store i32 1, i32* %131, align 4
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %135, i32 0, i32 4
  store i32 %134, i32* %136, align 4
  %137 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %140, i32 0, i32 3
  store i32 %139, i32* %141, align 4
  %142 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 4
  %147 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %156 = call i32 @hb_list_add(i32 %154, %struct.TYPE_32__* %155)
  %157 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = icmp slt i32 %159, 1
  br i1 %160, label %161, label %168

161:                                              ; preds = %121
  %162 = call i32 @hb_log(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* @HBTF_NO_IDR, align 4
  %164 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %121
  %169 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @transport, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %183

174:                                              ; preds = %168
  %175 = load %struct.TYPE_31__*, %struct.TYPE_31__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @TS_HAS_PCR, align 4
  %179 = and i32 %177, %178
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %183

181:                                              ; preds = %174
  %182 = call i32 @hb_log(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  br label %183

183:                                              ; preds = %181, %174, %168
  %184 = load %struct.TYPE_30__*, %struct.TYPE_30__** %5, align 8
  store %struct.TYPE_30__* %184, %struct.TYPE_30__** %3, align 8
  br label %185

185:                                              ; preds = %183, %60, %16
  %186 = load %struct.TYPE_30__*, %struct.TYPE_30__** %3, align 8
  ret %struct.TYPE_30__* %186
}

declare dso_local %struct.TYPE_30__* @ffmpeg_title_scan(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i8* @hb_strr_dir_sep(i8*) #1

declare dso_local i32 @strdup(i8*) #1

declare dso_local i8* @strrchr(i32, i8 signext) #1

declare dso_local i32 @hb_init_audio_list(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @hb_init_subtitle_list(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local i32 @pes_index_of_video(%struct.TYPE_31__*) #1

declare dso_local i32 @hb_title_close(%struct.TYPE_30__**) #1

declare dso_local i32 @get_id(%struct.TYPE_27__*) #1

declare dso_local i32 @update_ts_streams(%struct.TYPE_31__*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @hb_stream_duration(%struct.TYPE_31__*, %struct.TYPE_30__*) #1

declare dso_local %struct.TYPE_32__* @calloc(i32, i32) #1

declare dso_local i32 @hb_chapter_set_title(%struct.TYPE_32__*, i8*) #1

declare dso_local i32 @hb_list_add(i32, %struct.TYPE_32__*) #1

declare dso_local i32 @hb_log(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
