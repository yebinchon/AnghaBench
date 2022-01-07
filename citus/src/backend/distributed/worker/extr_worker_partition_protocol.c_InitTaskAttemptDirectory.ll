; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_InitTaskAttemptDirectory.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_partition_protocol.c_InitTaskAttemptDirectory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"%s_%0*u\00", align 1
@MIN_TASK_FILENAME_WIDTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32)* @InitTaskAttemptDirectory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @InitTaskAttemptDirectory(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.TYPE_7__* @TaskDirectoryName(i32 %8, i32 %9)
  store %struct.TYPE_7__* %10, %struct.TYPE_7__** %5, align 8
  %11 = call i32 (...) @random()
  store i32 %11, i32* %6, align 4
  %12 = call %struct.TYPE_7__* (...) @makeStringInfo()
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %7, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MIN_TASK_FILENAME_WIDTH, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @appendStringInfo(%struct.TYPE_7__* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17, i32 %18)
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %21 = call i32 @CitusCreateDirectory(%struct.TYPE_7__* %20)
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  ret %struct.TYPE_7__* %22
}

declare dso_local %struct.TYPE_7__* @TaskDirectoryName(i32, i32) #1

declare dso_local i32 @random(...) #1

declare dso_local %struct.TYPE_7__* @makeStringInfo(...) #1

declare dso_local i32 @appendStringInfo(%struct.TYPE_7__*, i8*, i32, i32, i32) #1

declare dso_local i32 @CitusCreateDirectory(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
