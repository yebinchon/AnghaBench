; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_socksconnect.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_socksd.c_socksconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@INADDR_ANY = common dso_local global i32 0, align 4
@SOCKERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Error connecting to %s:%hu: (%d) %s\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Connected fine to %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i16, i8*)* @socksconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @socksconnect(i16 zeroext %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i16, align 2
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i16 %0, i16* %4, align 2
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* @AF_INET, align 4
  %11 = load i32, i32* @SOCK_STREAM, align 4
  %12 = call i64 @socket(i32 %10, i32 %11, i32 0)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %17, i64* %3, align 8
  br label %56

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %20 = call i32 @memset(%struct.TYPE_5__* %19, i32 0, i32 12)
  %21 = load i32, i32* @AF_INET, align 4
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i16, i16* %4, align 2
  %25 = call i32 @htons(i16 zeroext %24)
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @INADDR_ANY, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @AF_INET, align 4
  %33 = load i8*, i8** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @Curl_inet_pton(i32 %32, i8* %33, %struct.TYPE_6__* %35)
  %37 = load i64, i64* %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %39 = call i32 @connect(i64 %37, i32* %38, i32 12)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %18
  %43 = load i32, i32* @SOCKERRNO, align 4
  store i32 %43, i32* %9, align 4
  %44 = load i8*, i8** %5, align 8
  %45 = load i16, i16* %4, align 2
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @strerror(i32 %47)
  %49 = call i32 (i8*, i8*, i16, ...) @logmsg(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %44, i16 zeroext %45, i32 %46, i32 %48)
  %50 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %50, i64* %3, align 8
  br label %56

51:                                               ; preds = %18
  %52 = load i8*, i8** %5, align 8
  %53 = load i16, i16* %4, align 2
  %54 = call i32 (i8*, i8*, i16, ...) @logmsg(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i8* %52, i16 zeroext %53)
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %3, align 8
  br label %56

56:                                               ; preds = %51, %42, %16
  %57 = load i64, i64* %3, align 8
  ret i64 %57
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @htons(i16 zeroext) #1

declare dso_local i32 @Curl_inet_pton(i32, i8*, %struct.TYPE_6__*) #1

declare dso_local i32 @connect(i64, i32*, i32) #1

declare dso_local i32 @logmsg(i8*, i8*, i16 zeroext, ...) #1

declare dso_local i32 @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
