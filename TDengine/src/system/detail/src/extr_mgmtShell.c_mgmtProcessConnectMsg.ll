; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessConnectMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessConnectMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_18__ = type { i32, i32, i32, %struct.TYPE_14__*, %struct.TYPE_19__*, i32, i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64* }

@TSDB_CODE_INVALID_USER = common dso_local global i32 0, align 4
@TSDB_CODE_GRANT_EXPIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%x%s%s\00", align 1
@TS_PATH_DELIMITER = common dso_local global i8* null, align 8
@TSDB_CODE_INVALID_DB = common dso_local global i32 0, align 4
@mgmtShellConns = common dso_local global i32 0, align 4
@sdbExtConns = common dso_local global i32 0, align 4
@TSDB_MSG_TYPE_CONNECT_RSP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@version = common dso_local global i32 0, align 4
@tsTimePrecision = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"user:%s login from %s, code:%d\00", align 1
@pSdbPublicIpList = common dso_local global %struct.TYPE_20__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessConnectMsg(i8* %0, i32 %1, %struct.TYPE_18__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca [256 x i8], align 16
  %17 = alloca [24 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_18__* %2, %struct.TYPE_18__** %7, align 8
  %18 = load i32, i32* @TSDB_CODE_INVALID_USER, align 4
  store i32 %18, i32* %12, align 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32* null, i32** %15, align 8
  %19 = bitcast [256 x i8]* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 256, i1 false)
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %10, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call %struct.TYPE_14__* @mgmtGetUser(i32 %24)
  store %struct.TYPE_14__* %25, %struct.TYPE_14__** %14, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %27 = icmp eq %struct.TYPE_14__* %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @TSDB_CODE_INVALID_USER, align 4
  store i32 %29, i32* %12, align 4
  br label %85

30:                                               ; preds = %3
  %31 = call i64 (...) @grantCheckExpired()
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i32, i32* @TSDB_CODE_GRANT_EXPIRED, align 4
  store i32 %34, i32* %12, align 4
  br label %85

35:                                               ; preds = %30
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.TYPE_19__* @mgmtGetAcct(i32 %38)
  store %struct.TYPE_19__* %39, %struct.TYPE_19__** %13, align 8
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %63

46:                                               ; preds = %35
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %48 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i8*, i8** @TS_PATH_DELIMITER, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i64*, i64** %53, align 8
  %55 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %47, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %50, i8* %51, i64* %54)
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %16, i64 0, i64 0
  %57 = call i32* @mgmtGetDb(i8* %56)
  store i32* %57, i32** %15, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %46
  %61 = load i32, i32* @TSDB_CODE_INVALID_DB, align 4
  store i32 %61, i32* %12, align 4
  br label %85

62:                                               ; preds = %46
  br label %63

63:                                               ; preds = %62, %35
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 4
  %66 = load %struct.TYPE_19__*, %struct.TYPE_19__** %65, align 8
  %67 = icmp ne %struct.TYPE_19__* %66, null
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %70 = call i32 @mgmtRemoveConnFromAcct(%struct.TYPE_18__* %69)
  %71 = call i32 @atomic_fetch_sub_32(i32* @mgmtShellConns, i32 1)
  %72 = call i32 @atomic_fetch_sub_32(i32* @sdbExtConns, i32 1)
  br label %73

73:                                               ; preds = %68, %63
  store i32 0, i32* %12, align 4
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %75, i32 0, i32 4
  store %struct.TYPE_19__* %74, %struct.TYPE_19__** %76, align 8
  %77 = load i32*, i32** %15, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 7
  store i32* %77, i32** %79, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 3
  store %struct.TYPE_14__* %80, %struct.TYPE_14__** %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %84 = call i32 @mgmtEstablishConn(%struct.TYPE_18__* %83)
  br label %85

85:                                               ; preds = %73, %60, %33, %28
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @TSDB_MSG_TYPE_CONNECT_RSP, align 4
  %90 = call i8* @taosBuildRspMsgWithSize(i32 %88, i32 %89, i32 128)
  store i8* %90, i8** %11, align 8
  %91 = load i8*, i8** %11, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %94

93:                                               ; preds = %85
  store i32 0, i32* %4, align 4
  br label %173

94:                                               ; preds = %85
  %95 = load i8*, i8** %11, align 8
  store i8* %95, i8** %5, align 8
  %96 = load i8*, i8** %5, align 8
  %97 = bitcast i8* %96 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %8, align 8
  %98 = load i32, i32* %12, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i64 16
  store i8* %102, i8** %5, align 8
  %103 = load i32, i32* %12, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %143

105:                                              ; preds = %94
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %109, %struct.TYPE_16__** %9, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 4
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, i8*, i32, ...) @sprintf(i8* %114, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %119)
  %121 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @version, align 4
  %125 = call i32 @strcpy(i32 %123, i32 %124)
  %126 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 6
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 4
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 4
  %136 = load i8*, i8** %5, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 16
  store i8* %137, i8** %5, align 8
  %138 = load i32, i32* @tsTimePrecision, align 4
  %139 = load i8*, i8** %5, align 8
  %140 = bitcast i8* %139 to i32*
  store i32 %138, i32* %140, align 4
  %141 = load i8*, i8** %5, align 8
  %142 = getelementptr inbounds i8, i8* %141, i64 4
  store i8* %142, i8** %5, align 8
  br label %148

143:                                              ; preds = %94
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 4
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %145, align 8
  %146 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 3
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %147, align 8
  br label %148

148:                                              ; preds = %143, %105
  %149 = load i8*, i8** %5, align 8
  %150 = load i8*, i8** %11, align 8
  %151 = ptrtoint i8* %149 to i64
  %152 = ptrtoint i8* %150 to i64
  %153 = sub i64 %151, %152
  %154 = trunc i64 %153 to i32
  store i32 %154, i32* %6, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %11, align 8
  %159 = load i32, i32* %6, align 4
  %160 = call i32 @taosSendMsgToPeer(i32 %157, i8* %158, i32 %159)
  %161 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %162 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %163 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @tinet_ntoa(i8* %161, i32 %164)
  %166 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = getelementptr inbounds [24 x i8], [24 x i8]* %17, i64 0, i64 0
  %170 = load i32, i32* %12, align 4
  %171 = call i32 @mLPrint(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %168, i8* %169, i32 %170)
  %172 = load i32, i32* %12, align 4
  store i32 %172, i32* %4, align 4
  br label %173

173:                                              ; preds = %148, %93
  %174 = load i32, i32* %4, align 4
  ret i32 %174
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_14__* @mgmtGetUser(i32) #2

declare dso_local i64 @grantCheckExpired(...) #2

declare dso_local %struct.TYPE_19__* @mgmtGetAcct(i32) #2

declare dso_local i32 @sprintf(i8*, i8*, i32, ...) #2

declare dso_local i32* @mgmtGetDb(i8*) #2

declare dso_local i32 @mgmtRemoveConnFromAcct(%struct.TYPE_18__*) #2

declare dso_local i32 @atomic_fetch_sub_32(i32*, i32) #2

declare dso_local i32 @mgmtEstablishConn(%struct.TYPE_18__*) #2

declare dso_local i8* @taosBuildRspMsgWithSize(i32, i32, i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i32 @taosSendMsgToPeer(i32, i8*, i32) #2

declare dso_local i32 @tinet_ntoa(i8*, i32) #2

declare dso_local i32 @mLPrint(i8*, i32, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
