; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_testserv.c_set_sig_handler.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_testserv.c_set_sig_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"sigemptyset()\00", align 1
@exit_process = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"sigaction(SIGTERM)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_sig_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_sig_handler() #0 {
  %1 = alloca %struct.sigaction, align 8
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 2
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 1
  %5 = call i32 @sigemptyset(i32* %4)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = icmp eq i32 %6, -1
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @twarn(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @exit(i32 111) #3
  unreachable

11:                                               ; preds = %0
  %12 = load i32, i32* @exit_process, align 4
  %13 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @SIGTERM, align 4
  %15 = call i32 @sigaction(i32 %14, %struct.sigaction* %1, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = call i32 @twarn(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %20 = call i32 @exit(i32 111) #3
  unreachable

21:                                               ; preds = %11
  ret void
}

declare dso_local i32 @sigemptyset(i32*) #1

declare dso_local i32 @twarn(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
