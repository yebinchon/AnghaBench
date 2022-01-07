; ModuleID = '/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtBuildMetricMetaRspMsg.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/system/detail/src/extr_mgmtMeter.c_mgmtBuildMetricMetaRspMsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32* }
%struct.TYPE_9__ = type { i64, i32** }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_13__ = type { i8*, i8*, i8* }
%struct.TYPE_12__ = type { i32, i32, i32 }

@TSDB_MSG_TYPE_METRIC_META_RSP = common dso_local global i32 0, align 4
@TSDB_IE_TYPE_META = common dso_local global i8 0, align 1
@TSDB_CODE_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"metric:%s metric-meta tables:%d, vnode:%d\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"metric-meta msg size %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.TYPE_11__*, %struct.TYPE_9__*, i8**, i64*, i64, i64, i64)* @mgmtBuildMetricMetaRspMsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mgmtBuildMetricMetaRspMsg(i8* %0, %struct.TYPE_11__* %1, %struct.TYPE_9__* %2, i8** %3, i64* %4, i64 %5, i64 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_12__*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32*, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %11, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %12, align 8
  store i8** %3, i8*** %13, align 8
  store i64* %4, i64** %14, align 8
  store i64 %5, i64* %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* @TSDB_MSG_TYPE_METRIC_META_RSP, align 4
  %30 = load i64, i64* %15, align 8
  %31 = call i8* @taosBuildRspMsgWithSize(i8* %28, i32 %29, i64 %30)
  %32 = load i8**, i8*** %13, align 8
  store i8* %31, i8** %32, align 8
  %33 = load i8**, i8*** %13, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp eq i8* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %8
  store i64 0, i64* %9, align 8
  br label %176

37:                                               ; preds = %8
  %38 = load i8**, i8*** %13, align 8
  %39 = load i8*, i8** %38, align 8
  store i8* %39, i8** %18, align 8
  %40 = load i8*, i8** %18, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %41, %struct.TYPE_10__** %19, align 8
  %42 = load i64, i64* %17, align 8
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load i8*, i8** %18, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 8
  store i8* %46, i8** %18, align 8
  %47 = load i8, i8* @TSDB_IE_TYPE_META, align 1
  %48 = load i8*, i8** %18, align 8
  store i8 %47, i8* %48, align 1
  %49 = load i8*, i8** %18, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %18, align 8
  %51 = load i64, i64* %17, align 8
  %52 = load i64, i64* @TSDB_CODE_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %37
  %55 = load i8*, i8** %18, align 8
  %56 = load i8**, i8*** %13, align 8
  %57 = load i8*, i8** %56, align 8
  %58 = ptrtoint i8* %55 to i64
  %59 = ptrtoint i8* %57 to i64
  %60 = sub i64 %58, %59
  store i64 %60, i64* %9, align 8
  br label %176

61:                                               ; preds = %37
  store i64 0, i64* %20, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @htons(i64 %64)
  %66 = load i8*, i8** %18, align 8
  %67 = bitcast i8* %66 to i8**
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %18, align 8
  %69 = getelementptr inbounds i8, i8* %68, i64 8
  store i8* %69, i8** %18, align 8
  store i64 0, i64* %21, align 8
  br label %70

70:                                               ; preds = %163, %61
  %71 = load i64, i64* %21, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %71, %74
  br i1 %75, label %76, label %166

76:                                               ; preds = %70
  store i32* null, i32** %22, align 8
  store i32 -1, i32* %23, align 4
  %77 = load i8*, i8** %18, align 8
  %78 = bitcast i8* %77 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %24, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 1
  store i8* null, i8** %80, align 8
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i8* null, i8** %82, align 8
  %83 = load i64*, i64** %14, align 8
  %84 = load i64, i64* %21, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  %86 = load i64, i64* %85, align 8
  %87 = call i8* @htons(i64 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 2
  store i8* %87, i8** %89, align 8
  %90 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %91 = bitcast %struct.TYPE_13__* %90 to i8*
  %92 = getelementptr inbounds i8, i8* %91, i64 24
  store i8* %92, i8** %18, align 8
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = bitcast %struct.TYPE_11__* %93 to i8*
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %21, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %94, i64 %101
  %103 = bitcast i8* %102 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %103, %struct.TYPE_12__** %25, align 8
  store i64 0, i64* %26, align 8
  br label %104

104:                                              ; preds = %136, %76
  %105 = load i64, i64* %26, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %107 = load i64, i64* %21, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp slt i64 %105, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %104
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %114 = load i64, i64* %21, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32**, i32*** %116, align 8
  %118 = load i64, i64* %26, align 8
  %119 = getelementptr inbounds i32*, i32** %117, i64 %118
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %27, align 8
  %121 = load i32*, i32** %27, align 8
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %123 = load i64*, i64** %14, align 8
  %124 = load i64, i64* %21, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i64, i64* %16, align 8
  %134 = load i8*, i8** %18, align 8
  %135 = call i8* @mgmtBuildMetricMetaMsg(i32* %121, i32* %23, i32** %22, %struct.TYPE_13__* %122, i64 %126, i32 %129, i32 %132, i64 %133, i8* %134)
  store i8* %135, i8** %18, align 8
  br label %136

136:                                              ; preds = %112
  %137 = load i64, i64* %26, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %26, align 8
  br label %104

139:                                              ; preds = %104
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = sext i32 %142 to i64
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %143, i8* %146, i8* %149)
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i8* @htonl(i8* %153)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = call i8* @htonl(i8* %159)
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  store i8* %160, i8** %162, align 8
  br label %163

163:                                              ; preds = %139
  %164 = load i64, i64* %21, align 8
  %165 = add nsw i64 %164, 1
  store i64 %165, i64* %21, align 8
  br label %70

166:                                              ; preds = %70
  %167 = load i8*, i8** %18, align 8
  %168 = load i8**, i8*** %13, align 8
  %169 = load i8*, i8** %168, align 8
  %170 = ptrtoint i8* %167 to i64
  %171 = ptrtoint i8* %169 to i64
  %172 = sub i64 %170, %171
  store i64 %172, i64* %20, align 8
  %173 = load i64, i64* %20, align 8
  %174 = call i32 (i8*, i64, ...) @mTrace(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %173)
  %175 = load i64, i64* %20, align 8
  store i64 %175, i64* %9, align 8
  br label %176

176:                                              ; preds = %166, %54, %36
  %177 = load i64, i64* %9, align 8
  ret i64 %177
}

declare dso_local i8* @taosBuildRspMsgWithSize(i8*, i32, i64) #1

declare dso_local i8* @htons(i64) #1

declare dso_local i8* @mgmtBuildMetricMetaMsg(i32*, i32*, i32**, %struct.TYPE_13__*, i64, i32, i32, i64, i8*) #1

declare dso_local i32 @mTrace(i8*, i64, ...) #1

declare dso_local i8* @htonl(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
