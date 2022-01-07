; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_read.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_ftp.c_ftp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"ftp protocol read %d bytes\0A\00", align 1
@DISCONNECTED = common dso_local global i64 0, align 8
@AVERROR_EOF = common dso_local global i32 0, align 4
@READY = common dso_local global i64 0, align 8
@DOWNLOADING = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Reconnect to FTP server.\0A\00", align 1
@SEEK_SET = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Position cannot be restored.\0A\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"FTP read failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32)* @ftp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_read(%struct.TYPE_10__* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %8, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @ff_dlog(%struct.TYPE_10__* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %164, %3
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DISCONNECTED, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = icmp sge i64 %29, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %35, i32* %4, align 4
  br label %174

36:                                               ; preds = %26
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %38 = call i32 @ftp_connect_data_connection(%struct.TYPE_10__* %37)
  store i32 %38, i32* %10, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %174

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %20
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @READY, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %66

49:                                               ; preds = %43
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %52, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %58, i32* %4, align 4
  br label %174

59:                                               ; preds = %49
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %61 = call i32 @ftp_retrieve(%struct.TYPE_11__* %60)
  store i32 %61, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %59
  %64 = load i32, i32* %10, align 4
  store i32 %64, i32* %4, align 4
  br label %174

65:                                               ; preds = %59
  br label %66

66:                                               ; preds = %65, %43
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %168

71:                                               ; preds = %66
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @DOWNLOADING, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %168

77:                                               ; preds = %71
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 3
  %80 = load i64, i64* %79, align 8
  %81 = load i8*, i8** %6, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @ffurl_read(i64 %80, i8* %81, i32 %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp sge i32 %84, 0
  br i1 %85, label %86, label %121

86:                                               ; preds = %77
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, %88
  store i64 %92, i64* %90, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = icmp sge i64 %95, %98
  br i1 %99, label %100, label %120

100:                                              ; preds = %86
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i8*
  store i8* %104, i8** %12, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = call i32 @ftp_abort(%struct.TYPE_10__* %105)
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i8*, i8** %12, align 8
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %111, i32 0, i32 1
  store i64 %110, i64* %112, align 8
  %113 = load i32, i32* @EIO, align 4
  %114 = call i32 @AVERROR(i32 %113)
  store i32 %114, i32* %4, align 4
  br label %174

115:                                              ; preds = %100
  %116 = load i8*, i8** %12, align 8
  %117 = ptrtoint i8* %116 to i64
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %115, %86
  br label %121

121:                                              ; preds = %120, %77
  %122 = load i32, i32* %9, align 4
  %123 = icmp sle i32 %122, 0
  br i1 %123, label %124, label %166

124:                                              ; preds = %121
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = icmp slt i64 %127, %130
  br i1 %131, label %132, label %166

132:                                              ; preds = %124
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %166, label %137

137:                                              ; preds = %132
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = inttoptr i64 %140 to i8*
  store i8* %141, i8** %13, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %143 = load i32, i32* @AV_LOG_INFO, align 4
  %144 = call i32 @av_log(%struct.TYPE_10__* %142, i32 %143, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %146 = call i32 @ftp_abort(%struct.TYPE_10__* %145)
  store i32 %146, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %137
  %149 = load i32, i32* %10, align 4
  store i32 %149, i32* %4, align 4
  br label %174

150:                                              ; preds = %137
  %151 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %152 = load i8*, i8** %13, align 8
  %153 = load i32, i32* @SEEK_SET, align 4
  %154 = call i32 @ftp_seek(%struct.TYPE_10__* %151, i8* %152, i32 %153)
  store i32 %154, i32* %10, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %158 = load i32, i32* @AV_LOG_ERROR, align 4
  %159 = call i32 @av_log(%struct.TYPE_10__* %157, i32 %158, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %160 = load i32, i32* %10, align 4
  store i32 %160, i32* %4, align 4
  br label %174

161:                                              ; preds = %150
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  store i32 1, i32* %11, align 4
  br label %20

165:                                              ; preds = %161
  br label %166

166:                                              ; preds = %165, %132, %124, %121
  %167 = load i32, i32* %9, align 4
  store i32 %167, i32* %4, align 4
  br label %174

168:                                              ; preds = %71, %66
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %170 = load i32, i32* @AV_LOG_DEBUG, align 4
  %171 = call i32 @av_log(%struct.TYPE_10__* %169, i32 %170, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %172 = load i32, i32* @EIO, align 4
  %173 = call i32 @AVERROR(i32 %172)
  store i32 %173, i32* %4, align 4
  br label %174

174:                                              ; preds = %168, %166, %156, %148, %108, %63, %57, %40, %34
  %175 = load i32, i32* %4, align 4
  ret i32 %175
}

declare dso_local i32 @ff_dlog(%struct.TYPE_10__*, i8*, i32) #1

declare dso_local i32 @ftp_connect_data_connection(%struct.TYPE_10__*) #1

declare dso_local i32 @ftp_retrieve(%struct.TYPE_11__*) #1

declare dso_local i32 @ffurl_read(i64, i8*, i32) #1

declare dso_local i32 @ftp_abort(%struct.TYPE_10__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_log(%struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @ftp_seek(%struct.TYPE_10__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
