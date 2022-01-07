; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_break_BRK.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_monitor_break_BRK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [25 x i8] c"Break on BRK is %sabled\0A\00", align 1
@MONITOR_break_brk = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"ON\00", align 1
@TRUE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"OFF\00", align 1
@FALSE = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [41 x i8] c"Invalid argument. Usage: BBRK ON or OFF\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @monitor_break_BRK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @monitor_break_BRK() #0 {
  %1 = alloca i8*, align 8
  %2 = call i8* (...) @get_token()
  store i8* %2, i8** %1, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = icmp eq i8* %3, null
  br i1 %4, label %5, label %11

5:                                                ; preds = %0
  %6 = load i64, i64* @MONITOR_break_brk, align 8
  %7 = icmp ne i64 %6, 0
  %8 = zext i1 %7 to i64
  %9 = select i1 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %10 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %9)
  br label %27

11:                                               ; preds = %0
  %12 = load i8*, i8** %1, align 8
  %13 = call i64 @Util_stricmp(i8* %12, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %11
  %16 = load i64, i64* @TRUE, align 8
  store i64 %16, i64* @MONITOR_break_brk, align 8
  br label %26

17:                                               ; preds = %11
  %18 = load i8*, i8** %1, align 8
  %19 = call i64 @Util_stricmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @FALSE, align 8
  store i64 %22, i64* @MONITOR_break_brk, align 8
  br label %25

23:                                               ; preds = %17
  %24 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %21
  br label %26

26:                                               ; preds = %25, %15
  br label %27

27:                                               ; preds = %26, %5
  ret void
}

declare dso_local i8* @get_token(...) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i64 @Util_stricmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
