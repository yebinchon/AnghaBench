; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteIpTable.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDeleteIpTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64, i32, i32* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_17__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i64 0, align 8
@CHECK_RIGHT = common dso_local global i32 0, align 4
@ERR_HUB_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"no_delete_iptable\00", align 1
@ERR_NOT_ENOUGH_RIGHT = common dso_local global i64 0, align 8
@ERR_OBJECT_NOT_FOUND = common dso_local global i64 0, align 8
@SERVER_TYPE_FARM_CONTROLLER = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @StDeleteIpTable(%struct.TYPE_18__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %8, align 8
  %19 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @CHECK_RIGHT, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @LockHubList(i32* %21)
  %23 = load i32*, i32** %7, align 8
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.TYPE_16__* @GetHub(i32* %23, i32 %26)
  store %struct.TYPE_16__* %27, %struct.TYPE_16__** %8, align 8
  %28 = load i32*, i32** %7, align 8
  %29 = call i32 @UnlockHubList(i32* %28)
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %31 = icmp eq %struct.TYPE_16__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i64, i64* @ERR_HUB_NOT_FOUND, align 8
  store i64 %33, i64* %3, align 8
  br label %138

34:                                               ; preds = %2
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %41 = call i64 @GetHubAdminOption(%struct.TYPE_16__* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = call i32 @ReleaseHub(%struct.TYPE_16__* %44)
  %46 = load i64, i64* @ERR_NOT_ENOUGH_RIGHT, align 8
  store i64 %46, i64* %3, align 8
  br label %138

47:                                               ; preds = %39, %34
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @LockList(i32 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @IsInListKey(i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %75

60:                                               ; preds = %47
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32* @ListKeyToPointer(i32 %63, i32 %66)
  store i32* %67, i32** %10, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @Free(i32* %68)
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = call i32 @Delete(i32 %72, i32* %73)
  br label %77

75:                                               ; preds = %47
  %76 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  store i64 %76, i64* %9, align 8
  br label %77

77:                                               ; preds = %75, %60
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @UnlockList(i32 %80)
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @ERR_OBJECT_NOT_FOUND, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %134

85:                                               ; preds = %77
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @SERVER_TYPE_FARM_CONTROLLER, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %133

91:                                               ; preds = %85
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @LockList(i32 %94)
  store i64 0, i64* %11, align 8
  br label %96

96:                                               ; preds = %125, %91
  %97 = load i64, i64* %11, align 8
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @LIST_NUM(i32 %100)
  %102 = icmp slt i64 %97, %101
  br i1 %102, label %103, label %128

103:                                              ; preds = %96
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = call %struct.TYPE_17__* @LIST_DATA(i32 %106, i64 %107)
  store %struct.TYPE_17__* %108, %struct.TYPE_17__** %12, align 8
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %124

113:                                              ; preds = %103
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @SiCallDeleteIpTable(%struct.TYPE_14__* %114, %struct.TYPE_17__* %115, i32 %118, i32 %121)
  %123 = load i64, i64* @ERR_NO_ERROR, align 8
  store i64 %123, i64* %9, align 8
  br label %124

124:                                              ; preds = %113, %103
  br label %125

125:                                              ; preds = %124
  %126 = load i64, i64* %11, align 8
  %127 = add nsw i64 %126, 1
  store i64 %127, i64* %11, align 8
  br label %96

128:                                              ; preds = %96
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @UnlockList(i32 %131)
  br label %133

133:                                              ; preds = %128, %85
  br label %134

134:                                              ; preds = %133, %77
  %135 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %136 = call i32 @ReleaseHub(%struct.TYPE_16__* %135)
  %137 = load i64, i64* %9, align 8
  store i64 %137, i64* %3, align 8
  br label %138

138:                                              ; preds = %134, %43, %32
  %139 = load i64, i64* %3, align 8
  ret i64 %139
}

declare dso_local i32 @LockHubList(i32*) #1

declare dso_local %struct.TYPE_16__* @GetHub(i32*, i32) #1

declare dso_local i32 @UnlockHubList(i32*) #1

declare dso_local i64 @GetHubAdminOption(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @ReleaseHub(%struct.TYPE_16__*) #1

declare dso_local i32 @LockList(i32) #1

declare dso_local i64 @IsInListKey(i32, i32) #1

declare dso_local i32* @ListKeyToPointer(i32, i32) #1

declare dso_local i32 @Free(i32*) #1

declare dso_local i32 @Delete(i32, i32*) #1

declare dso_local i32 @UnlockList(i32) #1

declare dso_local i64 @LIST_NUM(i32) #1

declare dso_local %struct.TYPE_17__* @LIST_DATA(i32, i64) #1

declare dso_local i32 @SiCallDeleteIpTable(%struct.TYPE_14__*, %struct.TYPE_17__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
