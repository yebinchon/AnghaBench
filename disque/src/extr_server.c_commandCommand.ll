; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_commandCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_commandCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }

@server = common dso_local global %struct.TYPE_11__ zeroinitializer, align 4
@.str = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"count\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"Unknown subcommand or wrong number of arguments.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @commandCommand(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %13 = call i32 @dictSize(i32 %12)
  %14 = call i32 @addReplyMultiBulkLen(%struct.TYPE_10__* %11, i32 %13)
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %16 = call i32* @dictGetIterator(i32 %15)
  store i32* %16, i32** %3, align 8
  br label %17

17:                                               ; preds = %21, %10
  %18 = load i32*, i32** %3, align 8
  %19 = call i32* @dictNext(i32* %18)
  store i32* %19, i32** %4, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %17
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %23 = load i32*, i32** %4, align 8
  %24 = call i32 @dictGetVal(i32* %23)
  %25 = call i32 @addReplyCommand(%struct.TYPE_10__* %22, i32 %24)
  br label %17

26:                                               ; preds = %17
  %27 = load i32*, i32** %3, align 8
  %28 = call i32 @dictReleaseIterator(i32* %27)
  br label %95

29:                                               ; preds = %1
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %32, i64 1
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @strcasecmp(i32 %36, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %70, label %39

39:                                               ; preds = %29
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 2
  %45 = call i32 @addReplyMultiBulkLen(%struct.TYPE_10__* %40, i32 %44)
  store i32 2, i32* %5, align 4
  br label %46

46:                                               ; preds = %66, %39
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %56, align 8
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %57, i64 %59
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @dictFetchValue(i32 %54, i32 %63)
  %65 = call i32 @addReplyCommand(%struct.TYPE_10__* %53, i32 %64)
  br label %66

66:                                               ; preds = %52
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %46

69:                                               ; preds = %46
  br label %94

70:                                               ; preds = %29
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %73, i64 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @strcasecmp(i32 %77, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %90, label %80

80:                                               ; preds = %70
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp eq i32 %83, 2
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %87 = load i32, i32* getelementptr inbounds (%struct.TYPE_11__, %struct.TYPE_11__* @server, i32 0, i32 0), align 4
  %88 = call i32 @dictSize(i32 %87)
  %89 = call i32 @addReplyLongLong(%struct.TYPE_10__* %86, i32 %88)
  br label %93

90:                                               ; preds = %80, %70
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = call i32 @addReplyError(%struct.TYPE_10__* %91, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  br label %95

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93, %69
  br label %95

95:                                               ; preds = %90, %94, %26
  ret void
}

declare dso_local i32 @addReplyMultiBulkLen(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dictSize(i32) #1

declare dso_local i32* @dictGetIterator(i32) #1

declare dso_local i32* @dictNext(i32*) #1

declare dso_local i32 @addReplyCommand(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @dictGetVal(i32*) #1

declare dso_local i32 @dictReleaseIterator(i32*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @dictFetchValue(i32, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_10__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
