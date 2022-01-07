; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_current_proc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_bsd_stubs.c_current_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i8* }
%struct.uthread = type { i32, %struct.proc* }

@UT_VFORK = common dso_local global i32 0, align 4
@P_LINVFORK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"returning child proc not under vfork\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"returning child proc which is not cur_act\00", align 1
@kernproc = common dso_local global %struct.proc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.proc* @current_proc() #0 {
  %1 = alloca %struct.proc*, align 8
  %2 = alloca %struct.uthread*, align 8
  %3 = alloca %struct.proc*, align 8
  %4 = alloca i64, align 8
  %5 = call i64 (...) @current_thread()
  store i64 %5, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i64 @get_bsdthread_info(i64 %6)
  %8 = inttoptr i64 %7 to %struct.uthread*
  store %struct.uthread* %8, %struct.uthread** %2, align 8
  %9 = load %struct.uthread*, %struct.uthread** %2, align 8
  %10 = icmp ne %struct.uthread* %9, null
  br i1 %10, label %11, label %46

11:                                               ; preds = %0
  %12 = load %struct.uthread*, %struct.uthread** %2, align 8
  %13 = getelementptr inbounds %struct.uthread, %struct.uthread* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @UT_VFORK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %11
  %19 = load %struct.uthread*, %struct.uthread** %2, align 8
  %20 = getelementptr inbounds %struct.uthread, %struct.uthread* %19, i32 0, i32 1
  %21 = load %struct.proc*, %struct.proc** %20, align 8
  %22 = icmp ne %struct.proc* %21, null
  br i1 %22, label %23, label %46

23:                                               ; preds = %18
  %24 = load %struct.uthread*, %struct.uthread** %2, align 8
  %25 = getelementptr inbounds %struct.uthread, %struct.uthread* %24, i32 0, i32 1
  %26 = load %struct.proc*, %struct.proc** %25, align 8
  store %struct.proc* %26, %struct.proc** %3, align 8
  %27 = load %struct.proc*, %struct.proc** %3, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @P_LINVFORK, align 4
  %31 = and i32 %29, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %23
  %34 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %23
  %36 = load %struct.proc*, %struct.proc** %3, align 8
  %37 = getelementptr inbounds %struct.proc, %struct.proc* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = inttoptr i64 %39 to i8*
  %41 = icmp ne i8* %38, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %35
  %45 = load %struct.proc*, %struct.proc** %3, align 8
  store %struct.proc* %45, %struct.proc** %1, align 8
  br label %56

46:                                               ; preds = %18, %11, %0
  %47 = call i32 (...) @current_task()
  %48 = call i64 @get_bsdtask_info(i32 %47)
  %49 = inttoptr i64 %48 to %struct.proc*
  store %struct.proc* %49, %struct.proc** %3, align 8
  %50 = load %struct.proc*, %struct.proc** %3, align 8
  %51 = icmp eq %struct.proc* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load %struct.proc*, %struct.proc** @kernproc, align 8
  store %struct.proc* %53, %struct.proc** %1, align 8
  br label %56

54:                                               ; preds = %46
  %55 = load %struct.proc*, %struct.proc** %3, align 8
  store %struct.proc* %55, %struct.proc** %1, align 8
  br label %56

56:                                               ; preds = %54, %52, %44
  %57 = load %struct.proc*, %struct.proc** %1, align 8
  ret %struct.proc* %57
}

declare dso_local i64 @current_thread(...) #1

declare dso_local i64 @get_bsdthread_info(i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @get_bsdtask_info(i32) #1

declare dso_local i32 @current_task(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
