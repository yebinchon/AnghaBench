; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sock-linux.c_YabSockConnectSocket.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_sock-linux.c_YabSockConnectSocket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.addrinfo = type { i64, i32, i32, i32, i32 }

@AF_UNSPEC = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"getaddrinfo\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"socket\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"connect\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @YabSockConnectSocket(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.addrinfo*, align 8
  %9 = alloca %struct.addrinfo, align 8
  %10 = alloca [256 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.addrinfo* null, %struct.addrinfo** %8, align 8
  %11 = call i32 @memset(%struct.addrinfo* %9, i32 0, i32 24)
  %12 = load i32, i32* @AF_UNSPEC, align 4
  %13 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 4
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* @SOCK_STREAM, align 4
  %15 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 3
  store i32 %14, i32* %15, align 8
  %16 = load i32, i32* @IPPROTO_TCP, align 4
  %17 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %9, i32 0, i32 2
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @sprintf(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %23 = call i64 @getaddrinfo(i8* %21, i8* %22, %struct.addrinfo* %9, %struct.addrinfo** %8)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @perror(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

27:                                               ; preds = %3
  %28 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %29 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %32 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %35 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @socket(i32 %30, i32 %33, i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = icmp eq i32 %37, -1
  br i1 %40, label %41, label %45

41:                                               ; preds = %27
  %42 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %43 = call i32 @freeaddrinfo(%struct.addrinfo* %42)
  %44 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %69

45:                                               ; preds = %27
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %50 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %53 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32 @connect(i32 %48, i32 %51, i32 %55)
  %57 = icmp eq i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %45
  %59 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %61 = call i32 @freeaddrinfo(%struct.addrinfo* %60)
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @close(i32 %64)
  store i32 -1, i32* %4, align 4
  br label %69

66:                                               ; preds = %45
  %67 = load %struct.addrinfo*, %struct.addrinfo** %8, align 8
  %68 = call i32 @freeaddrinfo(%struct.addrinfo* %67)
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %66, %58, %41, %25
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i64 @getaddrinfo(i8*, i8*, %struct.addrinfo*, %struct.addrinfo**) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @freeaddrinfo(%struct.addrinfo*) #1

declare dso_local i32 @connect(i32, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
