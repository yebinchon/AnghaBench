; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_garbage_collect.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_pipe.c_pipe_garbage_collect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_garbage = type { i32, %struct.pipe_garbage*, %struct.pipe_garbage*, i32 }
%struct.pipe = type { i32, %struct.pipe*, %struct.pipe*, i32 }

@pipe_garbage_age_limit = common dso_local global i32 0, align 4
@pipe_garbage_lock = common dso_local global i32 0, align 4
@pipe_garbage_head = common dso_local global %struct.pipe_garbage* null, align 8
@pipe_garbage_tail = common dso_local global %struct.pipe_garbage* null, align 8
@pipe_garbage_count = common dso_local global i32 0, align 4
@pipe_zone = common dso_local global i32 0, align 4
@pipe_garbage_zone = common dso_local global i32 0, align 4
@PIPE_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Leaking pipe %p - no room left in the queue\00", align 1
@PIPE_GARBAGE_QUEUE_LIMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"Length of pipe garbage queue exceeded %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pipe*)* @pipe_garbage_collect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pipe_garbage_collect(%struct.pipe* %0) #0 {
  %2 = alloca %struct.pipe*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pipe_garbage*, align 8
  store %struct.pipe* %0, %struct.pipe** %2, align 8
  %6 = load i32, i32* @pipe_garbage_age_limit, align 4
  %7 = mul nsw i32 %6, 1000000
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @nanoseconds_to_absolutetime(i32 %8, i32* %3)
  %10 = load i32, i32* @pipe_garbage_lock, align 4
  %11 = call i32 @lck_mtx_lock(i32 %10)
  %12 = call i32 (...) @mach_absolute_time()
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sub nsw i32 %13, %14
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %34, %1
  %17 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_head, align 8
  store %struct.pipe_garbage* %17, %struct.pipe_garbage** %5, align 8
  %18 = icmp ne %struct.pipe_garbage* %17, null
  br i1 %18, label %19, label %25

19:                                               ; preds = %16
  %20 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %21 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = icmp slt i32 %22, %23
  br label %25

25:                                               ; preds = %19, %16
  %26 = phi i1 [ false, %16 ], [ %24, %19 ]
  br i1 %26, label %27, label %45

27:                                               ; preds = %25
  %28 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %29 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %28, i32 0, i32 1
  %30 = load %struct.pipe_garbage*, %struct.pipe_garbage** %29, align 8
  store %struct.pipe_garbage* %30, %struct.pipe_garbage** @pipe_garbage_head, align 8
  %31 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_head, align 8
  %32 = icmp eq %struct.pipe_garbage* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store %struct.pipe_garbage* null, %struct.pipe_garbage** @pipe_garbage_tail, align 8
  br label %34

34:                                               ; preds = %33, %27
  %35 = load i32, i32* @pipe_garbage_count, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* @pipe_garbage_count, align 4
  %37 = load i32, i32* @pipe_zone, align 4
  %38 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %39 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %38, i32 0, i32 2
  %40 = load %struct.pipe_garbage*, %struct.pipe_garbage** %39, align 8
  %41 = call i32 @zfree(i32 %37, %struct.pipe_garbage* %40)
  %42 = load i32, i32* @pipe_garbage_zone, align 4
  %43 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %44 = call i32 @zfree(i32 %42, %struct.pipe_garbage* %43)
  br label %16

45:                                               ; preds = %25
  %46 = load %struct.pipe*, %struct.pipe** %2, align 8
  %47 = icmp ne %struct.pipe* %46, null
  br i1 %47, label %48, label %95

48:                                               ; preds = %45
  %49 = load i32, i32* @PIPE_DEAD, align 4
  %50 = load %struct.pipe*, %struct.pipe** %2, align 8
  %51 = getelementptr inbounds %struct.pipe, %struct.pipe* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @pipe_garbage_zone, align 4
  %53 = call i64 @zalloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.pipe_garbage*
  store %struct.pipe_garbage* %54, %struct.pipe_garbage** %5, align 8
  %55 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %56 = icmp eq %struct.pipe_garbage* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %48
  %58 = load %struct.pipe*, %struct.pipe** %2, align 8
  %59 = bitcast %struct.pipe* %58 to %struct.pipe_garbage*
  %60 = call i32 @printf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), %struct.pipe_garbage* %59)
  %61 = load i32, i32* @pipe_garbage_lock, align 4
  %62 = call i32 @lck_mtx_unlock(i32 %61)
  br label %98

63:                                               ; preds = %48
  %64 = load %struct.pipe*, %struct.pipe** %2, align 8
  %65 = bitcast %struct.pipe* %64 to %struct.pipe_garbage*
  %66 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %67 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %66, i32 0, i32 2
  store %struct.pipe_garbage* %65, %struct.pipe_garbage** %67, align 8
  %68 = load i32, i32* %4, align 4
  %69 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %70 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %72 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %71, i32 0, i32 1
  store %struct.pipe_garbage* null, %struct.pipe_garbage** %72, align 8
  %73 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_tail, align 8
  %74 = icmp ne %struct.pipe_garbage* %73, null
  br i1 %74, label %75, label %79

75:                                               ; preds = %63
  %76 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  %77 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_tail, align 8
  %78 = getelementptr inbounds %struct.pipe_garbage, %struct.pipe_garbage* %77, i32 0, i32 1
  store %struct.pipe_garbage* %76, %struct.pipe_garbage** %78, align 8
  br label %79

79:                                               ; preds = %75, %63
  %80 = load %struct.pipe_garbage*, %struct.pipe_garbage** %5, align 8
  store %struct.pipe_garbage* %80, %struct.pipe_garbage** @pipe_garbage_tail, align 8
  %81 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_head, align 8
  %82 = icmp eq %struct.pipe_garbage* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load %struct.pipe_garbage*, %struct.pipe_garbage** @pipe_garbage_tail, align 8
  store %struct.pipe_garbage* %84, %struct.pipe_garbage** @pipe_garbage_head, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* @pipe_garbage_count, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* @pipe_garbage_count, align 4
  %88 = sext i32 %86 to i64
  %89 = load i64, i64* @PIPE_GARBAGE_QUEUE_LIMIT, align 8
  %90 = icmp sge i64 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load i64, i64* @PIPE_GARBAGE_QUEUE_LIMIT, align 8
  %93 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i64 %92)
  br label %94

94:                                               ; preds = %91, %85
  br label %95

95:                                               ; preds = %94, %45
  %96 = load i32, i32* @pipe_garbage_lock, align 4
  %97 = call i32 @lck_mtx_unlock(i32 %96)
  br label %98

98:                                               ; preds = %95, %57
  ret void
}

declare dso_local i32 @nanoseconds_to_absolutetime(i32, i32*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @mach_absolute_time(...) #1

declare dso_local i32 @zfree(i32, %struct.pipe_garbage*) #1

declare dso_local i64 @zalloc(i32) #1

declare dso_local i32 @printf(i8*, %struct.pipe_garbage*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @panic(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
