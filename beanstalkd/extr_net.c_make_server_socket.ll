; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_net.c_make_server_socket.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_net.c_make_server_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"sd_listen_fds\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"inherited more than one listen socket; ignoring all but the first\00", align 1
@SD_LISTEN_FDS_START = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"sd_is_socket_inet\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"sd_is_socket_unix\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"inherited fd is not a TCP or UNIX listening socket\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"unix:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @make_server_socket(i8* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 -1, i32* %6, align 4
  %8 = call i32 @sd_listen_fds(i32 1)
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 @twarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %53

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = call i32 @twarnx(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %16
  %22 = load i32, i32* @SD_LISTEN_FDS_START, align 4
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @SOCK_STREAM, align 4
  %25 = call i32 @sd_is_socket_inet(i32 %23, i32 0, i32 %24, i32 1, i32 0)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = call i32 @twarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* %7, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %68

32:                                               ; preds = %21
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @SOCK_STREAM, align 4
  %38 = call i32 @sd_is_socket_unix(i32 %36, i32 %37, i32 1, i32* null, i32 0)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = call i32 @twarn(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %68

45:                                               ; preds = %35
  %46 = load i32, i32* %7, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %45
  %49 = call i32 @twarnx(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %32
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %68

53:                                               ; preds = %13
  %54 = load i8*, i8** %4, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %53
  %57 = load i8*, i8** %4, align 8
  %58 = call i32 @strncmp(i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 5)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i8*, i8** %4, align 8
  %62 = getelementptr inbounds i8, i8* %61, i64 5
  %63 = call i32 @make_unix_socket(i8* %62)
  store i32 %63, i32* %3, align 4
  br label %68

64:                                               ; preds = %56, %53
  %65 = load i8*, i8** %4, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = call i32 @make_inet_socket(i8* %65, i8* %66)
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %60, %51, %48, %41, %28, %11
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @sd_listen_fds(i32) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @twarnx(i8*) #1

declare dso_local i32 @sd_is_socket_inet(i32, i32, i32, i32, i32) #1

declare dso_local i32 @sd_is_socket_unix(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @make_unix_socket(i8*) #1

declare dso_local i32 @make_inet_socket(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
