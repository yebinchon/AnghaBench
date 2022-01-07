; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_rect_req_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_rect_req_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32 (i8*, i32*, i32*)* }

@WFC_RECT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"wfc_stream_rect_req_thread: START: stream: %X\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"WFC rect req\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@wfc_client_stream_post_sem = common dso_local global i32 0, align 4
@WFC_RECT_X = common dso_local global i64 0, align 8
@WFC_RECT_Y = common dso_local global i64 0, align 8
@WFC_RECT_WIDTH = common dso_local global i64 0, align 8
@WFC_RECT_HEIGHT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"wfc_stream_rect_req_thread: END: stream: %X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @wfc_stream_rect_req_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @wfc_stream_rect_req_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32 (i8*, i32*, i32*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca [8 x i32], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* @WFC_RECT_SIZE, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %10, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %11, align 8
  %21 = load i32, i32* @WFC_RECT_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @vcos_log_info(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.TYPE_4__* @wfc_stream_find_stream_ptr(i32 %26)
  store %struct.TYPE_4__* %27, %struct.TYPE_4__** %13, align 8
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %29 = icmp ne %struct.TYPE_4__* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %98

31:                                               ; preds = %1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %33, align 8
  store i32 (i8*, i32*, i32*)* %34, i32 (i8*, i32*, i32*)** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %39 = call i32 @STREAM_UNLOCK(%struct.TYPE_4__* %38)
  %40 = call i64 @vcos_semaphore_create(i32* %7, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @VCOS_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  %44 = zext i1 %43 to i32
  %45 = call i32 @vcos_assert(i32 %44)
  br label %46

46:                                               ; preds = %93, %31
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @VCOS_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %94

50:                                               ; preds = %46
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @wfc_client_stream_post_sem, align 4
  %53 = call i32 @wfc_server_stream_on_rects_change(i32 %51, i32 %52, i32* %7)
  %54 = call i32 @vcos_semaphore_wait(i32* %7)
  %55 = load i32, i32* %4, align 4
  %56 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %57 = call i64 @wfc_server_stream_get_rects(i32 %55, i32* %56)
  store i64 %57, i64* %8, align 8
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* @VCOS_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %93

61:                                               ; preds = %50
  %62 = mul nuw i64 4, %18
  %63 = icmp eq i64 %62, 16
  %64 = zext i1 %63 to i32
  %65 = call i32 @vcos_static_assert(i32 %64)
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 0
  %67 = mul nuw i64 4, %18
  %68 = trunc i64 %67 to i32
  %69 = call i32 @memcpy(i32* %20, i32* %66, i32 %68)
  %70 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 4
  %71 = load i32, i32* %70, align 16
  %72 = call i32 @WFC_DISPMANX_TO_SRC_VAL(i32 %71)
  %73 = load i64, i64* @WFC_RECT_X, align 8
  %74 = getelementptr inbounds i32, i32* %23, i64 %73
  store i32 %72, i32* %74, align 4
  %75 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @WFC_DISPMANX_TO_SRC_VAL(i32 %76)
  %78 = load i64, i64* @WFC_RECT_Y, align 8
  %79 = getelementptr inbounds i32, i32* %23, i64 %78
  store i32 %77, i32* %79, align 4
  %80 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 6
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @WFC_DISPMANX_TO_SRC_VAL(i32 %81)
  %83 = load i64, i64* @WFC_RECT_WIDTH, align 8
  %84 = getelementptr inbounds i32, i32* %23, i64 %83
  store i32 %82, i32* %84, align 4
  %85 = getelementptr inbounds [8 x i32], [8 x i32]* %9, i64 0, i64 7
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @WFC_DISPMANX_TO_SRC_VAL(i32 %86)
  %88 = load i64, i64* @WFC_RECT_HEIGHT, align 8
  %89 = getelementptr inbounds i32, i32* %23, i64 %88
  store i32 %87, i32* %89, align 4
  %90 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %5, align 8
  %91 = load i8*, i8** %6, align 8
  %92 = call i32 %90(i8* %91, i32* %20, i32* %23)
  br label %93

93:                                               ; preds = %61, %50
  br label %46

94:                                               ; preds = %46
  %95 = call i32 @vcos_semaphore_delete(i32* %7)
  %96 = load i32, i32* %4, align 4
  %97 = call i32 @vcos_log_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %96)
  store i8* null, i8** %2, align 8
  store i32 1, i32* %14, align 4
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i8*, i8** %2, align 8
  ret i8* %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vcos_log_info(i8*, i32) #2

declare dso_local %struct.TYPE_4__* @wfc_stream_find_stream_ptr(i32) #2

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_4__*) #2

declare dso_local i64 @vcos_semaphore_create(i32*, i8*, i32) #2

declare dso_local i32 @vcos_assert(i32) #2

declare dso_local i32 @wfc_server_stream_on_rects_change(i32, i32, i32*) #2

declare dso_local i32 @vcos_semaphore_wait(i32*) #2

declare dso_local i64 @wfc_server_stream_get_rects(i32, i32*) #2

declare dso_local i32 @vcos_static_assert(i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @WFC_DISPMANX_TO_SRC_VAL(i32) #2

declare dso_local i32 @vcos_semaphore_delete(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
