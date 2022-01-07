; ModuleID = '/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_init.c'
source_filename = "/home/carl/AnghaBench/disque/deps/jemalloc/src/extr_ctl.c_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }

@ctl_mtx = common dso_local global i32 0, align 4
@ctl_initialized = common dso_local global i32 0, align 4
@ctl_stats = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@config_stats = common dso_local global i64 0, align 8
@ctl_epoch = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 @malloc_mutex_lock(i32* @ctl_mtx)
  %5 = load i32, i32* @ctl_initialized, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %79, label %7

7:                                                ; preds = %0
  %8 = call i32 (...) @narenas_total_get()
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 0), align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 0), align 8
  %10 = add nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = mul i64 %11, 24
  %13 = trunc i64 %12 to i32
  %14 = call i64 @a0malloc(i32 %13)
  %15 = inttoptr i64 %14 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %7
  store i32 1, i32* %1, align 4
  br label %80

19:                                               ; preds = %7
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 0), align 8
  %22 = add nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 24
  %25 = trunc i64 %24 to i32
  %26 = call i32 @memset(%struct.TYPE_6__* %20, i32 0, i32 %25)
  %27 = load i64, i64* @config_stats, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %72

29:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %68, %29
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 0), align 8
  %33 = icmp ule i32 %31, %32
  br i1 %33, label %34, label %71

34:                                               ; preds = %30
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = call i64 @ctl_arena_init(%struct.TYPE_6__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %67

41:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %2, align 4
  %45 = icmp ult i32 %43, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %42
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %48 = load i32, i32* %3, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = call i32 @a0dalloc(%struct.TYPE_6__* %52)
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %55 = load i32, i32* %3, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = call i32 @a0dalloc(%struct.TYPE_6__* %59)
  br label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %3, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %3, align 4
  br label %42

64:                                               ; preds = %42
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %66 = call i32 @a0dalloc(%struct.TYPE_6__* %65)
  store %struct.TYPE_6__* null, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  store i32 1, i32* %1, align 4
  br label %80

67:                                               ; preds = %34
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %2, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %2, align 4
  br label %30

71:                                               ; preds = %30
  br label %72

72:                                               ; preds = %71, %19
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 1), align 8
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @ctl_stats, i32 0, i32 0), align 8
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  store i64 0, i64* @ctl_epoch, align 8
  %78 = call i32 (...) @ctl_refresh()
  store i32 1, i32* @ctl_initialized, align 4
  br label %79

79:                                               ; preds = %72, %0
  store i32 0, i32* %1, align 4
  br label %80

80:                                               ; preds = %79, %64, %18
  %81 = call i32 @malloc_mutex_unlock(i32* @ctl_mtx)
  %82 = load i32, i32* %1, align 4
  ret i32 %82
}

declare dso_local i32 @malloc_mutex_lock(i32*) #1

declare dso_local i32 @narenas_total_get(...) #1

declare dso_local i64 @a0malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @ctl_arena_init(%struct.TYPE_6__*) #1

declare dso_local i32 @a0dalloc(%struct.TYPE_6__*) #1

declare dso_local i32 @ctl_refresh(...) #1

declare dso_local i32 @malloc_mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
