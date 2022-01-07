; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect_control_connection.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_connect_control_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@CONTROL_BUFFER_SIZE = common dso_local global i32 0, align 4
@ftp_connect_control_connection.connect_codes = internal constant [2 x i32] [i32 220, i32 0], align 4
@.str = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1
@AVIO_FLAG_READ_WRITE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Cannot open control connection\0A\00", align 1
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"FTP server not ready for new users\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"pure-ftpd\00", align 1
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [155 x i8] c"Pure-FTPd server is used as an output protocol. It is known issue this implementation may produce incorrect content and it cannot be fixed at this moment.\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"FTP authentication failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Set content type failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @ftp_connect_control_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_connect_control_connection(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  %11 = load i32, i32* @CONTROL_BUFFER_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  store i8* null, i8** %6, align 8
  store i32* null, i32** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  store %struct.TYPE_11__* %17, %struct.TYPE_11__** %9, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %120, label %22

22:                                               ; preds = %1
  %23 = trunc i64 %12 to i32
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ff_url_join(i8* %14, i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null, i32 %26, i32 %29, i32* null)
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, -1
  br i1 %34, label %35, label %40

35:                                               ; preds = %22
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @av_dict_set_int(i32** %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 0)
  br label %40

40:                                               ; preds = %35, %22
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* @AVIO_FLAG_READ_WRITE, align 4
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %53 = call i32 @ffurl_open_whitelist(i32* %42, i8* %14, i32 %43, i32* %45, i32** %8, i32 %48, i32 %51, %struct.TYPE_10__* %52)
  store i32 %53, i32* %7, align 4
  %54 = call i32 @av_dict_free(i32** %8)
  %55 = load i32, i32* %7, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %40
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %59 = load i32, i32* @AV_LOG_ERROR, align 4
  %60 = call i32 @av_log(%struct.TYPE_10__* %58, i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

62:                                               ; preds = %40
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %72

71:                                               ; preds = %62
  br label %72

72:                                               ; preds = %71, %70
  %73 = phi i8** [ %6, %70 ], [ null, %71 ]
  %74 = call i32 @ftp_status(%struct.TYPE_11__* %63, i8** %73, i32* getelementptr inbounds ([2 x i32], [2 x i32]* @ftp_connect_control_connection.connect_codes, i64 0, i64 0))
  %75 = icmp ne i32 %74, 220
  br i1 %75, label %76, label %82

76:                                               ; preds = %72
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %78 = load i32, i32* @AV_LOG_ERROR, align 4
  %79 = call i32 @av_log(%struct.TYPE_10__* %77, i32 %78, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @EACCES, align 4
  %81 = call i32 @AVERROR(i32 %80)
  store i32 %81, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

82:                                               ; preds = %72
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %82
  %90 = load i8*, i8** %6, align 8
  %91 = call i64 @av_stristr(i8* %90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %95 = load i32, i32* @AV_LOG_WARNING, align 4
  %96 = call i32 @av_log(%struct.TYPE_10__* %94, i32 %95, i8* getelementptr inbounds ([155 x i8], [155 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %93, %89, %82
  %98 = load i8*, i8** %6, align 8
  %99 = call i32 @av_free(i8* %98)
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %101 = call i32 @ftp_auth(%struct.TYPE_11__* %100)
  store i32 %101, i32* %7, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %105 = load i32, i32* @AV_LOG_ERROR, align 4
  %106 = call i32 @av_log(%struct.TYPE_10__* %104, i32 %105, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

108:                                              ; preds = %97
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %110 = call i32 @ftp_type(%struct.TYPE_11__* %109)
  store i32 %110, i32* %7, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %108
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = call i32 @av_log(%struct.TYPE_10__* %113, i32 %114, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  %116 = load i32, i32* %7, align 4
  store i32 %116, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

117:                                              ; preds = %108
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %119 = call i32 @ftp_features(%struct.TYPE_11__* %118)
  br label %120

120:                                              ; preds = %117, %1
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %121

121:                                              ; preds = %120, %112, %103, %76, %57
  %122 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ff_url_join(i8*, i32, i8*, i32*, i32, i32, i32*) #2

declare dso_local i32 @av_dict_set_int(i32**, i8*, i32, i32) #2

declare dso_local i32 @ffurl_open_whitelist(i32*, i8*, i32, i32*, i32**, i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @av_dict_free(i32**) #2

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @ftp_status(%struct.TYPE_11__*, i8**, i32*) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i64 @av_stristr(i8*, i8*) #2

declare dso_local i32 @av_free(i8*) #2

declare dso_local i32 @ftp_auth(%struct.TYPE_11__*) #2

declare dso_local i32 @ftp_type(%struct.TYPE_11__*) #2

declare dso_local i32 @ftp_features(%struct.TYPE_11__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
