; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_cb_deep_free.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/btc/profile/esp/blufi/extr_blufi_prf.c_btc_blufi_cb_deep_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_22__, %struct.TYPE_21__, %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btc_blufi_cb_deep_free(%struct.TYPE_18__* %0) #0 {
  %2 = alloca %struct.TYPE_18__*, align 8
  %3 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %2, align 8
  %4 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %7, %struct.TYPE_17__** %3, align 8
  %8 = load %struct.TYPE_18__*, %struct.TYPE_18__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %77 [
    i32 129, label %11
    i32 130, label %17
    i32 131, label %23
    i32 132, label %29
    i32 128, label %35
    i32 138, label %41
    i32 137, label %47
    i32 134, label %53
    i32 136, label %59
    i32 133, label %65
    i32 135, label %71
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %12, i32 0, i32 10
  %14 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @osi_free(i32 %15)
  br label %78

17:                                               ; preds = %1
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @osi_free(i32 %21)
  br label %78

23:                                               ; preds = %1
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 8
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @osi_free(i32 %27)
  br label %78

29:                                               ; preds = %1
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @osi_free(i32 %33)
  br label %78

35:                                               ; preds = %1
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @osi_free(i32 %39)
  br label %78

41:                                               ; preds = %1
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @osi_free(i32 %45)
  br label %78

47:                                               ; preds = %1
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @osi_free(i32 %51)
  br label %78

53:                                               ; preds = %1
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @osi_free(i32 %57)
  br label %78

59:                                               ; preds = %1
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @osi_free(i32 %63)
  br label %78

65:                                               ; preds = %1
  %66 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @osi_free(i32 %69)
  br label %78

71:                                               ; preds = %1
  %72 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @osi_free(i32 %75)
  br label %78

77:                                               ; preds = %1
  br label %78

78:                                               ; preds = %77, %71, %65, %59, %53, %47, %41, %35, %29, %23, %17, %11
  ret void
}

declare dso_local i32 @osi_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
