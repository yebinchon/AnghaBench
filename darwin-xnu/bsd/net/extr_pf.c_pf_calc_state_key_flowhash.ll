; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_calc_state_key_flowhash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_calc_state_key_flowhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pf_state_key = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.pf_flowhash_key = type { i32, i32, %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i64 }

@pf_hash_seed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pf_calc_state_key_flowhash(%struct.pf_state_key* %0) #0 {
  %2 = alloca %struct.pf_state_key*, align 8
  %3 = alloca %struct.pf_flowhash_key, align 8
  %4 = alloca i64, align 8
  store %struct.pf_state_key* %0, %struct.pf_state_key** %2, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @bzero(%struct.pf_flowhash_key* %3, i32 40)
  %6 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %7 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %7, i32 0, i32 1
  %9 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %10 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 1
  %12 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %13 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @PF_ALEQ(i32* %8, i32* %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %1
  %18 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %19 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = call i32 @bcopy(i32* %20, i32* %22, i32 4)
  %24 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %25 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 1
  %29 = call i32 @bcopy(i32* %26, i32* %28, i32 4)
  br label %43

30:                                               ; preds = %1
  %31 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %32 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 1
  %36 = call i32 @bcopy(i32* %33, i32* %35, i32 4)
  %37 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %38 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 1
  %42 = call i32 @bcopy(i32* %39, i32* %41, i32 4)
  br label %43

43:                                               ; preds = %30, %17
  %44 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %45 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %50 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp sle i64 %48, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %43
  %56 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %57 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %60, i64* %63, align 8
  %64 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %65 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  store i64 %68, i64* %71, align 8
  br label %89

72:                                               ; preds = %43
  %73 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %74 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  store i64 %77, i64* %80, align 8
  %81 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %82 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  store i64 %85, i64* %88, align 8
  br label %89

89:                                               ; preds = %72, %55
  %90 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %91 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.pf_state_key*, %struct.pf_state_key** %2, align 8
  %95 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = getelementptr inbounds %struct.pf_flowhash_key, %struct.pf_flowhash_key* %3, i32 0, i32 0
  store i32 %96, i32* %97, align 8
  br label %98

98:                                               ; preds = %103, %89
  %99 = load i32, i32* @pf_hash_seed, align 4
  %100 = call i64 @net_flowhash(%struct.pf_flowhash_key* %3, i32 40, i32 %99)
  store i64 %100, i64* %4, align 8
  %101 = load i64, i64* %4, align 8
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 (...) @RandomULong()
  store i32 %104, i32* @pf_hash_seed, align 4
  br label %98

105:                                              ; preds = %98
  %106 = load i64, i64* %4, align 8
  ret i64 %106
}

declare dso_local i32 @bzero(%struct.pf_flowhash_key*, i32) #1

declare dso_local i64 @PF_ALEQ(i32*, i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i64 @net_flowhash(%struct.pf_flowhash_key*, i32, i32) #1

declare dso_local i32 @RandomULong(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
