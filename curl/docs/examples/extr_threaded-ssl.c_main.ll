; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_main.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_threaded-ssl.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMT = common dso_local global i32 0, align 4
@CURL_GLOBAL_ALL = common dso_local global i32 0, align 4
@pull_one_url = common dso_local global i32 0, align 4
@urls = common dso_local global i8** null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't run thread number %d, errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Thread %d, gets %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Thread %d terminated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %10 = load i32, i32* @NUMT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i8**, i8*** %5, align 8
  %16 = load i32, i32* @CURL_GLOBAL_ALL, align 4
  %17 = call i32 @curl_global_init(i32 %16)
  %18 = call i32 (...) @init_locks()
  store i32 0, i32* %8, align 4
  br label %19

19:                                               ; preds = %51, %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NUMT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %13, i64 %25
  %27 = load i32, i32* @pull_one_url, align 4
  %28 = load i8**, i8*** @urls, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8*, i8** %28, i64 %30
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @pthread_create(i32* %26, i32* null, i32 %27, i8* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 0, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %23
  %37 = load i32, i32* @stderr, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %37, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  br label %50

41:                                               ; preds = %23
  %42 = load i32, i32* @stderr, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i8**, i8*** @urls, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8*, i8** %44, i64 %46
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %43, i8* %48)
  br label %50

50:                                               ; preds = %41, %36
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %19

54:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %68, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @NUMT, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %55
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %13, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pthread_join(i32 %63, i32* null)
  %65 = load i32, i32* @stderr, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %59
  %69 = load i32, i32* %8, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %55

71:                                               ; preds = %55
  %72 = call i32 (...) @kill_locks()
  store i32 0, i32* %3, align 4
  %73 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %73)
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @curl_global_init(i32) #2

declare dso_local i32 @init_locks(...) #2

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i8*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @kill_locks(...) #2

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
