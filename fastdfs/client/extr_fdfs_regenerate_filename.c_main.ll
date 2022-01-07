; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_fdfs_regenerate_filename.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_fdfs_regenerate_filename.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [137 x i8] c"regenerate filename for the appender file.\0ANOTE: the regenerated file will be a normal file!\0AUsage: %s <config_file> <appender_file_id>\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@g_log_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"regenerate file %s fail, error no: %d, error info: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 3
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([137 x i8], [137 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 1, i32* %3, align 4
  br label %72

19:                                               ; preds = %2
  %20 = call i32 (...) @log_init()
  %21 = load i32, i32* @LOG_ERR, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_log_context, i32 0, i32 0), align 4
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @fdfs_client_init(i8* %25)
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %19
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %72

30:                                               ; preds = %19
  %31 = call i32* (...) @tracker_get_connection()
  store i32* %31, i32** %7, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %46

34:                                               ; preds = %30
  %35 = call i32 (...) @fdfs_client_destroy()
  %36 = load i64, i64* @errno, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i64, i64* @errno, align 8
  br label %43

40:                                               ; preds = %34
  %41 = load i32, i32* @ECONNREFUSED, align 4
  %42 = sext i32 %41 to i64
  br label %43

43:                                               ; preds = %40, %38
  %44 = phi i64 [ %39, %38 ], [ %42, %40 ]
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %3, align 4
  br label %72

46:                                               ; preds = %30
  %47 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %48 = load i8**, i8*** %5, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 2
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %47, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %50)
  %52 = load i32*, i32** %7, align 8
  %53 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %55 = call i32 @storage_regenerate_appender_filename1(i32* %52, i32* null, i8* %53, i8* %54)
  store i32 %55, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @stderr, align 4
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i8* @STRERROR(i32 %61)
  %63 = call i32 (i32, i8*, i8*, ...) @fprintf(i32 %58, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i8* %59, i32 %60, i8* %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %3, align 4
  br label %72

65:                                               ; preds = %46
  %66 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %67 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i32*, i32** %7, align 8
  %69 = call i32 @tracker_close_connection_ex(i32* %68, i32 1)
  %70 = call i32 (...) @fdfs_client_destroy()
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %65, %57, %43, %28, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fprintf(i32, i8*, i8*, ...) #1

declare dso_local i32 @log_init(...) #1

declare dso_local i32 @fdfs_client_init(i8*) #1

declare dso_local i32* @tracker_get_connection(...) #1

declare dso_local i32 @fdfs_client_destroy(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @storage_regenerate_appender_filename1(i32*, i32*, i8*, i8*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
