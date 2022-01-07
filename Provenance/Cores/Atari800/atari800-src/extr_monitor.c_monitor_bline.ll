; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_bline.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_bline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_break_ypos = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Blinking scanline %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"BLINE disabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @monitor_bline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_bline() #0 {
  %1 = call i32 @get_dec(i32* @ANTIC_break_ypos)
  %2 = load i32, i32* @ANTIC_break_ypos, align 4
  %3 = icmp sge i32 %2, 1008
  br i1 %3, label %4, label %11

4:                                                ; preds = %0
  %5 = load i32, i32* @ANTIC_break_ypos, align 4
  %6 = icmp sle i32 %5, 1247
  br i1 %6, label %7, label %11

7:                                                ; preds = %4
  %8 = load i32, i32* @ANTIC_break_ypos, align 4
  %9 = sub nsw i32 %8, 1000
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %9)
  br label %13

11:                                               ; preds = %4, %0
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

declare dso_local i32 @get_dec(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
