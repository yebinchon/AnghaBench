; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_taos_stmt_init.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscPrepare.c_taos_stmt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@TSDB_CODE_DISCONNECTED = common dso_local global i32 0, align 4
@globalCode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"connection disconnected\00", align 1
@TSDB_CODE_CLI_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"failed to allocate memory for statement\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_7__* @taos_stmt_init(i32* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %3, align 8
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %4, align 8
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %10 = icmp eq %struct.TYPE_8__* %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %16 = icmp ne %struct.TYPE_8__* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11, %1
  %18 = load i32, i32* @TSDB_CODE_DISCONNECTED, align 4
  store i32 %18, i32* @globalCode, align 4
  %19 = call i32 @tscError(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %55

20:                                               ; preds = %11
  %21 = call i8* @calloc(i32 1, i32 8)
  %22 = bitcast i8* %21 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %22, %struct.TYPE_7__** %5, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = icmp eq %struct.TYPE_7__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %26, i32* @globalCode, align 4
  %27 = call i32 @tscError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %55

28:                                               ; preds = %20
  %29 = call i8* @calloc(i32 1, i32 24)
  %30 = bitcast i8* %29 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %30, %struct.TYPE_9__** %6, align 8
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = icmp eq %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %35 = call i32 @free(%struct.TYPE_7__* %34)
  %36 = load i32, i32* @TSDB_CODE_CLI_OUT_OF_MEMORY, align 4
  store i32 %36, i32* @globalCode, align 4
  %37 = call i32 @tscError(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %55

38:                                               ; preds = %28
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 3
  %41 = call i32 @tsem_init(i32* %40, i32 0, i32 0)
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = call i32 @tsem_init(i32* %43, i32 0, i32 1)
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  store %struct.TYPE_9__* %45, %struct.TYPE_9__** %47, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  store %struct.TYPE_8__* %48, %struct.TYPE_8__** %50, align 8
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %53, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %54, %struct.TYPE_7__** %2, align 8
  br label %55

55:                                               ; preds = %38, %33, %25, %17
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %56
}

declare dso_local i32 @tscError(i8*) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_7__*) #1

declare dso_local i32 @tsem_init(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
