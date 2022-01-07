; ModuleID = '/home/carl/AnghaBench/disque/src/extr_aof.c_stopAppendOnly.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_aof.c_stopAppendOnly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32, i32, i32 }

@server = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@AOF_OFF = common dso_local global i64 0, align 8
@LL_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Killing running AOF rewrite child: %ld\00", align 1
@SIGUSR1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @stopAppendOnly() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %3 = load i64, i64* @AOF_OFF, align 8
  %4 = icmp ne i64 %2, %3
  %5 = zext i1 %4 to i32
  %6 = call i32 @serverAssert(i32 %5)
  %7 = call i32 @flushAppendOnlyFile(i32 1)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %9 = call i32 @aof_fsync(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  %11 = call i32 @close(i32 %10)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 1), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 2), align 4
  %12 = load i64, i64* @AOF_OFF, align 8
  store i64 %12, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 0), align 8
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %14 = icmp ne i32 %13, -1
  br i1 %14, label %15, label %31

15:                                               ; preds = %0
  %16 = load i32, i32* @LL_NOTICE, align 4
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %18 = sext i32 %17 to i64
  %19 = call i32 @serverLog(i32 %16, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %21 = load i32, i32* @SIGUSR1, align 4
  %22 = call i32 @kill(i32 %20, i32 %21)
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %15
  %25 = call i32 @wait3(i32* %1, i32 0, i32* null)
  br label %26

26:                                               ; preds = %24, %15
  %27 = call i32 (...) @aofRewriteBufferReset()
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  %29 = call i32 @aofRemoveTempFile(i32 %28)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 3), align 8
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @server, i32 0, i32 4), align 4
  %30 = call i32 (...) @aofClosePipes()
  br label %31

31:                                               ; preds = %26, %0
  ret void
}

declare dso_local i32 @serverAssert(i32) #1

declare dso_local i32 @flushAppendOnlyFile(i32) #1

declare dso_local i32 @aof_fsync(i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @serverLog(i32, i8*, i64) #1

declare dso_local i32 @kill(i32, i32) #1

declare dso_local i32 @wait3(i32*, i32, i32*) #1

declare dso_local i32 @aofRewriteBufferReset(...) #1

declare dso_local i32 @aofRemoveTempFile(i32) #1

declare dso_local i32 @aofClosePipes(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
