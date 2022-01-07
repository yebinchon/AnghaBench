; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_StartPlacementStateCopyCommand.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/commands/extr_multi_copy.c_StartPlacementStateCopyCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_10__*, %struct.TYPE_11__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@ERROR = common dso_local global i32 0, align 4
@PGRES_COPY_IN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*, i32*, %struct.TYPE_14__*)* @StartPlacementStateCopyCommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StartPlacementStateCopyCommand(%struct.TYPE_13__* %0, i32* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %7, align 8
  store i32* null, i32** %8, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %10, align 4
  store i32 1, i32* %11, align 4
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_12__* @ConstructCopyStatement(i32* %26, i32 %27, i32 %28)
  store %struct.TYPE_12__* %29, %struct.TYPE_12__** %7, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @SendRemoteCommand(i32* %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %3
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @ReportConnectionError(i32* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32* @GetRemoteCommandResult(i32* %41, i32 %42)
  store i32* %43, i32** %8, align 8
  %44 = load i32*, i32** %8, align 8
  %45 = call i64 @PQresultStatus(i32* %44)
  %46 = load i64, i64* @PGRES_COPY_IN, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32*, i32** %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = load i32, i32* @ERROR, align 4
  %52 = call i32 @ReportResultError(i32* %49, i32* %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %40
  %54 = load i32*, i32** %8, align 8
  %55 = call i32 @PQclear(i32* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @list_make1(i32* %61)
  %63 = call i32 @SendCopyBinaryHeaders(%struct.TYPE_14__* %59, i32 %60, i32 %62)
  br label %64

64:                                               ; preds = %58, %53
  ret void
}

declare dso_local %struct.TYPE_12__* @ConstructCopyStatement(i32*, i32, i32) #1

declare dso_local i32 @SendRemoteCommand(i32*, i32) #1

declare dso_local i32 @ReportConnectionError(i32*, i32) #1

declare dso_local i32* @GetRemoteCommandResult(i32*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @ReportResultError(i32*, i32*, i32) #1

declare dso_local i32 @PQclear(i32*) #1

declare dso_local i32 @SendCopyBinaryHeaders(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @list_make1(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
