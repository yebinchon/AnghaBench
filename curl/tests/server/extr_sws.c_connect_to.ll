; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_connect_to.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_connect_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8*, i32, i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"about to connect to %s%s%s:%hu\00", align 1
@socket_domain = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"Error creating socket for server connection: (%d) %s\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"Error inet_pton failed AF_INET conversion of '%s'\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [45 x i8] c"Error connecting to server port %hu: (%d) %s\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"connected fine to %s%s%s:%hu, now tunnel\00", align 1
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i16)* @connect_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @connect_to(i8* %0, i16 zeroext %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = icmp ne i8* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %15, i64* %3, align 8
  br label %91

16:                                               ; preds = %2
  %17 = load i8*, i8** %10, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = load i8*, i8** %11, align 8
  %20 = load i16, i16* %5, align 2
  %21 = zext i16 %20 to i32
  %22 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i8* %17, i8* %18, i8* %19, i32 %21)
  %23 = load i32, i32* @socket_domain, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = call i64 @socket(i32 %23, i32 %24, i32 0)
  store i64 %25, i64* %7, align 8
  %26 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %16
  %30 = load i32, i32* @SOCKERRNO, align 4
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 %33)
  %35 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %35, i64* %3, align 8
  br label %91

36:                                               ; preds = %16
  %37 = load i32, i32* @socket_domain, align 4
  switch i32 %37, label %62 [
    i32 130, label %38
  ]

38:                                               ; preds = %36
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %40 = call i32 @memset(%struct.TYPE_4__* %39, i32 0, i32 40)
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i32 130, i32* %42, align 8
  %43 = load i16, i16* %5, align 2
  %44 = call i8* @htons(i16 zeroext %43)
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 5
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 4
  %50 = call i32 @Curl_inet_pton(i32 130, i8* %47, i32* %49)
  %51 = icmp slt i32 %50, 1
  br i1 %51, label %52, label %58

52:                                               ; preds = %38
  %53 = load i8*, i8** %4, align 8
  %54 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0), i8* %53)
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @sclose(i64 %55)
  %57 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %57, i64* %3, align 8
  br label %91

58:                                               ; preds = %38
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %61 = call i32 @connect(i64 %59, i32* %60, i32 40)
  store i32 %61, i32* %9, align 4
  br label %62

62:                                               ; preds = %36, %58
  %63 = load i64, i64* @got_exit_signal, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @sclose(i64 %66)
  %68 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %68, i64* %3, align 8
  br label %91

69:                                               ; preds = %62
  %70 = load i32, i32* %9, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %69
  %73 = load i32, i32* @SOCKERRNO, align 4
  store i32 %73, i32* %8, align 4
  %74 = load i16, i16* %5, align 2
  %75 = zext i16 %74 to i32
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @strerror(i32 %77)
  %79 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.4, i64 0, i64 0), i32 %75, i32 %76, i32 %78)
  %80 = load i64, i64* %7, align 8
  %81 = call i32 @sclose(i64 %80)
  %82 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %82, i64* %3, align 8
  br label %91

83:                                               ; preds = %69
  %84 = load i8*, i8** %10, align 8
  %85 = load i8*, i8** %4, align 8
  %86 = load i8*, i8** %11, align 8
  %87 = load i16, i16* %5, align 2
  %88 = zext i16 %87 to i32
  %89 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i8* %84, i8* %85, i8* %86, i32 %88)
  %90 = load i64, i64* %7, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %83, %72, %65, %52, %29, %14
  %92 = load i64, i64* %3, align 8
  ret i64 %92
}

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @htons(i16 zeroext) #1

declare dso_local i32 @Curl_inet_pton(i32, i8*, i32*) #1

declare dso_local i32 @sclose(i64) #1

declare dso_local i32 @connect(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
