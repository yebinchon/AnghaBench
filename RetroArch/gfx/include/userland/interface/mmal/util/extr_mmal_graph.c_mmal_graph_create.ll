; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/mmal/util/extr_mmal_graph.c_mmal_graph_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.MMAL_GRAPH_USERDATA_T* }
%struct.MMAL_GRAPH_USERDATA_T = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }

@.str = private unnamed_addr constant [27 x i8] c"graph %p, userdata_size %u\00", align 1
@MMAL_EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"mmal connection graph\00", align 1
@MMAL_ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"mmal graph sema\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [30 x i8] c"failed to create semaphore %p\00", align 1
@MMAL_ENOSPC = common dso_local global i32 0, align 4
@MMAL_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmal_graph_create(%struct.TYPE_8__** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__** %0, %struct.TYPE_8__*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call i32 @LOG_TRACE(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_8__** %7, i32 %8)
  %10 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %11 = icmp ne %struct.TYPE_8__** %10, null
  br i1 %11, label %14, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @MMAL_EINVAL, align 4
  store i32 %13, i32* %3, align 4
  br label %51

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = zext i32 %15 to i64
  %17 = add i64 16, %16
  %18 = trunc i64 %17 to i32
  %19 = call %struct.TYPE_9__* @vcos_calloc(i32 1, i32 %18, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %14
  %23 = load i32, i32* @MMAL_ENOMEM, align 4
  store i32 %23, i32* %3, align 4
  br label %51

24:                                               ; preds = %14
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** %27, align 8
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i64 1
  %33 = bitcast %struct.TYPE_9__* %32 to %struct.MMAL_GRAPH_USERDATA_T*
  %34 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  store %struct.MMAL_GRAPH_USERDATA_T* %33, %struct.MMAL_GRAPH_USERDATA_T** %36, align 8
  br label %37

37:                                               ; preds = %30, %24
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = call i64 @vcos_semaphore_create(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %41 = load i64, i64* @VCOS_SUCCESS, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %4, align 8
  %45 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_8__** %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %47 = call i32 @vcos_free(%struct.TYPE_9__* %46)
  %48 = load i32, i32* @MMAL_ENOSPC, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %37
  %50 = load i32, i32* @MMAL_SUCCESS, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %43, %22, %12
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @LOG_TRACE(i8*, %struct.TYPE_8__**, i32) #1

declare dso_local %struct.TYPE_9__* @vcos_calloc(i32, i32, i8*) #1

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #1

declare dso_local i32 @LOG_ERROR(i8*, %struct.TYPE_8__**) #1

declare dso_local i32 @vcos_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
