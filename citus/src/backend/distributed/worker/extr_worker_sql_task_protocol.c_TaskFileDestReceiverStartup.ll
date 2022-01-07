; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_sql_task_protocol.c_TaskFileDestReceiverStartup.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/worker/extr_worker_sql_task_protocol.c_TaskFileDestReceiverStartup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__*, i32, i64, i32, i32 }
%struct.TYPE_6__ = type { i8*, i8*, i8*, i32, i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\\N\00", align 1
@O_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@PG_BINARY = common dso_local global i32 0, align 4
@S_IRUSR = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @TaskFileDestReceiverStartup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TaskFileDestReceiverStartup(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %4, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %7, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %8, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %10, align 8
  %16 = load i32, i32* @O_APPEND, align 4
  %17 = load i32, i32* @O_CREAT, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @O_TRUNC, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @PG_BINARY, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load i32, i32* @S_IWUSR, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %12, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MemoryContextSwitchTo(i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = call i64 @palloc0(i32 4)
  %36 = inttoptr i64 %35 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %36, %struct.TYPE_6__** %8, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 5
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  store i64 %48, i64* %50, align 8
  %51 = call i32 (...) @makeStringInfo()
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @GetPerTupleMemoryContext(i32 %56)
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 3
  store %struct.TYPE_6__* %60, %struct.TYPE_6__** %62, align 8
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @ColumnOutputFunctions(i32 %63, i64 %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 8
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @FileOpenForTransmit(i32 %72, i32 %73, i32 %74)
  %76 = call i32 @FileCompatFromFileStart(i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %95

83:                                               ; preds = %3
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @resetStringInfo(i32 %86)
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %89 = call i32 @AppendCopyBinaryHeaders(%struct.TYPE_6__* %88)
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %94 = call i32 @WriteToLocalFile(i32 %92, %struct.TYPE_5__* %93)
  br label %95

95:                                               ; preds = %83, %3
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @MemoryContextSwitchTo(i32 %96)
  ret void
}

declare dso_local i32 @MemoryContextSwitchTo(i32) #1

declare dso_local i64 @palloc0(i32) #1

declare dso_local i32 @makeStringInfo(...) #1

declare dso_local i32 @GetPerTupleMemoryContext(i32) #1

declare dso_local i32 @ColumnOutputFunctions(i32, i64) #1

declare dso_local i32 @FileCompatFromFileStart(i32) #1

declare dso_local i32 @FileOpenForTransmit(i32, i32, i32) #1

declare dso_local i32 @resetStringInfo(i32) #1

declare dso_local i32 @AppendCopyBinaryHeaders(%struct.TYPE_6__*) #1

declare dso_local i32 @WriteToLocalFile(i32, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
