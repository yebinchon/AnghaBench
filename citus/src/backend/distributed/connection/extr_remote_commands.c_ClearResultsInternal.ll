; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ClearResultsInternal.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_remote_commands.c_ClearResultsInternal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }

@PGRES_COPY_IN = common dso_local global i64 0, align 8
@WARNING = common dso_local global i32 0, align 4
@PGRES_FATAL_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32, i32)* @ClearResultsInternal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ClearResultsInternal(%struct.TYPE_6__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %9

9:                                                ; preds = %3, %50
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32* @GetRemoteCommandResult(%struct.TYPE_6__* %10, i32 %11)
  store i32* %12, i32** %8, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  br label %53

16:                                               ; preds = %9
  %17 = load i32*, i32** %8, align 8
  %18 = call i64 @PQresultStatus(i32* %17)
  %19 = load i64, i64* @PGRES_COPY_IN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @PQputCopyEnd(i32 %24, i32* null)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @IsResponseOK(i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %6, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @WARNING, align 4
  %37 = call i32 @ReportResultError(%struct.TYPE_6__* %34, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %33, %30
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @MarkRemoteTransactionFailed(%struct.TYPE_6__* %39, i32 %40)
  store i32 0, i32* %7, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @PQresultStatus(i32* %42)
  %44 = load i64, i64* @PGRES_FATAL_ERROR, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @PQclear(i32* %47)
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @PQclear(i32* %51)
  br label %9

53:                                               ; preds = %46, %15
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

declare dso_local i32* @GetRemoteCommandResult(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQputCopyEnd(i32, i32*) #1

declare dso_local i32 @IsResponseOK(i32*) #1

declare dso_local i32 @ReportResultError(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @MarkRemoteTransactionFailed(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
