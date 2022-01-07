; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchi_msg_queue.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vchiq_arm/extr_vchiq_lib.c_vchi_msg_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i8*, i32 }

@VCHI_FLAGS_BLOCK_UNTIL_QUEUED = common dso_local global i64 0, align 8
@VCHIQ_ERROR = common dso_local global i32 0, align 4
@VCHIQ_IOC_QUEUE_MESSAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vchi_msg_queue(i32 %0, i8* %1, i32 %2, i64 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_7__, align 8
  %14 = alloca %struct.TYPE_8__, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.TYPE_6__* @find_service_by_handle(i32 %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %12, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %19 = load i8*, i8** %8, align 8
  store i8* %19, i8** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %20, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = call i32 @vcos_unused(i8* %22)
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @VCHI_FLAGS_BLOCK_UNTIL_QUEUED, align 8
  %26 = icmp eq i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @vcos_assert(i32 %27)
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @VCHIQ_ERROR, align 4
  store i32 %32, i32* %6, align 4
  br label %48

33:                                               ; preds = %5
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store %struct.TYPE_8__* %14, %struct.TYPE_8__** %38, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store i32 1, i32* %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VCHIQ_IOC_QUEUE_MESSAGE, align 4
  %45 = call i32 @ioctl(i32 %43, i32 %44, %struct.TYPE_7__* %13)
  %46 = call i32 @RETRY(i32 %40, i32 %45)
  %47 = load i32, i32* %15, align 4
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %33, %31
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local %struct.TYPE_6__* @find_service_by_handle(i32) #1

declare dso_local i32 @vcos_unused(i8*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @RETRY(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, %struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
