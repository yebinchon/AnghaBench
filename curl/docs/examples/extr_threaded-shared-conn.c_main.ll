; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_threaded-shared-conn.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_threaded-shared-conn.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.initurl = type { i8*, i32, i32* }

@NUM_THREADS = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@CURLSHOPT_LOCKFUNC = common dso_local global i32 0, align 4
@lock_cb = common dso_local global i32 0, align 4
@CURLSHOPT_UNLOCKFUNC = common dso_local global i32 0, align 4
@unlock_cb = common dso_local global i32 0, align 4
@CURLSHOPT_SHARE = common dso_local global i32 0, align 4
@CURL_LOCK_DATA_CONNECT = common dso_local global i32 0, align 4
@URL = common dso_local global i8* null, align 8
@run_thread = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't run thread number %d, errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Thread %d, gets %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Thread %d terminated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = load i32, i32* @NUM_THREADS, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %2, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %3, align 8
  %12 = load i32, i32* @NUM_THREADS, align 4
  %13 = zext i32 %12 to i64
  %14 = alloca %struct.initurl, i64 %13, align 16
  store i64 %13, i64* %6, align 8
  %15 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %16 = call i32 @curl_global_init(i32 %15)
  %17 = call i32* (...) @curl_share_init()
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load i32, i32* @CURLSHOPT_LOCKFUNC, align 4
  %20 = load i32, i32* @lock_cb, align 4
  %21 = call i32 @curl_share_setopt(i32* %18, i32 %19, i32 %20)
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @CURLSHOPT_UNLOCKFUNC, align 4
  %24 = load i32, i32* @unlock_cb, align 4
  %25 = call i32 @curl_share_setopt(i32* %22, i32 %23, i32 %24)
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* @CURLSHOPT_SHARE, align 4
  %28 = load i32, i32* @CURL_LOCK_DATA_CONNECT, align 4
  %29 = call i32 @curl_share_setopt(i32* %26, i32 %27, i32 %28)
  %30 = call i32 (...) @init_locks()
  store i32 0, i32* %4, align 4
  br label %31

31:                                               ; preds = %72, %0
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @NUM_THREADS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %31
  %36 = load i8*, i8** @URL, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.initurl, %struct.initurl* %14, i64 %38
  %40 = getelementptr inbounds %struct.initurl, %struct.initurl* %39, i32 0, i32 0
  store i8* %36, i8** %40, align 8
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.initurl, %struct.initurl* %14, i64 %43
  %45 = getelementptr inbounds %struct.initurl, %struct.initurl* %44, i32 0, i32 2
  store i32* %41, i32** %45, align 8
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.initurl, %struct.initurl* %14, i64 %48
  %50 = getelementptr inbounds %struct.initurl, %struct.initurl* %49, i32 0, i32 1
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %11, i64 %52
  %54 = load i32, i32* @run_thread, align 4
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.initurl, %struct.initurl* %14, i64 %56
  %58 = call i32 @pthread_create(i32* %53, i32* null, i32 %54, %struct.initurl* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 0, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %35
  %62 = load i32, i32* @stderr, align 4
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %71

66:                                               ; preds = %35
  %67 = load i32, i32* @stderr, align 4
  %68 = load i32, i32* %4, align 4
  %69 = load i8*, i8** @URL, align 8
  %70 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %67, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68, i8* %69)
  br label %71

71:                                               ; preds = %66, %61
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %31

75:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %89, %75
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @NUM_THREADS, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %92

80:                                               ; preds = %76
  %81 = load i32, i32* %4, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %11, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pthread_join(i32 %84, i32* null)
  %86 = load i32, i32* @stderr, align 4
  %87 = load i32, i32* %4, align 4
  %88 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %86, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %4, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %4, align 4
  br label %76

92:                                               ; preds = %76
  %93 = call i32 (...) @kill_locks()
  %94 = load i32*, i32** %5, align 8
  %95 = call i32 @curl_share_cleanup(i32* %94)
  %96 = call i32 (...) @curl_global_cleanup()
  store i32 0, i32* %1, align 4
  %97 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %1, align 4
  ret i32 %98
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @curl_global_init(i32) #2

declare dso_local i32* @curl_share_init(...) #2

declare dso_local i32 @curl_share_setopt(i32*, i32, i32) #2

declare dso_local i32 @init_locks(...) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.initurl*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @kill_locks(...) #2

declare dso_local i32 @curl_share_cleanup(i32*) #2

declare dso_local i32 @curl_global_cleanup(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
