; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtInitProcessShellMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtInitProcessShellMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mgmtProcessMeterMetaMsg = common dso_local global i32 0, align 4
@mgmtProcessShellMsg = common dso_local global i32* null, align 8
@TSDB_MSG_TYPE_METERINFO = common dso_local global i64 0, align 8
@mgmtProcessMetricMetaMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_METRIC_META = common dso_local global i64 0, align 8
@mgmtProcessMultiMeterMetaMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_MULTI_METERINFO = common dso_local global i64 0, align 8
@mgmtProcessCreateDbMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_DB = common dso_local global i64 0, align 8
@mgmtProcessAlterDbMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_DB = common dso_local global i64 0, align 8
@mgmtProcessCreateUserMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_USER = common dso_local global i64 0, align 8
@mgmtProcessAlterUserMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_USER = common dso_local global i64 0, align 8
@mgmtProcessCreateAcctMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_ACCT = common dso_local global i64 0, align 8
@mgmtProcessDropDbMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_DB = common dso_local global i64 0, align 8
@mgmtProcessDropUserMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_USER = common dso_local global i64 0, align 8
@mgmtProcessDropAcctMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_ACCT = common dso_local global i64 0, align 8
@mgmtProcessAlterAcctMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_ACCT = common dso_local global i64 0, align 8
@mgmtProcessCreateTableMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_TABLE = common dso_local global i64 0, align 8
@mgmtProcessDropTableMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_TABLE = common dso_local global i64 0, align 8
@mgmtProcessAlterTableMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_ALTER_TABLE = common dso_local global i64 0, align 8
@mgmtProcessUseDbMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_USE_DB = common dso_local global i64 0, align 8
@mgmtProcessRetrieveMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_RETRIEVE = common dso_local global i64 0, align 8
@mgmtProcessShowMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_SHOW = common dso_local global i64 0, align 8
@mgmtProcessConnectMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CONNECT = common dso_local global i64 0, align 8
@mgmtProcessHeartBeatMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_HEARTBEAT = common dso_local global i64 0, align 8
@mgmtProcessCreateDnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_PNODE = common dso_local global i64 0, align 8
@mgmtProcessDropDnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_PNODE = common dso_local global i64 0, align 8
@mgmtProcessCreateMnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CREATE_MNODE = common dso_local global i64 0, align 8
@mgmtProcessDropMnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_DROP_MNODE = common dso_local global i64 0, align 8
@mgmtProcessCfgMnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CFG_MNODE = common dso_local global i64 0, align 8
@mgmtProcessCfgDnodeMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CFG_PNODE = common dso_local global i64 0, align 8
@mgmtProcessKillQueryMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_KILL_QUERY = common dso_local global i64 0, align 8
@mgmtProcessKillStreamMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_KILL_STREAM = common dso_local global i64 0, align 8
@mgmtProcessKillConnectionMsg = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_KILL_CONNECTION = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mgmtInitProcessShellMsg() #0 {
  %1 = load i32, i32* @mgmtProcessMeterMetaMsg, align 4
  %2 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %3 = load i64, i64* @TSDB_MSG_TYPE_METERINFO, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @mgmtProcessMetricMetaMsg, align 4
  %6 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %7 = load i64, i64* @TSDB_MSG_TYPE_METRIC_META, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @mgmtProcessMultiMeterMetaMsg, align 4
  %10 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %11 = load i64, i64* @TSDB_MSG_TYPE_MULTI_METERINFO, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @mgmtProcessCreateDbMsg, align 4
  %14 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %15 = load i64, i64* @TSDB_MSG_TYPE_CREATE_DB, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @mgmtProcessAlterDbMsg, align 4
  %18 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %19 = load i64, i64* @TSDB_MSG_TYPE_ALTER_DB, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @mgmtProcessCreateUserMsg, align 4
  %22 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %23 = load i64, i64* @TSDB_MSG_TYPE_CREATE_USER, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @mgmtProcessAlterUserMsg, align 4
  %26 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %27 = load i64, i64* @TSDB_MSG_TYPE_ALTER_USER, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @mgmtProcessCreateAcctMsg, align 4
  %30 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %31 = load i64, i64* @TSDB_MSG_TYPE_CREATE_ACCT, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @mgmtProcessDropDbMsg, align 4
  %34 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %35 = load i64, i64* @TSDB_MSG_TYPE_DROP_DB, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @mgmtProcessDropUserMsg, align 4
  %38 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %39 = load i64, i64* @TSDB_MSG_TYPE_DROP_USER, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @mgmtProcessDropAcctMsg, align 4
  %42 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %43 = load i64, i64* @TSDB_MSG_TYPE_DROP_ACCT, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @mgmtProcessAlterAcctMsg, align 4
  %46 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %47 = load i64, i64* @TSDB_MSG_TYPE_ALTER_ACCT, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @mgmtProcessCreateTableMsg, align 4
  %50 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %51 = load i64, i64* @TSDB_MSG_TYPE_CREATE_TABLE, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @mgmtProcessDropTableMsg, align 4
  %54 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %55 = load i64, i64* @TSDB_MSG_TYPE_DROP_TABLE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @mgmtProcessAlterTableMsg, align 4
  %58 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %59 = load i64, i64* @TSDB_MSG_TYPE_ALTER_TABLE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @mgmtProcessUseDbMsg, align 4
  %62 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %63 = load i64, i64* @TSDB_MSG_TYPE_USE_DB, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @mgmtProcessRetrieveMsg, align 4
  %66 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %67 = load i64, i64* @TSDB_MSG_TYPE_RETRIEVE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @mgmtProcessShowMsg, align 4
  %70 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %71 = load i64, i64* @TSDB_MSG_TYPE_SHOW, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @mgmtProcessConnectMsg, align 4
  %74 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %75 = load i64, i64* @TSDB_MSG_TYPE_CONNECT, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @mgmtProcessHeartBeatMsg, align 4
  %78 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %79 = load i64, i64* @TSDB_MSG_TYPE_HEARTBEAT, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @mgmtProcessCreateDnodeMsg, align 4
  %82 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %83 = load i64, i64* @TSDB_MSG_TYPE_CREATE_PNODE, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @mgmtProcessDropDnodeMsg, align 4
  %86 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %87 = load i64, i64* @TSDB_MSG_TYPE_DROP_PNODE, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @mgmtProcessCreateMnodeMsg, align 4
  %90 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %91 = load i64, i64* @TSDB_MSG_TYPE_CREATE_MNODE, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @mgmtProcessDropMnodeMsg, align 4
  %94 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %95 = load i64, i64* @TSDB_MSG_TYPE_DROP_MNODE, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @mgmtProcessCfgMnodeMsg, align 4
  %98 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %99 = load i64, i64* @TSDB_MSG_TYPE_CFG_MNODE, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @mgmtProcessCfgDnodeMsg, align 4
  %102 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %103 = load i64, i64* @TSDB_MSG_TYPE_CFG_PNODE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @mgmtProcessKillQueryMsg, align 4
  %106 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %107 = load i64, i64* @TSDB_MSG_TYPE_KILL_QUERY, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @mgmtProcessKillStreamMsg, align 4
  %110 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %111 = load i64, i64* @TSDB_MSG_TYPE_KILL_STREAM, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @mgmtProcessKillConnectionMsg, align 4
  %114 = load i32*, i32** @mgmtProcessShellMsg, align 8
  %115 = load i64, i64* @TSDB_MSG_TYPE_KILL_CONNECTION, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
