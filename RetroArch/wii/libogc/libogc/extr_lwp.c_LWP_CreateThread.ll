; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_CreateThread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp.c_LWP_CreateThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@LWP_OBJTYPE_THREAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LWP_CreateThread(i64* %0, i8* (i8*)* %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8* (i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_8__*, align 8
  store i64* %0, i64** %8, align 8
  store i8* (i8*)* %1, i8* (i8*)** %9, align 8
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i64*, i64** %8, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %6
  %19 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %20 = icmp ne i8* (i8*)* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %6
  store i32 -1, i32* %7, align 4
  br label %64

22:                                               ; preds = %18
  %23 = call %struct.TYPE_8__* (...) @__lwp_cntrl_allocate()
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %15, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %25 = icmp ne %struct.TYPE_8__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 -1, i32* %7, align 4
  br label %64

27:                                               ; preds = %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @__lwp_priotocore(i32 %31)
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i64 @__lwp_thread_init(%struct.TYPE_8__* %28, i8* %29, i64 %30, i32 %32, i32 0, i32 %33)
  store i64 %34, i64* %14, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %39 = call i32 @__lwp_cntrl_free(%struct.TYPE_8__* %38)
  %40 = call i32 (...) @__lwp_thread_dispatchenable()
  store i32 -1, i32* %7, align 4
  br label %64

41:                                               ; preds = %27
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %43 = load i8* (i8*)*, i8* (i8*)** %9, align 8
  %44 = load i8*, i8** %10, align 8
  %45 = call i64 @__lwp_thread_start(%struct.TYPE_8__* %42, i8* (i8*)* %43, i8* %44)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %41
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %50 = call i32 @__lwp_cntrl_free(%struct.TYPE_8__* %49)
  %51 = call i32 (...) @__lwp_thread_dispatchenable()
  store i32 -1, i32* %7, align 4
  br label %64

52:                                               ; preds = %41
  %53 = load i32, i32* @LWP_OBJTYPE_THREAD, align 4
  %54 = call i32 @LWP_OBJMASKTYPE(i32 %53)
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @LWP_OBJMASKID(i32 %58)
  %60 = or i32 %54, %59
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %8, align 8
  store i64 %61, i64* %62, align 8
  %63 = call i32 (...) @__lwp_thread_dispatchenable()
  store i32 0, i32* %7, align 4
  br label %64

64:                                               ; preds = %52, %48, %37, %26, %21
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local %struct.TYPE_8__* @__lwp_cntrl_allocate(...) #1

declare dso_local i64 @__lwp_thread_init(%struct.TYPE_8__*, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @__lwp_priotocore(i32) #1

declare dso_local i32 @__lwp_cntrl_free(%struct.TYPE_8__*) #1

declare dso_local i32 @__lwp_thread_dispatchenable(...) #1

declare dso_local i64 @__lwp_thread_start(%struct.TYPE_8__*, i8* (i8*)*, i8*) #1

declare dso_local i32 @LWP_OBJMASKTYPE(i32) #1

declare dso_local i32 @LWP_OBJMASKID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
