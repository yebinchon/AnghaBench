; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, %struct.pgrp* }
%struct.pgrp = type { i32, i64, i32, i32 }

@P_LIST_INPGRP = common dso_local global i32 0, align 4
@PGRP_FLAG_TERMINATE = common dso_local global i32 0, align 4
@PGRP_FLAG_DEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"pgrp_add : pgrp is dead adding process\00", align 1
@PROC_NULL = common dso_local global %struct.proc* null, align 8
@p_pglist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pgrp*, %struct.proc*, %struct.proc*)* @pgrp_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgrp_add(%struct.pgrp* %0, %struct.proc* %1, %struct.proc* %2) #0 {
  %4 = alloca %struct.pgrp*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.proc*, align 8
  store %struct.pgrp* %0, %struct.pgrp** %4, align 8
  store %struct.proc* %1, %struct.proc** %5, align 8
  store %struct.proc* %2, %struct.proc** %6, align 8
  %7 = call i32 (...) @proc_list_lock()
  %8 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %9 = load %struct.proc*, %struct.proc** %6, align 8
  %10 = getelementptr inbounds %struct.proc, %struct.proc* %9, i32 0, i32 2
  store %struct.pgrp* %8, %struct.pgrp** %10, align 8
  %11 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %12 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.proc*, %struct.proc** %6, align 8
  %15 = getelementptr inbounds %struct.proc, %struct.proc* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @P_LIST_INPGRP, align 4
  %17 = load %struct.proc*, %struct.proc** %6, align 8
  %18 = getelementptr inbounds %struct.proc, %struct.proc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %22 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %25 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %3
  %31 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %34 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %3
  %38 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %39 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %42 = and i32 %40, %41
  %43 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %37
  %46 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %37
  %48 = call i32 (...) @proc_list_unlock()
  %49 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %50 = call i32 @pgrp_lock(%struct.pgrp* %49)
  %51 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %52 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %52, align 8
  %55 = load %struct.proc*, %struct.proc** %5, align 8
  %56 = load %struct.proc*, %struct.proc** @PROC_NULL, align 8
  %57 = icmp ne %struct.proc* %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %47
  %59 = load %struct.proc*, %struct.proc** %5, align 8
  %60 = load %struct.proc*, %struct.proc** %6, align 8
  %61 = load i32, i32* @p_pglist, align 4
  %62 = call i32 @LIST_INSERT_AFTER(%struct.proc* %59, %struct.proc* %60, i32 %61)
  br label %69

63:                                               ; preds = %47
  %64 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %65 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %64, i32 0, i32 2
  %66 = load %struct.proc*, %struct.proc** %6, align 8
  %67 = load i32, i32* @p_pglist, align 4
  %68 = call i32 @LIST_INSERT_HEAD(i32* %65, %struct.proc* %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %58
  %70 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %71 = call i32 @pgrp_unlock(%struct.pgrp* %70)
  %72 = call i32 (...) @proc_list_lock()
  %73 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %74 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %77 = load i32, i32* @PGRP_FLAG_DEAD, align 4
  %78 = or i32 %76, %77
  %79 = and i32 %75, %78
  %80 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %94

82:                                               ; preds = %69
  %83 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %84 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load i32, i32* @PGRP_FLAG_TERMINATE, align 4
  %89 = xor i32 %88, -1
  %90 = load %struct.pgrp*, %struct.pgrp** %4, align 8
  %91 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, %89
  store i32 %93, i32* %91, align 8
  br label %94

94:                                               ; preds = %87, %82, %69
  %95 = call i32 (...) @proc_list_unlock()
  ret void
}

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @pgrp_lock(%struct.pgrp*) #1

declare dso_local i32 @LIST_INSERT_AFTER(%struct.proc*, %struct.proc*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.proc*, i32) #1

declare dso_local i32 @pgrp_unlock(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
