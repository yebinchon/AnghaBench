; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_thread_affinity_dup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_affinity.c_thread_affinity_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_17__* }
%struct.TYPE_14__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }

@.str = private unnamed_addr constant [36 x i8] c"thread_affinity_dup(%p,%p) aset %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_affinity_dup(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = call i32 @thread_mtx_lock(%struct.TYPE_15__* %7)
  %9 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %11, %struct.TYPE_17__** %5, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %15 = call i32 @DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %12, %struct.TYPE_15__* %13, %struct.TYPE_17__* %14)
  %16 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %17 = icmp eq %struct.TYPE_17__* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %19)
  br label %54

21:                                               ; preds = %2
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %23, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %6, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  %31 = icmp eq %struct.TYPE_16__* %25, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %38, align 8
  %40 = icmp eq %struct.TYPE_16__* %34, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = call i32 @lck_mtx_lock(i32* %44)
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = call i32 @affinity_set_add(%struct.TYPE_17__* %46, %struct.TYPE_15__* %47)
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %49, i32 0, i32 0
  %51 = call i32 @lck_mtx_unlock(i32* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = call i32 @thread_mtx_unlock(%struct.TYPE_15__* %52)
  br label %54

54:                                               ; preds = %21, %18
  ret void
}

declare dso_local i32 @thread_mtx_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @DBG(i8*, %struct.TYPE_15__*, %struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @thread_mtx_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @affinity_set_add(%struct.TYPE_17__*, %struct.TYPE_15__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
