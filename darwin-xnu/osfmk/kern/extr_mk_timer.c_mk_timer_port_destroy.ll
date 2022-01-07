; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_port_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_mk_timer.c_mk_timer_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64, i32, i32, i32, i32, %struct.TYPE_11__* }

@IKOT_TIMER = common dso_local global i64 0, align 8
@IKO_NULL = common dso_local global i32 0, align 4
@IKOT_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@mk_timer_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mk_timer_port_destroy(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %3, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %5 = call i32 @ip_lock(%struct.TYPE_11__* %4)
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = call i64 @ip_kotype(%struct.TYPE_11__* %6)
  %8 = load i64, i64* @IKOT_TIMER, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %14, %struct.TYPE_10__** %3, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %16 = icmp ne %struct.TYPE_10__* %15, null
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %20 = load i32, i32* @IKO_NULL, align 4
  %21 = load i32, i32* @IKOT_NONE, align 4
  %22 = call i32 @ipc_kobject_set_atomically(%struct.TYPE_11__* %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = call i32 @simple_lock(i32* %24)
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %27, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %30 = icmp eq %struct.TYPE_11__* %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @assert(i32 %31)
  br label %33

33:                                               ; preds = %10, %1
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %35 = call i32 @ip_unlock(%struct.TYPE_11__* %34)
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %37 = icmp ne %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %72

38:                                               ; preds = %33
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 4
  %41 = call i64 @thread_call_cancel(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %38
  %49 = load i32, i32* @FALSE, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @TRUE, align 4
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %48
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = call i32 @simple_unlock(i32* %61)
  %63 = load i32, i32* @mk_timer_zone, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %65 = call i32 @zfree(i32 %63, %struct.TYPE_10__* %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %67 = call i32 @ipc_port_release_send(%struct.TYPE_11__* %66)
  br label %72

68:                                               ; preds = %48
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 1
  %71 = call i32 @simple_unlock(i32* %70)
  br label %72

72:                                               ; preds = %59, %68, %33
  ret void
}

declare dso_local i32 @ip_lock(%struct.TYPE_11__*) #1

declare dso_local i64 @ip_kotype(%struct.TYPE_11__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ipc_kobject_set_atomically(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @simple_lock(i32*) #1

declare dso_local i32 @ip_unlock(%struct.TYPE_11__*) #1

declare dso_local i64 @thread_call_cancel(i32*) #1

declare dso_local i32 @simple_unlock(i32*) #1

declare dso_local i32 @zfree(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @ipc_port_release_send(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
