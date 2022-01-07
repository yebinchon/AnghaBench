; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_task.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/extr_vcilcs.c_ilcs_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 (i32)*, i32 (i32)* }

@CLOSED_CALLBACK = common dso_local global i64 0, align 8
@ILCS_MAX_WAITING = common dso_local global i32 0, align 4
@vcos_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*)* @ilcs_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ilcs_task(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %6, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 11
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = load i32 (i32)*, i32 (i32)** %9, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 10
  %13 = load i32, i32* %12, align 8
  %14 = call i32 %10(i32 %13)
  br label %15

15:                                               ; preds = %21, %1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @CLOSED_CALLBACK, align 8
  %20 = icmp slt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = call i32 @ilcs_process_message(%struct.TYPE_8__* %22, i32 1)
  br label %15

24:                                               ; preds = %15
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 11
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32 (i32)*, i32 (i32)** %27, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 10
  %31 = load i32, i32* %30, align 8
  %32 = call i32 %28(i32 %31)
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 8
  %35 = call i32 @vcos_event_delete(i32* %34)
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 7
  %38 = call i32 @vchiu_queue_delete(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 6
  %41 = call i32 @vcos_timer_delete(i32* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %55, %24
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @ILCS_MAX_WAITING, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %58

46:                                               ; preds = %42
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 5
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = call i32 @vcos_event_delete(i32* %53)
  br label %55

55:                                               ; preds = %46
  %56 = load i32, i32* %4, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %4, align 4
  br label %42

58:                                               ; preds = %42
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 4
  %61 = call i32 @vcos_event_delete(i32* %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 3
  %64 = call i32 @vcos_semaphore_delete(i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = call i32 @vcos_mutex_delete(i32* %66)
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CLOSED_CALLBACK, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %58
  %74 = call i32 (...) @vcos_abort()
  br label %75

75:                                               ; preds = %73, %58
  ret i8* null
}

declare dso_local i32 @ilcs_process_message(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vcos_event_delete(i32*) #1

declare dso_local i32 @vchiu_queue_delete(i32*) #1

declare dso_local i32 @vcos_timer_delete(i32*) #1

declare dso_local i32 @vcos_semaphore_delete(i32*) #1

declare dso_local i32 @vcos_mutex_delete(i32*) #1

declare dso_local i32 @vcos_abort(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
