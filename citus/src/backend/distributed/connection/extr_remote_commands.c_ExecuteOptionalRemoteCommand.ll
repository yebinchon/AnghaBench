; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ExecuteOptionalRemoteCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ExecuteOptionalRemoteCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WARNING = common dso_local global i32 0, align 4
@QUERY_SEND_FAILED = common dso_local global i32 0, align 4
@RESPONSE_NOT_OKAY = common dso_local global i32 0, align 4
@RESPONSE_OKAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ExecuteOptionalRemoteCommand(i32* %0, i8* %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  store i32* null, i32** %9, align 8
  store i32 1, i32* %10, align 4
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @SendRemoteCommand(i32* %11, i8* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @WARNING, align 4
  %19 = call i32 @ReportConnectionError(i32* %17, i32 %18)
  %20 = load i32, i32* @QUERY_SEND_FAILED, align 4
  store i32 %20, i32* %4, align 4
  br label %51

21:                                               ; preds = %3
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32* @GetRemoteCommandResult(i32* %22, i32 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @IsResponseOK(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %21
  %29 = load i32*, i32** %5, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32, i32* @WARNING, align 4
  %32 = call i32 @ReportResultError(i32* %29, i32* %30, i32 %31)
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @PQclear(i32* %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @ForgetResults(i32* %35)
  %37 = load i32, i32* @RESPONSE_NOT_OKAY, align 4
  store i32 %37, i32* %4, align 4
  br label %51

38:                                               ; preds = %21
  %39 = load i32**, i32*** %7, align 8
  %40 = icmp ne i32** %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %38
  %42 = load i32*, i32** %9, align 8
  %43 = load i32**, i32*** %7, align 8
  store i32* %42, i32** %43, align 8
  br label %49

44:                                               ; preds = %38
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @PQclear(i32* %45)
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @ForgetResults(i32* %47)
  br label %49

49:                                               ; preds = %44, %41
  %50 = load i32, i32* @RESPONSE_OKAY, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %28, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @SendRemoteCommand(i32*, i8*) #1

declare dso_local i32 @ReportConnectionError(i32*, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32*, i32) #1

declare dso_local i32 @IsResponseOK(i32*) #1

declare dso_local i32 @ReportResultError(i32*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @ForgetResults(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
