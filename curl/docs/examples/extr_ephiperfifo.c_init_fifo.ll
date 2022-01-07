; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_ephiperfifo.c_init_fifo.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_ephiperfifo.c_init_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.stat = type { i32 }
%struct.epoll_event = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }

@MSG_OUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Creating named pipe \22%s\22\0A\00", align 1
@fifo = common dso_local global i8* null, align 8
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLL_CTL_ADD = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Now, pipe some URL's into > %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*)* @init_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fifo(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.epoll_event, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %6 = load i32, i32* @MSG_OUT, align 4
  %7 = load i8*, i8** @fifo, align 8
  %8 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %7)
  %9 = load i8*, i8** @fifo, align 8
  %10 = call i64 @lstat(i8* %9, %struct.stat* %3)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @S_IFMT, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @S_IFREG, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %12
  %20 = load i32, i32* @EEXIST, align 4
  store i32 %20, i32* @errno, align 4
  %21 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %22 = call i32 @exit(i32 1) #3
  unreachable

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i8*, i8** @fifo, align 8
  %26 = call i32 @unlink(i8* %25)
  %27 = load i8*, i8** @fifo, align 8
  %28 = call i32 @mkfifo(i8* %27, i32 384)
  %29 = icmp eq i32 %28, -1
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %32 = call i32 @exit(i32 1) #3
  unreachable

33:                                               ; preds = %24
  %34 = load i8*, i8** @fifo, align 8
  %35 = load i32, i32* @O_RDWR, align 4
  %36 = load i32, i32* @O_NONBLOCK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @open(i8* %34, i32 %37, i32 0)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @exit(i32 1) #3
  unreachable

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @fdopen(i32 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @EPOLLIN, align 4
  %53 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %5, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* %4, align 4
  %55 = getelementptr inbounds %struct.epoll_event, %struct.epoll_event* %5, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EPOLL_CTL_ADD, align 4
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @epoll_ctl(i32 %59, i32 %60, i32 %61, %struct.epoll_event* %5)
  %63 = load i32, i32* @MSG_OUT, align 4
  %64 = load i8*, i8** @fifo, align 8
  %65 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i8* %64)
  ret i32 0
}

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @perror(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @unlink(i8*) #1

declare dso_local i32 @mkfifo(i8*, i32) #1

declare dso_local i32 @open(i8*, i32, i32) #1

declare dso_local i32 @fdopen(i32, i8*) #1

declare dso_local i32 @epoll_ctl(i32, i32, i32, %struct.epoll_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
