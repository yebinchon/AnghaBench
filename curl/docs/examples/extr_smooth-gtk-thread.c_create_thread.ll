; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_create_thread.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_smooth-gtk-thread.c_create_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUMT = common dso_local global i32 0, align 4
@num_urls = common dso_local global i32 0, align 4
@pull_one_url = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Couldn't run thread number %d, errno %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Thread %d, gets %s\0A\00", align 1
@urls = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Thread %d terminated\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"pulse_id\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @create_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @NUMT, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %3, align 8
  %10 = alloca i32, i64 %8, align 16
  store i64 %8, i64* %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %44, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @NUMT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @num_urls, align 4
  %18 = icmp slt i32 %16, %17
  br label %19

19:                                               ; preds = %15, %11
  %20 = phi i1 [ false, %11 ], [ %18, %15 ]
  br i1 %20, label %21, label %47

21:                                               ; preds = %19
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %10, i64 %23
  %25 = load i32, i32* @pull_one_url, align 4
  %26 = call i32 @pthread_create(i32* %24, i32* null, i32 %25, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 0, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = load i32, i32* @stderr, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %43

34:                                               ; preds = %21
  %35 = load i32, i32* @stderr, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i8**, i8*** @urls, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i8*, i8** %37, i64 %39
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %36, i8* %41)
  br label %43

43:                                               ; preds = %34, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %11

47:                                               ; preds = %19
  store i32 0, i32* %5, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @NUMT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @num_urls, align 4
  %55 = icmp slt i32 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %70

58:                                               ; preds = %56
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %10, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pthread_join(i32 %62, i32* null)
  %64 = load i32, i32* @stderr, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 (i32, i8*, i32, ...) @fprintf(i32 %64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %48

70:                                               ; preds = %56
  %71 = load i8*, i8** %2, align 8
  %72 = call i32 @G_OBJECT(i8* %71)
  %73 = call i32 @g_object_get_data(i32 %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %74 = call i32 @GPOINTER_TO_INT(i32 %73)
  %75 = call i32 @g_source_remove(i32 %74)
  %76 = load i8*, i8** %2, align 8
  %77 = call i32 @gtk_widget_destroy(i8* %76)
  %78 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %78)
  ret i8* null
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i32, ...) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

declare dso_local i32 @g_source_remove(i32) #2

declare dso_local i32 @GPOINTER_TO_INT(i32) #2

declare dso_local i32 @g_object_get_data(i32, i8*) #2

declare dso_local i32 @G_OBJECT(i8*) #2

declare dso_local i32 @gtk_widget_destroy(i8*) #2

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
