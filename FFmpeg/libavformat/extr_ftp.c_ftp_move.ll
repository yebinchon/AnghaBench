; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_move.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8* }

@MAX_URL_SIZE = common dso_local global i32 0, align 4
@ftp_move.rnfr_codes = internal constant [9 x i32] [i32 350, i32 421, i32 450, i32 500, i32 501, i32 502, i32 503, i32 530, i32 0], align 16
@ftp_move.rnto_codes = internal constant [10 x i32] [i32 250, i32 421, i32 500, i32 501, i32 502, i32 503, i32 530, i32 532, i32 553, i32 0], align 16
@.str = private unnamed_addr constant [10 x i8] c"RNFR %s\0D\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"RNTO %s\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_8__*)* @ftp_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_move(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load i32, i32* @MAX_URL_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  %17 = load i32, i32* @MAX_URL_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %8, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @ftp_connect(%struct.TYPE_8__* %20, i32 %23)
  store i32 %24, i32* %9, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  br label %55

27:                                               ; preds = %2
  %28 = trunc i64 %14 to i32
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @snprintf(i8* %16, i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31)
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = call i32 @ftp_send_command(%struct.TYPE_9__* %33, i8* %16, i32* getelementptr inbounds ([9 x i32], [9 x i32]* @ftp_move.rnfr_codes, i64 0, i64 0), i32* null)
  %35 = icmp ne i32 %34, 350
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* @EIO, align 4
  %38 = call i32 @AVERROR(i32 %37)
  store i32 %38, i32* %9, align 4
  br label %55

39:                                               ; preds = %27
  %40 = trunc i64 %18 to i32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @av_url_split(i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8* %19, i32 %40, i32 %43)
  %45 = trunc i64 %14 to i32
  %46 = call i32 @snprintf(i8* %16, i32 %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* %19)
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = call i32 @ftp_send_command(%struct.TYPE_9__* %47, i8* %16, i32* getelementptr inbounds ([10 x i32], [10 x i32]* @ftp_move.rnto_codes, i64 0, i64 0), i32* null)
  %49 = icmp eq i32 %48, 250
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  store i32 0, i32* %9, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @EIO, align 4
  %53 = call i32 @AVERROR(i32 %52)
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %51, %50
  br label %55

55:                                               ; preds = %54, %36, %26
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %57 = call i32 @ftp_close(%struct.TYPE_8__* %56)
  %58 = load i32, i32* %9, align 4
  %59 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %59)
  ret i32 %58
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ftp_connect(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #2

declare dso_local i32 @ftp_send_command(%struct.TYPE_9__*, i8*, i32*, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_url_split(i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32) #2

declare dso_local i32 @ftp_close(%struct.TYPE_8__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
