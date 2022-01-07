; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_cache_search.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_posix_shm.c_pshm_cache_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.pshminfo = type { i32 }
%struct.pshmname = type { i64, i32 }
%struct.pshmcache = type { i64, %struct.pshminfo*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.pshmcache* }
%struct.pshmhashhead = type { %struct.pshmcache* }

@PSHMNAMLEN = common dso_local global i64 0, align 8
@pshmstats = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PSHMCACHE_NOTFOUND = common dso_local global i32 0, align 4
@PSHMCACHE_FOUND = common dso_local global i32 0, align 4
@PSHMCACHE_NEGATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pshminfo**, %struct.pshmname*, %struct.pshmcache**, i32)* @pshm_cache_search to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pshm_cache_search(%struct.pshminfo** %0, %struct.pshmname* %1, %struct.pshmcache** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pshminfo**, align 8
  %7 = alloca %struct.pshmname*, align 8
  %8 = alloca %struct.pshmcache**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.pshmcache*, align 8
  %11 = alloca %struct.pshmcache*, align 8
  %12 = alloca %struct.pshmhashhead*, align 8
  store %struct.pshminfo** %0, %struct.pshminfo*** %6, align 8
  store %struct.pshmname* %1, %struct.pshmname** %7, align 8
  store %struct.pshmcache** %2, %struct.pshmcache*** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.pshmname*, %struct.pshmname** %7, align 8
  %14 = getelementptr inbounds %struct.pshmname, %struct.pshmname* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @PSHMNAMLEN, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 3), align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 3), align 4
  %21 = load i32, i32* @PSHMCACHE_NOTFOUND, align 4
  store i32 %21, i32* %5, align 4
  br label %96

22:                                               ; preds = %4
  %23 = load %struct.pshmname*, %struct.pshmname** %7, align 8
  %24 = call %struct.pshmhashhead* @PSHMHASH(%struct.pshmname* %23)
  store %struct.pshmhashhead* %24, %struct.pshmhashhead** %12, align 8
  %25 = load %struct.pshmhashhead*, %struct.pshmhashhead** %12, align 8
  %26 = getelementptr inbounds %struct.pshmhashhead, %struct.pshmhashhead* %25, i32 0, i32 0
  %27 = load %struct.pshmcache*, %struct.pshmcache** %26, align 8
  store %struct.pshmcache* %27, %struct.pshmcache** %10, align 8
  br label %28

28:                                               ; preds = %58, %22
  %29 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %30 = icmp ne %struct.pshmcache* %29, null
  br i1 %30, label %31, label %60

31:                                               ; preds = %28
  %32 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %33 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.pshmcache*, %struct.pshmcache** %34, align 8
  store %struct.pshmcache* %35, %struct.pshmcache** %11, align 8
  %36 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %37 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.pshmname*, %struct.pshmname** %7, align 8
  %40 = getelementptr inbounds %struct.pshmname, %struct.pshmname* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %57

43:                                               ; preds = %31
  %44 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %45 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.pshmname*, %struct.pshmname** %7, align 8
  %48 = getelementptr inbounds %struct.pshmname, %struct.pshmname* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %51 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = trunc i64 %52 to i32
  %54 = call i32 @bcmp(i32 %46, i32 %49, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %43
  br label %60

57:                                               ; preds = %43, %31
  br label %58

58:                                               ; preds = %57
  %59 = load %struct.pshmcache*, %struct.pshmcache** %11, align 8
  store %struct.pshmcache* %59, %struct.pshmcache** %10, align 8
  br label %28

60:                                               ; preds = %56, %28
  %61 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %62 = icmp eq %struct.pshmcache* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 2), align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 2), align 4
  %66 = load i32, i32* @PSHMCACHE_NOTFOUND, align 4
  store i32 %66, i32* %5, align 4
  br label %96

67:                                               ; preds = %60
  %68 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %69 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %68, i32 0, i32 1
  %70 = load %struct.pshminfo*, %struct.pshminfo** %69, align 8
  %71 = icmp ne %struct.pshminfo* %70, null
  br i1 %71, label %72, label %92

72:                                               ; preds = %67
  %73 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 1), align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 1), align 4
  %75 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %76 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %75, i32 0, i32 1
  %77 = load %struct.pshminfo*, %struct.pshminfo** %76, align 8
  %78 = load %struct.pshminfo**, %struct.pshminfo*** %6, align 8
  store %struct.pshminfo* %77, %struct.pshminfo** %78, align 8
  %79 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %80 = load %struct.pshmcache**, %struct.pshmcache*** %8, align 8
  store %struct.pshmcache* %79, %struct.pshmcache** %80, align 8
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.pshmcache*, %struct.pshmcache** %10, align 8
  %85 = getelementptr inbounds %struct.pshmcache, %struct.pshmcache* %84, i32 0, i32 1
  %86 = load %struct.pshminfo*, %struct.pshminfo** %85, align 8
  %87 = getelementptr inbounds %struct.pshminfo, %struct.pshminfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %83, %72
  %91 = load i32, i32* @PSHMCACHE_FOUND, align 4
  store i32 %91, i32* %5, align 4
  br label %96

92:                                               ; preds = %67
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 0), align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pshmstats, i32 0, i32 0), align 4
  %95 = load i32, i32* @PSHMCACHE_NEGATIVE, align 4
  store i32 %95, i32* %5, align 4
  br label %96

96:                                               ; preds = %92, %90, %63, %18
  %97 = load i32, i32* %5, align 4
  ret i32 %97
}

declare dso_local %struct.pshmhashhead* @PSHMHASH(%struct.pshmname*) #1

declare dso_local i32 @bcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
