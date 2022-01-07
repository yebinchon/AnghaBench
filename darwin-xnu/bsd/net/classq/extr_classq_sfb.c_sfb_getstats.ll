; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_getstats.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/classq/extr_classq_sfb.c_sfb_getstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfb = type { %struct.TYPE_5__**, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.sfb_stats = type { %struct.TYPE_6__*, %struct.TYPE_4__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sfb_getstats(%struct.sfb* %0, %struct.sfb_stats* %1) #0 {
  %3 = alloca %struct.sfb*, align 8
  %4 = alloca %struct.sfb_stats*, align 8
  store %struct.sfb* %0, %struct.sfb** %3, align 8
  store %struct.sfb_stats* %1, %struct.sfb_stats** %4, align 8
  %5 = load %struct.sfb*, %struct.sfb** %3, align 8
  %6 = getelementptr inbounds %struct.sfb, %struct.sfb* %5, i32 0, i32 13
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %9 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %8, i32 0, i32 10
  store i32 %7, i32* %9, align 4
  %10 = load %struct.sfb*, %struct.sfb** %3, align 8
  %11 = getelementptr inbounds %struct.sfb, %struct.sfb* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %14 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %13, i32 0, i32 9
  store i32 %12, i32* %14, align 8
  %15 = load %struct.sfb*, %struct.sfb** %3, align 8
  %16 = getelementptr inbounds %struct.sfb, %struct.sfb* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %19 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %18, i32 0, i32 8
  store i32 %17, i32* %19, align 4
  %20 = load %struct.sfb*, %struct.sfb** %3, align 8
  %21 = getelementptr inbounds %struct.sfb, %struct.sfb* %20, i32 0, i32 10
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %24 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %23, i32 0, i32 7
  store i32 %22, i32* %24, align 8
  %25 = load %struct.sfb*, %struct.sfb** %3, align 8
  %26 = getelementptr inbounds %struct.sfb, %struct.sfb* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %29 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sfb*, %struct.sfb** %3, align 8
  %31 = getelementptr inbounds %struct.sfb, %struct.sfb* %30, i32 0, i32 8
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %34 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load %struct.sfb*, %struct.sfb** %3, align 8
  %36 = getelementptr inbounds %struct.sfb, %struct.sfb* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %39 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load %struct.sfb*, %struct.sfb** %3, align 8
  %41 = getelementptr inbounds %struct.sfb, %struct.sfb* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %44 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sfb*, %struct.sfb** %3, align 8
  %46 = getelementptr inbounds %struct.sfb, %struct.sfb* %45, i32 0, i32 5
  %47 = load %struct.sfb*, %struct.sfb** %3, align 8
  %48 = getelementptr inbounds %struct.sfb, %struct.sfb* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  %50 = call i32 @net_timernsec(i32* %46, i32* %49)
  %51 = load %struct.sfb*, %struct.sfb** %3, align 8
  %52 = getelementptr inbounds %struct.sfb, %struct.sfb* %51, i32 0, i32 4
  %53 = load %struct.sfb*, %struct.sfb** %3, align 8
  %54 = getelementptr inbounds %struct.sfb, %struct.sfb* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @net_timernsec(i32* %52, i32* %55)
  %57 = load %struct.sfb*, %struct.sfb** %3, align 8
  %58 = getelementptr inbounds %struct.sfb, %struct.sfb* %57, i32 0, i32 3
  %59 = load %struct.sfb*, %struct.sfb** %3, align 8
  %60 = getelementptr inbounds %struct.sfb, %struct.sfb* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @net_timernsec(i32* %58, i32* %61)
  %63 = load %struct.sfb*, %struct.sfb** %3, align 8
  %64 = getelementptr inbounds %struct.sfb, %struct.sfb* %63, i32 0, i32 2
  %65 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %66 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %65, i32 0, i32 2
  %67 = call i32 @net_timernsec(i32* %64, i32* %66)
  %68 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %69 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %68, i32 0, i32 1
  %70 = load %struct.sfb*, %struct.sfb** %3, align 8
  %71 = getelementptr inbounds %struct.sfb, %struct.sfb* %70, i32 0, i32 1
  %72 = bitcast %struct.TYPE_4__* %69 to i8*
  %73 = bitcast %struct.TYPE_4__* %71 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %72, i8* align 8 %73, i64 12, i1 false)
  %74 = call i32 @_CASSERT(i32 1)
  %75 = load %struct.sfb*, %struct.sfb** %3, align 8
  %76 = getelementptr inbounds %struct.sfb, %struct.sfb* %75, i32 0, i32 0
  %77 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %76, align 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i64 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %82 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %81, i32 0, i32 0
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @bcopy(i32* %80, i32* %85, i32 4)
  %87 = load %struct.sfb*, %struct.sfb** %3, align 8
  %88 = getelementptr inbounds %struct.sfb, %struct.sfb* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %88, align 8
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i64 1
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load %struct.sfb_stats*, %struct.sfb_stats** %4, align 8
  %94 = getelementptr inbounds %struct.sfb_stats, %struct.sfb_stats* %93, i32 0, i32 0
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @bcopy(i32* %92, i32* %97, i32 4)
  ret void
}

declare dso_local i32 @net_timernsec(i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @_CASSERT(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
