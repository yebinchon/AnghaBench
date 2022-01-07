; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessMsgFromMgmt.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_dnodeMgmt.c_vnodeProcessMsgFromMgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TSDB_MSG_TYPE_CREATE = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_VPEERS = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_VPEER_CFG_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_METER_CFG_RSP = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_REMOVE = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_FREE_VNODE = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CFG_PNODE = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_STREAM = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_GRANT_RSP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"%s is not processed\00", align 1
@taosMsg = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnodeProcessMsgFromMgmt(i8* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @TSDB_MSG_TYPE_CREATE, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %17

12:                                               ; preds = %4
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = call i32 @vnodeProcessCreateMeterRequest(i8* %13, i32 %14, i32* %15)
  br label %100

17:                                               ; preds = %4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @TSDB_MSG_TYPE_VPEERS, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load i8*, i8** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @vnodeProcessVPeersMsg(i8* %22, i32 %23, i32* %24)
  br label %99

26:                                               ; preds = %17
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @TSDB_MSG_TYPE_VPEER_CFG_RSP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @vnodeProcessVPeerCfgRsp(i8* %31, i32 %32, i32* %33)
  br label %98

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @TSDB_MSG_TYPE_METER_CFG_RSP, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %8, align 8
  %43 = call i32 @vnodeProcessMeterCfgRsp(i8* %40, i32 %41, i32* %42)
  br label %97

44:                                               ; preds = %35
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @TSDB_MSG_TYPE_REMOVE, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i8*, i8** %5, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @vnodeProcessRemoveMeterRequest(i8* %49, i32 %50, i32* %51)
  br label %96

53:                                               ; preds = %44
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @TSDB_MSG_TYPE_FREE_VNODE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %53
  %58 = load i8*, i8** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @vnodeProcessFreeVnodeRequest(i8* %58, i32 %59, i32* %60)
  br label %95

62:                                               ; preds = %53
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @TSDB_MSG_TYPE_CFG_PNODE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %62
  %67 = load i8*, i8** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @vnodeProcessCfgDnodeRequest(i8* %67, i32 %68, i32* %69)
  br label %94

71:                                               ; preds = %62
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @TSDB_MSG_TYPE_ALTER_STREAM, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %71
  %76 = load i8*, i8** %5, align 8
  %77 = load i32, i32* %6, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @vnodeProcessAlterStreamRequest(i8* %76, i32 %77, i32* %78)
  br label %93

80:                                               ; preds = %71
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* @TSDB_MSG_TYPE_GRANT_RSP, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %80
  br label %92

85:                                               ; preds = %80
  %86 = load i32*, i32** @taosMsg, align 8
  %87 = load i32, i32* %7, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dError(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %90)
  br label %92

92:                                               ; preds = %85, %84
  br label %93

93:                                               ; preds = %92, %75
  br label %94

94:                                               ; preds = %93, %66
  br label %95

95:                                               ; preds = %94, %57
  br label %96

96:                                               ; preds = %95, %48
  br label %97

97:                                               ; preds = %96, %39
  br label %98

98:                                               ; preds = %97, %30
  br label %99

99:                                               ; preds = %98, %21
  br label %100

100:                                              ; preds = %99, %12
  ret void
}

declare dso_local i32 @vnodeProcessCreateMeterRequest(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessVPeersMsg(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessVPeerCfgRsp(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessMeterCfgRsp(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessRemoveMeterRequest(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessFreeVnodeRequest(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessCfgDnodeRequest(i8*, i32, i32*) #1

declare dso_local i32 @vnodeProcessAlterStreamRequest(i8*, i32, i32*) #1

declare dso_local i32 @dError(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
