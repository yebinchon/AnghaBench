; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_check_tag_name.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskaenc.c_mkv_check_tag_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"title\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"stereo_mode\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"creation_time\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"encoding_tool\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"duration\00", align 1
@MATROSKA_ID_TAGTARGETS_TRACKUID = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"language\00", align 1
@MATROSKA_ID_TAGTARGETS_ATTACHUID = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [9 x i8] c"filename\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"mimetype\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @mkv_check_tag_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkv_check_tag_name(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = call i64 @av_strcasecmp(i8* %5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %48

8:                                                ; preds = %2
  %9 = load i8*, i8** %3, align 8
  %10 = call i64 @av_strcasecmp(i8* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %48

12:                                               ; preds = %8
  %13 = load i8*, i8** %3, align 8
  %14 = call i64 @av_strcasecmp(i8* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %12
  %17 = load i8*, i8** %3, align 8
  %18 = call i64 @av_strcasecmp(i8* %17, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %48

20:                                               ; preds = %16
  %21 = load i8*, i8** %3, align 8
  %22 = call i64 @av_strcasecmp(i8* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @MATROSKA_ID_TAGTARGETS_TRACKUID, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %32, label %28

28:                                               ; preds = %24
  %29 = load i8*, i8** %3, align 8
  %30 = call i64 @av_strcasecmp(i8* %29, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %28, %24
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @MATROSKA_ID_TAGTARGETS_ATTACHUID, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %46, label %36

36:                                               ; preds = %32
  %37 = load i8*, i8** %3, align 8
  %38 = call i64 @av_strcasecmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %36
  %41 = load i8*, i8** %3, align 8
  %42 = call i64 @av_strcasecmp(i8* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %43 = icmp ne i64 %42, 0
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ false, %36 ], [ %43, %40 ]
  br label %46

46:                                               ; preds = %44, %32
  %47 = phi i1 [ true, %32 ], [ %45, %44 ]
  br label %48

48:                                               ; preds = %46, %28, %20, %16, %12, %8, %2
  %49 = phi i1 [ false, %28 ], [ false, %20 ], [ false, %16 ], [ false, %12 ], [ false, %8 ], [ false, %2 ], [ %47, %46 ]
  %50 = zext i1 %49 to i32
  ret i32 %50
}

declare dso_local i64 @av_strcasecmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
