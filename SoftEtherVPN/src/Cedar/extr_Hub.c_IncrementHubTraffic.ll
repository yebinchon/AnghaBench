; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IncrementHubTraffic.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_IncrementHubTraffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_17__*, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { %struct.TYPE_22__, %struct.TYPE_19__ }
%struct.TYPE_22__ = type { i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_23__, %struct.TYPE_20__ }
%struct.TYPE_23__ = type { i64, i64, i64, i64 }
%struct.TYPE_20__ = type { i64, i64, i64, i64 }
%struct.TYPE_24__ = type { %struct.TYPE_21__, %struct.TYPE_18__ }
%struct.TYPE_21__ = type { i64, i64, i64, i64 }
%struct.TYPE_18__ = type { i64, i64, i64, i64 }

@TRAFFIC_DIFF_HUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IncrementHubTraffic(%struct.TYPE_25__* %0) #0 {
  %2 = alloca %struct.TYPE_25__*, align 8
  %3 = alloca %struct.TYPE_24__, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %2, align 8
  %4 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %5 = icmp eq %struct.TYPE_25__* %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %1
  %7 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %6, %1
  br label %159

12:                                               ; preds = %6
  %13 = call i32 @Zero(%struct.TYPE_24__* %3, i32 64)
  %14 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @Lock(i32 %16)
  %18 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %18, i32 0, i32 3
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 4
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %23, %29
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %31, i32 0, i32 3
  store i64 %30, i64* %32, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_17__*, %struct.TYPE_17__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = sub nsw i64 %38, %44
  %46 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 2
  store i64 %45, i64* %47, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %53, %59
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 3
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %69, i32 0, i32 4
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %68, %74
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %78, i32 0, i32 3
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 4
  %86 = load %struct.TYPE_16__*, %struct.TYPE_16__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %83, %89
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %91, i32 0, i32 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %100 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %99, i32 0, i32 4
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %98, %104
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %106, i32 0, i32 2
  store i64 %105, i64* %107, align 8
  %108 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %109 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %108, i32 0, i32 3
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %113, %119
  %121 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 3
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 4
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = sub nsw i64 %128, %134
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %3, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 4
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %139, align 8
  %141 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %141, i32 0, i32 3
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %142, align 8
  %144 = call i32 @Copy(%struct.TYPE_16__* %140, %struct.TYPE_17__* %143, i32 64)
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @Unlock(i32 %147)
  %149 = call i64 @IsZero(%struct.TYPE_24__* %3, i32 64)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %12
  br label %159

152:                                              ; preds = %12
  %153 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %2, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @TRAFFIC_DIFF_HUB, align 4
  %158 = call i32 @AddTrafficDiff(%struct.TYPE_25__* %153, i32 %156, i32 %157, %struct.TYPE_24__* %3)
  br label %159

159:                                              ; preds = %152, %151, %11
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Copy(%struct.TYPE_16__*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i64 @IsZero(%struct.TYPE_24__*, i32) #1

declare dso_local i32 @AddTrafficDiff(%struct.TYPE_25__*, i32, i32, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
