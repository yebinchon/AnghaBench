; ModuleID = '/home/carl/AnghaBench/FFmpeg/doc/examples/extr_http_multiclient.c_process_client.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/doc/examples/extr_http_multiclient.c_process_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@AV_OPT_SEARCH_CHILDREN = common dso_local global i32 0, align 4
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"resource=%p\0A\00", align 1
@AVERROR_HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"reply_code\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to set reply_code: %s.\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Set reply code to %d\0A\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"Handshake performed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Opening input file.\0A\00", align 1
@AVIO_FLAG_READ = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [31 x i8] c"Failed to open input: %s: %s.\0A\00", align 1
@AVERROR_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Error reading from input: %s.\0A\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"Flushing client\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"Closing client\0A\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"Closing input\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @process_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_client(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca [1024 x i8], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32* null, i32** %5, align 8
  store i8* null, i8** %10, align 8
  br label %11

11:                                               ; preds = %26, %2
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @avio_handshake(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %18 = call i32 @av_opt_get(i32* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %17, i8** %10)
  %19 = load i8*, i8** %10, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load i8*, i8** %10, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  br label %28

26:                                               ; preds = %21, %15
  %27 = call i32 @av_freep(i8** %10)
  br label %11

28:                                               ; preds = %25, %11
  %29 = load i32, i32* %7, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  br label %126

32:                                               ; preds = %28
  %33 = load i32*, i32** %3, align 8
  %34 = load i32, i32* @AV_LOG_TRACE, align 4
  %35 = load i8*, i8** %10, align 8
  %36 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %33, i32 %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %35)
  %37 = load i8*, i8** %10, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %32
  %40 = load i8*, i8** %10, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 47
  br i1 %44, label %45, label %52

45:                                               ; preds = %39
  %46 = load i8*, i8** %10, align 8
  %47 = getelementptr inbounds i8, i8* %46, i64 1
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @strcmp(i8* %47, i8* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  store i32 200, i32* %9, align 4
  br label %54

52:                                               ; preds = %45, %39, %32
  %53 = load i32, i32* @AVERROR_HTTP_NOT_FOUND, align 4
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32*, i32** %3, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @AV_OPT_SEARCH_CHILDREN, align 4
  %58 = call i32 @av_opt_set_int(i32* %55, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %54
  %61 = load i32*, i32** %3, align 8
  %62 = load i32, i32* @AV_LOG_ERROR, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @av_err2str(i32 %63)
  %65 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %61, i32 %62, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  br label %126

66:                                               ; preds = %54
  %67 = load i32*, i32** %3, align 8
  %68 = load i32, i32* @AV_LOG_TRACE, align 4
  %69 = load i32, i32* %9, align 4
  %70 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %67, i32 %68, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %75, %66
  %72 = load i32*, i32** %3, align 8
  %73 = call i32 @avio_handshake(i32* %72)
  store i32 %73, i32* %7, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %71
  br label %71

76:                                               ; preds = %71
  %77 = load i32, i32* %7, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  br label %126

80:                                               ; preds = %76
  %81 = load i32, i32* @stderr, align 4
  %82 = call i32 @fprintf(i32 %81, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  %83 = load i32, i32* %9, align 4
  %84 = icmp ne i32 %83, 200
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %126

86:                                               ; preds = %80
  %87 = load i32, i32* @stderr, align 4
  %88 = call i32 @fprintf(i32 %87, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %89 = load i8*, i8** %4, align 8
  %90 = load i32, i32* @AVIO_FLAG_READ, align 4
  %91 = call i32 @avio_open2(i32** %5, i8* %89, i32 %90, i32* null, i32* null)
  store i32 %91, i32* %7, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* @AV_LOG_ERROR, align 4
  %96 = load i8*, i8** %4, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @av_err2str(i32 %97)
  %99 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %94, i32 %95, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %96, i32 %98)
  br label %126

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %118, %100
  %102 = load i32*, i32** %5, align 8
  %103 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %104 = call i32 @avio_read(i32* %102, i8* %103, i32 1024)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %118

107:                                              ; preds = %101
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @AVERROR_EOF, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  br label %125

112:                                              ; preds = %107
  %113 = load i32*, i32** %5, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @av_err2str(i32 %115)
  %117 = call i32 (i32*, i32, i8*, ...) @av_log(i32* %113, i32 %114, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i32 %116)
  br label %125

118:                                              ; preds = %101
  %119 = load i32*, i32** %3, align 8
  %120 = getelementptr inbounds [1024 x i8], [1024 x i8]* %6, i64 0, i64 0
  %121 = load i32, i32* %8, align 4
  %122 = call i32 @avio_write(i32* %119, i8* %120, i32 %121)
  %123 = load i32*, i32** %3, align 8
  %124 = call i32 @avio_flush(i32* %123)
  br label %101

125:                                              ; preds = %112, %111
  br label %126

126:                                              ; preds = %125, %93, %85, %79, %60, %31
  %127 = load i32, i32* @stderr, align 4
  %128 = call i32 @fprintf(i32 %127, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %129 = load i32*, i32** %3, align 8
  %130 = call i32 @avio_flush(i32* %129)
  %131 = load i32, i32* @stderr, align 4
  %132 = call i32 @fprintf(i32 %131, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0))
  %133 = load i32*, i32** %3, align 8
  %134 = call i32 @avio_close(i32* %133)
  %135 = load i32, i32* @stderr, align 4
  %136 = call i32 @fprintf(i32 %135, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0))
  %137 = load i32*, i32** %5, align 8
  %138 = call i32 @avio_close(i32* %137)
  %139 = call i32 @av_freep(i8** %10)
  ret void
}

declare dso_local i32 @avio_handshake(i32*) #1

declare dso_local i32 @av_opt_get(i32*, i8*, i32, i8**) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @av_freep(i8**) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @av_opt_set_int(i32*, i8*, i32, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @avio_open2(i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @avio_read(i32*, i8*, i32) #1

declare dso_local i32 @avio_write(i32*, i8*, i32) #1

declare dso_local i32 @avio_flush(i32*) #1

declare dso_local i32 @avio_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
