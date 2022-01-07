; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_purge.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_cache_purge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.TYPE_5__* }
%struct.namecache = type { i32 }

@NOCRED = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cache_purge(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca %struct.namecache*, align 8
  %4 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  store i32* null, i32** %4, align 8
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 3
  %7 = call %struct.namecache* @LIST_FIRST(i32* %6)
  %8 = icmp eq %struct.namecache* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 2
  %12 = call %struct.namecache* @TAILQ_FIRST(i32* %11)
  %13 = icmp eq %struct.namecache* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NOCRED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %27

20:                                               ; preds = %14
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** @NULLVP, align 8
  %25 = icmp eq %struct.TYPE_5__* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %74

27:                                               ; preds = %20, %14, %9, %1
  %28 = call i32 (...) @NAME_CACHE_LOCK()
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 4
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %46, %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 3
  %44 = call %struct.namecache* @LIST_FIRST(i32* %43)
  store %struct.namecache* %44, %struct.namecache** %3, align 8
  %45 = icmp ne %struct.namecache* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.namecache*, %struct.namecache** %3, align 8
  %48 = call i32 @cache_delete(%struct.namecache* %47, i32 1)
  br label %41

49:                                               ; preds = %41
  br label %50

50:                                               ; preds = %55, %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call %struct.namecache* @TAILQ_FIRST(i32* %52)
  store %struct.namecache* %53, %struct.namecache** %3, align 8
  %54 = icmp ne %struct.namecache* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.namecache*, %struct.namecache** %3, align 8
  %57 = call i32 @cache_delete(%struct.namecache* %56, i32 1)
  br label %50

58:                                               ; preds = %50
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  store i32* %62, i32** %4, align 8
  %63 = load i64, i64* @NOCRED, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i64 0, i64* %67, align 8
  %68 = call i32 (...) @NAME_CACHE_UNLOCK()
  %69 = load i32*, i32** %4, align 8
  %70 = call i64 @IS_VALID_CRED(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = call i32 @kauth_cred_unref(i32** %4)
  br label %74

74:                                               ; preds = %26, %72, %58
  ret void
}

declare dso_local %struct.namecache* @LIST_FIRST(i32*) #1

declare dso_local %struct.namecache* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @NAME_CACHE_LOCK(...) #1

declare dso_local i32 @cache_delete(%struct.namecache*, i32) #1

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #1

declare dso_local i64 @IS_VALID_CRED(i32*) #1

declare dso_local i32 @kauth_cred_unref(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
