; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_meta_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_meta_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32*, i32*, i32* }
%struct.TYPE_13__ = type { i64, i64, i32*, %struct.TYPE_13__*, %struct.TYPE_10__**, i32 }
%struct.TYPE_10__ = type { i32 }

@DTRACE_METAPROVNONE = common dso_local global i64 0, align 8
@CE_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"failed to register meta-provider: invalid name\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"failed to register meta-register %s: invalid ops\00", align 1
@KM_SLEEP = common dso_local global i32 0, align 4
@dtrace_meta_lock = common dso_local global i32 0, align 4
@dtrace_lock = common dso_local global i32 0, align 4
@dtrace_meta_pid = common dso_local global %struct.TYPE_12__* null, align 8
@.str.2 = private unnamed_addr constant [68 x i8] c"failed to register meta-register %s: user-land meta-provider exists\00", align 1
@dtrace_deferred_pid = common dso_local global %struct.TYPE_13__* null, align 8
@PROC_NULL = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtrace_meta_register(i8* %0, %struct.TYPE_11__* %1, i8* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_13__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* @DTRACE_METAPROVNONE, align 8
  %16 = load i64*, i64** %9, align 8
  store i64 %15, i64* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @CE_WARN, align 4
  %21 = call i32 (i32, i8*, ...) @cmn_err(i32 %20, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %128

23:                                               ; preds = %4
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %25 = icmp eq %struct.TYPE_11__* %24, null
  br i1 %25, label %41, label %26

26:                                               ; preds = %23
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %31
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36, %31, %26, %23
  %42 = load i32, i32* @CE_WARN, align 4
  %43 = load i8*, i8** %6, align 8
  %44 = call i32 (i32, i8*, ...) @cmn_err(i32 %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i8* %43)
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %128

46:                                               ; preds = %36
  %47 = load i32, i32* @KM_SLEEP, align 4
  %48 = call %struct.TYPE_12__* @kmem_zalloc(i32 40, i32 %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %10, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %52 = bitcast %struct.TYPE_11__* %50 to i8*
  %53 = bitcast %struct.TYPE_11__* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 24, i1 false)
  %54 = load i8*, i8** %8, align 8
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = call i32 @lck_mtx_lock(i32* @dtrace_meta_lock)
  %58 = call i32 @lck_mtx_lock(i32* @dtrace_lock)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** @dtrace_meta_pid, align 8
  %60 = icmp ne %struct.TYPE_12__* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %46
  %62 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  %63 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  %64 = load i32, i32* @CE_WARN, align 4
  %65 = load i8*, i8** %6, align 8
  %66 = call i32 (i32, i8*, ...) @cmn_err(i32 %64, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %68 = call i32 @kmem_free(%struct.TYPE_12__* %67, i32 40)
  %69 = load i32, i32* @EINVAL, align 4
  store i32 %69, i32* %5, align 4
  br label %128

70:                                               ; preds = %46
  %71 = load i8*, i8** %6, align 8
  %72 = call i32 @dtrace_strref(i8* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  store %struct.TYPE_12__* %75, %struct.TYPE_12__** @dtrace_meta_pid, align 8
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %77 = ptrtoint %struct.TYPE_12__* %76 to i64
  %78 = load i64*, i64** %9, align 8
  store i64 %77, i64* %78, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** @dtrace_deferred_pid, align 8
  store %struct.TYPE_13__* %79, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** @dtrace_deferred_pid, align 8
  %80 = call i32 @lck_mtx_unlock(i32* @dtrace_lock)
  br label %81

81:                                               ; preds = %115, %70
  %82 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %83 = icmp ne %struct.TYPE_13__* %82, null
  br i1 %83, label %84, label %126

84:                                               ; preds = %81
  store i64 0, i64* %13, align 8
  br label %85

85:                                               ; preds = %112, %84
  %86 = load i64, i64* %13, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ult i64 %86, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %85
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = call i32* @proc_find(i32 %94)
  store i32* %95, i32** %14, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32*, i32** @PROC_NULL, align 8
  %98 = icmp eq i32* %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %91
  br label %112

100:                                              ; preds = %91
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %103, i64 %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32*, i32** %14, align 8
  %109 = call i32 @dtrace_helper_provide(i32* %107, i32* %108)
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @proc_rele(i32* %110)
  br label %112

112:                                              ; preds = %100, %99
  %113 = load i64, i64* %13, align 8
  %114 = add i64 %113, 1
  store i64 %114, i64* %13, align 8
  br label %85

115:                                              ; preds = %85
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** %117, align 8
  store %struct.TYPE_13__* %118, %struct.TYPE_13__** %12, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 3
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %120, align 8
  %121 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %121, i32 0, i32 2
  store i32* null, i32** %122, align 8
  %123 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %123, i32 0, i32 1
  store i64 0, i64* %124, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %12, align 8
  store %struct.TYPE_13__* %125, %struct.TYPE_13__** %11, align 8
  br label %81

126:                                              ; preds = %81
  %127 = call i32 @lck_mtx_unlock(i32* @dtrace_meta_lock)
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %126, %61, %41, %19
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @cmn_err(i32, i8*, ...) #1

declare dso_local %struct.TYPE_12__* @kmem_zalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @dtrace_strref(i8*) #1

declare dso_local i32* @proc_find(i32) #1

declare dso_local i32 @dtrace_helper_provide(i32*, i32*) #1

declare dso_local i32 @proc_rele(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
