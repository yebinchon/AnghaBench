; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_destroygen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_helper_destroygen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, %struct.TYPE_11__**, %struct.TYPE_12__**, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__* }

@dtrace_meta_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DTRACE_NHELPER_ACTIONS = common dso_local global i64 0, align 8
@dtrace_meta_pid = common dso_local global i32* null, align 8
@dtrace_deferred_pid = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i32)* @dtrace_helper_destroygen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dtrace_helper_destroygen(%struct.TYPE_9__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %6, align 8
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_meta_lock, i32 %16)
  %18 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %19 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %18)
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %21 = icmp eq %struct.TYPE_10__* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sgt i32 %23, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %157

30:                                               ; preds = %22
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 4
  store i32* %32, i32** %7, align 8
  store i64 0, i64* %8, align 8
  br label %33

33:                                               ; preds = %80, %30
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @DTRACE_NHELPER_ACTIONS, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %83

37:                                               ; preds = %33
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %9, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %40, i64 %41
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %10, align 8
  br label %44

44:                                               ; preds = %77, %37
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %79

47:                                               ; preds = %44
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %49, align 8
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %11, align 8
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %5, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %74

56:                                               ; preds = %47
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %58 = icmp ne %struct.TYPE_12__* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 1
  store %struct.TYPE_12__* %60, %struct.TYPE_12__** %62, align 8
  br label %70

63:                                               ; preds = %56
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__*, %struct.TYPE_12__** %67, i64 %68
  store %struct.TYPE_12__* %64, %struct.TYPE_12__** %69, align 8
  br label %70

70:                                               ; preds = %63, %59
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = call i32 @dtrace_helper_action_destroy(%struct.TYPE_12__* %71, i32* %72)
  br label %76

74:                                               ; preds = %47
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** %9, align 8
  br label %76

76:                                               ; preds = %74, %70
  br label %77

77:                                               ; preds = %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %78, %struct.TYPE_12__** %10, align 8
  br label %44

79:                                               ; preds = %44
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %8, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %8, align 8
  br label %33

83:                                               ; preds = %33
  br label %84

84:                                               ; preds = %152, %83
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %12, align 8
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %105, %84
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %108

91:                                               ; preds = %85
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 2
  %94 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %94, i64 %95
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %12, align 8
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %91
  br label %108

104:                                              ; preds = %91
  br label %105

105:                                              ; preds = %104
  %106 = load i64, i64* %8, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %8, align 8
  br label %85

108:                                              ; preds = %103, %85
  %109 = load i64, i64* %8, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %115

114:                                              ; preds = %108
  br label %156

115:                                              ; preds = %108
  %116 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %117, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %121, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %122, i64 %125
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 2
  %130 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %129, align 8
  %131 = load i64, i64* %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %130, i64 %131
  store %struct.TYPE_11__* %127, %struct.TYPE_11__** %132, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %134, align 8
  %136 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %135, i64 %138
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %139, align 8
  %140 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %141 = load i32*, i32** @dtrace_meta_pid, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %115
  %144 = load i32*, i32** @dtrace_deferred_pid, align 8
  %145 = icmp eq i32* %144, null
  %146 = zext i1 %145 to i32
  %147 = call i32 @ASSERT(i32 %146)
  %148 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %151 = call i32 @dtrace_helper_provider_remove(i32* %149, %struct.TYPE_9__* %150)
  br label %152

152:                                              ; preds = %143, %115
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %154 = call i32 @dtrace_helper_provider_destroy(%struct.TYPE_11__* %153)
  %155 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  br label %84

156:                                              ; preds = %114
  store i32 0, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %28
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @dtrace_helper_action_destroy(%struct.TYPE_12__*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_helper_provider_remove(i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @dtrace_helper_provider_destroy(%struct.TYPE_11__*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
