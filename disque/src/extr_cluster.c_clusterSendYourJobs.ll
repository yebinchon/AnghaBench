; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendYourJobs.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterSendYourJobs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i8*, i8* }

@LL_VERBOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sending %d jobs to %.40s\00", align 1
@SER_MESSAGE = common dso_local global i32 0, align 4
@CLUSTERMSG_TYPE_YOURJOBS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterSendYourJobs(%struct.TYPE_11__* %0, i32** %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_12__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32** %1, i32*** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %9, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  br label %113

20:                                               ; preds = %3
  %21 = load i32, i32* @LL_VERBOSE, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @serverLog(i32 %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %25)
  store i32 28, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sext i32 %27 to i64
  %29 = add i64 %28, -4
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = call i8* (...) @sdsempty()
  store i8* %31, i8** %12, align 8
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %45, %20
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %32
  %37 = load i8*, i8** %12, align 8
  %38 = load i32**, i32*** %5, align 8
  %39 = load i32, i32* %11, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32*, i32** %38, i64 %40
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* @SER_MESSAGE, align 4
  %44 = call i8* @serializeJob(i8* %37, i32* %42, i32 %43)
  store i8* %44, i8** %12, align 8
  br label %45

45:                                               ; preds = %36
  %46 = load i32, i32* %11, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %11, align 4
  br label %32

48:                                               ; preds = %32
  %49 = load i8*, i8** %12, align 8
  %50 = call i32 @sdslen(i8* %49)
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %54 = load i32, i32* @CLUSTERMSG_TYPE_YOURJOBS, align 4
  %55 = call i32 @clusterBuildMessageHdr(%struct.TYPE_12__* %53, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i8* @htonl(i32 %56)
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @sdslen(i8* %63)
  %65 = call i8* @htonl(i32 %64)
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i8* @htonl(i32 %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %10, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp ult i64 %76, 32
  br i1 %77, label %78, label %80

78:                                               ; preds = %48
  %79 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  store i8* %79, i8** %8, align 8
  br label %88

80:                                               ; preds = %48
  %81 = load i32, i32* %10, align 4
  %82 = call i8* @zmalloc(i32 %81)
  store i8* %82, i8** %8, align 8
  %83 = load i8*, i8** %8, align 8
  %84 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %85 = call i32 @memcpy(i8* %83, i8* %84, i32 32)
  %86 = load i8*, i8** %8, align 8
  %87 = bitcast i8* %86 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %9, align 8
  br label %88

88:                                               ; preds = %80, %78
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  %94 = load i8*, i8** %93, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = call i32 @sdslen(i8* %96)
  %98 = call i32 @memcpy(i8* %94, i8* %95, i32 %97)
  %99 = load i8*, i8** %12, align 8
  %100 = call i32 @sdsfree(i8* %99)
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i8*, i8** %8, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @clusterSendMessage(i32 %103, i8* %104, i32 %105)
  %107 = load i8*, i8** %8, align 8
  %108 = getelementptr inbounds [32 x i8], [32 x i8]* %7, i64 0, i64 0
  %109 = icmp ne i8* %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %88
  %111 = load i8*, i8** %8, align 8
  %112 = call i32 @zfree(i8* %111)
  br label %113

113:                                              ; preds = %19, %110, %88
  ret void
}

declare dso_local i32 @serverLog(i32, i8*, i32, i32) #1

declare dso_local i8* @sdsempty(...) #1

declare dso_local i8* @serializeJob(i8*, i32*, i32) #1

declare dso_local i32 @sdslen(i8*) #1

declare dso_local i32 @clusterBuildMessageHdr(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i8* @zmalloc(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @sdsfree(i8*) #1

declare dso_local i32 @clusterSendMessage(i32, i8*, i32) #1

declare dso_local i32 @zfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
