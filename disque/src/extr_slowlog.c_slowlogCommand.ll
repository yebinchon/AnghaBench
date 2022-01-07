; ModuleID = '/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogCommand.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_slowlog.c_slowlogCommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_17__** }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@shared = common dso_local global %struct.TYPE_21__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@server = common dso_local global %struct.TYPE_22__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1
@C_OK = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [68 x i8] c"Unknown SLOWLOG subcommand or wrong # of args. Try GET, RESET, LEN.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slowlogCommand(%struct.TYPE_20__* %0) #0 {
  %2 = alloca %struct.TYPE_20__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %2, align 8
  %10 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %14, label %29

14:                                               ; preds = %1
  %15 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %17, i64 1
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @strcasecmp(i32 %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %14
  %25 = call i32 (...) @slowlogReset()
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_21__, %struct.TYPE_21__* @shared, i32 0, i32 0), align 4
  %28 = call i32 @addReply(%struct.TYPE_20__* %26, i32 %27)
  br label %157

29:                                               ; preds = %14, %1
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %37, i64 1
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @strcasecmp(i32 %41, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %46 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 4
  %47 = call i32 @listLength(i32 %46)
  %48 = call i32 @addReplyLongLong(%struct.TYPE_20__* %45, i32 %47)
  br label %156

49:                                               ; preds = %34, %29
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 2
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %152

59:                                               ; preds = %54, %49
  %60 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %62, i64 1
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @strcasecmp(i32 %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %152, label %69

69:                                               ; preds = %59
  store i64 10, i64* %3, align 8
  store i64 0, i64* %4, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp eq i32 %72, 3
  br i1 %73, label %74, label %85

74:                                               ; preds = %69
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %76 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %78, i64 2
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %79, align 8
  %81 = call i64 @getLongFromObjectOrReply(%struct.TYPE_20__* %75, %struct.TYPE_17__* %80, i64* %3, i32* null)
  %82 = load i64, i64* @C_OK, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %74
  br label %157

85:                                               ; preds = %74, %69
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_22__, %struct.TYPE_22__* @server, i32 0, i32 0), align 4
  %87 = call i32 @listRewind(i32 %86, i32* %5)
  %88 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %89 = call i8* @addDeferredMultiBulkLength(%struct.TYPE_20__* %88)
  store i8* %89, i8** %6, align 8
  br label %90

90:                                               ; preds = %144, %85
  %91 = load i64, i64* %3, align 8
  %92 = add nsw i64 %91, -1
  store i64 %92, i64* %3, align 8
  %93 = icmp ne i64 %91, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = call %struct.TYPE_19__* @listNext(i32* %5)
  store %struct.TYPE_19__* %95, %struct.TYPE_19__** %7, align 8
  %96 = icmp ne %struct.TYPE_19__* %95, null
  br label %97

97:                                               ; preds = %94, %90
  %98 = phi i1 [ false, %90 ], [ %96, %94 ]
  br i1 %98, label %99, label %147

99:                                               ; preds = %97
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %101, align 8
  store %struct.TYPE_18__* %102, %struct.TYPE_18__** %8, align 8
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %104 = call i32 @addReplyMultiBulkLen(%struct.TYPE_20__* %103, i32 4)
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @addReplyLongLong(%struct.TYPE_20__* %105, i32 %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @addReplyLongLong(%struct.TYPE_20__* %110, i32 %113)
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @addReplyLongLong(%struct.TYPE_20__* %115, i32 %118)
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %121 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @addReplyMultiBulkLen(%struct.TYPE_20__* %120, i32 %123)
  store i32 0, i32* %9, align 4
  br label %125

125:                                              ; preds = %141, %99
  %126 = load i32, i32* %9, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %144

131:                                              ; preds = %125
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @addReplyBulk(%struct.TYPE_20__* %132, i32 %139)
  br label %141

141:                                              ; preds = %131
  %142 = load i32, i32* %9, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %9, align 4
  br label %125

144:                                              ; preds = %125
  %145 = load i64, i64* %4, align 8
  %146 = add nsw i64 %145, 1
  store i64 %146, i64* %4, align 8
  br label %90

147:                                              ; preds = %97
  %148 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %149 = load i8*, i8** %6, align 8
  %150 = load i64, i64* %4, align 8
  %151 = call i32 @setDeferredMultiBulkLength(%struct.TYPE_20__* %148, i8* %149, i64 %150)
  br label %155

152:                                              ; preds = %59, %54
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %2, align 8
  %154 = call i32 @addReplyError(%struct.TYPE_20__* %153, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %147
  br label %156

156:                                              ; preds = %155, %44
  br label %157

157:                                              ; preds = %84, %156, %24
  ret void
}

declare dso_local i32 @strcasecmp(i32, i8*) #1

declare dso_local i32 @slowlogReset(...) #1

declare dso_local i32 @addReply(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @addReplyLongLong(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @listLength(i32) #1

declare dso_local i64 @getLongFromObjectOrReply(%struct.TYPE_20__*, %struct.TYPE_17__*, i64*, i32*) #1

declare dso_local i32 @listRewind(i32, i32*) #1

declare dso_local i8* @addDeferredMultiBulkLength(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_19__* @listNext(i32*) #1

declare dso_local i32 @addReplyMultiBulkLen(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @addReplyBulk(%struct.TYPE_20__*, i32) #1

declare dso_local i32 @setDeferredMultiBulkLength(%struct.TYPE_20__*, i8*, i64) #1

declare dso_local i32 @addReplyError(%struct.TYPE_20__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
