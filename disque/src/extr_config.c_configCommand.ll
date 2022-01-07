; ModuleID = '/home/carl/AnghaBench/disque/src/extr_config.c_configCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_config.c_configCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"resetstat\00", align 1
@shared = common dso_local global %struct.TYPE_13__ zeroinitializer, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"rewrite\00", align 1
@server = common dso_local global %struct.TYPE_14__ zeroinitializer, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"The server is running without a config file\00", align 1
@LL_WARNING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"CONFIG REWRITE failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"Rewriting config file: %s\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"CONFIG REWRITE executed with success.\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"CONFIG subcommand must be one of GET, SET, RESETSTAT, REWRITE\00", align 1
@.str.9 = private unnamed_addr constant [40 x i8] c"Wrong number of arguments for CONFIG %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @configCommand(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %3 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %5 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %5, i64 1
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @strcasecmp(i64 %9, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %1
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 4
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %111

18:                                               ; preds = %12
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %20 = call i32 @configSetCommand(%struct.TYPE_12__* %19)
  br label %110

21:                                               ; preds = %1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 1
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @strcasecmp(i64 %28, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %21
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 3
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %111

37:                                               ; preds = %31
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %39 = call i32 @configGetCommand(%struct.TYPE_12__* %38)
  br label %109

40:                                               ; preds = %21
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @strcasecmp(i64 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %40
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %111

56:                                               ; preds = %50
  %57 = call i32 (...) @resetServerStats()
  %58 = call i32 (...) @resetCommandTableStats()
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %61 = call i32 @addReply(%struct.TYPE_12__* %59, i32 %60)
  br label %108

62:                                               ; preds = %40
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %65, i64 1
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @strcasecmp(i64 %69, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %62
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 2
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %111

78:                                               ; preds = %72
  %79 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %83 = call i32 @addReplyError(%struct.TYPE_12__* %82, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  br label %122

84:                                               ; preds = %78
  %85 = load i32*, i32** getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @server, i32 0, i32 0), align 8
  %86 = call i32 @rewriteConfig(i32* %85)
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32, i32* @LL_WARNING, align 4
  %90 = load i32, i32* @errno, align 4
  %91 = call i8* @strerror(i32 %90)
  %92 = call i32 (i32, i8*, ...) @serverLog(i32 %89, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = load i32, i32* @errno, align 4
  %95 = call i8* @strerror(i32 %94)
  %96 = call i32 @addReplyErrorFormat(%struct.TYPE_12__* %93, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* %95)
  br label %103

97:                                               ; preds = %84
  %98 = load i32, i32* @LL_WARNING, align 4
  %99 = call i32 (i32, i8*, ...) @serverLog(i32 %98, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @shared, i32 0, i32 0), align 4
  %102 = call i32 @addReply(%struct.TYPE_12__* %100, i32 %101)
  br label %103

103:                                              ; preds = %97, %88
  br label %107

104:                                              ; preds = %62
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %106 = call i32 @addReplyError(%struct.TYPE_12__* %105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.8, i64 0, i64 0))
  br label %107

107:                                              ; preds = %104, %103
  br label %108

108:                                              ; preds = %107, %56
  br label %109

109:                                              ; preds = %108, %37
  br label %110

110:                                              ; preds = %109, %18
  br label %122

111:                                              ; preds = %77, %55, %36, %17
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %115, i64 1
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = inttoptr i64 %119 to i8*
  %121 = call i32 @addReplyErrorFormat(%struct.TYPE_12__* %112, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0), i8* %120)
  br label %122

122:                                              ; preds = %111, %110, %81
  ret void
}

declare dso_local i32 @strcasecmp(i64, i8*) #1

declare dso_local i32 @configSetCommand(%struct.TYPE_12__*) #1

declare dso_local i32 @configGetCommand(%struct.TYPE_12__*) #1

declare dso_local i32 @resetServerStats(...) #1

declare dso_local i32 @resetCommandTableStats(...) #1

declare dso_local i32 @addReply(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @addReplyError(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @rewriteConfig(i32*) #1

declare dso_local i32 @serverLog(i32, i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @addReplyErrorFormat(%struct.TYPE_12__*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
