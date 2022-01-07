; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sock-windows.c_YabSockSelect.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sock-windows.c_YabSockSelect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@read_fds = common dso_local global i32 0, align 4
@write_fds = common dso_local global i32 0, align 4
@SOCKET_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"select: err code %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"select: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabSockSelect(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = call i32 @FD_ZERO(i32* @read_fds)
  %13 = call i32 @FD_ZERO(i32* @write_fds)
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @FD_SET(i64 %17, i32* @read_fds)
  store i32* @read_fds, i32** %8, align 8
  br label %20

19:                                               ; preds = %3
  store i32* null, i32** %8, align 8
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @FD_SET(i64 %24, i32* @write_fds)
  store i32* @write_fds, i32** %9, align 8
  br label %27

26:                                               ; preds = %20
  store i32* null, i32** %9, align 8
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %10, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %30, 1
  %32 = load i32*, i32** %8, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @select(i64 %31, i32* %32, i32* %33, i32* null, %struct.timeval* %10)
  store i32 %34, i32* %11, align 4
  %35 = icmp slt i32 %34, 1
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* @SOCKET_ERROR, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 (...) @WSAGetLastError()
  %42 = call i32 @LOG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41)
  br label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @LOG(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %40
  store i32 -1, i32* %4, align 4
  br label %48

47:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %47, %46
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @LOG(i8*, i32) #1

declare dso_local i32 @WSAGetLastError(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
