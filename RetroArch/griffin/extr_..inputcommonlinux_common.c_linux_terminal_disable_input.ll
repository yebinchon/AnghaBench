; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..inputcommonlinux_common.c_linux_terminal_disable_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..inputcommonlinux_common.c_linux_terminal_disable_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@KDSKBMODE = common dso_local global i32 0, align 4
@K_MEDIUMRAW = common dso_local global i32 0, align 4
@linux_terminal_restore_signal = common dso_local global i32 0, align 4
@SA_RESTART = common dso_local global i32 0, align 4
@SA_RESETHAND = common dso_local global i32 0, align 4
@SIGABRT = common dso_local global i32 0, align 4
@SIGBUS = common dso_local global i32 0, align 4
@SIGFPE = common dso_local global i32 0, align 4
@SIGILL = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGSEGV = common dso_local global i32 0, align 4
@linux_terminal_restore_input = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_terminal_disable_input() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.sigaction, align 4
  %3 = bitcast %struct.sigaction* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %3, i8 0, i64 16, i1 false)
  %4 = call i32 @isatty(i32 0)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %41

7:                                                ; preds = %0
  %8 = call i32 (...) @linux_terminal_init()
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %41

11:                                               ; preds = %7
  %12 = load i32, i32* @KDSKBMODE, align 4
  %13 = load i32, i32* @K_MEDIUMRAW, align 4
  %14 = call i64 @ioctl(i32 0, i32 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @linux_terminal_flush()
  store i32 0, i32* %1, align 4
  br label %41

18:                                               ; preds = %11
  %19 = load i32, i32* @linux_terminal_restore_signal, align 4
  %20 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* @SA_RESTART, align 4
  %22 = load i32, i32* @SA_RESETHAND, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %2, i32 0, i32 1
  %26 = call i32 @sigemptyset(i32* %25)
  %27 = load i32, i32* @SIGABRT, align 4
  %28 = call i32 @sigaction(i32 %27, %struct.sigaction* %2, i32* null)
  %29 = load i32, i32* @SIGBUS, align 4
  %30 = call i32 @sigaction(i32 %29, %struct.sigaction* %2, i32* null)
  %31 = load i32, i32* @SIGFPE, align 4
  %32 = call i32 @sigaction(i32 %31, %struct.sigaction* %2, i32* null)
  %33 = load i32, i32* @SIGILL, align 4
  %34 = call i32 @sigaction(i32 %33, %struct.sigaction* %2, i32* null)
  %35 = load i32, i32* @SIGQUIT, align 4
  %36 = call i32 @sigaction(i32 %35, %struct.sigaction* %2, i32* null)
  %37 = load i32, i32* @SIGSEGV, align 4
  %38 = call i32 @sigaction(i32 %37, %struct.sigaction* %2, i32* null)
  %39 = load i32, i32* @linux_terminal_restore_input, align 4
  %40 = call i32 @atexit(i32 %39)
  store i32 1, i32* %1, align 4
  br label %41

41:                                               ; preds = %18, %16, %10, %6
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @isatty(i32) #2

declare dso_local i32 @linux_terminal_init(...) #2

declare dso_local i64 @ioctl(i32, i32, i32) #2

declare dso_local i32 @linux_terminal_flush(...) #2

declare dso_local i32 @sigemptyset(i32*) #2

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #2

declare dso_local i32 @atexit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
