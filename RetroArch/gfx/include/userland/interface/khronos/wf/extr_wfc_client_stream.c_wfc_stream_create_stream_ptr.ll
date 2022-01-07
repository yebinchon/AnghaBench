; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_stream_ptr.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_stream_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_10__*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%s: stream handle 0x%x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"%s: attempt to create duplicate of stream handle 0x%x\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"%s: duplicate of stream handle 0x%x created\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"%s: recycling data block for stream handle 0x%x\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"%s: allocating block for stream handle 0x%x\00", align 1
@wfc_stream_blockpool = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"WFC_STREAM_T mutex\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@wfc_stream_head = common dso_local global %struct.TYPE_10__* null, align 8
@.str.6 = private unnamed_addr constant [50 x i8] c"%s: unable to create mutex for stream handle 0x%x\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"%s: unable to allocate data for stream handle 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_10__* (i32, i32)* @wfc_stream_create_stream_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_10__* @wfc_stream_create_stream_ptr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.TYPE_10__* @wfc_stream_global_lock_and_find_stream_ptr(i32 %7)
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %5, align 8
  %9 = load i32, i32* @VCOS_FUNCTION, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %10)
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %13 = icmp ne %struct.TYPE_10__* %12, null
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %33, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* @VCOS_FUNCTION, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @vcos_log_error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %24)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @VCOS_FUNCTION, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %31 = call i32 @STREAM_LOCK(%struct.TYPE_10__* %30)
  br label %32

32:                                               ; preds = %26, %22
  br label %99

33:                                               ; preds = %14, %2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %35 = icmp ne %struct.TYPE_10__* %34, null
  br i1 %35, label %36, label %44

36:                                               ; preds = %33
  %37 = load i32, i32* @VCOS_FUNCTION, align 4
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %43 = call i32 @STREAM_LOCK(%struct.TYPE_10__* %42)
  br label %98

44:                                               ; preds = %33
  %45 = load i32, i32* @VCOS_FUNCTION, align 4
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32 %46)
  %48 = call %struct.TYPE_10__* @vcos_blockpool_calloc(i32* @wfc_stream_blockpool)
  store %struct.TYPE_10__* %48, %struct.TYPE_10__** %5, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %50 = icmp ne %struct.TYPE_10__* %49, null
  br i1 %50, label %51, label %93

51:                                               ; preds = %44
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 5
  %54 = call i64 @vcos_mutex_create(i32* %53, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  store i64 %54, i64* %6, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @VCOS_SUCCESS, align 8
  %57 = icmp eq i64 %55, %56
  %58 = zext i1 %57 to i32
  %59 = call i64 @vcos_verify(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %86

61:                                               ; preds = %51
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %63 = call i32 @STREAM_LOCK(%struct.TYPE_10__* %62)
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wfc_stream_head, align 8
  %65 = icmp ne %struct.TYPE_10__* %64, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %61
  %67 = call i32 (...) @wfc_server_connect()
  br label %68

68:                                               ; preds = %66, %61
  %69 = load i32, i32* %3, align 4
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 4
  store i32 %69, i32* %71, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  store i32 4, i32* %74, align 8
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wfc_stream_head, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %77, align 8
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wfc_stream_head, align 8
  %79 = icmp ne %struct.TYPE_10__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %68
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** @wfc_stream_head, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 1
  store %struct.TYPE_10__* %81, %struct.TYPE_10__** %83, align 8
  br label %84

84:                                               ; preds = %80, %68
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** @wfc_stream_head, align 8
  br label %92

86:                                               ; preds = %51
  %87 = load i32, i32* @VCOS_FUNCTION, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @vcos_log_error(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i32 %87, i32 %88)
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %91 = call i32 @vcos_blockpool_free(%struct.TYPE_10__* %90)
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %5, align 8
  br label %92

92:                                               ; preds = %86, %84
  br label %97

93:                                               ; preds = %44
  %94 = load i32, i32* @VCOS_FUNCTION, align 4
  %95 = load i32, i32* %3, align 4
  %96 = call i32 @vcos_log_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0), i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %93, %92
  br label %98

98:                                               ; preds = %97, %36
  br label %99

99:                                               ; preds = %98, %32
  %100 = call i32 (...) @GLOBAL_UNLOCK()
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  ret %struct.TYPE_10__* %101
}

declare dso_local %struct.TYPE_10__* @wfc_stream_global_lock_and_find_stream_ptr(i32) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i32) #1

declare dso_local i32 @STREAM_LOCK(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @vcos_blockpool_calloc(i32*) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i64 @vcos_verify(i32) #1

declare dso_local i32 @wfc_server_connect(...) #1

declare dso_local i32 @vcos_blockpool_free(%struct.TYPE_10__*) #1

declare dso_local i32 @GLOBAL_UNLOCK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
