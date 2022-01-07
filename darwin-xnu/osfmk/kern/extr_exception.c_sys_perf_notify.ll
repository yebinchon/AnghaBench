; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_sys_perf_notify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_exception.c_sys_perf_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.task* }
%struct.task = type { i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@EXCEPTION_CODE_MAX = common dso_local global i32 0, align 4
@EXC_RPC_ALERT = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sys_perf_notify(%struct.TYPE_12__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.task*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = call %struct.TYPE_14__* (...) @host_priv_self()
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %6, align 8
  %15 = load i32, i32* @EXCEPTION_CODE_MAX, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 -16777215, i32* %19, align 16
  %20 = load i32, i32* %5, align 4
  %21 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %20, i32* %21, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.task*, %struct.task** %23, align 8
  store %struct.task* %24, %struct.task** %12, align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = load i64, i64* @EXC_RPC_ALERT, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %30, align 8
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %7, align 8
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %33 = call i32 @IP_VALID(%struct.TYPE_13__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %2
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = call i32 @ip_active(%struct.TYPE_13__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %35
  %40 = load %struct.task*, %struct.task** %12, align 8
  %41 = getelementptr inbounds %struct.task, %struct.task* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %42, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %39, %35, %2
  %49 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %49, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %64

50:                                               ; preds = %39
  %51 = load i32, i32* @THREAD_UNINT, align 4
  %52 = call i32 @thread_interrupt_level(i32 %51)
  store i32 %52, i32* %8, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %54 = load i64, i64* @EXC_RPC_ALERT, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  %60 = call i32 @exception_deliver(%struct.TYPE_12__* %53, i64 %54, i32* %18, i32 2, %struct.TYPE_15__* %57, i32* %59)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @thread_interrupt_level(i32 %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %64

64:                                               ; preds = %50, %48
  %65 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %65)
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.TYPE_14__* @host_priv_self(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @IP_VALID(%struct.TYPE_13__*) #1

declare dso_local i32 @ip_active(%struct.TYPE_13__*) #1

declare dso_local i32 @thread_interrupt_level(i32) #1

declare dso_local i32 @exception_deliver(%struct.TYPE_12__*, i64, i32*, i32, %struct.TYPE_15__*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
