; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebugProcGetCurrentTcpSendQueueLength.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiDebugProcGetCurrentTcpSendQueueLength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"CurrentTcpQueueSize  = %s\0AQueueBudgetConsuming = %s\0AFifoBudgetConsuming  = %s\0A\00", align 1
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SiDebugProcGetCurrentTcpSendQueueLength(%struct.TYPE_3__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  %11 = alloca [64 x i8], align 16
  %12 = alloca [64 x i8], align 16
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = icmp eq %struct.TYPE_3__* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %4
  %16 = load i8*, i8** %7, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %15, %4
  %22 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %18
  %24 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @CedarGetCurrentTcpQueueSize(i32 %27)
  %29 = call i32 @ToStr3(i8* %24, i32 0, i32 %28)
  %30 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @CedarGetQueueBudgetConsuming(i32 %33)
  %35 = call i32 @ToStr3(i8* %30, i32 0, i32 %34)
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @CedarGetFifoBudgetConsuming(i32 %39)
  %41 = call i32 @ToStr3(i8* %36, i32 0, i32 %40)
  %42 = load i8*, i8** %8, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %44 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %45 = getelementptr inbounds [64 x i8], [64 x i8]* %12, i64 0, i64 0
  %46 = call i32 @Format(i8* %42, i32 0, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %43, i8* %44, i8* %45)
  %47 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %23, %21
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @ToStr3(i8*, i32, i32) #1

declare dso_local i32 @CedarGetCurrentTcpQueueSize(i32) #1

declare dso_local i32 @CedarGetQueueBudgetConsuming(i32) #1

declare dso_local i32 @CedarGetFifoBudgetConsuming(i32) #1

declare dso_local i32 @Format(i8*, i32, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
