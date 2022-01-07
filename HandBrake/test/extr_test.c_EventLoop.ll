; ModuleID = '/home/carl/AnghaBench/HandBrake/test/extr_test.c_EventLoop.c'
source_filename = "/home/carl/AnghaBench/HandBrake/test/extr_test.c_EventLoop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@work_done = common dso_local global i64 0, align 8
@die = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"\0AEncoding Quit by user command\0A\00", align 1
@HB_ERROR_CANCELED = common dso_local global i32 0, align 4
@done_error = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"\0AEncoding Paused by user command, 'r' to resume\0A\00", align 1
@job_running = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @EventLoop(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 8
  %7 = alloca i32, align 4
  %8 = alloca [257 x i8], align 16
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* @work_done, align 8
  br label %10

10:                                               ; preds = %88, %2
  %11 = load i32, i32* @die, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @work_done, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %10
  %18 = phi i1 [ false, %10 ], [ %16, %13 ]
  br i1 %18, label %19, label %93

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 100000, i32* %21, align 8
  %22 = call i32 @FD_ZERO(i32* %5)
  %23 = load i64, i64* @STDIN_FILENO, align 8
  %24 = call i32 @FD_SET(i64 %23, i32* %5)
  %25 = load i64, i64* @STDIN_FILENO, align 8
  %26 = add nsw i64 %25, 1
  %27 = call i32 @select(i64 %26, i32* %5, i32* null, i32* null, %struct.timeval* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %88

30:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %51, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 256
  br i1 %33, label %34, label %41

34:                                               ; preds = %31
  %35 = load i64, i64* @STDIN_FILENO, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 %37
  %39 = call i64 @read(i64 %35, i8* %38, i32 1)
  %40 = icmp sgt i64 %39, 0
  br label %41

41:                                               ; preds = %34, %31
  %42 = phi i1 [ false, %31 ], [ %40, %34 ]
  br i1 %42, label %43, label %54

43:                                               ; preds = %41
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 10
  br i1 %49, label %50, label %51

50:                                               ; preds = %43
  br label %54

51:                                               ; preds = %43
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %31

54:                                               ; preds = %50, %41
  %55 = load i32, i32* %9, align 4
  %56 = icmp sge i32 %55, 256
  br i1 %56, label %64, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = icmp eq i32 %62, 10
  br i1 %63, label %64, label %87

64:                                               ; preds = %57, %54
  %65 = getelementptr inbounds [257 x i8], [257 x i8]* %8, i64 0, i64 0
  %66 = load i8, i8* %65, align 16
  %67 = sext i8 %66 to i32
  switch i32 %67, label %86 [
    i32 113, label %68
    i32 112, label %72
    i32 114, label %79
    i32 104, label %84
  ]

68:                                               ; preds = %64
  %69 = load i32, i32* @stdout, align 4
  %70 = call i32 @fprintf(i32 %69, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @HB_ERROR_CANCELED, align 4
  store i32 %71, i32* @done_error, align 4
  store i32 1, i32* @die, align 4
  br label %86

72:                                               ; preds = %64
  %73 = load i32, i32* @stdout, align 4
  %74 = call i32 @fprintf(i32 %73, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %75 = load i32*, i32** %3, align 8
  %76 = call i32 @hb_pause(i32* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = call i32 @hb_system_sleep_allow(i32* %77)
  br label %86

79:                                               ; preds = %64
  %80 = load i32*, i32** %3, align 8
  %81 = call i32 @hb_system_sleep_prevent(i32* %80)
  %82 = load i32*, i32** %3, align 8
  %83 = call i32 @hb_resume(i32* %82)
  br label %86

84:                                               ; preds = %64
  %85 = call i32 (...) @ShowCommands()
  br label %86

86:                                               ; preds = %64, %84, %79, %72, %68
  br label %87

87:                                               ; preds = %86, %57
  br label %88

88:                                               ; preds = %87, %19
  %89 = call i32 @hb_snooze(i32 200)
  %90 = load i32*, i32** %3, align 8
  %91 = load i32*, i32** %4, align 8
  %92 = call i32 @HandleEvents(i32* %90, i32* %91)
  br label %10

93:                                               ; preds = %17
  store i64 0, i64* @job_running, align 8
  ret void
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @read(i64, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @hb_pause(i32*) #1

declare dso_local i32 @hb_system_sleep_allow(i32*) #1

declare dso_local i32 @hb_system_sleep_prevent(i32*) #1

declare dso_local i32 @hb_resume(i32*) #1

declare dso_local i32 @ShowCommands(...) #1

declare dso_local i32 @hb_snooze(i32) #1

declare dso_local i32 @HandleEvents(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
