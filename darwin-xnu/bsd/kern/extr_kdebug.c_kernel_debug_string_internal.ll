; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DBG_TRACE_STRING = common dso_local global i32 0, align 4
@TRACE_STRING_GLOBAL = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@DBG_FUNC_END = common dso_local global i32 0, align 4
@g_curr_str_id = common dso_local global i32 0, align 4
@STR_ID_MASK = common dso_local global i64 0, align 8
@g_str_id_signature = common dso_local global i64 0, align 8
@KDBG_EVENTID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i64, i8*, i64)* @kernel_debug_string_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @kernel_debug_string_internal(i32 %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %10, align 8
  store i64 0, i64* %11, align 8
  %17 = load i32, i32* @DBG_TRACE_STRING, align 4
  %18 = load i32, i32* @TRACE_STRING_GLOBAL, align 4
  %19 = call i32 @TRACEDBG_CODE(i32 %17, i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = call i32 (...) @current_thread()
  %21 = call i64 @thread_tid(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %4
  %25 = load i64, i64* %9, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @DBG_FUNC_START, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DBG_FUNC_END, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 @kernel_debug_internal(i32 %32, i64 %34, i64 %35, i64 0, i64 0, i64 %36, i32 0)
  %38 = load i64, i64* %7, align 8
  store i64 %38, i64* %5, align 8
  br label %124

39:                                               ; preds = %24, %4
  %40 = load i64, i64* %7, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %39
  %43 = call i64 @OSIncrementAtomic64(i32* @g_curr_str_id)
  store i64 %43, i64* %7, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* @STR_ID_MASK, align 8
  %46 = and i64 %44, %45
  %47 = load i64, i64* @g_str_id_signature, align 8
  %48 = or i64 %46, %47
  store i64 %48, i64* %7, align 8
  br label %49

49:                                               ; preds = %42, %39
  %50 = load i32, i32* @DBG_FUNC_START, align 4
  %51 = load i32, i32* %14, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %14, align 4
  %53 = load i64, i64* %9, align 8
  %54 = icmp ule i64 %53, 16
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* @DBG_FUNC_END, align 4
  %57 = load i32, i32* %14, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %14, align 4
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = load i64, i64* %7, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64*, i64** %10, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = call i32 @kernel_debug_internal(i32 %60, i64 %62, i64 %63, i64 %66, i64 %69, i64 %70, i32 0)
  %72 = load i32, i32* @KDBG_EVENTID_MASK, align 4
  %73 = load i32, i32* %14, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %14, align 4
  store i32 2, i32* %13, align 4
  %75 = load i64, i64* %11, align 8
  %76 = add i64 %75, 16
  store i64 %76, i64* %11, align 8
  br label %77

77:                                               ; preds = %117, %59
  %78 = load i64, i64* %11, align 8
  %79 = load i64, i64* %9, align 8
  %80 = icmp ult i64 %78, %79
  br i1 %80, label %81, label %122

81:                                               ; preds = %77
  %82 = load i64, i64* %11, align 8
  %83 = add i64 %82, 32
  %84 = load i64, i64* %9, align 8
  %85 = icmp uge i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load i32, i32* @DBG_FUNC_END, align 4
  %88 = load i32, i32* %14, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %14, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %14, align 4
  %92 = load i64*, i64** %10, align 8
  %93 = load i32, i32* %13, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  %96 = load i64, i64* %95, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = load i32, i32* %13, align 4
  %99 = add nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i64, i64* %97, i64 %100
  %102 = load i64, i64* %101, align 8
  %103 = load i64*, i64** %10, align 8
  %104 = load i32, i32* %13, align 4
  %105 = add nsw i32 %104, 2
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %103, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i64*, i64** %10, align 8
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, 3
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %109, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @kernel_debug_internal(i32 %91, i64 %96, i64 %102, i64 %108, i64 %114, i64 %115, i32 0)
  br label %117

117:                                              ; preds = %90
  %118 = load i32, i32* %13, align 4
  %119 = add nsw i32 %118, 4
  store i32 %119, i32* %13, align 4
  %120 = load i64, i64* %11, align 8
  %121 = add i64 %120, 32
  store i64 %121, i64* %11, align 8
  br label %77

122:                                              ; preds = %77
  %123 = load i64, i64* %7, align 8
  store i64 %123, i64* %5, align 8
  br label %124

124:                                              ; preds = %122, %27
  %125 = load i64, i64* %5, align 8
  ret i64 %125
}

declare dso_local i32 @TRACEDBG_CODE(i32, i32) #1

declare dso_local i64 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @kernel_debug_internal(i32, i64, i64, i64, i64, i64, i32) #1

declare dso_local i64 @OSIncrementAtomic64(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
