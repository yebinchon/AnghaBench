; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_condense.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_condense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32 (i8*, i32, i8*)*, i32 (i32, i32, i32)* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_12__*, i32, i32, i32, i32, i32*, %struct.TYPE_11__* }

@dtrace_enable_nullop = common dso_local global i64 0, align 8
@dtrace_provider_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_byprov = common dso_local global i32 0, align 4
@dtrace_probes = common dso_local global i32** null, align 8
@dtrace_bymod = common dso_local global i32 0, align 4
@dtrace_byfunc = common dso_local global i32 0, align 4
@dtrace_byname = common dso_local global i32 0, align 4
@dtrace_arena = common dso_local global i32 0, align 4
@dtrace_probe_t_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_condense(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %5, align 8
  %9 = bitcast %struct.TYPE_12__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 48, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 7
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %10, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32 (i8*, i32, i8*)*, i32 (i8*, i32, i8*)** %14, align 8
  %16 = load i64, i64* @dtrace_enable_nullop, align 8
  %17 = inttoptr i64 %16 to i32 (i8*, i32, i8*)*
  %18 = icmp ne i32 (i8*, i32, i8*)* %15, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = call i32 @lck_mtx_lock(i32* @dtrace_provider_lock)
  %22 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %23 = load i32, i32* @dtrace_byprov, align 4
  %24 = call %struct.TYPE_12__* @dtrace_hash_lookup(i32 %23, %struct.TYPE_12__* %6)
  store %struct.TYPE_12__* %24, %struct.TYPE_12__** %4, align 8
  br label %25

25:                                               ; preds = %100, %1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %27 = icmp ne %struct.TYPE_12__* %26, null
  br i1 %27, label %28, label %105

28:                                               ; preds = %25
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 7
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %30, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = icmp ne %struct.TYPE_11__* %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %100

35:                                               ; preds = %28
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 6
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %100

41:                                               ; preds = %35
  %42 = load i32**, i32*** @dtrace_probes, align 8
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %42, i64 %47
  store i32* null, i32** %48, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %50, align 8
  %53 = load i32, i32* @dtrace_bymod, align 4
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %55 = call i32 @dtrace_hash_remove(i32 %53, %struct.TYPE_12__* %54)
  %56 = load i32, i32* @dtrace_byfunc, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = call i32 @dtrace_hash_remove(i32 %56, %struct.TYPE_12__* %57)
  %59 = load i32, i32* @dtrace_byname, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %61 = call i32 @dtrace_hash_remove(i32 %59, %struct.TYPE_12__* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 1
  %65 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %64, align 8
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i32 %65(i32 %68, i32 %71, i32 %74)
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dtrace_strunref(i32 %78)
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dtrace_strunref(i32 %82)
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @dtrace_strunref(i32 %86)
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %89 = icmp eq %struct.TYPE_12__* %88, null
  br i1 %89, label %90, label %94

90:                                               ; preds = %41
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %5, align 8
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %93, align 8
  br label %99

94:                                               ; preds = %41
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %97, align 8
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  store %struct.TYPE_12__* %98, %struct.TYPE_12__** %5, align 8
  br label %99

99:                                               ; preds = %94, %90
  br label %100

100:                                              ; preds = %99, %40, %34
  %101 = load i32, i32* @dtrace_byprov, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %103 = call %struct.TYPE_12__** @DTRACE_HASHNEXT(i32 %101, %struct.TYPE_12__* %102)
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %103, align 8
  store %struct.TYPE_12__* %104, %struct.TYPE_12__** %4, align 8
  br label %25

105:                                              ; preds = %25
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %106, %struct.TYPE_12__** %4, align 8
  br label %107

107:                                              ; preds = %127, %105
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %109 = icmp ne %struct.TYPE_12__* %108, null
  br i1 %109, label %110, label %129

110:                                              ; preds = %107
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 1
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  store %struct.TYPE_12__* %113, %struct.TYPE_12__** %5, align 8
  %114 = load i32, i32* @dtrace_byprov, align 4
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %116 = call i32 @dtrace_hash_remove(i32 %114, %struct.TYPE_12__* %115)
  %117 = load i32, i32* @dtrace_arena, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = sext i32 %120 to i64
  %122 = inttoptr i64 %121 to i8*
  %123 = call i32 @vmem_free(i32 %117, i8* %122, i32 1)
  %124 = load i32, i32* @dtrace_probe_t_zone, align 4
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = call i32 @zfree(i32 %124, %struct.TYPE_12__* %125)
  br label %127

127:                                              ; preds = %110
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %128, %struct.TYPE_12__** %4, align 8
  br label %107

129:                                              ; preds = %107
  %130 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %131 = call i32 @lck_mtx_unlock(i32* @dtrace_provider_lock)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i32 @lck_mtx_lock(i32*) #2

declare dso_local %struct.TYPE_12__* @dtrace_hash_lookup(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @dtrace_hash_remove(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @dtrace_strunref(i32) #2

declare dso_local %struct.TYPE_12__** @DTRACE_HASHNEXT(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @vmem_free(i32, i8*, i32) #2

declare dso_local i32 @zfree(i32, %struct.TYPE_12__*) #2

declare dso_local i32 @lck_mtx_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
