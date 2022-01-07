; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setDefaultOrderInfo.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParser.c_setDefaultOrderInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_8__ = type { i32, i8* }

@TSQL_SO_ASC = common dso_local global i8* null, align 8
@PRIMARYKEY_TIMESTAMP_COL_INDEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @setDefaultOrderInfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setDefaultOrderInfo(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %4 = load i8*, i8** @TSQL_SO_ASC, align 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  store i8* %4, i8** %7, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = call i32* @tscGetMeterMetaInfo(%struct.TYPE_9__* %8, i32 0)
  store i32* %9, i32** %3, align 8
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = call i64 @isTopBottomQuery(%struct.TYPE_9__* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load i8*, i8** @TSQL_SO_ASC, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load i32, i32* @PRIMARYKEY_TIMESTAMP_COL_INDEX, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store i32 -1, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %13
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @UTIL_METER_IS_METRIC(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** @TSQL_SO_ASC, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %30, %26
  ret void
}

declare dso_local i32* @tscGetMeterMetaInfo(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @isTopBottomQuery(%struct.TYPE_9__*) #1

declare dso_local i64 @UTIL_METER_IS_METRIC(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
