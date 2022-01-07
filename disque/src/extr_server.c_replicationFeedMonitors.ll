; ModuleID = '/home/carl/AnghaBench/disque/src/extr_server.c_replicationFeedMonitors.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_server.c_replicationFeedMonitors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"%ld.%06ld \00", align 1
@CLIENT_UNIX_SOCKET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"[unix:%s] \00", align 1
@server = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [6 x i8] c"[%s] \00", align 1
@OBJ_ENCODING_INT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [6 x i8] c"\22%ld\22\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@OBJ_STRING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @replicationFeedMonitors(%struct.TYPE_15__* %0, i32* %1, %struct.TYPE_13__** %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_13__** %2, %struct.TYPE_13__*** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = call i32 @sdsnew(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %16, i32* %12, align 4
  %17 = call i32 @gettimeofday(%struct.timeval* %14, i32* null)
  %18 = load i32, i32* %12, align 4
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %14, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i64 %20, i64 %22)
  store i32 %23, i32* %12, align 4
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @CLIENT_UNIX_SOCKET, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %4
  %31 = load i32, i32* %12, align 4
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @server, i32 0, i32 0), align 8
  %33 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %31, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i64 %32)
  store i32 %33, i32* %12, align 4
  br label %39

34:                                               ; preds = %4
  %35 = load i32, i32* %12, align 4
  %36 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %37 = call i64 @getClientPeerId(%struct.TYPE_15__* %36)
  %38 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %37)
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %34, %30
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %92, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %95

44:                                               ; preds = %40
  %45 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %46 = load i32, i32* %11, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %45, i64 %47
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @OBJ_ENCODING_INT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %56, i64 %58
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 (i32, i8*, i64, ...) @sdscatprintf(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i64 %62)
  store i32 %63, i32* %12, align 4
  br label %83

64:                                               ; preds = %44
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %66, i64 %68
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %7, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %74, i64 %76
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @sdslen(i64 %80)
  %82 = call i32 @sdscatrepr(i32 %65, i8* %73, i32 %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %64, %54
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* %8, align 4
  %86 = sub nsw i32 %85, 1
  %87 = icmp ne i32 %84, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i32, i32* %12, align 4
  %90 = call i32 @sdscatlen(i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i32 1)
  store i32 %90, i32* %12, align 4
  br label %91

91:                                               ; preds = %88, %83
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %40

95:                                               ; preds = %40
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @sdscatlen(i32 %96, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i32 2)
  store i32 %97, i32* %12, align 4
  %98 = load i32, i32* @OBJ_STRING, align 4
  %99 = load i32, i32* %12, align 4
  %100 = call %struct.TYPE_13__* @createObject(i32 %98, i32 %99)
  store %struct.TYPE_13__* %100, %struct.TYPE_13__** %13, align 8
  %101 = load i32*, i32** %6, align 8
  %102 = call i32 @listRewind(i32* %101, i32* %10)
  br label %103

103:                                              ; preds = %106, %95
  %104 = call %struct.TYPE_14__* @listNext(i32* %10)
  store %struct.TYPE_14__* %104, %struct.TYPE_14__** %9, align 8
  %105 = icmp ne %struct.TYPE_14__* %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %103
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %108, align 8
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %15, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %15, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %112 = call i32 @addReply(%struct.TYPE_15__* %110, %struct.TYPE_13__* %111)
  br label %103

113:                                              ; preds = %103
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %115 = call i32 @decrRefCount(%struct.TYPE_13__* %114)
  ret void
}

declare dso_local i32 @sdsnew(i8*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

declare dso_local i32 @sdscatprintf(i32, i8*, i64, ...) #1

declare dso_local i64 @getClientPeerId(%struct.TYPE_15__*) #1

declare dso_local i32 @sdscatrepr(i32, i8*, i32) #1

declare dso_local i32 @sdslen(i64) #1

declare dso_local i32 @sdscatlen(i32, i8*, i32) #1

declare dso_local %struct.TYPE_13__* @createObject(i32, i32) #1

declare dso_local i32 @listRewind(i32*, i32*) #1

declare dso_local %struct.TYPE_14__* @listNext(i32*) #1

declare dso_local i32 @addReply(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @decrRefCount(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
