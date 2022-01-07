; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_start_authorization.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/btm/extr_btm_sec.c_btm_sec_start_authorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (i32, i32, i32, i64*, i64, i64)* }
%struct.TYPE_9__ = type { i32, i64, i64, i32, i64, i32, i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64*, i64* }

@BTM_SEC_NAME_KNOWN = common dso_local global i32 0, align 4
@BTM_SEC_INVALID_HANDLE = common dso_local global i64 0, align 8
@btm_cb = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@BTM_MODE_UNSUPPORTED = common dso_local global i64 0, align 8
@BTM_SEC_NO_LAST_SERVICE_ID = common dso_local global i64 0, align 8
@BTM_SEC_STATE_AUTHORIZING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [83 x i8] c"btm_sec_start_authorization: (Ignoring extra Authorization prompt for service %d)\0A\00", align 1
@BTM_SUCCESS = common dso_local global i64 0, align 8
@BTM_SEC_AUTHORIZED = common dso_local global i32 0, align 4
@BTM_SEC_STATE_IDLE = common dso_local global i32 0, align 4
@BTM_CMD_STARTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*)* @btm_sec_start_authorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @btm_sec_start_authorization(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64* null, i64** %5, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @BTM_SEC_NAME_KNOWN, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @BTM_SEC_INVALID_HANDLE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %96

19:                                               ; preds = %13, %1
  %20 = load i64 (i32, i32, i32, i64*, i64, i64)*, i64 (i32, i32, i32, i64*, i64, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %21 = icmp ne i64 (i32, i32, i32, i64*, i64, i64)* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %19
  %23 = load i64, i64* @BTM_MODE_UNSUPPORTED, align 8
  store i64 %23, i64* %2, align 8
  br label %100

24:                                               ; preds = %19
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %6, align 8
  br label %36

35:                                               ; preds = %24
  store i64 0, i64* %6, align 8
  br label %36

36:                                               ; preds = %35, %29
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BTM_SEC_NO_LAST_SERVICE_ID, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %42, %36
  %49 = load i32, i32* @BTM_SEC_STATE_AUTHORIZING, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = load i64 (i32, i32, i32, i64*, i64, i64)*, i64 (i32, i32, i32, i64*, i64, i64)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @btm_cb, i32 0, i32 0, i32 0), align 8
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 7
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 5
  %61 = load i32, i32* %60, align 8
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i64 %52(i32 %55, i32 %58, i32 %61, i64* %62, i64 %63, i64 %66)
  store i64 %67, i64* %4, align 8
  br label %72

68:                                               ; preds = %42
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @BTM_TRACE_DEBUG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i64 %69)
  %71 = load i64, i64* @BTM_SUCCESS, align 8
  store i64 %71, i64* %2, align 8
  br label %100

72:                                               ; preds = %48
  %73 = load i64, i64* %4, align 8
  %74 = load i64, i64* @BTM_SUCCESS, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %72
  %77 = load i32, i32* @BTM_SEC_AUTHORIZED, align 4
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %90, label %86

86:                                               ; preds = %76
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  br label %90

90:                                               ; preds = %86, %76
  %91 = load i32, i32* @BTM_SEC_STATE_IDLE, align 4
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %90, %72
  %95 = load i64, i64* %4, align 8
  store i64 %95, i64* %2, align 8
  br label %100

96:                                               ; preds = %13
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %98 = call i32 @btm_sec_start_get_name(%struct.TYPE_9__* %97)
  %99 = load i64, i64* @BTM_CMD_STARTED, align 8
  store i64 %99, i64* %2, align 8
  br label %100

100:                                              ; preds = %96, %94, %68, %22
  %101 = load i64, i64* %2, align 8
  ret i64 %101
}

declare dso_local i32 @BTM_TRACE_DEBUG(i8*, i64) #1

declare dso_local i32 @btm_sec_start_get_name(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
