; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustforksrv_unix.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_mustforksrv_unix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@mustforksrv_unix.path = internal global [90 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [10 x i8] c"%s/socket\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"unix:%s\00", align 1
@srv = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"mustforksrv_unix failed\00", align 1
@srvpid = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [5 x i8] c"fork\00", align 1
@kill_srvpid = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [24 x i8] c"start server socket=%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @mustforksrv_unix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mustforksrv_unix() #0 {
  %1 = alloca [95 x i8], align 16
  %2 = call i8* (...) @ctdir()
  %3 = call i32 @snprintf(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @mustforksrv_unix.path, i64 0, i64 0), i32 90, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = getelementptr inbounds [95 x i8], [95 x i8]* %1, i64 0, i64 0
  %5 = call i32 @snprintf(i8* %4, i32 95, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @mustforksrv_unix.path, i64 0, i64 0))
  %6 = getelementptr inbounds [95 x i8], [95 x i8]* %1, i64 0, i64 0
  %7 = call i32 @make_server_socket(i8* %6, i32* null)
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @srv, i32 0, i32 0, i32 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @srv, i32 0, i32 0, i32 0), align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 @puts(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %0
  %14 = call i64 (...) @fork()
  store i64 %14, i64* @srvpid, align 8
  %15 = load i64, i64* @srvpid, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = call i32 @twarn(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %19 = call i32 @exit(i32 1) #3
  unreachable

20:                                               ; preds = %13
  %21 = load i64, i64* @srvpid, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %20
  %24 = load i32, i32* @kill_srvpid, align 4
  %25 = call i32 @atexit(i32 %24)
  %26 = call i32 @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([90 x i8], [90 x i8]* @mustforksrv_unix.path, i64 0, i64 0))
  %27 = call i32 @exist(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @mustforksrv_unix.path, i64 0, i64 0))
  %28 = call i32 @assert(i32 %27)
  ret i8* getelementptr inbounds ([90 x i8], [90 x i8]* @mustforksrv_unix.path, i64 0, i64 0)

29:                                               ; preds = %20
  %30 = call i32 (...) @set_sig_handler()
  %31 = call i32 (...) @prot_init()
  %32 = call i32 @srv_acquire_wal(%struct.TYPE_6__* @srv)
  %33 = call i32 @srvserve(%struct.TYPE_6__* @srv)
  %34 = call i32 @exit(i32 1) #3
  unreachable
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @ctdir(...) #1

declare dso_local i32 @make_server_socket(i8*, i32*) #1

declare dso_local i32 @puts(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @fork(...) #1

declare dso_local i32 @twarn(i8*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @exist(i8*) #1

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
