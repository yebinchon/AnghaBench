; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_11__ = type { i32, i8* }

@.str = private unnamed_addr constant [27 x i8] c"%s: stream 0x%x flags 0x%x\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"%s: unable to create data block for stream 0x%x\00", align 1
@VCOS_ENOMEM = common dso_local global i8* null, align 8
@WFC_STREAM_RETRIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: server create returned 0x%x\00", align 1
@WFC_INVALID_HANDLE = common dso_local global i64 0, align 8
@WFC_STREAM_RETRY_DELAY_MS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"%s: stream 0x%x already exists in server\00", align 1
@VCOS_EEXIST = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @wfc_stream_create(i64 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* null, i8** %7, align 8
  %13 = load i32, i32* @VCOS_FUNCTION, align 4
  %14 = load i64, i64* %4, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = call i32 @vcos_log_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %13, i64 %14, i8* %15)
  %17 = load i64, i64* %4, align 8
  %18 = call %struct.TYPE_10__* @wfc_stream_create_stream_ptr(i64 %17, i32 0)
  store %struct.TYPE_10__* %18, %struct.TYPE_10__** %6, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = icmp eq %struct.TYPE_10__* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %2
  %22 = load i32, i32* @VCOS_FUNCTION, align 4
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @vcos_log_error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %22, i64 %23)
  %25 = load i8*, i8** @VCOS_ENOMEM, align 8
  store i8* %25, i8** %3, align 8
  br label %106

26:                                               ; preds = %2
  %27 = call i32 (...) @vcos_process_id_current()
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  store i8* %30, i8** %9, align 8
  %31 = load i32, i32* %8, align 4
  %32 = ashr i32 %31, 32
  %33 = sext i32 %32 to i64
  %34 = inttoptr i64 %33 to i8*
  store i8* %34, i8** %10, align 8
  %35 = load i32, i32* @WFC_STREAM_RETRIES, align 4
  store i32 %35, i32* %11, align 4
  %36 = call i32 @memset(%struct.TYPE_11__* %12, i32 0, i32 16)
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  store i32 16, i32* %37, align 8
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  br label %40

40:                                               ; preds = %71, %26
  %41 = load i64, i64* %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i64 @wfc_server_stream_create_info(i64 %41, %struct.TYPE_11__* %12, i8* %42, i8* %43)
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @VCOS_FUNCTION, align 4
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %50)
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %40
  %58 = load i32, i32* @WFC_STREAM_RETRY_DELAY_MS, align 4
  %59 = call i32 @vcos_sleep(i32 %58)
  br label %60

60:                                               ; preds = %57, %40
  br label %61

61:                                               ; preds = %60
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %11, align 4
  %70 = icmp sgt i32 %68, 0
  br label %71

71:                                               ; preds = %67, %61
  %72 = phi i1 [ false, %61 ], [ %70, %67 ]
  br i1 %72, label %40, label %73

73:                                               ; preds = %71
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @WFC_INVALID_HANDLE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* @VCOS_FUNCTION, align 4
  %81 = load i64, i64* %4, align 8
  %82 = call i32 @vcos_log_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %80, i64 %81)
  %83 = load i8*, i8** @VCOS_EEXIST, align 8
  store i8* %83, i8** %7, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %85 = call i32 @wfc_stream_destroy_if_ready(%struct.TYPE_10__* %84)
  br label %104

86:                                               ; preds = %73
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp eq i64 %89, %90
  %92 = zext i1 %91 to i32
  %93 = call i32 @vcos_assert(i32 %92)
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 8
  %98 = load i8*, i8** %5, align 8
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i8* %98, i8** %101, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = call i32 @STREAM_UNLOCK(%struct.TYPE_10__* %102)
  br label %104

104:                                              ; preds = %86, %79
  %105 = load i8*, i8** %7, align 8
  store i8* %105, i8** %3, align 8
  br label %106

106:                                              ; preds = %104, %21
  %107 = load i8*, i8** %3, align 8
  ret i8* %107
}

declare dso_local i32 @vcos_log_info(i8*, i32, i64, i8*) #1

declare dso_local %struct.TYPE_10__* @wfc_stream_create_stream_ptr(i64, i32) #1

declare dso_local i32 @vcos_log_error(i8*, i32, i64) #1

declare dso_local i32 @vcos_process_id_current(...) #1

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i64 @wfc_server_stream_create_info(i64, %struct.TYPE_11__*, i8*, i8*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32, i64) #1

declare dso_local i32 @vcos_sleep(i32) #1

declare dso_local i32 @wfc_stream_destroy_if_ready(%struct.TYPE_10__*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
