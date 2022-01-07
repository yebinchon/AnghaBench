; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_sws.c_accept_connection.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_sws.c_accept_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CURL_SOCKET_BAD = common dso_local global i64 0, align 8
@MAX_SOCKETS = common dso_local global i64 0, align 8
@num_sockets = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Too many open sockets!\00", align 1
@got_exit_signal = common dso_local global i64 0, align 8
@SOCKERRNO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"MAJOR ERROR: accept() failed with error: (%d) %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"curlx_nonblock failed with error: (%d) %s\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"setsockopt(SO_KEEPALIVE) failed with error: (%d) %s\00", align 1
@serverlogslocked = common dso_local global i64 0, align 8
@SERVERLOGS_LOCK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"====> Client connect\00", align 1
@all_sockets = common dso_local global i64* null, align 8
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_NODELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @accept_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @accept_connection(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %7, i64* %4, align 8
  store i32 1, i32* %6, align 4
  %8 = load i64, i64* @MAX_SOCKETS, align 8
  %9 = load i64, i64* @num_sockets, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %13, i64* %2, align 8
  br label %95

14:                                               ; preds = %1
  %15 = load i64, i64* %3, align 8
  %16 = call i64 @accept(i64 %15, i32* null, i32* null)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* @got_exit_signal, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @sclose(i64 %24)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %27, i64* %2, align 8
  br label %95

28:                                               ; preds = %14
  %29 = load i64, i64* @CURL_SOCKET_BAD, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %28
  %33 = load i32, i32* @SOCKERRNO, align 4
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* @EAGAIN, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* @EWOULDBLOCK, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37, %32
  store i64 0, i64* %2, align 8
  br label %95

42:                                               ; preds = %37
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @strerror(i32 %44)
  %46 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %45)
  %47 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %47, i64* %2, align 8
  br label %95

48:                                               ; preds = %28
  %49 = load i64, i64* %4, align 8
  %50 = load i32, i32* @TRUE, align 4
  %51 = call i64 @curlx_nonblock(i64 %49, i32 %50)
  %52 = icmp ne i64 0, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load i32, i32* @SOCKERRNO, align 4
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = call i32 @strerror(i32 %56)
  %58 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 %57)
  %59 = load i64, i64* %4, align 8
  %60 = call i32 @sclose(i64 %59)
  %61 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %61, i64* %2, align 8
  br label %95

62:                                               ; preds = %48
  %63 = load i64, i64* %4, align 8
  %64 = load i32, i32* @SOL_SOCKET, align 4
  %65 = load i32, i32* @SO_KEEPALIVE, align 4
  %66 = bitcast i32* %6 to i8*
  %67 = call i64 @setsockopt(i64 %63, i32 %64, i32 %65, i8* %66, i32 4)
  %68 = icmp ne i64 0, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %62
  %70 = load i32, i32* @SOCKERRNO, align 4
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @strerror(i32 %72)
  %74 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0), i32 %71, i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = call i32 @sclose(i64 %75)
  %77 = load i64, i64* @CURL_SOCKET_BAD, align 8
  store i64 %77, i64* %2, align 8
  br label %95

78:                                               ; preds = %62
  %79 = load i64, i64* @serverlogslocked, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* @SERVERLOGS_LOCK, align 4
  %83 = call i32 @set_advisor_read_lock(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i64, i64* @serverlogslocked, align 8
  %86 = add nsw i64 %85, 1
  store i64 %86, i64* @serverlogslocked, align 8
  %87 = call i32 (i8*, ...) @logmsg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  %88 = load i64, i64* %4, align 8
  %89 = load i64*, i64** @all_sockets, align 8
  %90 = load i64, i64* @num_sockets, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  store i64 %88, i64* %91, align 8
  %92 = load i64, i64* @num_sockets, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* @num_sockets, align 8
  %94 = load i64, i64* %4, align 8
  store i64 %94, i64* %2, align 8
  br label %95

95:                                               ; preds = %84, %69, %53, %42, %41, %26, %11
  %96 = load i64, i64* %2, align 8
  ret i64 %96
}

declare dso_local i32 @logmsg(i8*, ...) #1

declare dso_local i64 @accept(i64, i32*, i32*) #1

declare dso_local i32 @sclose(i64) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i64 @curlx_nonblock(i64, i32) #1

declare dso_local i64 @setsockopt(i64, i32, i32, i8*, i32) #1

declare dso_local i32 @set_advisor_read_lock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
