; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_thread_cb.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_waitq.c_waitq_select_thread_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waitq = type { i64 }
%struct.waitq_link = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.waitq_set* }
%struct.waitq_set = type { %struct.waitq }
%struct.select_thread_ctx = type { i64, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.waitq* }

@WQL_WQS = common dso_local global i64 0, align 8
@WQ_ITERATE_CONTINUE = common dso_local global i32 0, align 4
@WQ_ITERATE_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.waitq*, i8*, %struct.waitq_link*)* @waitq_select_thread_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @waitq_select_thread_cb(%struct.waitq* %0, i8* %1, %struct.waitq_link* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.waitq*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.waitq_link*, align 8
  %8 = alloca %struct.select_thread_ctx*, align 8
  %9 = alloca %struct.waitq_set*, align 8
  %10 = alloca %struct.waitq*, align 8
  %11 = alloca %struct.waitq*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i64, align 8
  store %struct.waitq* %0, %struct.waitq** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.waitq_link* %2, %struct.waitq_link** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.select_thread_ctx*
  store %struct.select_thread_ctx* %16, %struct.select_thread_ctx** %8, align 8
  %17 = load %struct.waitq*, %struct.waitq** %5, align 8
  %18 = load %struct.select_thread_ctx*, %struct.select_thread_ctx** %8, align 8
  %19 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %13, align 8
  %21 = load %struct.select_thread_ctx*, %struct.select_thread_ctx** %8, align 8
  %22 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %14, align 8
  %24 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %25 = call i64 @wql_type(%struct.waitq_link* %24)
  %26 = load i64, i64* @WQL_WQS, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %29, i32* %4, align 4
  br label %101

30:                                               ; preds = %3
  %31 = load %struct.waitq_link*, %struct.waitq_link** %7, align 8
  %32 = getelementptr inbounds %struct.waitq_link, %struct.waitq_link* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load %struct.waitq_set*, %struct.waitq_set** %33, align 8
  store %struct.waitq_set* %34, %struct.waitq_set** %9, align 8
  %35 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %36 = getelementptr inbounds %struct.waitq_set, %struct.waitq_set* %35, i32 0, i32 0
  store %struct.waitq* %36, %struct.waitq** %10, align 8
  %37 = load %struct.waitq*, %struct.waitq** %5, align 8
  %38 = call i32 @waitq_irq_safe(%struct.waitq* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.waitq*, %struct.waitq** %10, align 8
  %44 = call i32 @waitq_irq_safe(%struct.waitq* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %50 = call i32 @waitq_set_lock(%struct.waitq_set* %49)
  %51 = call i32 (...) @splsched()
  store i32 %51, i32* %12, align 4
  %52 = load %struct.waitq*, %struct.waitq** %10, align 8
  %53 = call %struct.waitq* @waitq_get_safeq(%struct.waitq* %52)
  store %struct.waitq* %53, %struct.waitq** %11, align 8
  %54 = load %struct.waitq*, %struct.waitq** %11, align 8
  %55 = call i32 @waitq_lock(%struct.waitq* %54)
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %57 = call i32 @thread_lock(%struct.TYPE_8__* %56)
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.waitq*, %struct.waitq** %59, align 8
  %61 = load %struct.waitq*, %struct.waitq** %10, align 8
  %62 = icmp eq %struct.waitq* %60, %61
  br i1 %62, label %63, label %91

63:                                               ; preds = %30
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* %14, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %91

69:                                               ; preds = %63
  %70 = load %struct.waitq*, %struct.waitq** %10, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %72 = call i32 @waitq_thread_remove(%struct.waitq* %70, %struct.TYPE_8__* %71)
  %73 = load %struct.waitq*, %struct.waitq** %11, align 8
  %74 = call i64 @waitq_empty(%struct.waitq* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load %struct.waitq*, %struct.waitq** %11, align 8
  %78 = getelementptr inbounds %struct.waitq, %struct.waitq* %77, i32 0, i32 0
  store i64 0, i64* %78, align 8
  br label %79

79:                                               ; preds = %76, %69
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %81 = call i32 @thread_clear_waitq_state(%struct.TYPE_8__* %80)
  %82 = load %struct.waitq*, %struct.waitq** %11, align 8
  %83 = call i32 @waitq_unlock(%struct.waitq* %82)
  %84 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %85 = call i32 @waitq_set_unlock(%struct.waitq_set* %84)
  %86 = load i32, i32* %12, align 4
  %87 = load %struct.select_thread_ctx*, %struct.select_thread_ctx** %8, align 8
  %88 = getelementptr inbounds %struct.select_thread_ctx, %struct.select_thread_ctx* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @WQ_ITERATE_FOUND, align 4
  store i32 %90, i32* %4, align 4
  br label %101

91:                                               ; preds = %63, %30
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = call i32 @thread_unlock(%struct.TYPE_8__* %92)
  %94 = load %struct.waitq_set*, %struct.waitq_set** %9, align 8
  %95 = call i32 @waitq_set_unlock(%struct.waitq_set* %94)
  %96 = load %struct.waitq*, %struct.waitq** %11, align 8
  %97 = call i32 @waitq_unlock(%struct.waitq* %96)
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @splx(i32 %98)
  %100 = load i32, i32* @WQ_ITERATE_CONTINUE, align 4
  store i32 %100, i32* %4, align 4
  br label %101

101:                                              ; preds = %91, %79, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i64 @wql_type(%struct.waitq_link*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @waitq_irq_safe(%struct.waitq*) #1

declare dso_local i32 @waitq_set_lock(%struct.waitq_set*) #1

declare dso_local i32 @splsched(...) #1

declare dso_local %struct.waitq* @waitq_get_safeq(%struct.waitq*) #1

declare dso_local i32 @waitq_lock(%struct.waitq*) #1

declare dso_local i32 @thread_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @waitq_thread_remove(%struct.waitq*, %struct.TYPE_8__*) #1

declare dso_local i64 @waitq_empty(%struct.waitq*) #1

declare dso_local i32 @thread_clear_waitq_state(%struct.TYPE_8__*) #1

declare dso_local i32 @waitq_unlock(%struct.waitq*) #1

declare dso_local i32 @waitq_set_unlock(%struct.waitq_set*) #1

declare dso_local i32 @thread_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @splx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
