; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_main.c_main.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_main.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@progname = common dso_local global i8* null, align 8
@stdout = common dso_local global i32 0, align 4
@srv = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@verbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"pid %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"make_server_socket()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call i32 @UNUSED_PARAMETER(i32 %7)
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  store i8* %11, i8** @progname, align 8
  %12 = load i32, i32* @stdout, align 4
  %13 = call i32 @setlinebuf(i32 %12)
  %14 = load i8**, i8*** %5, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = call i32 @optparse(%struct.TYPE_7__* @srv, i8** %15)
  %17 = load i64, i64* @verbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = call i32 (...) @getpid()
  %21 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srv, i32 0, i32 3), align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srv, i32 0, i32 2), align 4
  %25 = call i32 @make_server_socket(i32 %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = call i32 @twarnx(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = call i32 @exit(i32 111) #3
  unreachable

31:                                               ; preds = %22
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srv, i32 0, i32 1, i32 0), align 8
  %33 = call i32 (...) @prot_init()
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srv, i32 0, i32 0), align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @srv, i32 0, i32 0), align 8
  %38 = call i32 @su(i64 %37)
  br label %39

39:                                               ; preds = %36, %31
  %40 = call i32 (...) @set_sig_handlers()
  %41 = call i32 @srv_acquire_wal(%struct.TYPE_7__* @srv)
  %42 = call i32 @srvserve(%struct.TYPE_7__* @srv)
  %43 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @UNUSED_PARAMETER(i32) #1

declare dso_local i32 @setlinebuf(i32) #1

declare dso_local i32 @optparse(%struct.TYPE_7__*, i8**) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32 @make_server_socket(i32, i32) #1

declare dso_local i32 @twarnx(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @prot_init(...) #1

declare dso_local i32 @su(i64) #1

declare dso_local i32 @set_sig_handlers(...) #1

declare dso_local i32 @srv_acquire_wal(%struct.TYPE_7__*) #1

declare dso_local i32 @srvserve(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
