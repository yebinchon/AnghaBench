; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_track_or_disc_number.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mov.c_mov_metadata_track_or_disc_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"%d/%d\00", align 1
@AVFMT_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*, i32, i8*)* @mov_metadata_track_or_disc_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_metadata_track_or_disc_number(%struct.TYPE_5__* %0, i32* %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca [16 x i8], align 16
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i16 0, i16* %11, align 2
  %12 = load i32*, i32** %6, align 8
  %13 = call signext i16 @avio_rb16(i32* %12)
  %14 = load i32*, i32** %6, align 8
  %15 = call signext i16 @avio_rb16(i32* %14)
  store i16 %15, i16* %10, align 2
  %16 = load i32, i32* %7, align 4
  %17 = icmp uge i32 %16, 6
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32*, i32** %6, align 8
  %20 = call signext i16 @avio_rb16(i32* %19)
  store i16 %20, i16* %11, align 2
  br label %21

21:                                               ; preds = %18, %4
  %22 = load i16, i16* %11, align 2
  %23 = icmp ne i16 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %26 = load i16, i16* %10, align 2
  %27 = call i32 (i8*, i32, i8*, i16, ...) @snprintf(i8* %25, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i16 signext %26)
  br label %34

28:                                               ; preds = %21
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %30 = load i16, i16* %10, align 2
  %31 = load i16, i16* %11, align 2
  %32 = sext i16 %31 to i32
  %33 = call i32 (i8*, i32, i8*, i16, ...) @snprintf(i8* %29, i32 16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i16 signext %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %24
  %35 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %48 = call i32 @av_dict_set(i32* %45, i8* %46, i8* %47, i32 0)
  ret i32 0
}

declare dso_local signext i16 @avio_rb16(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i16 signext, ...) #1

declare dso_local i32 @av_dict_set(i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
