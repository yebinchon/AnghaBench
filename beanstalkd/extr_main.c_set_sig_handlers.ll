; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_main.c_set_sig_handlers.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_main.c_set_sig_handlers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i64 }

@SIG_IGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sigemptyset()\00", align 1
@SIGPIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sigaction(SIGPIPE)\00", align 1
@enter_drain_mode = common dso_local global i32 0, align 4
@SIGUSR1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"sigaction(SIGUSR1)\00", align 1
@handle_sigterm_pid1 = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [19 x i8] c"sigaction(SIGTERM)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_sig_handlers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_handlers() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = load i32, i32* @SIG_IGN, align 4
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %3, i32* %4, align 8
  %5 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %7 = call i32 @sigemptyset(i32* %6)
  store i32 %7, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %13

10:                                               ; preds = %0
  %11 = call i32 @twarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @exit(i32 111) #3
  unreachable

13:                                               ; preds = %0
  %14 = load i32, i32* @SIGPIPE, align 4
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %1, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %13
  %19 = call i32 @twarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 111) #3
  unreachable

21:                                               ; preds = %13
  %22 = load i32, i32* @enter_drain_mode, align 4
  %23 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  %24 = load i32, i32* @SIGUSR1, align 4
  %25 = call i32 @sigaction(i32 %24, %struct.sigaction* %1, i32 0)
  store i32 %25, i32* %2, align 4
  %26 = load i32, i32* %2, align 4
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = call i32 @twarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %30 = call i32 @exit(i32 111) #3
  unreachable

31:                                               ; preds = %21
  %32 = call i32 (...) @getpid()
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %31
  %35 = load i32, i32* @handle_sigterm_pid1, align 4
  %36 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %35, i32* %36, align 8
  %37 = load i32, i32* @SIGTERM, align 4
  %38 = call i32 @sigaction(i32 %37, %struct.sigaction* %1, i32 0)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = call i32 @twarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0))
  %43 = call i32 @exit(i32 111) #3
  unreachable

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44, %31
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @twarn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32) #1

declare dso_local i32 @getpid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
