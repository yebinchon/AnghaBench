; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_session.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.session* }

@SESSION_NULL = common dso_local global %struct.session* null, align 8
@PROC_NULL = common dso_local global %struct.TYPE_5__* null, align 8
@P_LIST_PGRPTRANS = common dso_local global i32 0, align 4
@P_LIST_PGRPTRWAIT = common dso_local global i32 0, align 4
@proc_list_mlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"proc_pgrp\00", align 1
@PGRP_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@S_LIST_TERM = common dso_local global i32 0, align 4
@S_LIST_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"proc_session:returning sesssion ref on terminating session\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.session* @proc_session(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.session*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca %struct.session*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %5 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  store %struct.session* %5, %struct.session** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** @PROC_NULL, align 8
  %8 = icmp eq %struct.TYPE_5__* %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  store %struct.session* %10, %struct.session** %2, align 8
  br label %64

11:                                               ; preds = %1
  %12 = call i32 (...) @proc_list_lock()
  br label %13

13:                                               ; preds = %21, %11
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %31

21:                                               ; preds = %13
  %22 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* @proc_list_mlock, align 4
  %30 = call i32 @msleep(i32* %28, i32 %29, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %13

31:                                               ; preds = %13
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** @PGRP_NULL, align 8
  %36 = icmp ne %struct.TYPE_6__* %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load %struct.session*, %struct.session** %41, align 8
  store %struct.session* %42, %struct.session** %4, align 8
  %43 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %44 = icmp ne %struct.session* %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %37
  %46 = load %struct.session*, %struct.session** %4, align 8
  %47 = getelementptr inbounds %struct.session, %struct.session* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @S_LIST_TERM, align 4
  %50 = load i32, i32* @S_LIST_DEAD, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @panic(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  %57 = load %struct.session*, %struct.session** %4, align 8
  %58 = getelementptr inbounds %struct.session, %struct.session* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %37, %31
  %62 = call i32 (...) @proc_list_unlock()
  %63 = load %struct.session*, %struct.session** %4, align 8
  store %struct.session* %63, %struct.session** %2, align 8
  br label %64

64:                                               ; preds = %61, %9
  %65 = load %struct.session*, %struct.session** %2, align 8
  ret %struct.session* %65
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
