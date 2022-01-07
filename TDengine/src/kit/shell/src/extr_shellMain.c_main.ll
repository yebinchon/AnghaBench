; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellMain.c_main.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellMain.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigaction = type { i32 }

@EXIT_FAILURE = common dso_local global i32 0, align 4
@args = common dso_local global i32 0, align 4
@con = common dso_local global i32* null, align 8
@interruptHandler = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@pid = common dso_local global i32 0, align 4
@shellLoopQuery = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.sigaction, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = call i32 (...) @checkVersion()
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @exit(i32 %10) #3
  unreachable

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i8**, i8*** %5, align 8
  %15 = call i32 @shellParseArgument(i32 %13, i8** %14, i32* @args)
  %16 = call i32* @shellInit(i32* @args)
  store i32* %16, i32** @con, align 8
  %17 = load i32*, i32** @con, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = load i32*, i32** @con, align 8
  %21 = call i32 @taos_error(i32* %20)
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @exit(i32 %22) #3
  unreachable

24:                                               ; preds = %12
  %25 = load i32, i32* @interruptHandler, align 4
  %26 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %6, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* @SIGTERM, align 4
  %28 = call i32 @sigaction(i32 %27, %struct.sigaction* %6, i32* null)
  %29 = load i32, i32* @SIGINT, align 4
  %30 = call i32 @sigaction(i32 %29, %struct.sigaction* %6, i32* null)
  %31 = load i32*, i32** @con, align 8
  %32 = call i32 @shellGetGrantInfo(i32* %31)
  br label %33

33:                                               ; preds = %24, %33
  %34 = load i32, i32* @shellLoopQuery, align 4
  %35 = load i32*, i32** @con, align 8
  %36 = call i32 @pthread_create(i32* @pid, i32* null, i32 %34, i32* %35)
  %37 = load i32, i32* @pid, align 4
  %38 = call i32 @pthread_join(i32 %37, i32* null)
  br label %33
}

declare dso_local i32 @checkVersion(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @shellParseArgument(i32, i8**, i32*) #1

declare dso_local i32* @shellInit(i32*) #1

declare dso_local i32 @taos_error(i32*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, i32*) #1

declare dso_local i32 @shellGetGrantInfo(i32*) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
