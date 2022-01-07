; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddL3If.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StAddL3If.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_LAYER3_IF_EXISTS = common dso_local global i32 0, align 4
@ERR_LAYER3_IF_ADD_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LA_ADD_L3_IF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StAddL3If(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  store %struct.TYPE_13__* %12, %struct.TYPE_13__** %6, align 8
  %13 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IsSubnetMask32(i32 %19)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @IsHostIPAddress32(i32 %25)
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %29, i32* %3, align 4
  br label %103

30:                                               ; preds = %22
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %41, i32* %3, align 4
  br label %103

42:                                               ; preds = %30
  %43 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %44 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.TYPE_15__* @L3GetSw(i32* %45, i32 %48)
  store %struct.TYPE_15__* %49, %struct.TYPE_15__** %9, align 8
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %51 = icmp eq %struct.TYPE_15__* %50, null
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @ERR_LAYER3_SW_NOT_FOUND, align 4
  store i32 %53, i32* %8, align 4
  br label %101

54:                                               ; preds = %42
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @Lock(i32 %57)
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = call i32* @L3SearchIf(%struct.TYPE_15__* %59, i32 %62)
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @ERR_LAYER3_IF_EXISTS, align 4
  store i32 %66, i32* %8, align 4
  br label %94

67:                                               ; preds = %54
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @L3AddIf(%struct.TYPE_15__* %68, i32 %71, i32 %74, i32 %77)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @ERR_LAYER3_IF_ADD_FAILED, align 4
  store i32 %81, i32* %8, align 4
  br label %93

82:                                               ; preds = %67
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @ALog(%struct.TYPE_16__* %83, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %92 = call i32 @IncrementServerConfigRevision(%struct.TYPE_13__* %91)
  br label %93

93:                                               ; preds = %82, %80
  br label %94

94:                                               ; preds = %93, %65
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @Unlock(i32 %97)
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %100 = call i32 @ReleaseL3Sw(%struct.TYPE_15__* %99)
  br label %101

101:                                              ; preds = %94, %52
  %102 = load i32, i32* %8, align 4
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %101, %40, %28
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32 @IsSubnetMask32(i32) #1

declare dso_local i32 @IsHostIPAddress32(i32) #1

declare dso_local %struct.TYPE_15__* @L3GetSw(i32*, i32) #1

declare dso_local i32 @Lock(i32) #1

declare dso_local i32* @L3SearchIf(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @L3AddIf(%struct.TYPE_15__*, i32, i32, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_16__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_13__*) #1

declare dso_local i32 @Unlock(i32) #1

declare dso_local i32 @ReleaseL3Sw(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
