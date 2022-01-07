; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDelL3If.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StDelL3If.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_9__ = type { i32, i32 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@ERR_LAYER3_SW_NOT_FOUND = common dso_local global i32 0, align 4
@ERR_LAYER3_IF_DEL_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"LA_DEL_L3_IF\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StDelL3If(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  %15 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %17 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @L3GetSw(i32* %18, i32 %21)
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @ERR_LAYER3_SW_NOT_FOUND, align 4
  store i32 %26, i32* %7, align 4
  br label %50

27:                                               ; preds = %2
  %28 = load i32*, i32** %8, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @L3DelIf(i32* %28, i32 %31)
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @ERR_LAYER3_IF_DEL_FAILED, align 4
  store i32 %35, i32* %7, align 4
  br label %47

36:                                               ; preds = %27
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ALog(%struct.TYPE_10__* %37, i32* null, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43)
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %46 = call i32 @IncrementServerConfigRevision(%struct.TYPE_8__* %45)
  br label %47

47:                                               ; preds = %36, %34
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @ReleaseL3Sw(i32* %48)
  br label %50

50:                                               ; preds = %47, %25
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32* @L3GetSw(i32*, i32) #1

declare dso_local i32 @L3DelIf(i32*, i32) #1

declare dso_local i32 @ALog(%struct.TYPE_10__*, i32*, i8*, i32, i32) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_8__*) #1

declare dso_local i32 @ReleaseL3Sw(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
