; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessVpeerCfgMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtDnodeInt.c_mgmtProcessVpeerCfgMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@TSDB_MSG_TYPE_VPEER_CFG_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"dnode:%s, vnode:%d, vgroup:%d, send create meter msg, code:%d\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"dnode:%s, vnode:%d, no vgroup info, vgroup:%d\00", align 1
@TSDB_CODE_INVALID_VALUE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessVpeerCfgMsg(i8* %0, i32 %1, %struct.TYPE_13__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_13__* %2, %struct.TYPE_13__** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %15, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %12, align 8
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i8* @htonl(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %13, align 4
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %22 = load i32, i32* @TSDB_MSG_TYPE_VPEER_CFG_RSP, align 4
  %23 = call i8* @taosBuildRspMsgToDnode(%struct.TYPE_13__* %21, i32 %22)
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = icmp eq i8* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %103

27:                                               ; preds = %3
  %28 = load i8*, i8** %9, align 8
  store i8* %28, i8** %8, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %27
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call %struct.TYPE_12__* @mgmtGetVgroup(i32 %42)
  store %struct.TYPE_12__* %43, %struct.TYPE_12__** %12, align 8
  br label %44

44:                                               ; preds = %34, %27
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %67

47:                                               ; preds = %44
  %48 = load i8*, i8** %8, align 8
  store i8 0, i8* %48, align 1
  %49 = load i8*, i8** %8, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %8, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i8* @mgmtBuildVpeersIe(i8* %51, %struct.TYPE_12__* %52, i32 %53)
  store i8* %54, i8** %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @taosIpStr(i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %8, align 8
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = call i32 (i8*, i32, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %59, i32 %62, i32 %65)
  br label %92

67:                                               ; preds = %44
  %68 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @taosIpStr(i32 %70)
  %72 = load i32, i32* %13, align 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load i32, i32* %13, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, i32, i32, i32, ...) @mTrace(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %71, i32 %72, i32 %80)
  %82 = load i8, i8* @TSDB_CODE_INVALID_VALUE, align 1
  %83 = load i8*, i8** %8, align 8
  store i8 %82, i8* %83, align 1
  %84 = load i8*, i8** %8, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %8, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i8* @htonl(i32 %86)
  %88 = load i8*, i8** %8, align 8
  %89 = bitcast i8* %88 to i8**
  store i8* %87, i8** %89, align 8
  %90 = load i8*, i8** %8, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 8
  store i8* %91, i8** %8, align 8
  br label %92

92:                                               ; preds = %67, %47
  %93 = load i8*, i8** %8, align 8
  %94 = load i8*, i8** %9, align 8
  %95 = ptrtoint i8* %93 to i64
  %96 = ptrtoint i8* %94 to i64
  %97 = sub i64 %95, %96
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %10, align 4
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @taosSendMsgToDnode(%struct.TYPE_13__* %99, i8* %100, i32 %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %92, %26
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @taosBuildRspMsgToDnode(%struct.TYPE_13__*, i32) #1

declare dso_local %struct.TYPE_12__* @mgmtGetVgroup(i32) #1

declare dso_local i8* @mgmtBuildVpeersIe(i8*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @mTrace(i8*, i32, i32, i32, ...) #1

declare dso_local i32 @taosIpStr(i32) #1

declare dso_local i32 @taosSendMsgToDnode(%struct.TYPE_13__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
