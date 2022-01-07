; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_pgrp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_proc_pgrp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.pgrp*, i32 }
%struct.pgrp = type { i32, i32 }

@PROC_NULL = common dso_local global %struct.TYPE_4__* null, align 8
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@P_LIST_PGRPTRANS = common dso_local global i32 0, align 4
@P_LIST_PGRPTRWAIT = common dso_local global i32 0, align 4
@proc_list_mlock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"proc_pgrp\00", align 1
@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4
@PGRP_FLAG_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"proc_pgrp: ref being povided for dead pgrp\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.pgrp* @proc_pgrp(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.pgrp*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca %struct.pgrp*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @PROC_NULL, align 8
  %7 = icmp eq %struct.TYPE_4__* %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  store %struct.pgrp* %9, %struct.pgrp** %2, align 8
  br label %60

10:                                               ; preds = %1
  %11 = call i32 (...) @proc_list_lock()
  br label %12

12:                                               ; preds = %20, %10
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @P_LIST_PGRPTRANS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %30

20:                                               ; preds = %12
  %21 = load i32, i32* @P_LIST_PGRPTRWAIT, align 4
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = or i32 %24, %21
  store i32 %25, i32* %23, align 8
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* @proc_list_mlock, align 4
  %29 = call i32 @msleep(i32* %27, i32 %28, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %12

30:                                               ; preds = %12
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.pgrp*, %struct.pgrp** %32, align 8
  store %struct.pgrp* %33, %struct.pgrp** %4, align 8
  %34 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %35 = icmp ne %struct.pgrp* %34, null
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %39 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %40 = icmp ne %struct.pgrp* %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %30
  %42 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %43 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %47 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %50 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %41
  br label %57

57:                                               ; preds = %56, %30
  %58 = call i32 (...) @proc_list_unlock()
  %59 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  store %struct.pgrp* %59, %struct.pgrp** %2, align 8
  br label %60

60:                                               ; preds = %57, %8
  %61 = load %struct.pgrp*, %struct.pgrp** %2, align 8
  ret %struct.pgrp* %61
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @msleep(i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @proc_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
