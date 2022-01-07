; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_receivedata.c_receivedata.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_receivedata.c_receivedata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @receivedata(i32 %0, i8* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [1 x %struct.pollfd], align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %7, align 4
  %15 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %13, i64 0, i64 0
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %13, i64 0, i64 0
  %19 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  %20 = getelementptr inbounds [1 x %struct.pollfd], [1 x %struct.pollfd]* %13, i64 0, i64 0
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @poll(%struct.pollfd* %20, i32 1, i32 %21)
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %37

26:                                               ; preds = %5
  %27 = load i32, i32* %12, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %37

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i64 @recv(i32 %31, i8* %32, i32 %33, i32 0)
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %30, %29, %25
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i64 @recv(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
