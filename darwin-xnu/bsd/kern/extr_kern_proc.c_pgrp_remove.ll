; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_remove.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_proc.c_pgrp_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pgrp = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.proc = type { i32, i32*, i32 }

@PGRPID_DEAD = common dso_local global i32 0, align 4
@P_LIST_INPGRP = common dso_local global i32 0, align 4
@PGRP_NULL = common dso_local global %struct.pgrp* null, align 8
@.str = private unnamed_addr constant [24 x i8] c"pgrp_remove: pg is NULL\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"pgprp: -ve membercnt pgprp:%p p:%p\0A\00", align 1
@p_pglist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proc*)* @pgrp_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgrp_remove(%struct.proc* %0) #0 {
  %2 = alloca %struct.proc*, align 8
  %3 = alloca %struct.pgrp*, align 8
  store %struct.proc* %0, %struct.proc** %2, align 8
  %4 = load %struct.proc*, %struct.proc** %2, align 8
  %5 = call %struct.pgrp* @proc_pgrp(%struct.proc* %4)
  store %struct.pgrp* %5, %struct.pgrp** %3, align 8
  %6 = call i32 (...) @proc_list_lock()
  %7 = load i32, i32* @PGRPID_DEAD, align 4
  %8 = load %struct.proc*, %struct.proc** %2, align 8
  %9 = getelementptr inbounds %struct.proc, %struct.proc* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @P_LIST_INPGRP, align 4
  %11 = xor i32 %10, -1
  %12 = load %struct.proc*, %struct.proc** %2, align 8
  %13 = getelementptr inbounds %struct.proc, %struct.proc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.proc*, %struct.proc** %2, align 8
  %17 = getelementptr inbounds %struct.proc, %struct.proc* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = call i32 (...) @proc_list_unlock()
  %19 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %20 = load %struct.pgrp*, %struct.pgrp** @PGRP_NULL, align 8
  %21 = icmp eq %struct.pgrp* %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %1
  %25 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %26 = call i32 @pgrp_lock(%struct.pgrp* %25)
  %27 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %28 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %28, align 8
  %31 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %32 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %37 = load %struct.proc*, %struct.proc** %2, align 8
  %38 = call i32 (i8*, ...) @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), %struct.pgrp* %36, %struct.proc* %37)
  br label %39

39:                                               ; preds = %35, %24
  %40 = load %struct.proc*, %struct.proc** %2, align 8
  %41 = load i32, i32* @p_pglist, align 4
  %42 = call i32 @LIST_REMOVE(%struct.proc* %40, i32 %41)
  %43 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %44 = getelementptr inbounds %struct.pgrp, %struct.pgrp* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %50 = call i32 @pgrp_unlock(%struct.pgrp* %49)
  %51 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %52 = call i32 @pgdelete_dropref(%struct.pgrp* %51)
  br label %58

53:                                               ; preds = %39
  %54 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %55 = call i32 @pgrp_unlock(%struct.pgrp* %54)
  %56 = load %struct.pgrp*, %struct.pgrp** %3, align 8
  %57 = call i32 @pg_rele(%struct.pgrp* %56)
  br label %58

58:                                               ; preds = %53, %48
  ret void
}

declare dso_local %struct.pgrp* @proc_pgrp(%struct.proc*) #1

declare dso_local i32 @proc_list_lock(...) #1

declare dso_local i32 @proc_list_unlock(...) #1

declare dso_local i32 @panic(i8*, ...) #1

declare dso_local i32 @pgrp_lock(%struct.pgrp*) #1

declare dso_local i32 @LIST_REMOVE(%struct.proc*, i32) #1

declare dso_local i32 @pgrp_unlock(%struct.pgrp*) #1

declare dso_local i32 @pgdelete_dropref(%struct.pgrp*) #1

declare dso_local i32 @pg_rele(%struct.pgrp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
