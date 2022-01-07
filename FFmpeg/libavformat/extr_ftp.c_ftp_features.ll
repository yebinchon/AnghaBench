; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_features.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@ftp_features.feat_command = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"FEAT\0D\0A\00", align 1
@ftp_features.enable_utf8_command = internal global i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"OPTS UTF8 ON\0D\0A\00", align 1
@ftp_features.feat_codes = internal constant [2 x i32] [i32 211, i32 0], align 4
@ftp_features.opts_codes = internal constant [4 x i32] [i32 200, i32 202, i32 451, i32 0], align 16
@.str.2 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @ftp_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_features(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %4, i32 0, i32 1
  %6 = call i32 @av_freep(i32* %5)
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = load i8*, i8** @ftp_features.feat_command, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  %11 = call i32 @ftp_send_command(%struct.TYPE_5__* %7, i8* %8, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ftp_features.feat_codes, i64 0, i64 0), i32* %10)
  %12 = icmp ne i32 %11, 211
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = call i32 @av_freep(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %19 = call i64 @ftp_has_feature(%struct.TYPE_5__* %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %23 = load i8*, i8** @ftp_features.enable_utf8_command, align 8
  %24 = call i32 @ftp_send_command(%struct.TYPE_5__* %22, i8* %23, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @ftp_features.opts_codes, i64 0, i64 0), i32* null)
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %25, 200
  br i1 %26, label %30, label %27

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = icmp eq i32 %28, 202
  br i1 %29, label %30, label %33

30:                                               ; preds = %27, %21
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  br label %34

34:                                               ; preds = %33, %17
  ret i32 0
}

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @ftp_send_command(%struct.TYPE_5__*, i8*, i32*, i32*) #1

declare dso_local i64 @ftp_has_feature(%struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
