; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_prft_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_prft_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Unable to write PRFT, no entries in the track\0A\00", align 1
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"Unable to write PRFT, first PTS is invalid\0A\00", align 1
@MOV_PRFT_SRC_WALLCLOCK = common dso_local global i64 0, align 8
@MOV_PRFT_SRC_PTS = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@NTP_OFFSET_US = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"Unsupported PRFT box configuration: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"prft\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i32)* @mov_write_prft_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_prft_tag(i32* %0, %struct.TYPE_9__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @avio_tell(i32* %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %118

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 0
  store %struct.TYPE_8__* %21, %struct.TYPE_8__** %11, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %17
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @AV_LOG_WARNING, align 4
  %31 = call i32 (i32, i32, i8*, ...) @av_log(i32 %29, i32 %30, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %118

32:                                               ; preds = %17
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %32
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AV_LOG_WARNING, align 4
  %46 = call i32 (i32, i32, i8*, ...) @av_log(i32 %44, i32 %45, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %118

47:                                               ; preds = %32
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MOV_PRFT_SRC_WALLCLOCK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %47
  %54 = call i64 (...) @ff_ntp_time()
  %55 = call i64 @ff_get_formatted_ntp_time(i64 %54)
  store i64 %55, i64* %10, align 8
  br label %90

56:                                               ; preds = %47
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MOV_PRFT_SRC_PTS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %56
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %75 = call i64 @av_rescale_q(i64 %68, i32 %73, i32 %74)
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* @NTP_OFFSET_US, align 8
  %78 = add nsw i64 %76, %77
  %79 = call i64 @ff_get_formatted_ntp_time(i64 %78)
  store i64 %79, i64* %10, align 8
  br label %89

80:                                               ; preds = %56
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @AV_LOG_WARNING, align 4
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 (i32, i32, i8*, ...) @av_log(i32 %83, i32 %84, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %87)
  store i32 0, i32* %4, align 4
  br label %118

89:                                               ; preds = %62
  br label %90

90:                                               ; preds = %89, %53
  %91 = load i32*, i32** %5, align 8
  %92 = call i32 @avio_wb32(i32* %91, i32 0)
  %93 = load i32*, i32** %5, align 8
  %94 = call i32 @ffio_wfourcc(i32* %93, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @avio_w8(i32* %95, i32 1)
  %97 = load i32*, i32** %5, align 8
  %98 = call i32 @avio_wb24(i32* %97, i32 0)
  %99 = load i32*, i32** %5, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @avio_wb32(i32* %99, i32 %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @avio_wb64(i32* %104, i64 %105)
  %107 = load i32*, i32** %5, align 8
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @avio_wb64(i32* %107, i64 %113)
  %115 = load i32*, i32** %5, align 8
  %116 = load i64, i64* %8, align 8
  %117 = call i32 @update_size(i32* %115, i64 %116)
  store i32 %117, i32* %4, align 4
  br label %118

118:                                              ; preds = %90, %80, %41, %26, %16
  %119 = load i32, i32* %4, align 4
  ret i32 %119
}

declare dso_local i64 @avio_tell(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i64 @ff_get_formatted_ntp_time(i64) #1

declare dso_local i64 @ff_ntp_time(...) #1

declare dso_local i64 @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i64) #1

declare dso_local i32 @update_size(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
