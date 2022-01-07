; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_PrintKernelStatus.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Mayaqua.c_PrintKernelStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1 = private unnamed_addr constant [1075 x i8] c"     --------- Mayaqua Kernel Status ---------\0A        Malloc Count ............... %u\0A        ReAlloc Count .............. %u\0A        Free Count ................. %u\0A        Total Memory Size .......... %I64u bytes\0A      * Current Memory Blocks ...... %u Blocks (Peek: %u)\0A        Total Memory Blocks ........ %u Blocks\0A      * Current MemPool Blocks ..... %u Blocks (Peek: %u)\0A        Total MemPool Mallocs ...... %u Mallocs\0A        Total MemPool ReAllocs ..... %u ReAllocs\0A        NewLock Count .............. %u\0A        DeleteLock Count ........... %u\0A      * Current Lock Objects ....... %u Objects\0A      * Current Locked Objects ..... %u Objects\0A        NewRef Count ............... %u\0A        FreeRef Count .............. %u\0A      * Current Ref Objects ........ %u Objects\0A      * Current Ref Count .......... %u Refs\0A        GetTime Count .............. %u\0A        GetTick Count .............. %u\0A        NewThread Count ............ %u\0A        FreeThread Count ........... %u\0A      * Current Threads ............ %u Threads\0A        Wait For Event Count ....... %u\0A\0A\00", align 1
@KS_MALLOC_COUNT = common dso_local global i32 0, align 4
@KS_REALLOC_COUNT = common dso_local global i32 0, align 4
@KS_FREE_COUNT = common dso_local global i32 0, align 4
@KS_TOTAL_MEM_SIZE = common dso_local global i32 0, align 4
@KS_CURRENT_MEM_COUNT = common dso_local global i32 0, align 4
@KS_TOTAL_MEM_COUNT = common dso_local global i32 0, align 4
@KS_MEMPOOL_CURRENT_NUM = common dso_local global i32 0, align 4
@KS_MEMPOOL_MALLOC_COUNT = common dso_local global i32 0, align 4
@KS_MEMPOOL_REALLOC_COUNT = common dso_local global i32 0, align 4
@KS_NEWLOCK_COUNT = common dso_local global i32 0, align 4
@KS_DELETELOCK_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_LOCK_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_LOCKED_COUNT = common dso_local global i32 0, align 4
@KS_NEWREF_COUNT = common dso_local global i32 0, align 4
@KS_FREEREF_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REF_COUNT = common dso_local global i32 0, align 4
@KS_CURRENT_REFED_COUNT = common dso_local global i32 0, align 4
@KS_GETTIME_COUNT = common dso_local global i32 0, align 4
@KS_GETTICK_COUNT = common dso_local global i32 0, align 4
@KS_NEWTHREAD_COUNT = common dso_local global i32 0, align 4
@KS_FREETHREAD_COUNT = common dso_local global i32 0, align 4
@KS_WAIT_COUNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"      !!! MEMORY LEAKS DETECTED !!!\0A\0A\00", align 1
@g_memcheck = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [69 x i8] c"    Enable /memcheck startup option to see the leaking memory heap.\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"    Press Enter key to exit the process.\0A\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"        @@@ NO MEMORY LEAKS @@@\0A\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PrintKernelStatus() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %3 = load i32, i32* @KS_MALLOC_COUNT, align 4
  %4 = call i64 @KS_GET(i32 %3)
  %5 = load i32, i32* @KS_REALLOC_COUNT, align 4
  %6 = call i64 @KS_GET(i32 %5)
  %7 = load i32, i32* @KS_FREE_COUNT, align 4
  %8 = call i64 @KS_GET(i32 %7)
  %9 = load i32, i32* @KS_TOTAL_MEM_SIZE, align 4
  %10 = call i32 @KS_GET64(i32 %9)
  %11 = load i32, i32* @KS_CURRENT_MEM_COUNT, align 4
  %12 = call i64 @KS_GET(i32 %11)
  %13 = load i32, i32* @KS_CURRENT_MEM_COUNT, align 4
  %14 = call i32 @KS_GETMAX(i32 %13)
  %15 = load i32, i32* @KS_TOTAL_MEM_COUNT, align 4
  %16 = call i64 @KS_GET(i32 %15)
  %17 = load i32, i32* @KS_MEMPOOL_CURRENT_NUM, align 4
  %18 = call i64 @KS_GET(i32 %17)
  %19 = load i32, i32* @KS_MEMPOOL_CURRENT_NUM, align 4
  %20 = call i32 @KS_GETMAX(i32 %19)
  %21 = load i32, i32* @KS_MEMPOOL_MALLOC_COUNT, align 4
  %22 = call i64 @KS_GET(i32 %21)
  %23 = load i32, i32* @KS_MEMPOOL_REALLOC_COUNT, align 4
  %24 = call i64 @KS_GET(i32 %23)
  %25 = load i32, i32* @KS_NEWLOCK_COUNT, align 4
  %26 = call i64 @KS_GET(i32 %25)
  %27 = load i32, i32* @KS_DELETELOCK_COUNT, align 4
  %28 = call i64 @KS_GET(i32 %27)
  %29 = load i32, i32* @KS_CURRENT_LOCK_COUNT, align 4
  %30 = call i64 @KS_GET(i32 %29)
  %31 = load i32, i32* @KS_CURRENT_LOCKED_COUNT, align 4
  %32 = call i64 @KS_GET(i32 %31)
  %33 = load i32, i32* @KS_NEWREF_COUNT, align 4
  %34 = call i64 @KS_GET(i32 %33)
  %35 = load i32, i32* @KS_FREEREF_COUNT, align 4
  %36 = call i64 @KS_GET(i32 %35)
  %37 = load i32, i32* @KS_CURRENT_REF_COUNT, align 4
  %38 = call i64 @KS_GET(i32 %37)
  %39 = load i32, i32* @KS_CURRENT_REFED_COUNT, align 4
  %40 = call i64 @KS_GET(i32 %39)
  %41 = load i32, i32* @KS_GETTIME_COUNT, align 4
  %42 = call i64 @KS_GET(i32 %41)
  %43 = load i32, i32* @KS_GETTICK_COUNT, align 4
  %44 = call i64 @KS_GET(i32 %43)
  %45 = load i32, i32* @KS_NEWTHREAD_COUNT, align 4
  %46 = call i64 @KS_GET(i32 %45)
  %47 = load i32, i32* @KS_FREETHREAD_COUNT, align 4
  %48 = call i64 @KS_GET(i32 %47)
  %49 = load i32, i32* @KS_NEWTHREAD_COUNT, align 4
  %50 = call i64 @KS_GET(i32 %49)
  %51 = load i32, i32* @KS_FREETHREAD_COUNT, align 4
  %52 = call i64 @KS_GET(i32 %51)
  %53 = sub nsw i64 %50, %52
  %54 = load i32, i32* @KS_WAIT_COUNT, align 4
  %55 = call i64 @KS_GET(i32 %54)
  %56 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([1075 x i8], [1075 x i8]* @.str.1, i64 0, i64 0), i64 %4, i64 %6, i64 %8, i32 %10, i64 %12, i32 %14, i64 %16, i64 %18, i32 %20, i64 %22, i64 %24, i64 %26, i64 %28, i64 %30, i64 %32, i64 %34, i64 %36, i64 %38, i64 %40, i64 %42, i64 %44, i64 %46, i64 %48, i64 %53, i64 %55)
  %57 = load i32, i32* @KS_CURRENT_MEM_COUNT, align 4
  %58 = call i64 @KS_GET(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %76, label %60

60:                                               ; preds = %0
  %61 = load i32, i32* @KS_CURRENT_LOCK_COUNT, align 4
  %62 = call i64 @KS_GET(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %76, label %64

64:                                               ; preds = %60
  %65 = load i32, i32* @KS_MEMPOOL_CURRENT_NUM, align 4
  %66 = call i64 @KS_GET(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = load i32, i32* @KS_CURRENT_LOCKED_COUNT, align 4
  %70 = call i64 @KS_GET(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @KS_CURRENT_REF_COUNT, align 4
  %74 = call i64 @KS_GET(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %72, %68, %64, %60, %0
  store i32 1, i32* %1, align 4
  br label %77

77:                                               ; preds = %76, %72
  %78 = load i32, i32* %1, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %77
  %81 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %82 = load i32, i32* @g_memcheck, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = call i64 (...) @IsHamMode()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.3, i64 0, i64 0))
  %89 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  br label %90

90:                                               ; preds = %87, %84
  %91 = call i32 @GetLine(i32* null, i32 0)
  br label %92

92:                                               ; preds = %90, %80
  br label %95

93:                                               ; preds = %77
  %94 = call i32 (i8*, ...) @Print(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %95

95:                                               ; preds = %93, %92
  ret void
}

declare dso_local i32 @Print(i8*, ...) #1

declare dso_local i64 @KS_GET(i32) #1

declare dso_local i32 @KS_GET64(i32) #1

declare dso_local i32 @KS_GETMAX(i32) #1

declare dso_local i64 @IsHamMode(...) #1

declare dso_local i32 @GetLine(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
