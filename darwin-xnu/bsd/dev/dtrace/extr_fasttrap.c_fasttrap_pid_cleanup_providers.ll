; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_cleanup_providers.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_pid_cleanup_providers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64, i64, i64, %struct.TYPE_5__*, i64, i32, i32, i32 }

@fasttrap_provs = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@fasttrap_total = common dso_local global i32 0, align 4
@fasttrap_max = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @fasttrap_pid_cleanup_providers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fasttrap_pid_cleanup_providers() #0 {
  %1 = alloca %struct.TYPE_5__**, align 8
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %106, %0
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fasttrap_provs, i32 0, i32 0), align 8
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %109

11:                                               ; preds = %7
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fasttrap_provs, i32 0, i32 1), align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i64 %14
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %3, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = call i32 @lck_mtx_lock(i32* %17)
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = bitcast i32* %20 to %struct.TYPE_5__**
  store %struct.TYPE_5__** %21, %struct.TYPE_5__*** %1, align 8
  br label %22

22:                                               ; preds = %101, %47, %31, %11
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  store %struct.TYPE_5__* %24, %struct.TYPE_5__** %2, align 8
  %25 = icmp ne %struct.TYPE_5__* %24, null
  br i1 %25, label %26, label %102

26:                                               ; preds = %22
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 3
  store %struct.TYPE_5__** %33, %struct.TYPE_5__*** %1, align 8
  br label %22

34:                                               ; preds = %26
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 6
  %37 = call i32 @lck_mtx_lock(i32* %36)
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %34
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42, %34
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 6
  %52 = call i32 @lck_mtx_unlock(i32* %51)
  br label %22

53:                                               ; preds = %42
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 6
  %69 = call i32 @lck_mtx_unlock(i32* %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i64 @dtrace_unregister(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %94

76:                                               ; preds = %66
  %77 = load i32, i32* @fasttrap_total, align 4
  %78 = load i32, i32* @fasttrap_max, align 4
  %79 = sdiv i32 %78, 2
  %80 = icmp sgt i32 %77, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %76
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @dtrace_condense(i32 %82)
  br label %84

84:                                               ; preds = %81, %76
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 4
  %87 = load i64, i64* %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %5, align 4
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 3
  store %struct.TYPE_5__** %93, %struct.TYPE_5__*** %1, align 8
  br label %101

94:                                               ; preds = %66
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %96, align 8
  %98 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %1, align 8
  store %struct.TYPE_5__* %97, %struct.TYPE_5__** %98, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %100 = call i32 @fasttrap_provider_free(%struct.TYPE_5__* %99)
  br label %101

101:                                              ; preds = %94, %84
  br label %22

102:                                              ; preds = %22
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = call i32 @lck_mtx_unlock(i32* %104)
  br label %106

106:                                              ; preds = %102
  %107 = load i32, i32* %6, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %6, align 4
  br label %7

109:                                              ; preds = %7
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i64 @dtrace_unregister(i32) #1

declare dso_local i32 @dtrace_condense(i32) #1

declare dso_local i32 @fasttrap_provider_free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
