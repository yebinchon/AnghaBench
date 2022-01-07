; ModuleID = '/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c_redisProcessCallbacks.c'
source_filename = "/home/carl/AnghaBench/disque/deps/hiredis/extr_async.c_redisProcessCallbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32, %struct.TYPE_18__*, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32 (i8*)* }
%struct.TYPE_21__ = type { i32*, i32*, i32*, i32* }
%struct.TYPE_19__ = type { i64, i8* }

@REDIS_OK = common dso_local global i32 0, align 4
@REDIS_DISCONNECTING = common dso_local global i32 0, align 4
@REDIS_MONITORING = common dso_local global i32 0, align 4
@REDIS_REPLY_ERROR = common dso_local global i64 0, align 8
@REDIS_ERR_OTHER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@REDIS_SUBSCRIBED = common dso_local global i32 0, align 4
@REDIS_FREEING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @redisProcessCallbacks(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  store %struct.TYPE_20__* %8, %struct.TYPE_20__** %3, align 8
  %9 = bitcast %struct.TYPE_21__* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 32, i1 false)
  store i8* null, i8** %5, align 8
  br label %10

10:                                               ; preds = %139, %1
  %11 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %12 = call i32 @redisGetReply(%struct.TYPE_20__* %11, i8** %5)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @REDIS_OK, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %140

15:                                               ; preds = %10
  %16 = load i8*, i8** %5, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %46

18:                                               ; preds = %15
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @REDIS_DISCONNECTING, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %18
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @sdslen(i32 %28)
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %33 = call i32 @__redisAsyncDisconnect(%struct.TYPE_22__* %32)
  br label %147

34:                                               ; preds = %25, %18
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @REDIS_MONITORING, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %42, i32 0, i32 0
  %44 = call i32 @__redisPushCallback(i32* %43, %struct.TYPE_21__* %4)
  br label %45

45:                                               ; preds = %41, %34
  br label %140

46:                                               ; preds = %15
  %47 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %47, i32 0, i32 0
  %49 = call i32 @__redisShiftCallback(i32* %48, %struct.TYPE_21__* %4)
  %50 = load i32, i32* @REDIS_OK, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %102

52:                                               ; preds = %46
  %53 = load i8*, i8** %5, align 8
  %54 = bitcast i8* %53 to %struct.TYPE_19__*
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @REDIS_REPLY_ERROR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %73

59:                                               ; preds = %52
  %60 = load i32, i32* @REDIS_ERR_OTHER, align 4
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %5, align 8
  %67 = bitcast i8* %66 to %struct.TYPE_19__*
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @snprintf(i32 %65, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %72 = call i32 @__redisAsyncDisconnect(%struct.TYPE_22__* %71)
  br label %147

73:                                               ; preds = %52
  %74 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %73
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @REDIS_MONITORING, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br label %87

87:                                               ; preds = %80, %73
  %88 = phi i1 [ true, %73 ], [ %86, %80 ]
  %89 = zext i1 %88 to i32
  %90 = call i32 @assert(i32 %89)
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @REDIS_SUBSCRIBED, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %87
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %99 = load i8*, i8** %5, align 8
  %100 = call i32 @__redisGetSubscribeCallback(%struct.TYPE_22__* %98, i8* %99, %struct.TYPE_21__* %4)
  br label %101

101:                                              ; preds = %97, %87
  br label %102

102:                                              ; preds = %101, %46
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %4, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %129

106:                                              ; preds = %102
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %108 = load i8*, i8** %5, align 8
  %109 = call i32 @__redisRunCallback(%struct.TYPE_22__* %107, %struct.TYPE_21__* %4, i8* %108)
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %114, i32 0, i32 0
  %116 = load i32 (i8*)*, i32 (i8*)** %115, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 %116(i8* %117)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @REDIS_FREEING, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %106
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %127 = call i32 @__redisAsyncFree(%struct.TYPE_22__* %126)
  br label %147

128:                                              ; preds = %106
  br label %139

129:                                              ; preds = %102
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32 (i8*)*, i32 (i8*)** %135, align 8
  %137 = load i8*, i8** %5, align 8
  %138 = call i32 %136(i8* %137)
  br label %139

139:                                              ; preds = %129, %128
  br label %10

140:                                              ; preds = %45, %10
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @REDIS_OK, align 4
  %143 = icmp ne i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %140
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %146 = call i32 @__redisAsyncDisconnect(%struct.TYPE_22__* %145)
  br label %147

147:                                              ; preds = %31, %59, %125, %144, %140
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @redisGetReply(%struct.TYPE_20__*, i8**) #2

declare dso_local i64 @sdslen(i32) #2

declare dso_local i32 @__redisAsyncDisconnect(%struct.TYPE_22__*) #2

declare dso_local i32 @__redisPushCallback(i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @__redisShiftCallback(i32*, %struct.TYPE_21__*) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @__redisGetSubscribeCallback(%struct.TYPE_22__*, i8*, %struct.TYPE_21__*) #2

declare dso_local i32 @__redisRunCallback(%struct.TYPE_22__*, %struct.TYPE_21__*, i8*) #2

declare dso_local i32 @__redisAsyncFree(%struct.TYPE_22__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
