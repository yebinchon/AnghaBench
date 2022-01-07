; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessMeterCfgMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessMeterCfgMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32** }

@TSDB_MSG_TYPE_METER_CFG_RSP = common dso_local global i32 0, align 4
@TSDB_CODE_SERV_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"dnode:%s, vnode:%d sid:%d, meter not there\00", align 1
@TSDB_CODE_INVALID_METER_ID = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessMeterCfgMsg(i8* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %18, %struct.TYPE_12__** %12, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @htonl(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  store i32 %23, i32* %14, align 4
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @htonl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %15, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = load i32, i32* @TSDB_MSG_TYPE_METER_CFG_RSP, align 4
  %31 = call i8* @taosBuildRspMsgToDnodeWithSize(%struct.TYPE_13__* %29, i32 %30, i32 64000)
  store i8* %31, i8** %9, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %3
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = load i32, i32* @TSDB_MSG_TYPE_METER_CFG_RSP, align 4
  %37 = load i32, i32* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 4
  %38 = call i32 @taosSendSimpleRspToDnode(%struct.TYPE_13__* %35, i32 %36, i32 %37)
  store i32 0, i32* %4, align 4
  br label %114

39:                                               ; preds = %3
  %40 = load i8*, i8** %9, align 8
  store i8* %40, i8** %8, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %39
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = call %struct.TYPE_11__* @mgmtGetVgroup(i32 %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %13, align 8
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = icmp ne %struct.TYPE_11__* %57, null
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %15, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  store i32* %66, i32** %11, align 8
  br label %67

67:                                               ; preds = %59, %46
  br label %68

68:                                               ; preds = %67, %39
  %69 = load i32*, i32** %11, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %79

71:                                               ; preds = %68
  %72 = load i8*, i8** %8, align 8
  store i8 0, i8* %72, align 1
  %73 = load i8*, i8** %8, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %8, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i32, i32* %14, align 4
  %78 = call i8* @mgmtBuildCreateMeterIe(i32* %75, i8* %76, i32 %77)
  store i8* %78, i8** %8, align 8
  br label %103

79:                                               ; preds = %68
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @taosIpStr(i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = call i32 @mTrace(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %83, i32 %84, i32 %85)
  %87 = load i8, i8* @TSDB_CODE_INVALID_METER_ID, align 1
  %88 = load i8*, i8** %8, align 8
  store i8 %87, i8* %88, align 1
  %89 = load i8*, i8** %8, align 8
  %90 = getelementptr inbounds i8, i8* %89, i32 1
  store i8* %90, i8** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i8* @htonl(i32 %91)
  %93 = load i8*, i8** %8, align 8
  %94 = bitcast i8* %93 to i8**
  store i8* %92, i8** %94, align 8
  %95 = load i8*, i8** %8, align 8
  %96 = getelementptr inbounds i8, i8* %95, i64 8
  store i8* %96, i8** %8, align 8
  %97 = load i32, i32* %15, align 4
  %98 = call i8* @htonl(i32 %97)
  %99 = load i8*, i8** %8, align 8
  %100 = bitcast i8* %99 to i8**
  store i8* %98, i8** %100, align 8
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 8
  store i8* %102, i8** %8, align 8
  br label %103

103:                                              ; preds = %79, %71
  %104 = load i8*, i8** %8, align 8
  %105 = load i8*, i8** %9, align 8
  %106 = ptrtoint i8* %104 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %10, align 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %111 = load i8*, i8** %9, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @taosSendMsgToDnode(%struct.TYPE_13__* %110, i8* %111, i32 %112)
  store i32 0, i32* %4, align 4
  br label %114

114:                                              ; preds = %103, %34
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @taosBuildRspMsgToDnodeWithSize(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @taosSendSimpleRspToDnode(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.TYPE_11__* @mgmtGetVgroup(i32) #1

declare dso_local i8* @mgmtBuildCreateMeterIe(i32*, i8*, i32) #1

declare dso_local i32 @mTrace(i8*, i32, i32, i32) #1

declare dso_local i32 @taosIpStr(i32) #1

declare dso_local i32 @taosSendMsgToDnode(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
