; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_fdfs_download_file.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_fdfs_download_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [89 x i8] c"Usage: %s <config_file> <file_id> [local_filename] [<download_offset> <download_bytes>]\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@g_log_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@FDFS_DOWNLOAD_TO_FILE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"download file fail, error no: %d, error info: %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 3
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i8**, i8*** %5, align 8
  %18 = getelementptr inbounds i8*, i8** %17, i64 0
  %19 = load i8*, i8** %18, align 8
  %20 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str, i64 0, i64 0), i8* %19)
  store i32 1, i32* %3, align 4
  br label %102

21:                                               ; preds = %2
  %22 = call i32 (...) @log_init()
  %23 = load i32, i32* @LOG_ERR, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_log_context, i32 0, i32 0), align 4
  %24 = call i32 (...) @ignore_signal_pipe()
  %25 = load i8**, i8*** %5, align 8
  %26 = getelementptr inbounds i8*, i8** %25, i64 1
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @fdfs_client_init(i8* %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %9, align 4
  store i32 %32, i32* %3, align 4
  br label %102

33:                                               ; preds = %21
  %34 = call i32* (...) @tracker_get_connection()
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = call i32 (...) @fdfs_client_destroy()
  %39 = load i64, i64* @errno, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i64, i64* @errno, align 8
  br label %46

43:                                               ; preds = %37
  %44 = load i32, i32* @ECONNREFUSED, align 4
  %45 = sext i32 %44 to i64
  br label %46

46:                                               ; preds = %43, %41
  %47 = phi i64 [ %42, %41 ], [ %45, %43 ]
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %102

49:                                               ; preds = %33
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 2
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %50, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %53)
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %55 = load i32, i32* %4, align 4
  %56 = icmp sge i32 %55, 4
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 3
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %7, align 8
  %61 = load i32, i32* %4, align 4
  %62 = icmp sge i32 %61, 6
  br i1 %62, label %63, label %72

63:                                               ; preds = %57
  %64 = load i8**, i8*** %5, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 4
  %66 = load i8*, i8** %65, align 8
  %67 = call i64 @strtoll(i8* %66, i32* null, i32 10)
  store i64 %67, i64* %12, align 8
  %68 = load i8**, i8*** %5, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 5
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strtoll(i8* %70, i32* null, i32 10)
  store i64 %71, i64* %13, align 8
  br label %72

72:                                               ; preds = %63, %57
  br label %84

73:                                               ; preds = %49
  %74 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %75 = call i8* @strrchr(i8* %74, i8 signext 47)
  store i8* %75, i8** %7, align 8
  %76 = load i8*, i8** %7, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i8*, i8** %7, align 8
  %80 = getelementptr inbounds i8, i8* %79, i32 1
  store i8* %80, i8** %7, align 8
  br label %83

81:                                               ; preds = %73
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  store i8* %82, i8** %7, align 8
  br label %83

83:                                               ; preds = %81, %78
  br label %84

84:                                               ; preds = %83, %72
  %85 = load i32*, i32** %8, align 8
  %86 = load i32, i32* @FDFS_DOWNLOAD_TO_FILE, align 4
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %88 = load i64, i64* %12, align 8
  %89 = load i64, i64* %13, align 8
  %90 = call i32 @storage_do_download_file1_ex(i32* %85, i32* null, i32 %86, i8* %87, i64 %88, i64 %89, i8** %7, i32* null, i64* %11)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i8* @STRERROR(i32 %95)
  %97 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i32 %94, i8* %96)
  br label %98

98:                                               ; preds = %93, %84
  %99 = load i32*, i32** %8, align 8
  %100 = call i32 @tracker_close_connection_ex(i32* %99, i32 1)
  %101 = call i32 (...) @fdfs_client_destroy()
  store i32 0, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %46, %31, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @log_init(...) #1

declare dso_local i32 @ignore_signal_pipe(...) #1

declare dso_local i32 @fdfs_client_init(i8*) #1

declare dso_local i32* @tracker_get_connection(...) #1

declare dso_local i32 @fdfs_client_destroy(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i64 @strtoll(i8*, i32*, i32) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @storage_do_download_file1_ex(i32*, i32*, i32, i8*, i64, i64, i8**, i32*, i64*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
