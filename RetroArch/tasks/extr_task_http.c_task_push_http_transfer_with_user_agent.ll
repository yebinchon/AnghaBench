; ModuleID = '/home/carl/AnghaBench/RetroArch/tasks/extr_task_http.c_task_push_http_transfer_with_user_agent.c'
source_filename = "/home/carl/AnghaBench/RetroArch/tasks/extr_task_http.c_task_push_http_transfer_with_user_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_connection_t = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"GET\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @task_push_http_transfer_with_user_agent(i8* %0, i32 %1, i8* %2, i8* %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.http_connection_t*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @string_is_empty(i8* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %40

19:                                               ; preds = %6
  %20 = load i8*, i8** %8, align 8
  %21 = call %struct.http_connection_t* @net_http_connection_new(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.http_connection_t* %21, %struct.http_connection_t** %14, align 8
  %22 = load %struct.http_connection_t*, %struct.http_connection_t** %14, align 8
  %23 = icmp ne %struct.http_connection_t* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %19
  store i8* null, i8** %7, align 8
  br label %40

25:                                               ; preds = %19
  %26 = load i8*, i8** %11, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25
  %29 = load %struct.http_connection_t*, %struct.http_connection_t** %14, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = call i32 @net_http_connection_set_user_agent(%struct.http_connection_t* %29, i8* %30)
  br label %32

32:                                               ; preds = %28, %25
  %33 = load %struct.http_connection_t*, %struct.http_connection_t** %14, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i8*, i8** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = call i8* @task_push_http_transfer_generic(%struct.http_connection_t* %33, i8* %34, i32 %35, i8* %36, i32 %37, i8* %38)
  store i8* %39, i8** %7, align 8
  br label %40

40:                                               ; preds = %32, %24, %18
  %41 = load i8*, i8** %7, align 8
  ret i8* %41
}

declare dso_local i64 @string_is_empty(i8*) #1

declare dso_local %struct.http_connection_t* @net_http_connection_new(i8*, i8*, i32*) #1

declare dso_local i32 @net_http_connection_set_user_agent(%struct.http_connection_t*, i8*) #1

declare dso_local i8* @task_push_http_transfer_generic(%struct.http_connection_t*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
