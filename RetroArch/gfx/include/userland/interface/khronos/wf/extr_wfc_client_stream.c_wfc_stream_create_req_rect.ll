; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_req_rect.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_create_req_rect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i8*, i32* }

@.str = private unnamed_addr constant [38 x i8] c"wfc_stream_create_req_rect: stream %X\00", align 1
@WFC_STREAM_FLAGS_REQ_RECT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"wfc_stream_rect_req_thread\00", align 1
@wfc_stream_rect_req_thread = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wfc_stream_create_req_rect(i64 %0, i32 %1, i32* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @vcos_log_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @WFC_STREAM_FLAGS_REQ_RECT, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @wfc_stream_create(i64 %15, i32 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %5, align 4
  br label %54

24:                                               ; preds = %4
  %25 = load i64, i64* %6, align 8
  %26 = call %struct.TYPE_5__* @wfc_stream_find_stream_ptr(i64 %25)
  store %struct.TYPE_5__* %26, %struct.TYPE_5__** %11, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %28 = call i32 @vcos_assert(%struct.TYPE_5__* %27)
  %29 = load i32*, i32** %8, align 8
  %30 = icmp ne i32* %29, null
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.TYPE_5__*
  %34 = call i32 @vcos_assert(%struct.TYPE_5__* %33)
  %35 = load i32*, i32** %8, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 2
  store i32* %35, i32** %37, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* @wfc_stream_rect_req_thread, align 4
  %44 = load i64, i64* %6, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = call i64 @vcos_thread_create(i32* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32* null, i32 %43, i8* %45)
  store i64 %46, i64* %12, align 8
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @VCOS_SUCCESS, align 8
  %49 = icmp eq i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i32 @vcos_demand(i32 %50)
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = call i32 @STREAM_UNLOCK(%struct.TYPE_5__* %52)
  store i32 0, i32* %5, align 4
  br label %54

54:                                               ; preds = %24, %22
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @vcos_log_info(i8*, i64) #1

declare dso_local i32 @wfc_stream_create(i64, i32) #1

declare dso_local %struct.TYPE_5__* @wfc_stream_find_stream_ptr(i64) #1

declare dso_local i32 @vcos_assert(%struct.TYPE_5__*) #1

declare dso_local i64 @vcos_thread_create(i32*, i8*, i32*, i32, i8*) #1

declare dso_local i32 @vcos_demand(i32) #1

declare dso_local i32 @STREAM_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
