; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_accept.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_network.c_ff_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"ff_socket_nonblock failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_accept(i32 %0, i32 %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pollfd, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %10 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 0
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 1
  %13 = load i32, i32* @POLLIN, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %9, i32 0, i32 2
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @ff_poll_interrupt(%struct.pollfd* %9, i32 1, i32 %15, i32* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %40

23:                                               ; preds = %3
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @accept(i32 %24, i32* null, i32* null)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = call i32 (...) @ff_neterrno()
  store i32 %29, i32* %4, align 4
  br label %40

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = call i64 @ff_socket_nonblock(i32 %31, i32 1)
  %33 = icmp slt i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = load i32, i32* @AV_LOG_DEBUG, align 4
  %37 = call i32 @av_log(%struct.TYPE_4__* %35, i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %28, %21
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local i32 @ff_poll_interrupt(%struct.pollfd*, i32, i32, i32*) #1

declare dso_local i32 @accept(i32, i32*, i32*) #1

declare dso_local i32 @ff_neterrno(...) #1

declare dso_local i64 @ff_socket_nonblock(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_4__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
