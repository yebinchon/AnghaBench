; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_stats_arenas_i_index.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_stats_arenas_i_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ctl_mtx = common dso_local global i32 0, align 4
@ctl_stats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@super_stats_arenas_i_node = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i64, i64)* @stats_arenas_i_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @stats_arenas_i_index(i64* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store i64* %0, i64** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 @malloc_mutex_lock(i32* @ctl_mtx)
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctl_stats, i32 0, i32 0), align 8
  %11 = icmp ugt i64 %9, %10
  br i1 %11, label %19, label %12

12:                                               ; preds = %3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ctl_stats, i32 0, i32 1), align 8
  %14 = load i64, i64* %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %12, %3
  store i32* null, i32** %7, align 8
  br label %22

20:                                               ; preds = %12
  %21 = load i32*, i32** @super_stats_arenas_i_node, align 8
  store i32* %21, i32** %7, align 8
  br label %22

22:                                               ; preds = %20, %19
  %23 = call i32 @malloc_mutex_unlock(i32* @ctl_mtx)
  %24 = load i32*, i32** %7, align 8
  ret i32* %24
}

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
