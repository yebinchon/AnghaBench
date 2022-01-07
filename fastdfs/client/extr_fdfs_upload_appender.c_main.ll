; ModuleID = '/home/carl/AnghaBench/fastdfs/client/extr_fdfs_upload_appender.c_main.c'
source_filename = "/home/carl/AnghaBench/fastdfs/client/extr_fdfs_upload_appender.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@FDFS_GROUP_NAME_MAX_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Usage: %s <config_file> <local_filename>\0A\00", align 1
@LOG_ERR = common dso_local global i32 0, align 4
@g_log_context = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@ECONNREFUSED = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"tracker_query_storage fail, error no: %d, error info: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"upload file fail, error no: %d, error info: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [128 x i8], align 16
  %15 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* @FDFS_GROUP_NAME_MAX_LEN, align 4
  %17 = add nsw i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 3
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 0
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i8* %26)
  store i32 1, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

28:                                               ; preds = %2
  %29 = call i32 (...) @log_init()
  %30 = load i32, i32* @LOG_ERR, align 4
  store i32 %30, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_log_context, i32 0, i32 0), align 4
  %31 = call i32 (...) @ignore_signal_pipe()
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %6, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = call i32 @fdfs_client_init(i8* %35)
  store i32 %36, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %28
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

40:                                               ; preds = %28
  %41 = call i32* (...) @tracker_get_connection()
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %40
  %45 = call i32 (...) @fdfs_client_destroy()
  %46 = load i64, i64* @errno, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i64, i64* @errno, align 8
  br label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @ECONNREFUSED, align 4
  %52 = sext i32 %51 to i64
  br label %53

53:                                               ; preds = %50, %48
  %54 = phi i64 [ %49, %48 ], [ %52, %50 ]
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

56:                                               ; preds = %40
  store i8 0, i8* %20, align 16
  store i32 0, i32* %12, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = call i32 @tracker_query_storage_store(i32* %57, i32* %13, i8* %20, i32* %12)
  store i32 %58, i32* %11, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %56
  %61 = call i32 (...) @fdfs_client_destroy()
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i8* @STRERROR(i32 %64)
  %66 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %63, i8* %65)
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

68:                                               ; preds = %56
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 2
  %71 = load i8*, i8** %70, align 8
  store i8* %71, i8** %7, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %76 = call i32 @storage_upload_appender_by_filename1(i32* %72, i32* %13, i32 %73, i8* %74, i32* null, i32* null, i32 0, i8* %20, i8* %75)
  store i32 %76, i32* %11, align 4
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %89

79:                                               ; preds = %68
  %80 = load i32, i32* @stderr, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = call i8* @STRERROR(i32 %82)
  %84 = call i32 @fprintf(i32 %80, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %81, i8* %83)
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @tracker_close_connection_ex(i32* %85, i32 1)
  %87 = call i32 (...) @fdfs_client_destroy()
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

89:                                               ; preds = %68
  %90 = getelementptr inbounds [128 x i8], [128 x i8]* %14, i64 0, i64 0
  %91 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %90)
  %92 = load i32*, i32** %10, align 8
  %93 = call i32 @tracker_close_connection_ex(i32* %92, i32 1)
  %94 = call i32 (...) @fdfs_client_destroy()
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %95

95:                                               ; preds = %89, %79, %60, %53, %38, %23
  %96 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %96)
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @printf(i8*, i8*) #2

declare dso_local i32 @log_init(...) #2

declare dso_local i32 @ignore_signal_pipe(...) #2

declare dso_local i32 @fdfs_client_init(i8*) #2

declare dso_local i32* @tracker_get_connection(...) #2

declare dso_local i32 @fdfs_client_destroy(...) #2

declare dso_local i32 @tracker_query_storage_store(i32*, i32*, i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, i8*) #2

declare dso_local i8* @STRERROR(i32) #2

declare dso_local i32 @storage_upload_appender_by_filename1(i32*, i32*, i32, i8*, i32*, i32*, i32, i8*, i8*) #2

declare dso_local i32 @tracker_close_connection_ex(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
