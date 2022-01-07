; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosOpenNewLogFile.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tlog.c_taosOpenNewLogFile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@logMutex = common dso_local global i32 0, align 4
@taosLogLines = common dso_local global i64 0, align 8
@taosLogMaxLines = common dso_local global i64 0, align 8
@openInProgress = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"open new log file ......\00", align 1
@PTHREAD_CREATE_DETACHED = common dso_local global i32 0, align 4
@taosThreadToOpenNewFile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenNewLogFile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @pthread_mutex_lock(i32* @logMutex)
  %4 = load i64, i64* @taosLogLines, align 8
  %5 = load i64, i64* @taosLogMaxLines, align 8
  %6 = icmp sgt i64 %4, %5
  br i1 %6, label %7, label %18

7:                                                ; preds = %0
  %8 = load i32, i32* @openInProgress, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  store i32 1, i32* @openInProgress, align 4
  %11 = call i32 @pPrint(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @pthread_attr_init(i32* %2)
  %13 = load i32, i32* @PTHREAD_CREATE_DETACHED, align 4
  %14 = call i32 @pthread_attr_setdetachstate(i32* %2, i32 %13)
  %15 = load i32, i32* @taosThreadToOpenNewFile, align 4
  %16 = call i32 @pthread_create(i32* %1, i32* %2, i32 %15, i32* null)
  %17 = call i32 @pthread_attr_destroy(i32* %2)
  br label %18

18:                                               ; preds = %10, %7, %0
  %19 = call i32 @pthread_mutex_unlock(i32* @logMutex)
  ret i32 0
}

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i32 @pPrint(i8*) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, i32*) #1

declare dso_local i32 @pthread_attr_destroy(i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
