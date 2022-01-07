; ModuleID = '/home/carl/AnghaBench/beanstalkd/extr_job.c_rehash.c'
source_filename = "/home/carl/AnghaBench/beanstalkd/extr_job.c_rehash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@all_jobs = common dso_local global %struct.TYPE_7__** null, align 8
@all_jobs_cap = common dso_local global i64 0, align 8
@all_jobs_used = common dso_local global i64 0, align 8
@cur_prime = common dso_local global i32 0, align 4
@NUM_PRIMES = common dso_local global i32 0, align 4
@hash_table_was_oom = common dso_local global i32 0, align 4
@primes = common dso_local global i64* null, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate %zu new hash buckets\00", align 1
@all_jobs_init = common dso_local global %struct.TYPE_7__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @rehash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rehash(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__**, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %2, align 4
  %10 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_jobs, align 8
  store %struct.TYPE_7__** %10, %struct.TYPE_7__*** %3, align 8
  %11 = load i64, i64* @all_jobs_cap, align 8
  store i64 %11, i64* %4, align 8
  %12 = load i64, i64* @all_jobs_used, align 8
  store i64 %12, i64* %5, align 8
  %13 = load i32, i32* @cur_prime, align 4
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %2, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 -1
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @cur_prime, align 4
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* @NUM_PRIMES, align 4
  %22 = icmp sge i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %95

24:                                               ; preds = %1
  %25 = load i32, i32* @cur_prime, align 4
  %26 = load i32, i32* %8, align 4
  %27 = add nsw i32 %25, %26
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  br label %95

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* @hash_table_was_oom, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  br label %95

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @cur_prime, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* @cur_prime, align 4
  %41 = load i64*, i64** @primes, align 8
  %42 = load i32, i32* @cur_prime, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* @all_jobs_cap, align 8
  %46 = load i64, i64* @all_jobs_cap, align 8
  %47 = call %struct.TYPE_7__** @calloc(i64 %46, i32 8)
  store %struct.TYPE_7__** %47, %struct.TYPE_7__*** @all_jobs, align 8
  %48 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_jobs, align 8
  %49 = icmp ne %struct.TYPE_7__** %48, null
  br i1 %49, label %57, label %50

50:                                               ; preds = %37
  %51 = load i64, i64* @all_jobs_cap, align 8
  %52 = call i32 @twarnx(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %51)
  store i32 1, i32* @hash_table_was_oom, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* @cur_prime, align 4
  %54 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  store %struct.TYPE_7__** %54, %struct.TYPE_7__*** @all_jobs, align 8
  %55 = load i64, i64* %4, align 8
  store i64 %55, i64* @all_jobs_cap, align 8
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* @all_jobs_used, align 8
  br label %95

57:                                               ; preds = %37
  store i64 0, i64* @all_jobs_used, align 8
  store i32 0, i32* @hash_table_was_oom, align 4
  store i64 0, i64* %6, align 8
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  br label %63

63:                                               ; preds = %69, %62
  %64 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %64, i64 %65
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %66, align 8
  %68 = icmp ne %struct.TYPE_7__* %67, null
  br i1 %68, label %69, label %84

69:                                               ; preds = %63
  %70 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %71 = load i64, i64* %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %70, i64 %71
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %72, align 8
  store %struct.TYPE_7__* %73, %struct.TYPE_7__** %9, align 8
  %74 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %78 = load i64, i64* %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %77, i64 %78
  store %struct.TYPE_7__* %76, %struct.TYPE_7__** %79, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %81, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %83 = call i32 @store_job(%struct.TYPE_7__* %82)
  br label %63

84:                                               ; preds = %63
  br label %85

85:                                               ; preds = %84
  %86 = load i64, i64* %6, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %6, align 8
  br label %58

88:                                               ; preds = %58
  %89 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %90 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @all_jobs_init, align 8
  %91 = icmp ne %struct.TYPE_7__** %89, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %88
  %93 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %3, align 8
  %94 = call i32 @free(%struct.TYPE_7__** %93)
  br label %95

95:                                               ; preds = %23, %29, %36, %50, %92, %88
  ret void
}

declare dso_local %struct.TYPE_7__** @calloc(i64, i32) #1

declare dso_local i32 @twarnx(i8*, i64) #1

declare dso_local i32 @store_job(%struct.TYPE_7__*) #1

declare dso_local i32 @free(%struct.TYPE_7__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
