; ModuleID = '/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReadHandler.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_cluster.c_clusterReadHandler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [5 x i8] c"DbuZ\00", align 1
@CLUSTERMSG_MIN_LEN = common dso_local global i32 0, align 4
@LL_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Bad message length or signature received from Cluster bus.\00", align 1
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@LL_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"I/O error reading from node link: %s\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"connection closed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clusterReadHandler(i32* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [8 x i8], align 1
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = bitcast i8* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %12, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @UNUSED(i32 %18)
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @UNUSED(i32 %20)
  br label %22

22:                                               ; preds = %4, %138
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @sdslen(i64 %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %14, align 4
  %28 = icmp ult i32 %27, 8
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %14, align 4
  %31 = sub i32 8, %30
  store i32 %31, i32* %13, align 4
  br label %70

32:                                               ; preds = %22
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %36, %struct.TYPE_5__** %11, align 8
  %37 = load i32, i32* %14, align 4
  %38 = icmp eq i32 %37, 8
  br i1 %38, label %39, label %58

39:                                               ; preds = %32
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @memcmp(i32 %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohl(i32 %48)
  %50 = load i32, i32* @CLUSTERMSG_MIN_LEN, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %45, %39
  %53 = load i32, i32* @LL_WARNING, align 4
  %54 = call i32 (i32, i8*, ...) @serverLog(i32 %53, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %56 = call i32 @handleLinkIOError(%struct.TYPE_6__* %55)
  br label %139

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %32
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @ntohl(i32 %61)
  %63 = load i32, i32* %14, align 4
  %64 = sub i32 %62, %63
  store i32 %64, i32* %13, align 4
  %65 = load i32, i32* %13, align 4
  %66 = zext i32 %65 to i64
  %67 = icmp ugt i64 %66, 8
  br i1 %67, label %68, label %69

68:                                               ; preds = %58
  store i32 8, i32* %13, align 4
  br label %69

69:                                               ; preds = %68, %58
  br label %70

70:                                               ; preds = %69, %29
  %71 = load i32, i32* %6, align 4
  %72 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @read(i32 %71, i8* %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %82

77:                                               ; preds = %70
  %78 = load i64, i64* @errno, align 8
  %79 = load i64, i64* @EAGAIN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %139

82:                                               ; preds = %77, %70
  %83 = load i32, i32* %10, align 4
  %84 = icmp sle i32 %83, 0
  br i1 %84, label %85, label %98

85:                                               ; preds = %82
  %86 = load i32, i32* @LL_DEBUG, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %93

90:                                               ; preds = %85
  %91 = load i64, i64* @errno, align 8
  %92 = call i8* @strerror(i64 %91)
  br label %93

93:                                               ; preds = %90, %89
  %94 = phi i8* [ getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), %89 ], [ %92, %90 ]
  %95 = call i32 (i32, i8*, ...) @serverLog(i32 %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %94)
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %97 = call i32 @handleLinkIOError(%struct.TYPE_6__* %96)
  br label %139

98:                                               ; preds = %82
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [8 x i8], [8 x i8]* %9, i64 0, i64 0
  %103 = load i32, i32* %10, align 4
  %104 = call i64 @sdscatlen(i64 %101, i8* %102, i32 %103)
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %110, %struct.TYPE_5__** %11, align 8
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %14, align 4
  %113 = add i32 %112, %111
  store i32 %113, i32* %14, align 4
  br label %114

114:                                              ; preds = %98
  %115 = load i32, i32* %14, align 4
  %116 = icmp uge i32 %115, 8
  br i1 %116, label %117, label %138

117:                                              ; preds = %114
  %118 = load i32, i32* %14, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ntohl(i32 %121)
  %123 = icmp eq i32 %118, %122
  br i1 %123, label %124, label %138

124:                                              ; preds = %117
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %126 = call i64 @clusterProcessPacket(%struct.TYPE_6__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %136

128:                                              ; preds = %124
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 @sdsfree(i64 %131)
  %133 = call i64 (...) @sdsempty()
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  store i64 %133, i64* %135, align 8
  br label %137

136:                                              ; preds = %124
  br label %139

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %117, %114
  br label %22

139:                                              ; preds = %136, %93, %81, %52
  ret void
}

declare dso_local i32 @UNUSED(i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i64 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i32 @handleLinkIOError(%struct.TYPE_6__*) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i64 @sdscatlen(i64, i8*, i32) #1

declare dso_local i64 @clusterProcessPacket(%struct.TYPE_6__*) #1

declare dso_local i32 @sdsfree(i64) #1

declare dso_local i64 @sdsempty(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
