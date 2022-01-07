; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_vchiq_callback.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/wf/extr_wfc_client_ipc.c_wfc_client_ipc_vchiq_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_16__, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_19__ = type { %struct.TYPE_15__, %struct.TYPE_14__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 (i32)* }

@.str = private unnamed_addr constant [14 x i8] c"%s: reason %d\00", align 1
@VCOS_FUNCTION = common dso_local global i32 0, align 4
@WFC_IPC_MSG_MAGIC = common dso_local global i32 0, align 4
@WFC_IPC_MSG_CALLBACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"%s: waking up waiter at %p\00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"%s: copying %d bytes from %p to %p first word 0x%x\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"bulk messages not used\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s: service %x opened\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: service %x closed\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"unexpected message reason\00", align 1
@VCHIQ_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_20__*, %struct.TYPE_17__*, i8*)* @wfc_client_ipc_vchiq_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wfc_client_ipc_vchiq_callback(i32 %0, %struct.TYPE_20__* %1, %struct.TYPE_17__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i32 (i32)*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %6, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32, i32* @VCOS_FUNCTION, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %140 [
    i32 130, label %18
    i32 131, label %127
    i32 133, label %127
    i32 134, label %127
    i32 132, label %127
    i32 128, label %132
    i32 129, label %136
  ]

18:                                               ; preds = %4
  %19 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %22, %struct.TYPE_18__** %9, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 16
  %28 = zext i1 %27 to i32
  %29 = call i32 @vcos_assert(i32 %28)
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @WFC_IPC_MSG_MAGIC, align 4
  %34 = icmp eq i32 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @vcos_assert(i32 %35)
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WFC_IPC_MSG_CALLBACK, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %18
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %44 = bitcast %struct.TYPE_18__* %43 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %44, %struct.TYPE_19__** %10, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32 (i32)*, i32 (i32)** %47, align 8
  store i32 (i32)* %48, i32 (i32)** %11, align 8
  %49 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = icmp eq i64 %52, 16
  %54 = zext i1 %53 to i32
  %55 = call i32 @vcos_assert(i32 %54)
  %56 = load i32 (i32)*, i32 (i32)** %11, align 8
  %57 = icmp ne i32 (i32)* %56, null
  %58 = zext i1 %57 to i32
  %59 = call i32 @vcos_verify(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %42
  %62 = load i32 (i32)*, i32 (i32)** %11, align 8
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 %62(i32 %66)
  br label %68

68:                                               ; preds = %61, %42
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %71 = call i32 @vchiq_release_message(%struct.TYPE_17__* %69, %struct.TYPE_20__* %70)
  br label %126

72:                                               ; preds = %18
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %75, align 8
  store %struct.TYPE_17__* %76, %struct.TYPE_17__** %12, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %78 = icmp ne %struct.TYPE_17__* %77, null
  %79 = zext i1 %78 to i32
  %80 = call i32 @vcos_assert(i32 %79)
  %81 = load i32, i32* @VCOS_FUNCTION, align 4
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %83 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %81, %struct.TYPE_17__* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @vcos_assert(i32 %86)
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = sub i64 %94, 16
  %96 = trunc i64 %95 to i32
  %97 = call i32 @vcos_min(i32 %90, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @VCOS_FUNCTION, align 4
  %102 = load i32, i32* %13, align 4
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i64 1
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i64 1
  %110 = bitcast %struct.TYPE_18__* %109 to i32*
  %111 = load i32, i32* %110, align 4
  %112 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %101, i32 %102, %struct.TYPE_18__* %104, i32 %107, i32 %111)
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i64 1
  %118 = load i32, i32* %13, align 4
  %119 = call i32 @memcpy(i32 %115, %struct.TYPE_18__* %117, i32 %118)
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = call i32 @vchiq_release_message(%struct.TYPE_17__* %120, %struct.TYPE_20__* %121)
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 2
  %125 = call i32 @vcos_semaphore_post(i32* %124)
  br label %126

126:                                              ; preds = %72, %68
  br label %142

127:                                              ; preds = %4, %4, %4, %4
  %128 = call i32 @vcos_assert_msg(i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %131 = call i32 @vchiq_release_message(%struct.TYPE_17__* %129, %struct.TYPE_20__* %130)
  br label %142

132:                                              ; preds = %4
  %133 = load i32, i32* @VCOS_FUNCTION, align 4
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %133, %struct.TYPE_17__* %134)
  br label %142

136:                                              ; preds = %4
  %137 = load i32, i32* @VCOS_FUNCTION, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = call i32 (i8*, i32, ...) @vcos_log_trace(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %137, %struct.TYPE_17__* %138)
  br label %142

140:                                              ; preds = %4
  %141 = call i32 @vcos_assert_msg(i32 0, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  br label %142

142:                                              ; preds = %140, %136, %132, %127, %126
  %143 = load i32, i32* @VCHIQ_SUCCESS, align 4
  ret i32 %143
}

declare dso_local i32 @vcos_log_trace(i8*, i32, ...) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @vcos_verify(i32) #1

declare dso_local i32 @vchiq_release_message(%struct.TYPE_17__*, %struct.TYPE_20__*) #1

declare dso_local i32 @vcos_min(i32, i32) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @vcos_semaphore_post(i32*) #1

declare dso_local i32 @vcos_assert_msg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
