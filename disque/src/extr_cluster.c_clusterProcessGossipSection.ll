; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterProcessGossipSection.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterProcessGossipSection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i32, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_21__ = type { %struct.TYPE_18__* }
%struct.TYPE_19__ = type { i32, i32, i32, i32 }

@LL_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"GOSSIP %.40s %s:%d %s\00", align 1
@myself = common dso_local global %struct.TYPE_18__* null, align 8
@CLUSTER_NODE_FAIL = common dso_local global i32 0, align 4
@CLUSTER_NODE_PFAIL = common dso_local global i32 0, align 4
@LL_VERBOSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Node %.40s reported node %.40s as not reachable.\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Node %.40s reported node %.40s is back online.\00", align 1
@CLUSTER_NODE_NOADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterProcessGossipSection(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @ntohs(i32 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %5, align 4
  %16 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %21, %struct.TYPE_19__** %6, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %23, align 8
  %25 = icmp ne %struct.TYPE_18__* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_18__*, %struct.TYPE_18__** %28, align 8
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.TYPE_18__* @clusterLookupNode(i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  %36 = phi %struct.TYPE_18__* [ %29, %26 ], [ %34, %30 ]
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %7, align 8
  br label %37

37:                                               ; preds = %179, %35
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = icmp ne i32 %38, 0
  br i1 %40, label %41, label %182

41:                                               ; preds = %37
  %42 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @ntohs(i32 %44)
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %8, align 4
  %47 = call i32 (...) @sdsempty()
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @representClusterNodeFlags(i32 %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @LL_DEBUG, align 4
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @ntohs(i32 %59)
  %61 = load i32, i32* %10, align 4
  %62 = call i32 (i32, i8*, i32, i32, ...) @serverLog(i32 %50, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %56, i64 %60, i32 %61)
  %63 = load i32, i32* %10, align 4
  %64 = call i32 @sdsfree(i32 %63)
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = call %struct.TYPE_18__* @clusterLookupNode(i32 %67)
  store %struct.TYPE_18__* %68, %struct.TYPE_18__** %9, align 8
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %70 = icmp ne %struct.TYPE_18__* %69, null
  br i1 %70, label %71, label %155

71:                                               ; preds = %41
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %73 = icmp ne %struct.TYPE_18__* %72, null
  br i1 %73, label %74, label %118

74:                                               ; preds = %71
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** @myself, align 8
  %77 = icmp ne %struct.TYPE_18__* %75, %76
  br i1 %77, label %78, label %118

78:                                               ; preds = %74
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %81 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %102

85:                                               ; preds = %78
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %88 = call i64 @clusterNodeAddFailureReport(%struct.TYPE_18__* %86, %struct.TYPE_18__* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %85
  %91 = load i32, i32* @LL_VERBOSE, align 4
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, i32, ...) @serverLog(i32 %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %94, i32 %97)
  br label %99

99:                                               ; preds = %90, %85
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %101 = call i32 @markNodeAsFailingIfNeeded(%struct.TYPE_18__* %100)
  br label %117

102:                                              ; preds = %78
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %105 = call i64 @clusterNodeDelFailureReport(%struct.TYPE_18__* %103, %struct.TYPE_18__* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %102
  %108 = load i32, i32* @LL_VERBOSE, align 4
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, i32, i32, ...) @serverLog(i32 %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %107, %102
  br label %117

117:                                              ; preds = %116, %99
  br label %118

118:                                              ; preds = %117, %74, %71
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @CLUSTER_NODE_FAIL, align 4
  %123 = load i32, i32* @CLUSTER_NODE_PFAIL, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %121, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %154

127:                                              ; preds = %118
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i64 @strcasecmp(i32 %130, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %127
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @ntohs(i32 %142)
  %144 = icmp ne i64 %139, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %136, %127
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @ntohs(i32 %151)
  %153 = call i32 @clusterStartHandshake(i32 %148, i64 %152)
  br label %154

154:                                              ; preds = %145, %136, %118
  br label %179

155:                                              ; preds = %41
  %156 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %157 = icmp ne %struct.TYPE_18__* %156, null
  br i1 %157, label %158, label %178

158:                                              ; preds = %155
  %159 = load i32, i32* %8, align 4
  %160 = load i32, i32* @CLUSTER_NODE_NOADDR, align 4
  %161 = and i32 %159, %160
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %158
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @clusterBlacklistExists(i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %163
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @ntohs(i32 %175)
  %177 = call i32 @clusterStartHandshake(i32 %172, i64 %176)
  br label %178

178:                                              ; preds = %169, %163, %158, %155
  br label %179

179:                                              ; preds = %178, %154
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 1
  store %struct.TYPE_19__* %181, %struct.TYPE_19__** %6, align 8
  br label %37

182:                                              ; preds = %37
  ret void
}

declare dso_local i64 @ntohs(i32) #1

declare dso_local %struct.TYPE_18__* @clusterLookupNode(i32) #1

declare dso_local i32 @representClusterNodeFlags(i32, i32) #1

declare dso_local i32 @sdsempty(...) #1

declare dso_local i32 @serverLog(i32, i8*, i32, i32, ...) #1

declare dso_local i32 @sdsfree(i32) #1

declare dso_local i64 @clusterNodeAddFailureReport(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @markNodeAsFailingIfNeeded(%struct.TYPE_18__*) #1

declare dso_local i64 @clusterNodeDelFailureReport(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i64 @strcasecmp(i32, i32) #1

declare dso_local i32 @clusterStartHandshake(i32, i64) #1

declare dso_local i32 @clusterBlacklistExists(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
