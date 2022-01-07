; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_set_logical_topology.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_cpu_threads.c_x86_set_logical_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@master_cpu = common dso_local global i32 0, align 4
@topoParms = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @x86_set_logical_topology(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 7
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  store %struct.TYPE_10__* %12, %struct.TYPE_10__** %7, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %8, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 5
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %20 = icmp ne %struct.TYPE_10__* %19, null
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %24 = icmp ne %struct.TYPE_9__* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @master_cpu, align 4
  %39 = icmp eq i32 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 0), align 4
  %45 = srem i32 %43, %44
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %52 = srem i32 %50, %51
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %57 = sdiv i32 %55, %56
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 2), align 4
  %64 = srem i32 %62, %63
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 1), align 4
  %69 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 2), align 4
  %70 = mul nsw i32 %68, %69
  %71 = sdiv i32 %67, %70
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 3), align 4
  %78 = srem i32 %76, %77
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @topoParms, i32 0, i32 0), align 4
  %83 = sdiv i32 %81, %82
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
