; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_start.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_cpu.c_cpu_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__*, %struct.TYPE_9__*, %struct.TYPE_8__, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__* }
%struct.TYPE_8__ = type { i32* }

@CpuDataEntries = common dso_local global %struct.TYPE_13__* null, align 8
@.str = private unnamed_addr constant [21 x i8] c"cpu_start() cpu: %d\0A\00", align 1
@start_cpu_paddr = common dso_local global i64 0, align 8
@THREAD_NULL = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_start(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CpuDataEntries, align 8
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i64 %7
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  store %struct.TYPE_12__* %10, %struct.TYPE_12__** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load i32, i32* %2, align 4
  %14 = call i32 (...) @cpu_number()
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 (...) @cpu_machine_init()
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %19 = call i32 @configure_coresight_registers(%struct.TYPE_12__* %18)
  br label %72

20:                                               ; preds = %1
  %21 = load i64, i64* @start_cpu_paddr, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 4
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @THREAD_NULL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %20
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 2
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %40, %struct.TYPE_11__** %4, align 8
  br label %47

41:                                               ; preds = %20
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  store %struct.TYPE_11__* %46, %struct.TYPE_11__** %4, align 8
  br label %47

47:                                               ; preds = %41, %34
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 1
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %50, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %54, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = call i32 @configure_coresight_registers(%struct.TYPE_12__* %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** @CpuDataEntries, align 8
  %58 = load i32, i32* %2, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i64 %59
  %61 = ptrtoint %struct.TYPE_13__* %60 to i64
  %62 = load i32, i32* @FALSE, align 4
  %63 = call i32 @flush_dcache(i64 %61, i32 4, i32 %62)
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %65 = ptrtoint %struct.TYPE_12__* %64 to i64
  %66 = load i32, i32* @FALSE, align 4
  %67 = call i32 @flush_dcache(i64 %65, i32 40, i32 %66)
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @PE_cpu_start(i32 %70, i64 0, i64 0)
  br label %72

72:                                               ; preds = %47, %16
  %73 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %73
}

declare dso_local i32 @kprintf(i8*, i32) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @cpu_machine_init(...) #1

declare dso_local i32 @configure_coresight_registers(%struct.TYPE_12__*) #1

declare dso_local i32 @flush_dcache(i64, i32, i32) #1

declare dso_local i32 @PE_cpu_start(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
