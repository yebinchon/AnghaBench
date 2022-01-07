; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_counts = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rtentry = type { i32, %struct.nstat_counts* }

@RTF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.nstat_counts*, i32*)* @nstat_route_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_route_counts(i64 %0, %struct.nstat_counts* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nstat_counts*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca %struct.nstat_counts*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.nstat_counts* %1, %struct.nstat_counts** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = inttoptr i64 %9 to %struct.rtentry*
  store %struct.rtentry* %10, %struct.rtentry** %7, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %12 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %11, i32 0, i32 1
  %13 = load %struct.nstat_counts*, %struct.nstat_counts** %12, align 8
  store %struct.nstat_counts* %13, %struct.nstat_counts** %8, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32*, i32** %6, align 8
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %18
  %22 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %23 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @RTF_UP, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32*, i32** %6, align 8
  store i32 1, i32* %29, align 4
  br label %30

30:                                               ; preds = %28, %21, %18
  %31 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %32 = icmp ne %struct.nstat_counts* %31, null
  br i1 %32, label %33, label %102

33:                                               ; preds = %30
  %34 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %35 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %34, i32 0, i32 13
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %38 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %37, i32 0, i32 13
  %39 = call i32 @atomic_get_64(i32 %36, i32* %38)
  %40 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %41 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %40, i32 0, i32 12
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %44 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %43, i32 0, i32 12
  %45 = call i32 @atomic_get_64(i32 %42, i32* %44)
  %46 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %47 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %50 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %49, i32 0, i32 11
  %51 = call i32 @atomic_get_64(i32 %48, i32* %50)
  %52 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %53 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %52, i32 0, i32 10
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %56 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %55, i32 0, i32 10
  %57 = call i32 @atomic_get_64(i32 %54, i32* %56)
  %58 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %59 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %62 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %64 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %67 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %69 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %72 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %74 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %77 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %79 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %82 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %84 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %87 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %89 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %92 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.nstat_counts*, %struct.nstat_counts** %8, align 8
  %94 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %97 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %96, i32 0, i32 2
  store i32 %95, i32* %97, align 8
  %98 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %99 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %101 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  br label %105

102:                                              ; preds = %30
  %103 = load %struct.nstat_counts*, %struct.nstat_counts** %5, align 8
  %104 = call i32 @bzero(%struct.nstat_counts* %103, i32 64)
  br label %105

105:                                              ; preds = %102, %33
  ret i32 0
}

declare dso_local i32 @atomic_get_64(i32, i32*) #1

declare dso_local i32 @bzero(%struct.nstat_counts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
