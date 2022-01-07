; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_cache_search.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_sem.c_psem_cache_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pseminfo = type { i32 }
%struct.psemname = type { i64, i32 }
%struct.psemcache = type { i64, %struct.pseminfo*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.psemcache* }
%struct.psemhashhead = type { %struct.psemcache* }

@PSEMNAMLEN = common dso_local global i64 0, align 8
@psemstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PSEMCACHE_NOTFOUND = common dso_local global i32 0, align 4
@PSEMCACHE_FOUND = common dso_local global i32 0, align 4
@PSEMCACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pseminfo**, %struct.psemname*, %struct.psemcache**)* @psem_cache_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @psem_cache_search(%struct.pseminfo** %0, %struct.psemname* %1, %struct.psemcache** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pseminfo**, align 8
  %6 = alloca %struct.psemname*, align 8
  %7 = alloca %struct.psemcache**, align 8
  %8 = alloca %struct.psemcache*, align 8
  %9 = alloca %struct.psemcache*, align 8
  %10 = alloca %struct.psemhashhead*, align 8
  store %struct.pseminfo** %0, %struct.pseminfo*** %5, align 8
  store %struct.psemname* %1, %struct.psemname** %6, align 8
  store %struct.psemcache** %2, %struct.psemcache*** %7, align 8
  %11 = load %struct.psemname*, %struct.psemname** %6, align 8
  %12 = getelementptr inbounds %struct.psemname, %struct.psemname* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PSEMNAMLEN, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 3), align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 3), align 4
  %19 = load i32, i32* @PSEMCACHE_NOTFOUND, align 4
  store i32 %19, i32* %4, align 4
  br label %84

20:                                               ; preds = %3
  %21 = load %struct.psemname*, %struct.psemname** %6, align 8
  %22 = call %struct.psemhashhead* @PSEMHASH(%struct.psemname* %21)
  store %struct.psemhashhead* %22, %struct.psemhashhead** %10, align 8
  %23 = load %struct.psemhashhead*, %struct.psemhashhead** %10, align 8
  %24 = getelementptr inbounds %struct.psemhashhead, %struct.psemhashhead* %23, i32 0, i32 0
  %25 = load %struct.psemcache*, %struct.psemcache** %24, align 8
  store %struct.psemcache* %25, %struct.psemcache** %8, align 8
  br label %26

26:                                               ; preds = %56, %20
  %27 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %28 = icmp ne %struct.psemcache* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %31 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load %struct.psemcache*, %struct.psemcache** %32, align 8
  store %struct.psemcache* %33, %struct.psemcache** %9, align 8
  %34 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %35 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.psemname*, %struct.psemname** %6, align 8
  %38 = getelementptr inbounds %struct.psemname, %struct.psemname* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %29
  %42 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %43 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.psemname*, %struct.psemname** %6, align 8
  %46 = getelementptr inbounds %struct.psemname, %struct.psemname* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %49 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i32 @bcmp(i32 %44, i32 %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %41
  br label %58

55:                                               ; preds = %41, %29
  br label %56

56:                                               ; preds = %55
  %57 = load %struct.psemcache*, %struct.psemcache** %9, align 8
  store %struct.psemcache* %57, %struct.psemcache** %8, align 8
  br label %26

58:                                               ; preds = %54, %26
  %59 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %60 = icmp eq %struct.psemcache* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 2), align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 2), align 4
  %64 = load i32, i32* @PSEMCACHE_NOTFOUND, align 4
  store i32 %64, i32* %4, align 4
  br label %84

65:                                               ; preds = %58
  %66 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %67 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %66, i32 0, i32 1
  %68 = load %struct.pseminfo*, %struct.pseminfo** %67, align 8
  %69 = icmp ne %struct.pseminfo* %68, null
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 1), align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 1), align 4
  %73 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %74 = getelementptr inbounds %struct.psemcache, %struct.psemcache* %73, i32 0, i32 1
  %75 = load %struct.pseminfo*, %struct.pseminfo** %74, align 8
  %76 = load %struct.pseminfo**, %struct.pseminfo*** %5, align 8
  store %struct.pseminfo* %75, %struct.pseminfo** %76, align 8
  %77 = load %struct.psemcache*, %struct.psemcache** %8, align 8
  %78 = load %struct.psemcache**, %struct.psemcache*** %7, align 8
  store %struct.psemcache* %77, %struct.psemcache** %78, align 8
  %79 = load i32, i32* @PSEMCACHE_FOUND, align 4
  store i32 %79, i32* %4, align 4
  br label %84

80:                                               ; preds = %65
  %81 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 0), align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @psemstats, i32 0, i32 0), align 4
  %83 = load i32, i32* @PSEMCACHE_NEGATIVE, align 4
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %80, %70, %61, %16
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.psemhashhead* @PSEMHASH(%struct.psemname*) #1

declare dso_local i32 @bcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
