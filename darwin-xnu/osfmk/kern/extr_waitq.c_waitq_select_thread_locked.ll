; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_thread_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_thread_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64, i64 }
%struct.TYPE_7__ = type { i64, %struct.waitq* }
%struct.waitq_link = type { i32 }
%struct.select_thread_ctx = type { i32*, i64, %struct.TYPE_7__* }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_NOT_WAITING = common dso_local global i64 0, align 8
@LINK_WALK_FULL_DAG = common dso_local global i32 0, align 4
@WQL_WQS = common dso_local global i32 0, align 4
@waitq_select_thread_cb = common dso_local global i32 0, align 4
@WQ_ITERATE_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.waitq*, i64, %struct.TYPE_7__*, i32*)* @waitq_select_thread_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @waitq_select_thread_locked(%struct.waitq* %0, i64 %1, %struct.TYPE_7__* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.waitq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.waitq*, align 8
  %11 = alloca %struct.waitq_link*, align 8
  %12 = alloca %struct.select_thread_ctx, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.waitq* %0, %struct.waitq** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = call i32 (...) @splsched()
  store i32 %15, i32* %14, align 4
  %16 = load %struct.waitq*, %struct.waitq** %6, align 8
  %17 = call i32 @waitq_irq_safe(%struct.waitq* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.waitq*, %struct.waitq** %6, align 8
  %21 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %20)
  store %struct.waitq* %21, %struct.waitq** %10, align 8
  %22 = load %struct.waitq*, %struct.waitq** %10, align 8
  %23 = call i32 @waitq_lock(%struct.waitq* %22)
  br label %26

24:                                               ; preds = %4
  %25 = load %struct.waitq*, %struct.waitq** %6, align 8
  store %struct.waitq* %25, %struct.waitq** %10, align 8
  br label %26

26:                                               ; preds = %24, %19
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %28 = call i32 @thread_lock(%struct.TYPE_7__* %27)
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load %struct.waitq*, %struct.waitq** %30, align 8
  %32 = load %struct.waitq*, %struct.waitq** %6, align 8
  %33 = icmp eq %struct.waitq* %31, %32
  br i1 %33, label %34, label %56

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %34
  %41 = load %struct.waitq*, %struct.waitq** %10, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = call i32 @waitq_thread_remove(%struct.waitq* %41, %struct.TYPE_7__* %42)
  %44 = load %struct.waitq*, %struct.waitq** %10, align 8
  %45 = call i64 @waitq_empty(%struct.waitq* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load %struct.waitq*, %struct.waitq** %10, align 8
  %49 = getelementptr inbounds %struct.waitq, %struct.waitq* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  br label %50

50:                                               ; preds = %47, %40
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %52 = call i32 @thread_clear_waitq_state(%struct.TYPE_7__* %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %9, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %55, i64* %5, align 8
  br label %110

56:                                               ; preds = %34, %26
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = call i32 @thread_unlock(%struct.TYPE_7__* %57)
  %59 = load %struct.waitq*, %struct.waitq** %10, align 8
  %60 = load %struct.waitq*, %struct.waitq** %6, align 8
  %61 = icmp ne %struct.waitq* %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %56
  %63 = load %struct.waitq*, %struct.waitq** %10, align 8
  %64 = call i32 @waitq_unlock(%struct.waitq* %63)
  br label %65

65:                                               ; preds = %62, %56
  %66 = load i32, i32* %14, align 4
  %67 = call i32 @splx(i32 %66)
  %68 = load %struct.waitq*, %struct.waitq** %6, align 8
  %69 = getelementptr inbounds %struct.waitq, %struct.waitq* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %65
  %73 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %73, i64* %5, align 8
  br label %110

74:                                               ; preds = %65
  %75 = load %struct.waitq*, %struct.waitq** %6, align 8
  %76 = getelementptr inbounds %struct.waitq, %struct.waitq* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = call %struct.waitq_link* @wql_get_link(i64 %77)
  store %struct.waitq_link* %78, %struct.waitq_link** %11, align 8
  %79 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %80 = icmp ne %struct.waitq_link* %79, null
  br i1 %80, label %85, label %81

81:                                               ; preds = %74
  %82 = load %struct.waitq*, %struct.waitq** %6, align 8
  %83 = getelementptr inbounds %struct.waitq, %struct.waitq* %82, i32 0, i32 0
  store i64 0, i64* %83, align 8
  %84 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %84, i64* %5, align 8
  br label %110

85:                                               ; preds = %74
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %87 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %12, i32 0, i32 2
  store %struct.TYPE_7__* %86, %struct.TYPE_7__** %87, align 8
  %88 = load i64, i64* %7, align 8
  %89 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %12, i32 0, i32 1
  store i64 %88, i64* %89, align 8
  %90 = load i32*, i32** %9, align 8
  %91 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %12, i32 0, i32 0
  store i32* %90, i32** %91, align 8
  %92 = load i32, i32* @LINK_WALK_FULL_DAG, align 4
  %93 = load %struct.waitq*, %struct.waitq** %6, align 8
  %94 = load %struct.waitq*, %struct.waitq** %6, align 8
  %95 = getelementptr inbounds %struct.waitq, %struct.waitq* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i32, i32* @WQL_WQS, align 4
  %98 = bitcast %struct.select_thread_ctx* %12 to i8*
  %99 = load i32, i32* @waitq_select_thread_cb, align 4
  %100 = call i64 @walk_waitq_links(i32 %92, %struct.waitq* %93, i64 %96, i32 %97, i8* %98, i32 %99)
  store i64 %100, i64* %13, align 8
  %101 = load %struct.waitq_link*, %struct.waitq_link** %11, align 8
  %102 = call i32 @wql_put_link(%struct.waitq_link* %101)
  %103 = load i64, i64* %13, align 8
  %104 = load i64, i64* @WQ_ITERATE_FOUND, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %85
  %107 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %107, i64* %5, align 8
  br label %110

108:                                              ; preds = %85
  %109 = load i64, i64* @KERN_NOT_WAITING, align 8
  store i64 %109, i64* %5, align 8
  br label %110

110:                                              ; preds = %108, %106, %81, %72, %50
  %111 = load i64, i64* %5, align 8
  ret i64 %111
}

declare dso_local i32 @splsched(...) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_7__*) #1

declare dso_local i32 @waitq_thread_remove(%struct.waitq*, %struct.TYPE_7__*) #1

declare dso_local i64 @waitq_empty(%struct.waitq*) #1

declare dso_local i32 @thread_clear_waitq_state(%struct.TYPE_7__*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_7__*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @splx(i32) #1

declare dso_local %struct.waitq_link* @wql_get_link(i64) #1

declare dso_local i64 @walk_waitq_links(i32, %struct.waitq*, i64, i32, i8*, i32) #1

declare dso_local i32 @wql_put_link(%struct.waitq_link*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
