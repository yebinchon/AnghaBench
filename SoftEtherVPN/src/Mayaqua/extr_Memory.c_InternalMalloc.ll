; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_InternalMalloc.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Memory.c_InternalMalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KS_MALLOC_COUNT = common dso_local global i32 0, align 4
@KS_TOTAL_MEM_COUNT = common dso_local global i32 0, align 4
@KS_TOTAL_MEM_SIZE = common dso_local global i32 0, align 4
@KS_CURRENT_MEM_COUNT = common dso_local global i32 0, align 4
@MEMORY_MAX_RETRY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"InternalMalloc: error: malloc() failed.\0A\0A\00", align 1
@MEMORY_SLEEP_TIME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"MEM\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @InternalMalloc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @MORE(i64 %5, i32 1)
  store i64 %6, i64* %2, align 8
  %7 = load i32, i32* @KS_MALLOC_COUNT, align 4
  %8 = call i32 @KS_INC(i32 %7)
  %9 = load i32, i32* @KS_TOTAL_MEM_COUNT, align 4
  %10 = call i32 @KS_INC(i32 %9)
  %11 = load i32, i32* @KS_TOTAL_MEM_SIZE, align 4
  %12 = load i64, i64* %2, align 8
  %13 = call i32 @KS_ADD(i32 %11, i64 %12)
  %14 = load i32, i32* @KS_CURRENT_MEM_COUNT, align 4
  %15 = call i32 @KS_INC(i32 %14)
  br label %16

16:                                               ; preds = %1, %29
  %17 = load i64, i64* %4, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %4, align 8
  %19 = load i64, i64* @MEMORY_MAX_RETRY, align 8
  %20 = icmp sgt i64 %17, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = call i32 @AbortExitEx(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %16
  %24 = load i64, i64* %2, align 8
  %25 = call i8* @OSMemoryAlloc(i64 %24)
  store i8* %25, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @MEMORY_SLEEP_TIME, align 4
  %31 = call i32 @OSSleep(i32 %30)
  br label %16

32:                                               ; preds = %28
  %33 = load i8*, i8** %3, align 8
  %34 = call i32 @POINTER_TO_UINT64(i8* %33)
  %35 = load i64, i64* %2, align 8
  %36 = call i32 @TrackNewObj(i32 %34, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load i8*, i8** %3, align 8
  ret i8* %37
}

declare dso_local i64 @MORE(i64, i32) #1

declare dso_local i32 @KS_INC(i32) #1

declare dso_local i32 @KS_ADD(i32, i64) #1

declare dso_local i32 @AbortExitEx(i8*) #1

declare dso_local i8* @OSMemoryAlloc(i64) #1

declare dso_local i32 @OSSleep(i32) #1

declare dso_local i32 @TrackNewObj(i32, i8*, i64) #1

declare dso_local i32 @POINTER_TO_UINT64(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
