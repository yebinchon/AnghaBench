; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_abort.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }

@ftp_abort.command = internal global i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [7 x i8] c"ABOR\0D\0A\00", align 1
@ftp_abort.abor_codes = internal constant [3 x i32] [i32 225, i32 226, i32 0], align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"Reconnect failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ftp_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_abort(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %10 = load i8*, i8** @ftp_abort.command, align 8
  %11 = call i64 @ftp_send_command(%struct.TYPE_11__* %9, i8* %10, i32* null, i32* null)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = call i32 @ftp_close_both_connections(%struct.TYPE_11__* %14)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = call i32 @ftp_connect_control_connection(%struct.TYPE_10__* %16)
  store i32 %17, i32* %4, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %21 = load i32, i32* @AV_LOG_ERROR, align 4
  %22 = call i32 @av_log(%struct.TYPE_10__* %20, i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %46

24:                                               ; preds = %13
  br label %45

25:                                               ; preds = %1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = call i32 @ftp_close_data_connection(%struct.TYPE_11__* %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i32 @ftp_status(%struct.TYPE_11__* %28, i32* null, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ftp_abort.abor_codes, i64 0, i64 0))
  %30 = icmp slt i32 %29, 225
  br i1 %30, label %31, label %44

31:                                               ; preds = %25
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @ffurl_closep(i32* %33)
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %36 = call i32 @ftp_connect_control_connection(%struct.TYPE_10__* %35)
  store i32 %36, i32* %4, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = load i32, i32* @AV_LOG_ERROR, align 4
  %41 = call i32 @av_log(%struct.TYPE_10__* %39, i32 %40, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %46

43:                                               ; preds = %31
  br label %44

44:                                               ; preds = %43, %25
  br label %45

45:                                               ; preds = %44, %24
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %38, %19
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i64 @ftp_send_command(%struct.TYPE_11__*, i8*, i32*, i32*) #1

declare dso_local i32 @ftp_close_both_connections(%struct.TYPE_11__*) #1

declare dso_local i32 @ftp_connect_control_connection(%struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @ftp_close_data_connection(%struct.TYPE_11__*) #1

declare dso_local i32 @ftp_status(%struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @ffurl_closep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
