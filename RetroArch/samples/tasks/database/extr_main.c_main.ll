; ModuleID = '/home/carl/AnghaBench/RetroArch/samples/tasks/database/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/samples/tasks/database/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"so\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"Usage: %s <database dir> <core dir> <core info dir> <input dir> <playlist dir>\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"RDB database dir: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Core         dir: %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Core info    dir: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Input        dir: %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Playlist     dir: %s\0A\00", align 1
@main_msg_queue_push = common dso_local global i32 0, align 4
@main_db_cb = common dso_local global i32 0, align 4
@loop_active = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [11 x i8] c"Exit loop\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load i32, i32* @stderr, align 4
  %16 = load i8**, i8*** %5, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %15, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i8* %18)
  store i32 1, i32* %3, align 4
  br label %72

20:                                               ; preds = %2
  %21 = load i8**, i8*** %5, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %6, align 8
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %8, align 8
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  store i8* %29, i8** %7, align 8
  %30 = load i8**, i8*** %5, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 4
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %9, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 5
  %35 = load i8*, i8** %34, align 8
  store i8* %35, i8** %10, align 8
  %36 = load i32, i32* @stderr, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = load i32, i32* @stderr, align 4
  %40 = load i8*, i8** %8, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %39, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %40)
  %42 = load i32, i32* @stderr, align 4
  %43 = load i8*, i8** %7, align 8
  %44 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @stderr, align 4
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i32, i8*, ...) @fprintf(i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %46)
  %48 = load i32, i32* @stderr, align 4
  %49 = load i8*, i8** %10, align 8
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load i32, i32* @main_msg_queue_push, align 4
  %52 = call i32 @task_queue_init(i32 0, i32 %51)
  %53 = load i8*, i8** %7, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = call i32 @core_info_init_list(i8* %53, i8* %54, i8* %55, i32 1)
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %6, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = load i32, i32* @main_db_cb, align 4
  %61 = call i32 @task_push_dbscan(i8* %57, i8* %58, i8* %59, i32 1, i32 1, i32 %60)
  br label %62

62:                                               ; preds = %65, %20
  %63 = load i64, i64* @loop_active, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %62
  %66 = call i32 (...) @task_queue_check()
  br label %62

67:                                               ; preds = %62
  %68 = load i32, i32* @stderr, align 4
  %69 = call i32 (i32, i8*, ...) @fprintf(i32 %68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %70 = call i32 (...) @core_info_deinit_list()
  %71 = call i32 (...) @task_queue_deinit()
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %67, %14
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @task_queue_init(i32, i32) #1

declare dso_local i32 @core_info_init_list(i8*, i8*, i8*, i32) #1

declare dso_local i32 @task_push_dbscan(i8*, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @task_queue_check(...) #1

declare dso_local i32 @core_info_deinit_list(...) #1

declare dso_local i32 @task_queue_deinit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
