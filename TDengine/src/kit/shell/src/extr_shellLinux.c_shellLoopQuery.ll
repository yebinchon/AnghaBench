; ModuleID = '/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_shellLoopQuery.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/kit/shell/src/extr_shellLinux.c_shellLoopQuery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@indicator = common dso_local global i64 0, align 8
@oldtio = common dso_local global i32 0, align 4
@cleanup_handler = common dso_local global i32 0, align 4
@MAX_COMMAND_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @shellLoopQuery(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i64, i64* @indicator, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = call i32 @get_old_terminal_mode(i32* @oldtio)
  store i64 0, i64* @indicator, align 8
  br label %9

9:                                                ; preds = %7, %1
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = load i32, i32* @cleanup_handler, align 4
  %13 = call i32 @pthread_cleanup_push(i32 %12, i32* null)
  %14 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %15 = call i8* @malloc(i32 %14)
  store i8* %15, i8** %4, align 8
  br label %16

16:                                               ; preds = %9, %31
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @MAX_COMMAND_SIZE, align 4
  %19 = call i32 @memset(i8* %17, i32 0, i32 %18)
  %20 = call i32 (...) @set_terminal_mode()
  %21 = load i32*, i32** %3, align 8
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @shellReadCommand(i32* %21, i8* %22)
  %24 = call i32 (...) @reset_terminal_mode()
  %25 = load i8*, i8** %4, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %16
  %28 = load i32*, i32** %3, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @shellRunCommand(i32* %28, i8* %29)
  br label %31

31:                                               ; preds = %27, %16
  br label %16
}

declare dso_local i32 @get_old_terminal_mode(i32*) #1

declare dso_local i32 @pthread_cleanup_push(i32, i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_terminal_mode(...) #1

declare dso_local i32 @shellReadCommand(i32*, i8*) #1

declare dso_local i32 @reset_terminal_mode(...) #1

declare dso_local i32 @shellRunCommand(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
