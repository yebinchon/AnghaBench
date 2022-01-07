; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspGetRegisters.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/extr_scu.c_ScuDspGetRegisters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_16__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_15__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_21__, i32, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }

@ScuDsp = common dso_local global %struct.TYPE_18__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ScuDspGetRegisters(%struct.TYPE_17__* %0) #0 {
  %2 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %2, align 8
  %3 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %4 = icmp ne %struct.TYPE_17__* %3, null
  br i1 %4, label %5, label %121

5:                                                ; preds = %1
  %6 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 18
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %10 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %9, i32 0, i32 18
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @memcpy(i32 %8, i32 %11, i32 1024)
  %13 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %13, i32 0, i32 17
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %17 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %16, i32 0, i32 17
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @memcpy(i32 %15, i32 %18, i32 1024)
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 16
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 16
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 1
  store i32 %23, i32* %26, align 4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 15
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 15
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 16
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 0
  store i32 %29, i32* %35, align 4
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 14
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 14
  store i32 %38, i32* %40, align 4
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %45 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %44, i32 0, i32 13
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 12
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 12
  store i32 %48, i32* %50, align 4
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 11
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 10
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %59, i32 0, i32 10
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 9
  store i32 %63, i32* %65, align 4
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 8
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i32 %68, i32 %71, i32 16)
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 7
  store i32 %75, i32* %77, align 4
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 6
  store i32 %80, i32* %82, align 4
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 0
  store i32 %103, i32* %106, align 4
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  %114 = load %struct.TYPE_18__*, %struct.TYPE_18__** @ScuDsp, align 8
  %115 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_17__*, %struct.TYPE_17__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 4
  br label %121

121:                                              ; preds = %5, %1
  ret void
}

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
