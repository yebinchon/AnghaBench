; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_recv_bulk.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_recv_bulk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32 }

@KHDISPATCH_CTRL_THRESHOLD = common dso_local global i64 0, align 8
@VCHIQ_SUCCESS = common dso_local global i64 0, align 8
@bulk_event = common dso_local global i32 0, align 4
@VCOS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*, i64)* @recv_bulk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recv_bulk(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load i64, i64* @KHDISPATCH_CTRL_THRESHOLD, align 8
  %12 = icmp sle i64 %10, %11
  br i1 %12, label %13, label %34

13:                                               ; preds = %3
  %14 = load i32*, i32** %4, align 8
  %15 = call i32 @get_queue(i32* %14)
  %16 = call %struct.TYPE_4__* @vchiu_queue_pop(i32 %15)
  store %struct.TYPE_4__* %16, %struct.TYPE_4__** %7, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %6, align 8
  %21 = icmp eq i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @vcos_assert(i32 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = call i32 @memcpy(i8* %24, i32 %27, i64 %28)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @get_handle(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = call i32 @vchiq_release_message(i32 %31, %struct.TYPE_4__* %32)
  br label %56

34:                                               ; preds = %3
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @get_handle(i32* %35)
  %37 = load i8*, i8** %5, align 8
  %38 = load i64, i64* %6, align 8
  %39 = call i32 @rpc_pad_bulk(i64 %38)
  %40 = call i64 @vchiq_queue_bulk_receive(i32 %36, i8* %37, i32 %39, i32* null)
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %8, align 8
  %42 = call i32 @UNUSED_NDEBUG(i64 %41)
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @VCHIQ_SUCCESS, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @vcos_assert(i32 %46)
  %48 = call i64 @vcos_event_wait(i32* @bulk_event)
  store i64 %48, i64* %9, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @UNUSED_NDEBUG(i64 %49)
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @VCOS_SUCCESS, align 8
  %53 = icmp eq i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i32 @vcos_assert(i32 %54)
  br label %56

56:                                               ; preds = %34, %13
  ret void
}

declare dso_local %struct.TYPE_4__* @vchiu_queue_pop(i32) #1

declare dso_local i32 @get_queue(i32*) #1

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @get_handle(i32*) #1

declare dso_local i64 @vchiq_queue_bulk_receive(i32, i8*, i32, i32*) #1

declare dso_local i32 @rpc_pad_bulk(i64) #1

declare dso_local i32 @UNUSED_NDEBUG(i64) #1

declare dso_local i64 @vcos_event_wait(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
