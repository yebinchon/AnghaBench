; ModuleID = '/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_init_fifo.c'
source_filename = "/home/carl/AnghaBench/curl/docs/examples/extr_evhiperfifo.c_init_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.stat = type { i32 }

@init_fifo.fifo = internal global i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [11 x i8] c"hiper.fifo\00", align 1
@MSG_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Creating named pipe \22%s\22\0A\00", align 1
@S_IFMT = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"lstat\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"mkfifo\00", align 1
@O_RDWR = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"open\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Now, pipe some URL's into > %s\0A\00", align 1
@fifo_cb = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @init_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_fifo(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca %struct.stat, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %5 = load i32, i32* @MSG_OUT, align 4
  %6 = load i8*, i8** @init_fifo.fifo, align 8
  %7 = call i32 @fprintf(i32 %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %6)
  %8 = load i8*, i8** @init_fifo.fifo, align 8
  %9 = call i64 @lstat(i8* %8, %struct.stat* %3)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.stat, %struct.stat* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @S_IFMT, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @S_IFREG, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %11
  %19 = load i32, i32* @EEXIST, align 4
  store i32 %19, i32* @errno, align 4
  %20 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load i8*, i8** @init_fifo.fifo, align 8
  %25 = call i32 @unlink(i8* %24)
  %26 = load i8*, i8** @init_fifo.fifo, align 8
  %27 = call i32 @mkfifo(i8* %26, i32 384)
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %31 = call i32 @exit(i32 1) #3
  unreachable

32:                                               ; preds = %23
  %33 = load i8*, i8** @init_fifo.fifo, align 8
  %34 = load i32, i32* @O_RDWR, align 4
  %35 = load i32, i32* @O_NONBLOCK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @open(i8* %33, i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = call i32 @perror(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @exit(i32 1) #3
  unreachable

43:                                               ; preds = %32
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @fdopen(i32 %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @MSG_OUT, align 4
  %49 = load i8*, i8** @init_fifo.fifo, align 8
  %50 = call i32 @fprintf(i32 %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0), i8* %49)
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = load i32, i32* @fifo_cb, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @EV_READ, align 4
  %56 = call i32 @ev_io_init(i32* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @ev_io_start(i32 %59, i32* %61)
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

declare dso_local i32 @ev_io_init(i32*, i32, i32, i32) #1

declare dso_local i32 @ev_io_start(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
