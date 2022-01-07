; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_find_provider_by_id.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_find_provider_by_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_provider = type { i64, %struct.nstat_provider* }

@nstat_providers = common dso_local global %struct.nstat_provider* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nstat_provider* (i64)* @nstat_find_provider_by_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nstat_provider* @nstat_find_provider_by_id(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.nstat_provider*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load %struct.nstat_provider*, %struct.nstat_provider** @nstat_providers, align 8
  store %struct.nstat_provider* %4, %struct.nstat_provider** %3, align 8
  br label %5

5:                                                ; preds = %16, %1
  %6 = load %struct.nstat_provider*, %struct.nstat_provider** %3, align 8
  %7 = icmp ne %struct.nstat_provider* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.nstat_provider*, %struct.nstat_provider** %3, align 8
  %10 = getelementptr inbounds %struct.nstat_provider, %struct.nstat_provider* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %8
  br label %20

15:                                               ; preds = %8
  br label %16

16:                                               ; preds = %15
  %17 = load %struct.nstat_provider*, %struct.nstat_provider** %3, align 8
  %18 = getelementptr inbounds %struct.nstat_provider, %struct.nstat_provider* %17, i32 0, i32 1
  %19 = load %struct.nstat_provider*, %struct.nstat_provider** %18, align 8
  store %struct.nstat_provider* %19, %struct.nstat_provider** %3, align 8
  br label %5

20:                                               ; preds = %14, %5
  %21 = load %struct.nstat_provider*, %struct.nstat_provider** %3, align 8
  ret %struct.nstat_provider* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
