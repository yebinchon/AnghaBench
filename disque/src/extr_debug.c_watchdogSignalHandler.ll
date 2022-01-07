; ModuleID = '/home/carl/AnghaBench/disque/src/extr_debug.c_watchdogSignalHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_debug.c_watchdogSignalHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LL_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\0A--- WATCHDOG TIMER EXPIRED ---\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Sorry: no support for backtrace().\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"--------\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @watchdogSignalHandler(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32*, i32** %5, align 8
  %8 = ptrtoint i32* %7 to i32
  %9 = call i32 @UNUSED(i32 %8)
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @UNUSED(i32 %10)
  %12 = load i32, i32* @LL_WARNING, align 4
  %13 = call i32 @serverLogFromHandler(i32 %12, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @LL_WARNING, align 4
  %15 = call i32 @serverLogFromHandler(i32 %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @LL_WARNING, align 4
  %17 = call i32 @serverLogFromHandler(i32 %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @serverLogFromHandler(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
