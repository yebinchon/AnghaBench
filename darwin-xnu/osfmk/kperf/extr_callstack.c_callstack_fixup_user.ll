; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_callstack_fixup_user.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_callstack_fixup_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.callstack = type { i64, i64* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@MAX_CALLSTACK_FRAMES = common dso_local global i64 0, align 8
@PSR_TF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.callstack*, i64)* @callstack_fixup_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @callstack_fixup_user(%struct.callstack* %0, i64 %1) #0 {
  %3 = alloca %struct.callstack*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.callstack* %0, %struct.callstack** %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  %9 = load %struct.callstack*, %struct.callstack** %3, align 8
  %10 = getelementptr inbounds %struct.callstack, %struct.callstack* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @MAX_CALLSTACK_FRAMES, align 8
  %13 = icmp slt i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @assert(i32 %14)
  %16 = load i64, i64* %4, align 8
  %17 = call i8* @get_user_regs(i64 %16)
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %63

22:                                               ; preds = %2
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @is_saved_state64(i32* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = call %struct.TYPE_5__* @saved_state64(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %6, align 4
  br label %38

33:                                               ; preds = %22
  %34 = load i32*, i32** %8, align 8
  %35 = call %struct.TYPE_6__* @saved_state32(i32* %34)
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %33, %27
  %39 = load i64, i64* %4, align 8
  %40 = call i64 (...) @current_thread()
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4
  %44 = bitcast i64* %5 to i8*
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i64 8, i64 4
  %49 = trunc i64 %48 to i32
  %50 = call i32 @copyin(i32 %43, i8* %44, i32 %49)
  br label %62

51:                                               ; preds = %38
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @get_threadtask(i64 %52)
  %54 = call i32 @get_task_map(i32 %53)
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i64 8, i64 4
  %60 = trunc i64 %59 to i32
  %61 = call i32 @vm_map_read_user(i32 %54, i32 %55, i64* %5, i32 %60)
  br label %62

62:                                               ; preds = %51, %42
  br label %63

63:                                               ; preds = %62, %21
  %64 = load i64, i64* %5, align 8
  %65 = load %struct.callstack*, %struct.callstack** %3, align 8
  %66 = getelementptr inbounds %struct.callstack, %struct.callstack* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load %struct.callstack*, %struct.callstack** %3, align 8
  %69 = getelementptr inbounds %struct.callstack, %struct.callstack* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  %72 = getelementptr inbounds i64, i64* %67, i64 %70
  store i64 %64, i64* %72, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @get_user_regs(i64) #1

declare dso_local i32 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_5__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_6__* @saved_state32(i32*) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @vm_map_read_user(i32, i32, i64*, i32) #1

declare dso_local i32 @get_task_map(i32) #1

declare dso_local i32 @get_threadtask(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
