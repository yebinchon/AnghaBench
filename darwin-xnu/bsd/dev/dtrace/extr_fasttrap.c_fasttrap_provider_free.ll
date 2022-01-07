; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_provider_free.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_provider_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i64, i64, i32, i32, %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i64, i64 }
%struct.TYPE_10__ = type { i32 }

@fasttrap_lck_grp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @fasttrap_provider_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_provider_free(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 7
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %49, label %30

30:                                               ; preds = %1
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 5
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 0
  %35 = call i32 @atomic_add_64(i64* %34, i32 -1)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 5
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %40, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @ASSERT(i32 %47)
  br label %49

49:                                               ; preds = %30, %1
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 5
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i32 @fasttrap_proc_release(%struct.TYPE_12__* %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 4
  %56 = load i32, i32* @fasttrap_lck_grp, align 4
  %57 = call i32 @lck_mtx_destroy(i32* %55, i32 %56)
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* @fasttrap_lck_grp, align 4
  %61 = call i32 @lck_mtx_destroy(i32* %59, i32 %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %63 = call i32 @kmem_free(%struct.TYPE_11__* %62, i32 48)
  %64 = load i32, i32* %3, align 4
  %65 = call %struct.TYPE_10__* @proc_find(i32 %64)
  store %struct.TYPE_10__* %65, %struct.TYPE_10__** %4, align 8
  %66 = icmp eq %struct.TYPE_10__* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %49
  br label %79

68:                                               ; preds = %49
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %70 = call i32 @proc_lock(%struct.TYPE_10__* %69)
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, -1
  store i32 %74, i32* %72, align 4
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %76 = call i32 @proc_unlock(%struct.TYPE_10__* %75)
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %78 = call i32 @proc_rele(%struct.TYPE_10__* %77)
  br label %79

79:                                               ; preds = %68, %67
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @atomic_add_64(i64*, i32) #1

declare dso_local i32 @fasttrap_proc_release(%struct.TYPE_12__*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @kmem_free(%struct.TYPE_11__*, i32) #1

declare dso_local %struct.TYPE_10__* @proc_find(i32) #1

declare dso_local i32 @proc_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @proc_rele(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
