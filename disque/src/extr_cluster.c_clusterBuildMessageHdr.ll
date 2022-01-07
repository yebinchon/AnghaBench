; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBuildMessageHdr.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterBuildMessageHdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i32, i32, i8*, i8*, i32, i8*, i8* }

@CLUSTER_PROTO_VER = common dso_local global i32 0, align 4
@myself = common dso_local global %struct.TYPE_10__* null, align 8
@CLUSTER_NAMELEN = common dso_local global i32 0, align 4
@server = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@CLUSTERMSG_TYPE_FAIL = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_GOTJOB = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_ENQUEUE = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_QUEUED = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_WORKING = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_SETACK = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_GOTACK = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_DELJOB = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_WILLQUEUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterBuildMessageHdr(%struct.TYPE_8__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = call i32 @memset(%struct.TYPE_8__* %6, i32 0, i32 56)
  %8 = load i32, i32* @CLUSTER_PROTO_VER, align 4
  %9 = call i8* @htons(i32 %8)
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 7
  store i8* %9, i8** %11, align 8
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 68, i8* %15, align 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 1
  store i8 98, i8* %19, align 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 2
  store i8 117, i8* %23, align 1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 3
  store i8 90, i8* %27, align 1
  %28 = load i32, i32* %4, align 4
  %29 = call i8* @htons(i32 %28)
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CLUSTER_NAMELEN, align 4
  %39 = call i32 @memcpy(i32 %34, i32 %37, i32 %38)
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 0), align 8
  %41 = call i8* @htons(i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 4
  store i8* %41, i8** %43, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** @myself, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i8* @htons(i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @server, i32 0, i32 1), align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @CLUSTERMSG_TYPE_FAIL, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %2
  store i32 52, i32* %5, align 4
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = add i64 %60, 4
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %101

63:                                               ; preds = %2
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @CLUSTERMSG_TYPE_GOTJOB, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %95, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @CLUSTERMSG_TYPE_ENQUEUE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %95, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @CLUSTERMSG_TYPE_QUEUED, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %95, label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @CLUSTERMSG_TYPE_WORKING, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %95, label %79

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @CLUSTERMSG_TYPE_SETACK, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %95, label %83

83:                                               ; preds = %79
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* @CLUSTERMSG_TYPE_GOTACK, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %4, align 4
  %89 = load i32, i32* @CLUSTERMSG_TYPE_DELJOB, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %95, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = load i32, i32* @CLUSTERMSG_TYPE_WILLQUEUE, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %91, %87, %83, %79, %75, %71, %67, %63
  store i32 52, i32* %5, align 4
  %96 = load i32, i32* %5, align 4
  %97 = sext i32 %96 to i64
  %98 = add i64 %97, 4
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %95, %91
  br label %101

101:                                              ; preds = %100, %58
  %102 = load i32, i32* %5, align 4
  %103 = call i32 @htonl(i32 %102)
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 8
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
