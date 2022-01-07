; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_udp_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_udp_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_counts = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nstat_tucookie = type { %struct.inpcb* }
%struct.inpcb = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.nstat_counts*, i32*)* @nstat_udp_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_udp_counts(i64 %0, %struct.nstat_counts* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.nstat_counts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nstat_tucookie*, align 8
  %9 = alloca %struct.inpcb*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.nstat_counts* %1, %struct.nstat_counts** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.nstat_tucookie*
  store %struct.nstat_tucookie* %11, %struct.nstat_tucookie** %8, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %3
  %17 = load i64, i64* %5, align 8
  %18 = call i64 @nstat_udp_gone(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = load i32*, i32** %7, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i32*, i32** %7, align 8
  store i32 1, i32* %24, align 4
  br label %25

25:                                               ; preds = %23, %20
  %26 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %27 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %26, i32 0, i32 0
  %28 = load %struct.inpcb*, %struct.inpcb** %27, align 8
  %29 = icmp ne %struct.inpcb* %28, null
  br i1 %29, label %32, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %117

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %16
  %34 = load %struct.nstat_tucookie*, %struct.nstat_tucookie** %8, align 8
  %35 = getelementptr inbounds %struct.nstat_tucookie, %struct.nstat_tucookie* %34, i32 0, i32 0
  %36 = load %struct.inpcb*, %struct.inpcb** %35, align 8
  store %struct.inpcb* %36, %struct.inpcb** %9, align 8
  %37 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %38 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %37, i32 0, i32 9
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %41 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %40, i32 0, i32 3
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 3
  %44 = call i32 @atomic_get_64(i32 %39, i32* %43)
  %45 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %46 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %45, i32 0, i32 8
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %49 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %48, i32 0, i32 3
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 2
  %52 = call i32 @atomic_get_64(i32 %47, i32* %51)
  %53 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %54 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %57 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 1
  %60 = call i32 @atomic_get_64(i32 %55, i32* %59)
  %61 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %62 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %65 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %64, i32 0, i32 3
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = call i32 @atomic_get_64(i32 %63, i32* %67)
  %69 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %70 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %73 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = call i32 @atomic_get_64(i32 %71, i32* %75)
  %77 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %78 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %81 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %80, i32 0, i32 2
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = call i32 @atomic_get_64(i32 %79, i32* %83)
  %85 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %86 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %89 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %88, i32 0, i32 1
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 1
  %92 = call i32 @atomic_get_64(i32 %87, i32* %91)
  %93 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %94 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %97 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %96, i32 0, i32 1
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = call i32 @atomic_get_64(i32 %95, i32* %99)
  %101 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %102 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %105 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = call i32 @atomic_get_64(i32 %103, i32* %107)
  %109 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %110 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.inpcb*, %struct.inpcb** %9, align 8
  %113 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %112, i32 0, i32 0
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = call i32 @atomic_get_64(i32 %111, i32* %115)
  store i32 0, i32* %4, align 4
  br label %117

117:                                              ; preds = %33, %30
  %118 = load i32, i32* %4, align 4
  ret i32 %118
}

declare dso_local i64 @nstat_udp_gone(i64) #1

declare dso_local i32 @atomic_get_64(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
