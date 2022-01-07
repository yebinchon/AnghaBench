; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSearchExt.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/bta/dm/extr_bta_dm_api.c_BTA_DmSearchExt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_15__ = type { i32, i32*, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@BTA_DM_API_SEARCH_EVT = common dso_local global i32 0, align 4
@BTA_DM_RS_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BTA_DmSearchExt(%struct.TYPE_14__* %0, %struct.TYPE_14__* %1, %struct.TYPE_14__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %10 = icmp ne %struct.TYPE_14__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = add i64 40, %16
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %11
  %20 = phi i64 [ %17, %11 ], [ 40, %18 ]
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i64 @osi_malloc(i32 %22)
  %24 = inttoptr i64 %23 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %24, %struct.TYPE_15__** %7, align 8
  %25 = icmp ne %struct.TYPE_15__* %24, null
  br i1 %25, label %26, label %87

26:                                               ; preds = %19
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @memset(%struct.TYPE_15__* %27, i32 0, i32 %28)
  %30 = load i32, i32* @BTA_DM_API_SEARCH_EVT, align 4
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 6
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = call i32 @memcpy(i32* %35, %struct.TYPE_14__* %36, i32 24)
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 4
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %40, align 8
  %41 = load i32, i32* @BTA_DM_RS_NONE, align 4
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %45 = icmp ne %struct.TYPE_14__* %44, null
  br i1 %45, label %46, label %84

46:                                               ; preds = %26
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %80

61:                                               ; preds = %46
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %62, i64 1
  %64 = bitcast %struct.TYPE_15__* %63 to i32*
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 1
  store i32* %64, i32** %66, align 8
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = sext i32 %75 to i64
  %77 = mul i64 4, %76
  %78 = trunc i64 %77 to i32
  %79 = call i32 @memcpy(i32* %69, %struct.TYPE_14__* %72, i32 %78)
  br label %83

80:                                               ; preds = %46
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 1
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %80, %61
  br label %84

84:                                               ; preds = %83, %26
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %86 = call i32 @bta_sys_sendmsg(%struct.TYPE_15__* %85)
  br label %87

87:                                               ; preds = %84, %19
  ret void
}

declare dso_local i64 @osi_malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @bta_sys_sendmsg(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
