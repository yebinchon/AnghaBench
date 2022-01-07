; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessMetricMetaMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtShell.c_mgmtProcessMetricMetaMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@TSDB_DB_STATUS_READY = common dso_local global i64 0, align 8
@TSDB_MSG_TYPE_METRIC_META_RSP = common dso_local global i32 0, align 4
@TSDB_CODE_SERV_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@TSDB_CODE_INVALID_TABLE = common dso_local global i32 0, align 4
@TSDB_CODE_DB_NOT_SELECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mgmtProcessMetricMetaMsg(i8* %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %8, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i8* @htonl(i32 %18)
  %20 = ptrtoint i8* %19 to i32
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @htonl(i32 %25)
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i8* @htonl(i32 %32)
  %34 = ptrtoint i8* %33 to i32
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  store i64 0, i64* %12, align 8
  br label %37

37:                                               ; preds = %58, %3
  %38 = load i64, i64* %12, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %37
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @htonl(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* %12, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i64, i64* %12, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %12, align 8
  br label %37

61:                                               ; preds = %37
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = bitcast %struct.TYPE_10__* %62 to i8*
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 3
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8, i8* %63, i64 %69
  %71 = bitcast i8* %70 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %71, %struct.TYPE_11__** %13, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32* @mgmtGetMeter(i32 %74)
  store i32* %75, i32** %9, align 8
  %76 = load i32*, i32** %9, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %91, label %78

78:                                               ; preds = %61
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = icmp ne %struct.TYPE_8__* %81, null
  br i1 %82, label %83, label %131

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* @TSDB_DB_STATUS_READY, align 8
  %90 = icmp ne i64 %88, %89
  br i1 %90, label %91, label %131

91:                                               ; preds = %83, %61
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @TSDB_MSG_TYPE_METRIC_META_RSP, align 4
  %96 = call i8* @taosBuildRspMsg(i32 %94, i32 %95)
  store i8* %96, i8** %11, align 8
  %97 = load i8*, i8** %11, align 8
  %98 = icmp eq i8* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @TSDB_MSG_TYPE_METRIC_META_RSP, align 4
  %104 = load i32, i32* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 4
  %105 = call i32 @taosSendSimpleRsp(i32 %102, i32 %103, i32 %104)
  store i32 0, i32* %4, align 4
  br label %155

106:                                              ; preds = %91
  %107 = load i8*, i8** %11, align 8
  store i8* %107, i8** %5, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = bitcast i8* %108 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %109, %struct.TYPE_9__** %10, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %111, align 8
  %113 = icmp ne %struct.TYPE_8__* %112, null
  br i1 %113, label %114, label %118

114:                                              ; preds = %106
  %115 = load i32, i32* @TSDB_CODE_INVALID_TABLE, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %122

118:                                              ; preds = %106
  %119 = load i32, i32* @TSDB_CODE_DB_NOT_SELECTED, align 4
  %120 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load i8*, i8** %5, align 8
  %124 = getelementptr inbounds i8, i8* %123, i32 1
  store i8* %124, i8** %5, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load i8*, i8** %11, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %6, align 4
  br label %147

131:                                              ; preds = %83, %78
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %136 = call i32 @mgmtRetrieveMetricMeta(i32 %134, i8** %11, %struct.TYPE_10__* %135)
  store i32 %136, i32* %6, align 4
  %137 = load i32, i32* %6, align 4
  %138 = icmp sle i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %131
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @TSDB_MSG_TYPE_METRIC_META_RSP, align 4
  %144 = load i32, i32* @TSDB_CODE_SERV_OUT_OF_MEMORY, align 4
  %145 = call i32 @taosSendSimpleRsp(i32 %142, i32 %143, i32 %144)
  store i32 0, i32* %4, align 4
  br label %155

146:                                              ; preds = %131
  br label %147

147:                                              ; preds = %146, %122
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i8*, i8** %11, align 8
  %152 = load i32, i32* %6, align 4
  %153 = call i32 @taosSendMsgToPeer(i32 %150, i8* %151, i32 %152)
  %154 = load i32, i32* %6, align 4
  store i32 %154, i32* %4, align 4
  br label %155

155:                                              ; preds = %147, %139, %99
  %156 = load i32, i32* %4, align 4
  ret i32 %156
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32* @mgmtGetMeter(i32) #1

declare dso_local i8* @taosBuildRspMsg(i32, i32) #1

declare dso_local i32 @taosSendSimpleRsp(i32, i32, i32) #1

declare dso_local i32 @mgmtRetrieveMetricMeta(i32, i8**, %struct.TYPE_10__*) #1

declare dso_local i32 @taosSendMsgToPeer(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
