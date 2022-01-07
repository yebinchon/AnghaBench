; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_initialise.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_stream.c_wfc_stream_initialise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@log_cat = common dso_local global i32 0, align 4
@WFC_LOG_LEVEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"wfc_client_stream\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@wfc_stream_global_lock = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"WFC stream global lock\00", align 1
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@wfc_stream_blockpool = common dso_local global i32 0, align 4
@WFC_STREAM_BLOCK_SIZE = common dso_local global i32 0, align 4
@VCOS_BLOCKPOOL_ALIGN_DEFAULT = common dso_local global i32 0, align 4
@VCOS_BLOCKPOOL_FLAG_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"wfc stream pool\00", align 1
@WFC_STREAM_MAX_EXTENSIONS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @wfc_stream_initialise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wfc_stream_initialise() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @WFC_LOG_LEVEL, align 4
  %3 = call i32 @vcos_log_set_level(i32* @log_cat, i32 %2)
  %4 = call i32 @vcos_log_register(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* @log_cat)
  %5 = load i32, i32* @VCOS_FUNCTION, align 4
  %6 = call i32 @vcos_log_trace(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %5)
  %7 = call i64 @vcos_mutex_create(i32* @wfc_stream_global_lock, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i64 %7, i64* %1, align 8
  %8 = load i64, i64* %1, align 8
  %9 = load i64, i64* @VCOS_SUCCESS, align 8
  %10 = icmp eq i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @vcos_assert(i32 %11)
  %13 = load i32, i32* @WFC_STREAM_BLOCK_SIZE, align 4
  %14 = load i32, i32* @VCOS_BLOCKPOOL_ALIGN_DEFAULT, align 4
  %15 = load i32, i32* @VCOS_BLOCKPOOL_FLAG_NONE, align 4
  %16 = call i64 @vcos_blockpool_create_on_heap(i32* @wfc_stream_blockpool, i32 %13, i32 4, i32 %14, i32 %15, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  store i64 %16, i64* %1, align 8
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* @VCOS_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @vcos_assert(i32 %20)
  %22 = load i32, i32* @WFC_STREAM_MAX_EXTENSIONS, align 4
  %23 = load i32, i32* @WFC_STREAM_BLOCK_SIZE, align 4
  %24 = call i64 @vcos_blockpool_extend(i32* @wfc_stream_blockpool, i32 %22, i32 %23)
  store i64 %24, i64* %1, align 8
  %25 = load i64, i64* %1, align 8
  %26 = load i64, i64* @VCOS_SUCCESS, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @vcos_assert(i32 %28)
  ret void
}

declare dso_local i32 @vcos_log_set_level(i32*, i32) #1

declare dso_local i32 @vcos_log_register(i8*, i32*) #1

declare dso_local i32 @vcos_log_trace(i8*, i32) #1

declare dso_local i64 @vcos_mutex_create(i32*, i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i64 @vcos_blockpool_create_on_heap(i32*, i32, i32, i32, i32, i8*) #1

declare dso_local i64 @vcos_blockpool_extend(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
