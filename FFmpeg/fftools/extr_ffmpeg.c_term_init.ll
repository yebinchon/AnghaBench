; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_term_init.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_term_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32*, i32 }

@SIGINT = common dso_local global i32 0, align 4
@sigterm_handler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@BRKINT = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@CSIZE = common dso_local global i32 0, align 4
@CtrlHandler = common dso_local global i64 0, align 8
@ECHO = common dso_local global i32 0, align 4
@ECHONL = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ICRNL = common dso_local global i32 0, align 4
@IEXTEN = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@IGNCR = common dso_local global i32 0, align 4
@INLCR = common dso_local global i32 0, align 4
@ISTRIP = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@PARENB = common dso_local global i32 0, align 4
@PARMRK = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGXCPU = common dso_local global i32 0, align 4
@SIG_IGN = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@oldtty = common dso_local global %struct.termios zeroinitializer, align 8
@restore_tty = common dso_local global i32 0, align 4
@run_as_daemon = common dso_local global i32 0, align 4
@stdin_interaction = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @term_init() #0 {
  %1 = load i32, i32* @SIGINT, align 4
  %2 = load i32, i32* @sigterm_handler, align 4
  %3 = call i32 @signal(i32 %1, i32 %2)
  %4 = load i32, i32* @SIGTERM, align 4
  %5 = load i32, i32* @sigterm_handler, align 4
  %6 = call i32 @signal(i32 %4, i32 %5)
  ret void
}

declare dso_local i32 @signal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
