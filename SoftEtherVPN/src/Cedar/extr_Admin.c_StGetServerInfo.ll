; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetServerInfo.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StGetServerInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.TYPE_13__*, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ERR_INTERNAL_ERROR = common dso_local global i32 0, align 4
@BUILD_DATE_Y = common dso_local global i32 0, align 4
@BUILD_DATE_M = common dso_local global i32 0, align 4
@BUILD_DATE_D = common dso_local global i32 0, align 4
@BUILD_DATE_HO = common dso_local global i32 0, align 4
@BUILD_DATE_MI = common dso_local global i32 0, align 4
@BUILD_DATE_SE = common dso_local global i32 0, align 4
@UPDATE_FAMILY_NAME = common dso_local global i32 0, align 4
@ERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StGetServerInfo(%struct.TYPE_16__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_14__, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %9 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %10 = icmp eq %struct.TYPE_16__* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %13 = icmp eq %struct.TYPE_14__* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @ERR_INTERNAL_ERROR, align 4
  store i32 %15, i32* %3, align 4
  br label %99

16:                                               ; preds = %11
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %18 = call i32 @FreeRpcServerInfo(%struct.TYPE_14__* %17)
  %19 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %20 = call i32 @Zero(%struct.TYPE_14__* %19, i32 64)
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %24, align 8
  store %struct.TYPE_15__* %25, %struct.TYPE_15__** %6, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GetServerProductName(%struct.TYPE_12__* %28, i32 %31, i32 4)
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @StrCpy(i32 %35, i32 4, i32 %38)
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @StrCpy(i32 %42, i32 4, i32 %45)
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 12
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 11
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @GetMachineName(i32 %59, i32 4)
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 9
  store i32 %65, i32* %67, align 4
  %68 = call i32 @Zero(%struct.TYPE_14__* %8, i32 64)
  %69 = load i32, i32* @BUILD_DATE_Y, align 4
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 8
  store i32 %69, i32* %70, align 4
  %71 = load i32, i32* @BUILD_DATE_M, align 4
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 7
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* @BUILD_DATE_D, align 4
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 6
  store i32 %73, i32* %74, align 4
  %75 = load i32, i32* @BUILD_DATE_HO, align 4
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 5
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* @BUILD_DATE_MI, align 4
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 4
  store i32 %77, i32* %78, align 4
  %79 = load i32, i32* @BUILD_DATE_SE, align 4
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 3
  store i32 %79, i32* %80, align 4
  %81 = call i32 @SystemToUINT64(%struct.TYPE_14__* %8)
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 4
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @UPDATE_FAMILY_NAME, align 4
  %88 = call i32 @StrCpy(i32 %86, i32 4, i32 %87)
  %89 = call i32* (...) @GetOsInfo()
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %97

92:                                               ; preds = %16
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32*, i32** %7, align 8
  %96 = call i32 @CopyOsInfo(i32* %94, i32* %95)
  br label %97

97:                                               ; preds = %92, %16
  %98 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %98, i32* %3, align 4
  br label %99

99:                                               ; preds = %97, %14
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

declare dso_local i32 @FreeRpcServerInfo(%struct.TYPE_14__*) #1

declare dso_local i32 @Zero(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @GetServerProductName(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32) #1

declare dso_local i32 @GetMachineName(i32, i32) #1

declare dso_local i32 @SystemToUINT64(%struct.TYPE_14__*) #1

declare dso_local i32* @GetOsInfo(...) #1

declare dso_local i32 @CopyOsInfo(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
