; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_sort_inq_result.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_inq.c_btm_sort_inq_result.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_14__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }

@btm_cb = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@BTM_INQ_DB_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @btm_sort_inq_result() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %4, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1), align 8
  store %struct.TYPE_14__* %8, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 1), align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i64 1
  store %struct.TYPE_14__* %10, %struct.TYPE_14__** %6, align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  %12 = load i64, i64* @BTM_INQ_DB_SIZE, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %0
  %15 = load i64, i64* getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @btm_cb, i32 0, i32 0, i32 0, i32 0), align 8
  br label %18

16:                                               ; preds = %0
  %17 = load i64, i64* @BTM_INQ_DB_SIZE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = call i64 @osi_malloc(i32 8)
  %22 = inttoptr i64 %21 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %4, align 8
  %23 = icmp ne %struct.TYPE_14__* %22, null
  br i1 %23, label %24, label %79

24:                                               ; preds = %18
  store i32 8, i32* %7, align 4
  store i32 0, i32* %1, align 4
  br label %25

25:                                               ; preds = %71, %24
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* %3, align 4
  %28 = sub nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %76

30:                                               ; preds = %25
  %31 = load i32, i32* %1, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %2, align 4
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i64 1
  store %struct.TYPE_14__* %34, %struct.TYPE_14__** %6, align 8
  br label %35

35:                                               ; preds = %65, %30
  %36 = load i32, i32* %2, align 4
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %70

39:                                               ; preds = %35
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %44, %49
  br i1 %50, label %51, label %64

51:                                               ; preds = %39
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @memcpy(%struct.TYPE_14__* %52, %struct.TYPE_14__* %53, i32 %54)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @memcpy(%struct.TYPE_14__* %56, %struct.TYPE_14__* %57, i32 %58)
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @memcpy(%struct.TYPE_14__* %60, %struct.TYPE_14__* %61, i32 %62)
  br label %64

64:                                               ; preds = %51, %39
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %2, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %2, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 1
  store %struct.TYPE_14__* %69, %struct.TYPE_14__** %6, align 8
  br label %35

70:                                               ; preds = %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %1, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %1, align 4
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 1
  store %struct.TYPE_14__* %75, %struct.TYPE_14__** %5, align 8
  br label %25

76:                                               ; preds = %25
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = call i32 @osi_free(%struct.TYPE_14__* %77)
  br label %79

79:                                               ; preds = %76, %18
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @osi_free(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
