; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inpcb_to_compat.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_pcb.c_inpcb_to_compat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcb = type { %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.inpcb_compat = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.TYPE_15__ = type { i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inpcb_to_compat(%struct.inpcb* %0, %struct.inpcb_compat* %1) #0 {
  %3 = alloca %struct.inpcb*, align 8
  %4 = alloca %struct.inpcb_compat*, align 8
  store %struct.inpcb* %0, %struct.inpcb** %3, align 8
  store %struct.inpcb_compat* %1, %struct.inpcb_compat** %4, align 8
  %5 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %6 = call i32 @bzero(%struct.inpcb_compat* %5, i32 96)
  %7 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %8 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %7, i32 0, i32 11
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %11 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %10, i32 0, i32 13
  store i32 %9, i32* %11, align 4
  %12 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %13 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %12, i32 0, i32 10
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %16 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %15, i32 0, i32 12
  store i32 %14, i32* %16, align 8
  %17 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %18 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %17, i32 0, i32 11
  store i64 0, i64* %18, align 8
  %19 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %20 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %19, i32 0, i32 10
  store i64 0, i64* %20, align 8
  %21 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %22 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %25 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %24, i32 0, i32 9
  store i32 %23, i32* %25, align 8
  %26 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %27 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %30 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 4
  %31 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %32 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %31, i32 0, i32 7
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %35 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %34, i32 0, i32 7
  store i32 %33, i32* %35, align 8
  %36 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %37 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %40 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %39, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %42 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %45 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %44, i32 0, i32 5
  store i32 %43, i32* %45, align 8
  %46 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %47 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %50 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %52 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %56 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i32 %54, i32* %57, align 8
  %58 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %59 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %63 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %66 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %70 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 8
  %72 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %73 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 3
  store i64 0, i64* %74, align 8
  %75 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %76 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %80 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  store i32 %78, i32* %81, align 8
  %82 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %83 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load %struct.inpcb*, %struct.inpcb** %3, align 8
  %86 = getelementptr inbounds %struct.inpcb, %struct.inpcb* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.inpcb_compat*, %struct.inpcb_compat** %4, align 8
  %90 = getelementptr inbounds %struct.inpcb_compat, %struct.inpcb_compat* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  ret void
}

declare dso_local i32 @bzero(%struct.inpcb_compat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
