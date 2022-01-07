; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StStopL3Switch.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StStopL3Switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@ERR_INVALID_PARAMETER = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"LA_STOP_L3_SW\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StStopL3Switch(%struct.TYPE_15__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %5, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %7, align 8
  %16 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %16, i32* %8, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @IsEmptyStr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @ERR_INVALID_PARAMETER, align 4
  store i32 %23, i32* %3, align 4
  br label %50

24:                                               ; preds = %2
  %25 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %26 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_14__* @L3GetSw(i32* %27, i32 %30)
  store %struct.TYPE_14__* %31, %struct.TYPE_14__** %9, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %33 = icmp eq %struct.TYPE_14__* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @ERR_LAYER3_SW_NOT_FOUND, align 4
  store i32 %35, i32* %8, align 4
  br label %48

36:                                               ; preds = %24
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %38 = call i32 @L3SwStop(%struct.TYPE_14__* %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ALog(%struct.TYPE_15__* %39, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %45 = call i32 @ReleaseL3Sw(%struct.TYPE_14__* %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %47 = call i32 @IncrementServerConfigRevision(%struct.TYPE_12__* %46)
  br label %48

48:                                               ; preds = %36, %34
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %22
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i64 @IsEmptyStr(i32) #1

declare dso_local %struct.TYPE_14__* @L3GetSw(i32*, i32) #1

declare dso_local i32 @L3SwStop(%struct.TYPE_14__*) #1

declare dso_local i32 @ALog(%struct.TYPE_15__*, i32*, i8*, i32) #1

declare dso_local i32 @ReleaseL3Sw(%struct.TYPE_14__*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
