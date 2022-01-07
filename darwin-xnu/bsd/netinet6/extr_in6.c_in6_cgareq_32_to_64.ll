; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_cgareq_32_to_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_cgareq_32_to_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_cgareq_32 = type { %struct.TYPE_12__, %struct.TYPE_10__, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.in6_cgareq_64 = type { %struct.TYPE_11__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @in6_cgareq_32_to_64(%struct.in6_cgareq_32* %0, %struct.in6_cgareq_64* %1) #0 {
  %3 = alloca %struct.in6_cgareq_32*, align 8
  %4 = alloca %struct.in6_cgareq_64*, align 8
  store %struct.in6_cgareq_32* %0, %struct.in6_cgareq_32** %3, align 8
  store %struct.in6_cgareq_64* %1, %struct.in6_cgareq_64** %4, align 8
  %5 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %6 = call i32 @bzero(%struct.in6_cgareq_64* %5, i32 32)
  %7 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %8 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %11 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @bcopy(i32 %9, i32 %12, i32 4)
  %14 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %15 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %18 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %20 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %25 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bcopy(i32 %23, i32 %28, i32 4)
  %30 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %31 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %35 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %38 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %42 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %45 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %49 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %52 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %56 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  %58 = load %struct.in6_cgareq_32*, %struct.in6_cgareq_32** %3, align 8
  %59 = getelementptr inbounds %struct.in6_cgareq_32, %struct.in6_cgareq_32* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.in6_cgareq_64*, %struct.in6_cgareq_64** %4, align 8
  %63 = getelementptr inbounds %struct.in6_cgareq_64, %struct.in6_cgareq_64* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  ret void
}

declare dso_local i32 @bzero(%struct.in6_cgareq_64*, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
