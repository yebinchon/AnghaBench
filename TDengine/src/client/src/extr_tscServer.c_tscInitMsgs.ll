; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscInitMsgs.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscServer.c_tscInitMsgs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tscBuildQueryMsg = common dso_local global i32 0, align 4
@tscBuildMsg = common dso_local global i32* null, align 8
@TSDB_SQL_SELECT = common dso_local global i64 0, align 8
@tscBuildSubmitMsg = common dso_local global i32 0, align 4
@TSDB_SQL_INSERT = common dso_local global i64 0, align 8
@tscBuildRetrieveMsg = common dso_local global i32 0, align 4
@TSDB_SQL_FETCH = common dso_local global i64 0, align 8
@tscBuildCreateDbMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CREATE_DB = common dso_local global i64 0, align 8
@tscBuildCreateUserMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CREATE_USER = common dso_local global i64 0, align 8
@tscBuildCreateAcctMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CREATE_ACCT = common dso_local global i64 0, align 8
@tscBuildAlterAcctMsg = common dso_local global i32 0, align 4
@TSDB_SQL_ALTER_ACCT = common dso_local global i64 0, align 8
@tscBuildCreateTableMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CREATE_TABLE = common dso_local global i64 0, align 8
@tscBuildDropUserMsg = common dso_local global i32 0, align 4
@TSDB_SQL_DROP_USER = common dso_local global i64 0, align 8
@tscBuildDropAcctMsg = common dso_local global i32 0, align 4
@TSDB_SQL_DROP_ACCT = common dso_local global i64 0, align 8
@tscBuildDropDbMsg = common dso_local global i32 0, align 4
@TSDB_SQL_DROP_DB = common dso_local global i64 0, align 8
@tscBuildDropTableMsg = common dso_local global i32 0, align 4
@TSDB_SQL_DROP_TABLE = common dso_local global i64 0, align 8
@tscBuildAlterUserMsg = common dso_local global i32 0, align 4
@TSDB_SQL_ALTER_USER = common dso_local global i64 0, align 8
@tscBuildCreateDnodeMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CREATE_DNODE = common dso_local global i64 0, align 8
@tscBuildDropDnodeMsg = common dso_local global i32 0, align 4
@TSDB_SQL_DROP_DNODE = common dso_local global i64 0, align 8
@tscBuildCfgDnodeMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CFG_DNODE = common dso_local global i64 0, align 8
@tscBuildAlterTableMsg = common dso_local global i32 0, align 4
@TSDB_SQL_ALTER_TABLE = common dso_local global i64 0, align 8
@tscAlterDbMsg = common dso_local global i32 0, align 4
@TSDB_SQL_ALTER_DB = common dso_local global i64 0, align 8
@tscBuildConnectMsg = common dso_local global i32 0, align 4
@TSDB_SQL_CONNECT = common dso_local global i64 0, align 8
@tscBuildUseDbMsg = common dso_local global i32 0, align 4
@TSDB_SQL_USE_DB = common dso_local global i64 0, align 8
@tscBuildMeterMetaMsg = common dso_local global i32 0, align 4
@TSDB_SQL_META = common dso_local global i64 0, align 8
@tscBuildMetricMetaMsg = common dso_local global i32 0, align 4
@TSDB_SQL_METRIC = common dso_local global i64 0, align 8
@tscBuildMultiMeterMetaMsg = common dso_local global i32 0, align 4
@TSDB_SQL_MULTI_META = common dso_local global i64 0, align 8
@tscBuildHeartBeatMsg = common dso_local global i32 0, align 4
@TSDB_SQL_HB = common dso_local global i64 0, align 8
@tscBuildShowMsg = common dso_local global i32 0, align 4
@TSDB_SQL_SHOW = common dso_local global i64 0, align 8
@tscBuildRetrieveFromMgmtMsg = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE = common dso_local global i64 0, align 8
@tscBuildKillQueryMsg = common dso_local global i32 0, align 4
@TSDB_SQL_KILL_QUERY = common dso_local global i64 0, align 8
@tscBuildKillStreamMsg = common dso_local global i32 0, align 4
@TSDB_SQL_KILL_STREAM = common dso_local global i64 0, align 8
@tscBuildKillConnectionMsg = common dso_local global i32 0, align 4
@TSDB_SQL_KILL_CONNECTION = common dso_local global i64 0, align 8
@tscProcessQueryRsp = common dso_local global i32 0, align 4
@tscProcessMsgRsp = common dso_local global i32* null, align 8
@tscProcessRetrieveRspFromVnode = common dso_local global i32 0, align 4
@tscProcessDropDbRsp = common dso_local global i32 0, align 4
@tscProcessDropTableRsp = common dso_local global i32 0, align 4
@tscProcessConnectRsp = common dso_local global i32 0, align 4
@tscProcessUseDbRsp = common dso_local global i32 0, align 4
@tscProcessMeterMetaRsp = common dso_local global i32 0, align 4
@tscProcessMetricMetaRsp = common dso_local global i32 0, align 4
@tscProcessMultiMeterMetaRsp = common dso_local global i32 0, align 4
@tscProcessShowRsp = common dso_local global i32 0, align 4
@tscProcessRetrieveRspFromMgmt = common dso_local global i32 0, align 4
@tscProcessDescribeTableRsp = common dso_local global i32 0, align 4
@TSDB_SQL_DESCRIBE_TABLE = common dso_local global i64 0, align 8
@tscProcessTagRetrieveRsp = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_TAGS = common dso_local global i64 0, align 8
@tscProcessEmptyResultRsp = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_EMPTY_RESULT = common dso_local global i64 0, align 8
@tscProcessRetrieveMetricRsp = common dso_local global i32 0, align 4
@TSDB_SQL_RETRIEVE_METRIC = common dso_local global i64 0, align 8
@tscProcessAlterTableMsgRsp = common dso_local global i32 0, align 4
@tscProcessAlterDbMsgRsp = common dso_local global i32 0, align 4
@tscKeepConn = common dso_local global i32* null, align 8
@tscUpdateVnodeInQueryMsg = common dso_local global i32 0, align 4
@tscUpdateVnodeMsg = common dso_local global i32* null, align 8
@tscUpdateVnodeInSubmitMsg = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tscInitMsgs() #0 {
  %1 = load i32, i32* @tscBuildQueryMsg, align 4
  %2 = load i32*, i32** @tscBuildMsg, align 8
  %3 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %4 = getelementptr inbounds i32, i32* %2, i64 %3
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @tscBuildSubmitMsg, align 4
  %6 = load i32*, i32** @tscBuildMsg, align 8
  %7 = load i64, i64* @TSDB_SQL_INSERT, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  store i32 %5, i32* %8, align 4
  %9 = load i32, i32* @tscBuildRetrieveMsg, align 4
  %10 = load i32*, i32** @tscBuildMsg, align 8
  %11 = load i64, i64* @TSDB_SQL_FETCH, align 8
  %12 = getelementptr inbounds i32, i32* %10, i64 %11
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @tscBuildCreateDbMsg, align 4
  %14 = load i32*, i32** @tscBuildMsg, align 8
  %15 = load i64, i64* @TSDB_SQL_CREATE_DB, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32 %13, i32* %16, align 4
  %17 = load i32, i32* @tscBuildCreateUserMsg, align 4
  %18 = load i32*, i32** @tscBuildMsg, align 8
  %19 = load i64, i64* @TSDB_SQL_CREATE_USER, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @tscBuildCreateAcctMsg, align 4
  %22 = load i32*, i32** @tscBuildMsg, align 8
  %23 = load i64, i64* @TSDB_SQL_CREATE_ACCT, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32 %21, i32* %24, align 4
  %25 = load i32, i32* @tscBuildAlterAcctMsg, align 4
  %26 = load i32*, i32** @tscBuildMsg, align 8
  %27 = load i64, i64* @TSDB_SQL_ALTER_ACCT, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @tscBuildCreateTableMsg, align 4
  %30 = load i32*, i32** @tscBuildMsg, align 8
  %31 = load i64, i64* @TSDB_SQL_CREATE_TABLE, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32, i32* @tscBuildDropUserMsg, align 4
  %34 = load i32*, i32** @tscBuildMsg, align 8
  %35 = load i64, i64* @TSDB_SQL_DROP_USER, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @tscBuildDropAcctMsg, align 4
  %38 = load i32*, i32** @tscBuildMsg, align 8
  %39 = load i64, i64* @TSDB_SQL_DROP_ACCT, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32, i32* @tscBuildDropDbMsg, align 4
  %42 = load i32*, i32** @tscBuildMsg, align 8
  %43 = load i64, i64* @TSDB_SQL_DROP_DB, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @tscBuildDropTableMsg, align 4
  %46 = load i32*, i32** @tscBuildMsg, align 8
  %47 = load i64, i64* @TSDB_SQL_DROP_TABLE, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @tscBuildAlterUserMsg, align 4
  %50 = load i32*, i32** @tscBuildMsg, align 8
  %51 = load i64, i64* @TSDB_SQL_ALTER_USER, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @tscBuildCreateDnodeMsg, align 4
  %54 = load i32*, i32** @tscBuildMsg, align 8
  %55 = load i64, i64* @TSDB_SQL_CREATE_DNODE, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @tscBuildDropDnodeMsg, align 4
  %58 = load i32*, i32** @tscBuildMsg, align 8
  %59 = load i64, i64* @TSDB_SQL_DROP_DNODE, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %57, i32* %60, align 4
  %61 = load i32, i32* @tscBuildCfgDnodeMsg, align 4
  %62 = load i32*, i32** @tscBuildMsg, align 8
  %63 = load i64, i64* @TSDB_SQL_CFG_DNODE, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 %61, i32* %64, align 4
  %65 = load i32, i32* @tscBuildAlterTableMsg, align 4
  %66 = load i32*, i32** @tscBuildMsg, align 8
  %67 = load i64, i64* @TSDB_SQL_ALTER_TABLE, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 %65, i32* %68, align 4
  %69 = load i32, i32* @tscAlterDbMsg, align 4
  %70 = load i32*, i32** @tscBuildMsg, align 8
  %71 = load i64, i64* @TSDB_SQL_ALTER_DB, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  store i32 %69, i32* %72, align 4
  %73 = load i32, i32* @tscBuildConnectMsg, align 4
  %74 = load i32*, i32** @tscBuildMsg, align 8
  %75 = load i64, i64* @TSDB_SQL_CONNECT, align 8
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @tscBuildUseDbMsg, align 4
  %78 = load i32*, i32** @tscBuildMsg, align 8
  %79 = load i64, i64* @TSDB_SQL_USE_DB, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @tscBuildMeterMetaMsg, align 4
  %82 = load i32*, i32** @tscBuildMsg, align 8
  %83 = load i64, i64* @TSDB_SQL_META, align 8
  %84 = getelementptr inbounds i32, i32* %82, i64 %83
  store i32 %81, i32* %84, align 4
  %85 = load i32, i32* @tscBuildMetricMetaMsg, align 4
  %86 = load i32*, i32** @tscBuildMsg, align 8
  %87 = load i64, i64* @TSDB_SQL_METRIC, align 8
  %88 = getelementptr inbounds i32, i32* %86, i64 %87
  store i32 %85, i32* %88, align 4
  %89 = load i32, i32* @tscBuildMultiMeterMetaMsg, align 4
  %90 = load i32*, i32** @tscBuildMsg, align 8
  %91 = load i64, i64* @TSDB_SQL_MULTI_META, align 8
  %92 = getelementptr inbounds i32, i32* %90, i64 %91
  store i32 %89, i32* %92, align 4
  %93 = load i32, i32* @tscBuildHeartBeatMsg, align 4
  %94 = load i32*, i32** @tscBuildMsg, align 8
  %95 = load i64, i64* @TSDB_SQL_HB, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* @tscBuildShowMsg, align 4
  %98 = load i32*, i32** @tscBuildMsg, align 8
  %99 = load i64, i64* @TSDB_SQL_SHOW, align 8
  %100 = getelementptr inbounds i32, i32* %98, i64 %99
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* @tscBuildRetrieveFromMgmtMsg, align 4
  %102 = load i32*, i32** @tscBuildMsg, align 8
  %103 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  %104 = getelementptr inbounds i32, i32* %102, i64 %103
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* @tscBuildKillQueryMsg, align 4
  %106 = load i32*, i32** @tscBuildMsg, align 8
  %107 = load i64, i64* @TSDB_SQL_KILL_QUERY, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @tscBuildKillStreamMsg, align 4
  %110 = load i32*, i32** @tscBuildMsg, align 8
  %111 = load i64, i64* @TSDB_SQL_KILL_STREAM, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @tscBuildKillConnectionMsg, align 4
  %114 = load i32*, i32** @tscBuildMsg, align 8
  %115 = load i64, i64* @TSDB_SQL_KILL_CONNECTION, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  store i32 %113, i32* %116, align 4
  %117 = load i32, i32* @tscProcessQueryRsp, align 4
  %118 = load i32*, i32** @tscProcessMsgRsp, align 8
  %119 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %120 = getelementptr inbounds i32, i32* %118, i64 %119
  store i32 %117, i32* %120, align 4
  %121 = load i32, i32* @tscProcessRetrieveRspFromVnode, align 4
  %122 = load i32*, i32** @tscProcessMsgRsp, align 8
  %123 = load i64, i64* @TSDB_SQL_FETCH, align 8
  %124 = getelementptr inbounds i32, i32* %122, i64 %123
  store i32 %121, i32* %124, align 4
  %125 = load i32, i32* @tscProcessDropDbRsp, align 4
  %126 = load i32*, i32** @tscProcessMsgRsp, align 8
  %127 = load i64, i64* @TSDB_SQL_DROP_DB, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %125, i32* %128, align 4
  %129 = load i32, i32* @tscProcessDropTableRsp, align 4
  %130 = load i32*, i32** @tscProcessMsgRsp, align 8
  %131 = load i64, i64* @TSDB_SQL_DROP_TABLE, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  store i32 %129, i32* %132, align 4
  %133 = load i32, i32* @tscProcessConnectRsp, align 4
  %134 = load i32*, i32** @tscProcessMsgRsp, align 8
  %135 = load i64, i64* @TSDB_SQL_CONNECT, align 8
  %136 = getelementptr inbounds i32, i32* %134, i64 %135
  store i32 %133, i32* %136, align 4
  %137 = load i32, i32* @tscProcessUseDbRsp, align 4
  %138 = load i32*, i32** @tscProcessMsgRsp, align 8
  %139 = load i64, i64* @TSDB_SQL_USE_DB, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  store i32 %137, i32* %140, align 4
  %141 = load i32, i32* @tscProcessMeterMetaRsp, align 4
  %142 = load i32*, i32** @tscProcessMsgRsp, align 8
  %143 = load i64, i64* @TSDB_SQL_META, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  store i32 %141, i32* %144, align 4
  %145 = load i32, i32* @tscProcessMetricMetaRsp, align 4
  %146 = load i32*, i32** @tscProcessMsgRsp, align 8
  %147 = load i64, i64* @TSDB_SQL_METRIC, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  store i32 %145, i32* %148, align 4
  %149 = load i32, i32* @tscProcessMultiMeterMetaRsp, align 4
  %150 = load i32*, i32** @tscProcessMsgRsp, align 8
  %151 = load i64, i64* @TSDB_SQL_MULTI_META, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  store i32 %149, i32* %152, align 4
  %153 = load i32, i32* @tscProcessShowRsp, align 4
  %154 = load i32*, i32** @tscProcessMsgRsp, align 8
  %155 = load i64, i64* @TSDB_SQL_SHOW, align 8
  %156 = getelementptr inbounds i32, i32* %154, i64 %155
  store i32 %153, i32* %156, align 4
  %157 = load i32, i32* @tscProcessRetrieveRspFromMgmt, align 4
  %158 = load i32*, i32** @tscProcessMsgRsp, align 8
  %159 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  %160 = getelementptr inbounds i32, i32* %158, i64 %159
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* @tscProcessDescribeTableRsp, align 4
  %162 = load i32*, i32** @tscProcessMsgRsp, align 8
  %163 = load i64, i64* @TSDB_SQL_DESCRIBE_TABLE, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  store i32 %161, i32* %164, align 4
  %165 = load i32, i32* @tscProcessTagRetrieveRsp, align 4
  %166 = load i32*, i32** @tscProcessMsgRsp, align 8
  %167 = load i64, i64* @TSDB_SQL_RETRIEVE_TAGS, align 8
  %168 = getelementptr inbounds i32, i32* %166, i64 %167
  store i32 %165, i32* %168, align 4
  %169 = load i32, i32* @tscProcessEmptyResultRsp, align 4
  %170 = load i32*, i32** @tscProcessMsgRsp, align 8
  %171 = load i64, i64* @TSDB_SQL_RETRIEVE_EMPTY_RESULT, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  store i32 %169, i32* %172, align 4
  %173 = load i32, i32* @tscProcessRetrieveMetricRsp, align 4
  %174 = load i32*, i32** @tscProcessMsgRsp, align 8
  %175 = load i64, i64* @TSDB_SQL_RETRIEVE_METRIC, align 8
  %176 = getelementptr inbounds i32, i32* %174, i64 %175
  store i32 %173, i32* %176, align 4
  %177 = load i32, i32* @tscProcessAlterTableMsgRsp, align 4
  %178 = load i32*, i32** @tscProcessMsgRsp, align 8
  %179 = load i64, i64* @TSDB_SQL_ALTER_TABLE, align 8
  %180 = getelementptr inbounds i32, i32* %178, i64 %179
  store i32 %177, i32* %180, align 4
  %181 = load i32, i32* @tscProcessAlterDbMsgRsp, align 4
  %182 = load i32*, i32** @tscProcessMsgRsp, align 8
  %183 = load i64, i64* @TSDB_SQL_ALTER_DB, align 8
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %181, i32* %184, align 4
  %185 = load i32*, i32** @tscKeepConn, align 8
  %186 = load i64, i64* @TSDB_SQL_SHOW, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  store i32 1, i32* %187, align 4
  %188 = load i32*, i32** @tscKeepConn, align 8
  %189 = load i64, i64* @TSDB_SQL_RETRIEVE, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  store i32 1, i32* %190, align 4
  %191 = load i32*, i32** @tscKeepConn, align 8
  %192 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32 1, i32* %193, align 4
  %194 = load i32*, i32** @tscKeepConn, align 8
  %195 = load i64, i64* @TSDB_SQL_FETCH, align 8
  %196 = getelementptr inbounds i32, i32* %194, i64 %195
  store i32 1, i32* %196, align 4
  %197 = load i32*, i32** @tscKeepConn, align 8
  %198 = load i64, i64* @TSDB_SQL_HB, align 8
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32 1, i32* %199, align 4
  %200 = load i32, i32* @tscUpdateVnodeInQueryMsg, align 4
  %201 = load i32*, i32** @tscUpdateVnodeMsg, align 8
  %202 = load i64, i64* @TSDB_SQL_SELECT, align 8
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32 %200, i32* %203, align 4
  %204 = load i32, i32* @tscUpdateVnodeInSubmitMsg, align 4
  %205 = load i32*, i32** @tscUpdateVnodeMsg, align 8
  %206 = load i64, i64* @TSDB_SQL_INSERT, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  store i32 %204, i32* %207, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
