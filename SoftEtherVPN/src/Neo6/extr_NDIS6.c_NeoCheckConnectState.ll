; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoCheckConnectState.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Neo6/extr_NDIS6.c_NeoCheckConnectState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, i64, i32, i64, i32* }
%struct.TYPE_8__ = type { i32, i8*, %struct.TYPE_8__*, i32, i32, i32, i32, i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ctx = common dso_local global %struct.TYPE_9__* null, align 8
@NDIS_OBJECT_TYPE_STATUS_INDICATION = common dso_local global i32 0, align 4
@NDIS_STATUS_INDICATION_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_STATUS_INDICATION_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_OBJECT_TYPE_DEFAULT = common dso_local global i32 0, align 4
@NDIS_LINK_STATE_REVISION_1 = common dso_local global i32 0, align 4
@NDIS_SIZEOF_LINK_STATE_REVISION_1 = common dso_local global i32 0, align 4
@NdisPauseFunctionsSendAndReceive = common dso_local global i32 0, align 4
@max_speed = common dso_local global i32 0, align 4
@NdisPauseFunctionsUnsupported = common dso_local global i32 0, align 4
@NDIS_STATUS_LINK_STATE = common dso_local global i32 0, align 4
@keep_link = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@MediaConnectStateConnected = common dso_local global i8* null, align 8
@MediaConnectStateDisconnected = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @NeoCheckConnectState() #0 {
  %1 = alloca %struct.TYPE_8__, align 8
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %4 = icmp eq %struct.TYPE_9__* %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 4
  %8 = load i32*, i32** %7, align 8
  %9 = icmp eq i32* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %5, %0
  br label %117

11:                                               ; preds = %5
  %12 = call i32 @NeoZero(%struct.TYPE_8__* %1, i32 64)
  %13 = load i32, i32* @NDIS_OBJECT_TYPE_STATUS_INDICATION, align 4
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @NDIS_STATUS_INDICATION_REVISION_1, align 4
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @NDIS_SIZEOF_STATUS_INDICATION_REVISION_1, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 4
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 9
  store i32* %24, i32** %25, align 8
  %26 = call i32 @NeoZero(%struct.TYPE_8__* %2, i32 64)
  %27 = load i32, i32* @NDIS_OBJECT_TYPE_DEFAULT, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @NDIS_LINK_STATE_REVISION_1, align 4
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* @NDIS_SIZEOF_LINK_STATE_REVISION_1, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @NdisPauseFunctionsSendAndReceive, align 4
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 7
  store i32 %36, i32* %37, align 8
  %38 = load i32, i32* @max_speed, align 4
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 5
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 6
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @NdisPauseFunctionsUnsupported, align 4
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 4
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* @NDIS_STATUS_LINK_STATE, align 4
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 3
  store i32 %43, i32* %44, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 2
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %1, i32 0, i32 0
  store i32 64, i32* %46, align 8
  %47 = load i32, i32* @keep_link, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %95

49:                                               ; preds = %11
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %49
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %94

62:                                               ; preds = %57, %49
  %63 = load i64, i64* @FALSE, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @FALSE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %93

77:                                               ; preds = %62
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %77
  %83 = load i8*, i8** @MediaConnectStateConnected, align 8
  br label %86

84:                                               ; preds = %77
  %85 = load i8*, i8** @MediaConnectStateDisconnected, align 8
  br label %86

86:                                               ; preds = %84, %82
  %87 = phi i8* [ %83, %82 ], [ %85, %84 ]
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* %87, i8** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @NdisMIndicateStatusEx(i32* %91, %struct.TYPE_8__* %1)
  br label %93

93:                                               ; preds = %86, %62
  br label %94

94:                                               ; preds = %93, %57
  br label %117

95:                                               ; preds = %11
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %95
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @FALSE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %100
  %109 = load i8*, i8** @MediaConnectStateConnected, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 1
  store i8* %109, i8** %110, align 8
  %111 = load %struct.TYPE_9__*, %struct.TYPE_9__** @ctx, align 8
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 4
  %113 = load i32*, i32** %112, align 8
  %114 = call i32 @NdisMIndicateStatusEx(i32* %113, %struct.TYPE_8__* %1)
  br label %115

115:                                              ; preds = %108, %100
  br label %116

116:                                              ; preds = %115, %95
  br label %117

117:                                              ; preds = %10, %116, %94
  ret void
}

declare dso_local i32 @NeoZero(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @NdisMIndicateStatusEx(i32*, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
