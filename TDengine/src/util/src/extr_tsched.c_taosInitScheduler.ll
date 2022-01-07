; ModuleID = '/home/carl/AnghaBench/TDengine/src/util/src/extr_tsched.c_taosInitScheduler.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/util/src/extr_tsched.c_taosInitScheduler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32, i32*, i64, i64, %struct.TYPE_5__*, i32, i32, i32 }

@.str = private unnamed_addr constant [44 x i8] c"%s: no enough memory for pSched, reason: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"init %s:queueMutex failed, reason:%s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"init %s:empty semaphore failed, reason:%s\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"init %s:full semaphore failed, reason:%s\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: no enough memory for queue, reason:%s\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"%s: no enough memory for qthread, reason: %s\00", align 1
@PTHREAD_CREATE_JOINABLE = common dso_local global i32 0, align 4
@taosProcessSchedQueue = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [43 x i8] c"%s: failed to create rpc thread, reason:%s\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"%s scheduler is initialized, numOfThreads:%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @taosInitScheduler(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = call i32* @malloc(i32 72)
  %12 = bitcast i32* %11 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %12, %struct.TYPE_5__** %9, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i8*, i8** %7, align 8
  %17 = load i32, i32* @errno, align 4
  %18 = call i32 @strerror(i32 %17)
  %19 = call i32 @pError(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %16, i32 %18)
  br label %169

20:                                               ; preds = %3
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %22 = call i32 @memset(%struct.TYPE_5__* %21, i32 0, i64 72)
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = call i32 @strncpy(i8* %28, i8* %29, i32 8)
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 7
  store i8 0, i8* %34, align 1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 9
  %37 = call i64 @pthread_mutex_init(i32* %36, i32* null)
  %38 = icmp slt i64 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %20
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* @errno, align 4
  %44 = call i32 @strerror(i32 %43)
  %45 = call i32 @pError(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %42, i32 %44)
  br label %169

46:                                               ; preds = %20
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @tsem_init(i32* %48, i32 0, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %61

54:                                               ; preds = %46
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* @errno, align 4
  %59 = call i32 @strerror(i32 %58)
  %60 = call i32 @pError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %57, i32 %59)
  br label %169

61:                                               ; preds = %46
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 7
  %64 = call i64 @tsem_init(i32* %63, i32 0, i32 0)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %61
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i8*, i8** %68, align 8
  %70 = load i32, i32* @errno, align 4
  %71 = call i32 @strerror(i32 %70)
  %72 = call i32 @pError(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* %69, i32 %71)
  br label %169

73:                                               ; preds = %61
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = mul i64 %77, 72
  %79 = trunc i64 %78 to i32
  %80 = call i32* @malloc(i32 %79)
  %81 = bitcast i32* %80 to %struct.TYPE_5__*
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store %struct.TYPE_5__* %81, %struct.TYPE_5__** %83, align 8
  %84 = icmp eq %struct.TYPE_5__* %81, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %73
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = load i32, i32* @errno, align 4
  %90 = call i32 @strerror(i32 %89)
  %91 = call i32 @pError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i8* %88, i32 %90)
  br label %169

92:                                               ; preds = %73
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 6
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 %99, 72
  %101 = call i32 @memset(%struct.TYPE_5__* %95, i32 0, i64 %100)
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 5
  store i64 0, i64* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 4
  store i64 0, i64* %105, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = trunc i64 %108 to i32
  %110 = call i32* @malloc(i32 %109)
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  store i32* %110, i32** %112, align 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = icmp eq i32* %115, null
  br i1 %116, label %117, label %124

117:                                              ; preds = %92
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i8*, i8** %119, align 8
  %121 = load i32, i32* @errno, align 4
  %122 = call i32 @strerror(i32 %121)
  %123 = call i32 @pError(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i8* %120, i32 %122)
  br label %169

124:                                              ; preds = %92
  %125 = call i32 @pthread_attr_init(i32* %8)
  %126 = load i32, i32* @PTHREAD_CREATE_JOINABLE, align 4
  %127 = call i32 @pthread_attr_setdetachstate(i32* %8, i32 %126)
  store i32 0, i32* %10, align 4
  br label %128

128:                                              ; preds = %156, %124
  %129 = load i32, i32* %10, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %159

132:                                              ; preds = %128
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %10, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* @taosProcessSchedQueue, align 4
  %140 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %141 = bitcast %struct.TYPE_5__* %140 to i8*
  %142 = call i64 @pthread_create(i32* %138, i32* %8, i32 %139, i8* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %151

144:                                              ; preds = %132
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load i32, i32* @errno, align 4
  %149 = call i32 @strerror(i32 %148)
  %150 = call i32 @pError(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* %147, i32 %149)
  br label %169

151:                                              ; preds = %132
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, 1
  store i32 %155, i32* %153, align 8
  br label %156

156:                                              ; preds = %151
  %157 = load i32, i32* %10, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %10, align 4
  br label %128

159:                                              ; preds = %128
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @pTrace(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.7, i64 0, i64 0), i8* %162, i32 %165)
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %168 = bitcast %struct.TYPE_5__* %167 to i8*
  store i8* %168, i8** %4, align 8
  br label %172

169:                                              ; preds = %144, %117, %85, %66, %54, %39, %15
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %171 = call i32 @taosCleanUpScheduler(%struct.TYPE_5__* %170)
  store i8* null, i8** %4, align 8
  br label %172

172:                                              ; preds = %169, %159
  %173 = load i8*, i8** %4, align 8
  ret i8* %173
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @pError(i8*, i8*, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i64 @pthread_mutex_init(i32*, i32*) #1

declare dso_local i64 @tsem_init(i32*, i32, i32) #1

declare dso_local i32 @pthread_attr_init(i32*) #1

declare dso_local i32 @pthread_attr_setdetachstate(i32*, i32) #1

declare !callback !2 dso_local i64 @pthread_create(i32*, i32*, i32, i8*) #1

declare dso_local i32 @pTrace(i8*, i8*, i32) #1

declare dso_local i32 @taosCleanUpScheduler(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
