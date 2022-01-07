; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_fdfs_append_file.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_fdfs_append_file.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"Usage: %s <config_file> <appender_file_id> <local_filename>\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@g_log_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"append file fail, error no: %d, error info: %s\0A\00", align 1

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 4
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i8* %16)
  store i32 1, i32* %3, align 4
  br label %70

18:                                               ; preds = %2
  %19 = call i32 (...) @log_init()
  %20 = load i32, i32* @LOG_ERR, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_log_context, i32 0, i32 0), align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @fdfs_client_init(i8* %24)
  store i32 %25, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %18
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %70

29:                                               ; preds = %18
  %30 = call i32* (...) @tracker_get_connection()
  store i32* %30, i32** %8, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %29
  %34 = call i32 (...) @fdfs_client_destroy()
  %35 = load i64, i64* @errno, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @errno, align 8
  br label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ECONNREFUSED, align 4
  %41 = sext i32 %40 to i64
  br label %42

42:                                               ; preds = %39, %37
  %43 = phi i64 [ %38, %37 ], [ %41, %39 ]
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %29
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 2
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 @snprintf(i8* %46, i32 128, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 3
  %53 = load i8*, i8** %52, align 8
  store i8* %53, i8** %7, align 8
  %54 = load i32*, i32** %8, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %57 = call i32 @storage_append_by_filename1(i32* %54, i32* null, i8* %55, i8* %56)
  store i32 %57, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %45
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i8* @STRERROR(i32 %61)
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %60, i8* %62)
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %3, align 4
  br label %70

65:                                               ; preds = %45
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @tracker_close_connection_ex(i32* %66, i32 1)
  %68 = call i32 (...) @fdfs_client_destroy()
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %65, %59, %42, %27, %13
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @log_init(...) #1

declare dso_local i32 @fdfs_client_init(i8*) #1

declare dso_local i32* @tracker_get_connection(...) #1

declare dso_local i32 @fdfs_client_destroy(...) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @storage_append_by_filename1(i32*, i32*, i8*, i8*) #1

declare dso_local i8* @STRERROR(i32) #1

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
