; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_fixjobc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_fixjobc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64, %struct.session* }
%struct.session = type { i32 }
%struct.fixjob_iterargs = type { i32, %struct.session*, %struct.pgrp* }

@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@SESSION_NULL = common dso_local global %struct.session* null, align 8
@PROC_NULL = common dso_local global i64 0, align 8
@fixjob_callback = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fixjobc(i64 %0, %struct.pgrp* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.pgrp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pgrp*, align 8
  %8 = alloca %struct.session*, align 8
  %9 = alloca %struct.session*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fixjob_iterargs, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.pgrp* %1, %struct.pgrp** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  store %struct.pgrp* %13, %struct.pgrp** %7, align 8
  %14 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  store %struct.session* %14, %struct.session** %8, align 8
  %15 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %16 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %15, i32 0, i32 1
  %17 = load %struct.session*, %struct.session** %16, align 8
  store %struct.session* %17, %struct.session** %9, align 8
  %18 = load i64, i64* %4, align 8
  %19 = call i64 @proc_parent_is_currentproc(i64 %18)
  store i64 %19, i64* %12, align 8
  %20 = load i64, i64* %12, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = call i64 (...) @current_proc()
  store i64 %23, i64* %10, align 8
  br label %27

24:                                               ; preds = %3
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @proc_parent(i64 %25)
  store i64 %26, i64* %10, align 8
  br label %27

27:                                               ; preds = %24, %22
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @PROC_NULL, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load i64, i64* %10, align 8
  %33 = call %struct.pgrp* @proc_pgrp(i64 %32)
  store %struct.pgrp* %33, %struct.pgrp** %7, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call %struct.session* @proc_session(i64 %34)
  store %struct.session* %35, %struct.session** %8, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %31
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @proc_rele(i64 %39)
  br label %41

41:                                               ; preds = %38, %31
  br label %42

42:                                               ; preds = %41, %27
  %43 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %44 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %45 = icmp ne %struct.pgrp* %43, %44
  br i1 %45, label %46, label %78

46:                                               ; preds = %42
  %47 = load %struct.session*, %struct.session** %8, align 8
  %48 = load %struct.session*, %struct.session** %9, align 8
  %49 = icmp eq %struct.session* %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %52 = call i32 @pgrp_lock(%struct.pgrp* %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %50
  %56 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %57 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 1
  store i64 %59, i64* %57, align 8
  %60 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %61 = call i32 @pgrp_unlock(%struct.pgrp* %60)
  br label %77

62:                                               ; preds = %50
  %63 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %64 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %62
  %69 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %70 = call i32 @pgrp_unlock(%struct.pgrp* %69)
  %71 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %72 = call i32 @orphanpg(%struct.pgrp* %71)
  br label %76

73:                                               ; preds = %62
  %74 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %75 = call i32 @pgrp_unlock(%struct.pgrp* %74)
  br label %76

76:                                               ; preds = %73, %68
  br label %77

77:                                               ; preds = %76, %55
  br label %78

78:                                               ; preds = %77, %46, %42
  %79 = load %struct.session*, %struct.session** %8, align 8
  %80 = load %struct.session*, %struct.session** @SESSION_NULL, align 8
  %81 = icmp ne %struct.session* %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.session*, %struct.session** %8, align 8
  %84 = call i32 @session_rele(%struct.session* %83)
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %87 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %88 = icmp ne %struct.pgrp* %86, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = load %struct.pgrp*, %struct.pgrp** %7, align 8
  %91 = call i32 @pg_rele(%struct.pgrp* %90)
  br label %92

92:                                               ; preds = %89, %85
  %93 = load %struct.pgrp*, %struct.pgrp** %5, align 8
  %94 = getelementptr inbounds %struct.fixjob_iterargs, %struct.fixjob_iterargs* %11, i32 0, i32 2
  store %struct.pgrp* %93, %struct.pgrp** %94, align 8
  %95 = load %struct.session*, %struct.session** %9, align 8
  %96 = getelementptr inbounds %struct.fixjob_iterargs, %struct.fixjob_iterargs* %11, i32 0, i32 1
  store %struct.session* %95, %struct.session** %96, align 8
  %97 = load i32, i32* %6, align 4
  %98 = getelementptr inbounds %struct.fixjob_iterargs, %struct.fixjob_iterargs* %11, i32 0, i32 0
  store i32 %97, i32* %98, align 8
  %99 = load i64, i64* %4, align 8
  %100 = load i32, i32* @fixjob_callback, align 4
  %101 = call i32 @proc_childrenwalk(i64 %99, i32 %100, %struct.fixjob_iterargs* %11)
  ret void
}

declare dso_local i64 @proc_parent_is_currentproc(i64) #1

declare dso_local i64 @current_proc(...) #1

declare dso_local i64 @proc_parent(i64) #1

declare dso_local %struct.pgrp* @proc_pgrp(i64) #1

declare dso_local %struct.session* @proc_session(i64) #1

declare dso_local i32 @proc_rele(i64) #1

declare dso_local i32 @pgrp_lock(%struct.pgrp*) #1

declare dso_local i32 @pgrp_unlock(%struct.pgrp*) #1

declare dso_local i32 @orphanpg(%struct.pgrp*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @pg_rele(%struct.pgrp*) #1

declare dso_local i32 @proc_childrenwalk(i64, i32, %struct.fixjob_iterargs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
