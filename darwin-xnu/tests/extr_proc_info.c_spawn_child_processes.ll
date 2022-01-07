; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_proc_info.c_spawn_child_processes.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_proc_info.c_spawn_child_processes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32*, i32**, i32*, i64, i32 }

@.str = private unnamed_addr constant [28 x i8] c"Spawning child processes...\00", align 1
@T_QUIET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"pipe() call\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_ANON = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cow_map mmap()\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"fork() in parent process for child %d\00", align 1
@PIPE_IN = common dso_local global i64 0, align 8
@PIPE_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32 (%struct.TYPE_6__*, i32)*)* @spawn_child_processes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @spawn_child_processes(i32 %0, i32 (%struct.TYPE_6__*, i32)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32 (%struct.TYPE_6__*, i32)*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 (%struct.TYPE_6__*, i32)* %1, i32 (%struct.TYPE_6__*, i32)** %4, align 8
  %11 = call i32 @T_LOG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %12 = call %struct.TYPE_6__* @malloc(i32 48)
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = call i32 @setpgid(i32 0, i32 0)
  %14 = call i32 @getpgid(i32 0)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 5
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @pipe(i32* %22)
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* @T_QUIET, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @PAGE_SIZE, align 4
  %28 = load i32, i32* @PROT_WRITE, align 4
  %29 = load i32, i32* @MAP_ANON, align 4
  %30 = load i32, i32* @MAP_PRIVATE, align 4
  %31 = or i32 %29, %30
  %32 = call i64 @mmap(i32 0, i32 %27, i32 %28, i32 %31, i32 -1, i32 0)
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  store i64 %32, i64* %34, align 8
  %35 = load i32, i32* @T_QUIET, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* @MAP_FAILED, align 4
  %40 = call i32 @T_ASSERT_NE_PTR(i64 %38, i32 %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = inttoptr i64 %43 to i32*
  store i32 10, i32* %44, align 4
  store i32 0, i32* %9, align 4
  br label %45

45:                                               ; preds = %94, %2
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %97

49:                                               ; preds = %45
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32**, i32*** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @pipe(i32* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* @T_QUIET, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %59, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %61 = call i32 (...) @fork()
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* @T_QUIET, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %10, align 4
  %66 = call i32 (i32, i8*, ...) @T_ASSERT_POSIX_SUCCESS(i32 %64, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %8, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %49
  %70 = load i32 (%struct.TYPE_6__*, i32)*, i32 (%struct.TYPE_6__*, i32)** %4, align 8
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = load i32, i32* %10, align 4
  %73 = call i32 %70(%struct.TYPE_6__* %71, i32 %72)
  br label %82

74:                                               ; preds = %49
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %10, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %74, %69
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 2
  %85 = load i32**, i32*** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32*, i32** %85, i64 %87
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* @PIPE_IN, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @close(i32 %92)
  br label %94

94:                                               ; preds = %82
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %9, align 4
  br label %45

97:                                               ; preds = %45
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = load i64, i64* @PIPE_OUT, align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @close(i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @PIPE_IN, align 8
  %109 = getelementptr inbounds i32, i32* %107, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @WAIT_FOR_CHILDREN(i32 %110, i32 %111, i32 %112)
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %114
}

declare dso_local i32 @T_LOG(i8*) #1

declare dso_local %struct.TYPE_6__* @malloc(i32) #1

declare dso_local i32 @setpgid(i32, i32) #1

declare dso_local i32 @getpgid(i32) #1

declare dso_local i32 @pipe(i32*) #1

declare dso_local i32 @T_ASSERT_POSIX_SUCCESS(i32, i8*, ...) #1

declare dso_local i64 @mmap(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @T_ASSERT_NE_PTR(i64, i32, i8*) #1

declare dso_local i32 @fork(...) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @WAIT_FOR_CHILDREN(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
