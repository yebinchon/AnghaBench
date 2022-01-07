; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_fork.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64, %struct.TYPE_18__*, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i64 }
%struct.TYPE_19__ = type { i64, i64, i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"fasttrap_fork: sprlock(%d) returned a different proc\0A\00", align 1
@fasttrap_tpoints = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_19__*, %struct.TYPE_19__*)* @fasttrap_fork to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_fork(%struct.TYPE_19__* %0, %struct.TYPE_19__* %1) #0 {
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca %struct.TYPE_21__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %3, align 8
  store %struct.TYPE_19__* %1, %struct.TYPE_19__** %4, align 8
  %9 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = call %struct.TYPE_19__* (...) @current_proc()
  %13 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %14 = icmp eq %struct.TYPE_19__* %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 2
  %19 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %20 = call i32 @LCK_MTX_ASSERT(i32* %18, i32 %19)
  %21 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i32 @ASSERT(i32 %25)
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ASSERT(i32 %31)
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %34 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call %struct.TYPE_19__* @sprlock(i64 %36)
  %38 = icmp ne %struct.TYPE_19__* %33, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %2
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %110

44:                                               ; preds = %2
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %46 = call i32 @proc_unlock(%struct.TYPE_19__* %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %99, %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fasttrap_tpoints, i32 0, i32 0), align 8
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %102

51:                                               ; preds = %47
  %52 = load %struct.TYPE_21__*, %struct.TYPE_21__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fasttrap_tpoints, i32 0, i32 1), align 8
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %52, i64 %54
  store %struct.TYPE_21__* %55, %struct.TYPE_21__** %8, align 8
  %56 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %56, i32 0, i32 0
  %58 = call i32 @lck_mtx_lock(i32* %57)
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %60, align 8
  store %struct.TYPE_20__* %61, %struct.TYPE_20__** %7, align 8
  br label %62

62:                                               ; preds = %91, %51
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %64 = icmp ne %struct.TYPE_20__* %63, null
  br i1 %64, label %65, label %95

65:                                               ; preds = %62
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %5, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %90

71:                                               ; preds = %65
  %72 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %71
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %81 = call i32 @fasttrap_tracepoint_remove(%struct.TYPE_19__* %79, %struct.TYPE_20__* %80)
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_18__*, %struct.TYPE_18__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i32
  %89 = call i32 @ASSERT(i32 %88)
  br label %90

90:                                               ; preds = %78, %71, %65
  br label %91

91:                                               ; preds = %90
  %92 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %93, align 8
  store %struct.TYPE_20__* %94, %struct.TYPE_20__** %7, align 8
  br label %62

95:                                               ; preds = %62
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 0
  %98 = call i32 @lck_mtx_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95
  %100 = load i32, i32* %6, align 4
  %101 = add i32 %100, 1
  store i32 %101, i32* %6, align 4
  br label %47

102:                                              ; preds = %47
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %104 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %105 = call i32 @dtrace_ptss_fork(%struct.TYPE_19__* %103, %struct.TYPE_19__* %104)
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %107 = call i32 @proc_lock(%struct.TYPE_19__* %106)
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %109 = call i32 @sprunlock(%struct.TYPE_19__* %108)
  br label %110

110:                                              ; preds = %102, %39
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_19__* @current_proc(...) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local %struct.TYPE_19__* @sprlock(i64) #1

declare dso_local i32 @printf(i8*, i64) #1

declare dso_local i32 @proc_unlock(%struct.TYPE_19__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @fasttrap_tracepoint_remove(%struct.TYPE_19__*, %struct.TYPE_20__*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @dtrace_ptss_fork(%struct.TYPE_19__*, %struct.TYPE_19__*) #1

declare dso_local i32 @proc_lock(%struct.TYPE_19__*) #1

declare dso_local i32 @sprunlock(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
