; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_start_polling_thread.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_start_polling_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

@OS_THREAD_ATTRIB_AFFINITY_CPU2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"[hid]: starting polling thread.\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"[hid]: allocation failed, aborting thread start.\0A\00", align 1
@wiiu_hid_polling_thread = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"[hid]: OSCreateThread failed.\0A\00", align 1
@wiiu_hid_polling_thread_cleanup = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @start_polling_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @start_polling_thread(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %9 = load i32, i32* @OS_THREAD_ATTRIB_AFFINITY_CPU2, align 4
  store i32 %9, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 32768, i32* %5, align 4
  store i32 10, i32* %6, align 4
  %10 = call i8* (...) @new_thread()
  store i8* %10, i8** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i8* @alloc_zeroed(i32 16, i32 %11)
  store i8* %12, i8** %8, align 8
  %13 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i8*, i8** %8, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %16, %1
  %20 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %49

21:                                               ; preds = %16
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @wiiu_hid_polling_thread, align 4
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %25 = bitcast %struct.TYPE_3__* %24 to i8*
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %26, i64 %28
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @OSCreateThread(i8* %22, i32 %23, i32 1, i8* %25, i8* %29, i32 %30, i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %21
  %36 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %49

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @wiiu_hid_polling_thread_cleanup, align 4
  %40 = call i32 @OSSetThreadCleanupCallback(i8* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = call i32 @OSResumeThread(i8* %47)
  br label %62

49:                                               ; preds = %35, %19
  %50 = load i8*, i8** %7, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i8*, i8** %7, align 8
  %54 = call i32 @free(i8* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i8*, i8** %8, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i8*, i8** %8, align 8
  %60 = call i32 @free(i8* %59)
  br label %61

61:                                               ; preds = %58, %55
  br label %62

62:                                               ; preds = %61, %37
  ret void
}

declare dso_local i8* @new_thread(...) #1

declare dso_local i8* @alloc_zeroed(i32, i32) #1

declare dso_local i32 @RARCH_LOG(i8*) #1

declare dso_local i32 @OSCreateThread(i8*, i32, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @OSSetThreadCleanupCallback(i8*, i32) #1

declare dso_local i32 @OSResumeThread(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
