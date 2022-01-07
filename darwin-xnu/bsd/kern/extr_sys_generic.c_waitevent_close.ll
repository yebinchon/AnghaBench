; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_waitevent_close.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_waitevent_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.fileproc = type { i64, i64, i32 }
%struct.eventqelt = type { %struct.proc*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.eventqelt* }
%struct.pipe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.eventqelt* }

@FP_WAITEVENT = common dso_local global i32 0, align 4
@DTYPE_PIPE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ee_slist = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @waitevent_close(%struct.proc* %0, %struct.fileproc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.proc*, align 8
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca %struct.eventqelt*, align 8
  store %struct.proc* %0, %struct.proc** %4, align 8
  store %struct.fileproc* %1, %struct.fileproc** %5, align 8
  %7 = load i32, i32* @FP_WAITEVENT, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %10 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %14 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DTYPE_PIPE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %20 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.pipe*
  %23 = call i32 @PIPE_LOCK(%struct.pipe* %22)
  %24 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %25 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.pipe*
  %28 = getelementptr inbounds %struct.pipe, %struct.pipe* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load %struct.eventqelt*, %struct.eventqelt** %29, align 8
  store %struct.eventqelt* %30, %struct.eventqelt** %6, align 8
  br label %33

31:                                               ; preds = %2
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %18
  %34 = load %struct.proc*, %struct.proc** %4, align 8
  %35 = call i32 @proc_fdunlock(%struct.proc* %34)
  br label %36

36:                                               ; preds = %47, %33
  %37 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %38 = icmp ne %struct.eventqelt* %37, null
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %41 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %40, i32 0, i32 0
  %42 = load %struct.proc*, %struct.proc** %41, align 8
  %43 = load %struct.proc*, %struct.proc** %4, align 8
  %44 = icmp eq %struct.proc* %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %52

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46
  %48 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %49 = getelementptr inbounds %struct.eventqelt, %struct.eventqelt* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.eventqelt*, %struct.eventqelt** %50, align 8
  store %struct.eventqelt* %51, %struct.eventqelt** %6, align 8
  br label %36

52:                                               ; preds = %45, %36
  %53 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %54 = icmp eq %struct.eventqelt* %53, null
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %57 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = inttoptr i64 %58 to %struct.pipe*
  %60 = call i32 @PIPE_UNLOCK(%struct.pipe* %59)
  %61 = load %struct.proc*, %struct.proc** %4, align 8
  %62 = call i32 @proc_fdlock(%struct.proc* %61)
  %63 = load i32, i32* @EINVAL, align 4
  store i32 %63, i32* %3, align 4
  br label %86

64:                                               ; preds = %52
  %65 = load %struct.proc*, %struct.proc** %4, align 8
  %66 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %67 = call i32 @EVPROCDEQUE(%struct.proc* %65, %struct.eventqelt* %66)
  %68 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %69 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.pipe*
  %72 = getelementptr inbounds %struct.pipe, %struct.pipe* %71, i32 0, i32 0
  %73 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %74 = load i32, i32* @ee_slist, align 4
  %75 = call i32 @TAILQ_REMOVE(%struct.TYPE_4__* %72, %struct.eventqelt* %73, i32 %74)
  %76 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %77 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to %struct.pipe*
  %80 = call i32 @PIPE_UNLOCK(%struct.pipe* %79)
  %81 = load %struct.eventqelt*, %struct.eventqelt** %6, align 8
  %82 = load i32, i32* @M_TEMP, align 4
  %83 = call i32 @FREE(%struct.eventqelt* %81, i32 %82)
  %84 = load %struct.proc*, %struct.proc** %4, align 8
  %85 = call i32 @proc_fdlock(%struct.proc* %84)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %64, %55, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @EVPROCDEQUE(%struct.proc*, %struct.eventqelt*) #1

declare dso_local i32 @TAILQ_REMOVE(%struct.TYPE_4__*, %struct.eventqelt*, i32) #1

declare dso_local i32 @FREE(%struct.eventqelt*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
