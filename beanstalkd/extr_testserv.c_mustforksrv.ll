; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustforksrv.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustforksrv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@srv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"mustforksrv failed\00", align 1
@srvpid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@kill_srvpid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"start server port=%d pid=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @mustforksrv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mustforksrv() #0 {
  %1 = alloca %struct.sockaddr_in, align 4
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @make_server_socket(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %5, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @srv, i32 0, i32 0, i32 0), align 4
  %6 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @srv, i32 0, i32 0, i32 0), align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %10 = call i32 @exit(i32 1) #3
  unreachable

11:                                               ; preds = %0
  store i64 4, i64* %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @srv, i32 0, i32 0, i32 0), align 4
  %13 = bitcast %struct.sockaddr_in* %1 to %struct.sockaddr*
  %14 = bitcast i64* %2 to i32*
  %15 = call i32 @getsockname(i32 %12, %struct.sockaddr* %13, i32* %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load i64, i64* %2, align 8
  %20 = icmp ugt i64 %19, 4
  br i1 %20, label %21, label %24

21:                                               ; preds = %18, %11
  %22 = call i32 @puts(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %23 = call i32 @exit(i32 1) #3
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %1, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ntohs(i32 %26)
  store i32 %27, i32* %4, align 4
  %28 = call i64 (...) @fork()
  store i64 %28, i64* @srvpid, align 8
  %29 = load i64, i64* @srvpid, align 8
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = call i32 @twarn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %24
  %35 = load i64, i64* @srvpid, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load i32, i32* @kill_srvpid, align 4
  %39 = call i32 @atexit(i32 %38)
  %40 = load i32, i32* %4, align 4
  %41 = load i64, i64* @srvpid, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43

44:                                               ; preds = %34
  %45 = call i32 (...) @set_sig_handler()
  %46 = call i32 (...) @prot_init()
  %47 = call i32 @srv_acquire_wal(%struct.TYPE_6__* @srv)
  %48 = call i32 @srvserve(%struct.TYPE_6__* @srv)
  %49 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @make_server_socket(i8*, i8*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @getsockname(i32, %struct.sockaddr*, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @fork(...) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @printf(i8*, i32, i64) #1

declare dso_local i32 @set_sig_handler(...) #1

declare dso_local i32 @prot_init(...) #1

declare dso_local i32 @srv_acquire_wal(%struct.TYPE_6__*) #1

declare dso_local i32 @srvserve(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
