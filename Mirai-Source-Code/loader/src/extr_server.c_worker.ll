; ModuleID = '/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_worker.c'
source_filename = "/home/carl/AnghaBench/Mirai-Source-Code/loader/src/extr_server.c_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.server_worker = type { i32, i32 }
%struct.epoll_event = type { i32 }

@TRUE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"epoll_wait\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.server_worker*, align 8
  %5 = alloca [128 x %struct.epoll_event], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.server_worker*
  store %struct.server_worker* %9, %struct.server_worker** %4, align 8
  %10 = load %struct.server_worker*, %struct.server_worker** %4, align 8
  %11 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bind_core(i32 %12)
  br label %14

14:                                               ; preds = %41, %1
  %15 = load i64, i64* @TRUE, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %42

17:                                               ; preds = %14
  %18 = load %struct.server_worker*, %struct.server_worker** %4, align 8
  %19 = getelementptr inbounds %struct.server_worker, %struct.server_worker* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds [128 x %struct.epoll_event], [128 x %struct.epoll_event]* %5, i64 0, i64 0
  %22 = call i32 @epoll_wait(i32 %20, %struct.epoll_event* %21, i32 127, i32 -1)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = call i32 @perror(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %17
  store i32 0, i32* %6, align 4
  br label %28

28:                                               ; preds = %38, %27
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load %struct.server_worker*, %struct.server_worker** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [128 x %struct.epoll_event], [128 x %struct.epoll_event]* %5, i64 0, i64 %35
  %37 = call i32 @handle_event(%struct.server_worker* %33, %struct.epoll_event* %36)
  br label %38

38:                                               ; preds = %32
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %28

41:                                               ; preds = %28
  br label %14

42:                                               ; preds = %14
  %43 = load i8*, i8** %2, align 8
  ret i8* %43
}

declare dso_local i32 @bind_core(i32) #1

declare dso_local i32 @epoll_wait(i32, %struct.epoll_event*, i32, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @handle_event(%struct.server_worker*, %struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
