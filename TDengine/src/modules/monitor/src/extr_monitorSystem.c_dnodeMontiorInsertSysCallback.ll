; ModuleID = '/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_dnodeMontiorInsertSysCallback.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/modules/monitor/src/extr_monitorSystem.c_dnodeMontiorInsertSysCallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"monitor:%p, save system info failed, code:%d %s\00", align 1
@monitor = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [55 x i8] c"monitor:%p, save system info failed, affect rows:%d %s\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"monitor:%p, save system info success, code:%d %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dnodeMontiorInsertSysCallback(i8* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @monitorError(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13, i32 %16)
  br label %40

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @monitorError(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25, i32 %28)
  br label %39

30:                                               ; preds = %18
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @monitor, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @monitorTrace(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %33, i32 %34, i32 %37)
  br label %39

39:                                               ; preds = %30, %21
  br label %40

40:                                               ; preds = %39, %9
  ret void
}

declare dso_local i32 @monitorError(i8*, i32, i32, i32) #1

declare dso_local i32 @monitorTrace(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
