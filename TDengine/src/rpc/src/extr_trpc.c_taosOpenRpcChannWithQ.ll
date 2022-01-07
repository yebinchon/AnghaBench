; ModuleID = '/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosOpenRpcChannWithQ.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/rpc/src/extr_trpc.c_taosOpenRpcChannWithQ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i8*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i8*, i32, i32*, i32*, i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"%s: cid:%d, chann is out of range, max:%d\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"%s cid:%d, failed to allocate memory for taos connections, size:%d\00", align 1
@TAOS_ID_FREE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"%s cid:%d, failed to init ID pool\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"%s cid:%d, failed to init timers\00", align 1
@taosHashString = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [38 x i8] c"%s cid:%d, failed to init string hash\00", align 1
@TSDB_CODE_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @taosOpenRpcChannWithQ(i8* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %10, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = icmp eq %struct.TYPE_4__* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %142

18:                                               ; preds = %4
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp sge i32 %19, %22
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %24, %18
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30, i32 %31, i32 %34)
  store i32 -1, i32* %5, align 4
  br label %142

36:                                               ; preds = %24
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %41
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %11, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %44 = call i32 @memset(%struct.TYPE_5__* %43, i32 0, i32 56)
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = mul i64 4, %46
  store i64 %47, i64* %12, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @calloc(i32 1, i64 %48)
  %50 = inttoptr i64 %49 to i32*
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 6
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 6
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %36
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %12, align 8
  %63 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 %61, i64 %62)
  store i32 -1, i32* %5, align 4
  br label %142

64:                                               ; preds = %36
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @TAOS_ID_FREE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %86

70:                                               ; preds = %64
  %71 = load i32, i32* %8, align 4
  %72 = call i32* @taosInitIdPool(i32 %71)
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 5
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 5
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %79, label %85

79:                                               ; preds = %70
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %82, i32 %83)
  store i32 -1, i32* %5, align 4
  br label %142

85:                                               ; preds = %70
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %87, 2
  %89 = add nsw i32 %88, 1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = call i32* @taosTmrInit(i32 %89, i32 50, i32 10000, i32 %92)
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 4
  store i32* %93, i32** %95, align 8
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 4
  %98 = load i32*, i32** %97, align 8
  %99 = icmp eq i32* %98, null
  br i1 %99, label %100, label %106

100:                                              ; preds = %86
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %7, align 4
  %105 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %103, i32 %104)
  store i32 -1, i32* %5, align 4
  br label %142

106:                                              ; preds = %86
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* @taosHashString, align 4
  %109 = call i32* @taosInitStrHash(i32 %107, i32 8, i32 %108)
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 3
  store i32* %109, i32** %111, align 8
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = icmp eq i32* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %106
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %7, align 4
  %121 = call i32 (i8*, i32, i32, ...) @tError(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i32 %119, i32 %120)
  store i32 -1, i32* %5, align 4
  br label %142

122:                                              ; preds = %106
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 2
  %125 = call i32 @pthread_mutex_init(i32* %124, i32* null)
  %126 = load i32, i32* %8, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = icmp ne i8* %129, null
  br i1 %130, label %131, label %133

131:                                              ; preds = %122
  %132 = load i8*, i8** %9, align 8
  br label %137

133:                                              ; preds = %122
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 2
  %136 = load i8*, i8** %135, align 8
  br label %137

137:                                              ; preds = %133, %131
  %138 = phi i8* [ %132, %131 ], [ %136, %133 ]
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  store i8* %138, i8** %140, align 8
  %141 = load i32, i32* @TSDB_CODE_SUCCESS, align 4
  store i32 %141, i32* %5, align 4
  br label %142

142:                                              ; preds = %137, %116, %100, %79, %57, %27, %17
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @tError(i8*, i32, i32, ...) #1

declare dso_local i32 @memset(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i64 @calloc(i32, i64) #1

declare dso_local i32* @taosInitIdPool(i32) #1

declare dso_local i32* @taosTmrInit(i32, i32, i32, i32) #1

declare dso_local i32* @taosInitStrHash(i32, i32, i32) #1

declare dso_local i32 @pthread_mutex_init(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
