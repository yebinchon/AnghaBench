; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_call_deep_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_call_deep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__*, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_blufi_call_deep_free(%struct.TYPE_15__* %0) #0 {
  %2 = alloca %struct.TYPE_15__*, align 8
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %2, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %10, %struct.TYPE_16__** %3, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %89 [
    i32 130, label %14
    i32 128, label %66
    i32 129, label %78
  ]

14:                                               ; preds = %1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %4, align 8
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %21 = icmp eq %struct.TYPE_14__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %90

23:                                               ; preds = %14
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = call i32 @osi_free(%struct.TYPE_14__* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %35, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 2
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %40, align 8
  %42 = call i32 @osi_free(%struct.TYPE_14__* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = icmp ne %struct.TYPE_14__* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %50, align 8
  %52 = call i32 @osi_free(%struct.TYPE_14__* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %55, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %60, align 8
  %62 = call i32 @osi_free(%struct.TYPE_14__* %61)
  br label %63

63:                                               ; preds = %58, %53
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %65 = call i32 @osi_free(%struct.TYPE_14__* %64)
  br label %90

66:                                               ; preds = %1
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %71, %struct.TYPE_14__** %5, align 8
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = icmp ne %struct.TYPE_14__* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %66
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = call i32 @osi_free(%struct.TYPE_14__* %75)
  br label %77

77:                                               ; preds = %74, %66
  br label %90

78:                                               ; preds = %1
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  store %struct.TYPE_14__* %82, %struct.TYPE_14__** %6, align 8
  %83 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %84 = icmp ne %struct.TYPE_14__* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %78
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = call i32 @osi_free(%struct.TYPE_14__* %86)
  br label %88

88:                                               ; preds = %85, %78
  br label %90

89:                                               ; preds = %1
  br label %90

90:                                               ; preds = %22, %89, %88, %77, %63
  ret void
}

declare dso_local i32 @osi_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
