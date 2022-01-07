; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mp3enc.c_mp3_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64, i64 }

@ID3v1_TAG_SIZE = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"No packets were sent for some of the attached pictures.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @mp3_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp3_write_trailer(%struct.AVFormatContext* %0) #0 {
  %2 = alloca %struct.AVFormatContext*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %2, align 8
  %6 = load i32, i32* @ID3v1_TAG_SIZE, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i32, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %11 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %19 = load i32, i32* @AV_LOG_WARNING, align 4
  %20 = call i32 @av_log(%struct.AVFormatContext* %18, i32 %19, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %22 = call i32 @mp3_queue_flush(%struct.AVFormatContext* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %30 = call i64 @id3v1_create_tag(%struct.AVFormatContext* %29, i32* %9)
  %31 = icmp sgt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %34 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @ID3v1_TAG_SIZE, align 4
  %37 = call i32 @avio_write(i32 %35, i32* %9, i32 %36)
  br label %38

38:                                               ; preds = %32, %28, %23
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %45 = call i32 @mp3_update_xing(%struct.AVFormatContext* %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %47)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @av_log(%struct.AVFormatContext*, i32, i8*) #2

declare dso_local i32 @mp3_queue_flush(%struct.AVFormatContext*) #2

declare dso_local i64 @id3v1_create_tag(%struct.AVFormatContext*, i32*) #2

declare dso_local i32 @avio_write(i32, i32*, i32) #2

declare dso_local i32 @mp3_update_xing(%struct.AVFormatContext*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
