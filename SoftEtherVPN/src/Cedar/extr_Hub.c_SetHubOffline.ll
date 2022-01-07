; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetHubOffline.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_SetHubOffline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i32, i32, %struct.TYPE_12__*, i32, i32, i32*, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i32*, i32 }

@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8
@HUB_TYPE_FARM_DYNAMIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"LH_OFFLINE\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SetHubOffline(%struct.TYPE_14__* %0) #0 {
  %2 = alloca %struct.TYPE_14__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %7 = icmp eq %struct.TYPE_14__* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %136

9:                                                ; preds = %1
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %10, i32 0, i32 3
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = icmp ne %struct.TYPE_11__* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %9
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %16
  %27 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HUB_TYPE_FARM_DYNAMIC, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %26
  br label %34

34:                                               ; preds = %33, %16, %9
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @Lock(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %34
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 7
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45, %34
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @Unlock(i32 %53)
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 1
  store i32 0, i32* %56, align 8
  br label %136

57:                                               ; preds = %45
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %59 = call i32 @HLog(%struct.TYPE_14__* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %61 = call i32 @StopAllLink(%struct.TYPE_14__* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 6
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @SnFreeSecureNAT(i32* %64)
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 6
  store i32* null, i32** %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @LockList(i32 %72)
  store i64 0, i64* %3, align 8
  br label %74

74:                                               ; preds = %107, %57
  %75 = load i64, i64* %3, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 3
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @LIST_NUM(i32 %80)
  %82 = icmp slt i64 %75, %81
  br i1 %82, label %83, label %110

83:                                               ; preds = %74
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i64, i64* %3, align 8
  %90 = call %struct.TYPE_13__* @LIST_DATA(i32 %88, i64 %89)
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %5, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @StrCmpi(i32 %93, i32 %96)
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %83
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @BrFreeBridge(i32* %102)
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 0
  store i32* null, i32** %105, align 8
  br label %106

106:                                              ; preds = %99, %83
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %3, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %3, align 8
  br label %74

110:                                              ; preds = %74
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @UnlockList(i32 %115)
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 4
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %120 = call i32 @StopAllSession(%struct.TYPE_14__* %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @Unlock(i32 %123)
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 1
  store i32 0, i32* %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = icmp ne %struct.TYPE_11__* %131, null
  br i1 %132, label %133, label %136

133:                                              ; preds = %110
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %2, align 8
  %135 = call i32 @SiHubOfflineProc(%struct.TYPE_14__* %134)
  br label %136

136:                                              ; preds = %8, %50, %133, %110
  ret void
}

declare dso_local i32 @Lock(i32) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @HLog(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @StopAllLink(%struct.TYPE_14__*) #1

declare dso_local i32 @SnFreeSecureNAT(i32*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_13__* @LIST_DATA(i32, i64) #1

declare dso_local i64 @StrCmpi(i32, i32) #1

declare dso_local i32 @BrFreeBridge(i32*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i32 @StopAllSession(%struct.TYPE_14__*) #1

declare dso_local i32 @SiHubOfflineProc(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
