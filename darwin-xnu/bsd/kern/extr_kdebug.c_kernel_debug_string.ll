; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kdebug.c_kernel_debug_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STR_BUF_SIZE = common dso_local global i32 0, align 4
@MAX_STR_LEN = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kernel_debug_string(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %13 = load i32, i32* @STR_BUF_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 8
  store i64 %14, i64* %9, align 8
  %17 = load i32, i32* @MAX_STR_LEN, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ugt i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @static_assert(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @assert(i32* %22)
  %24 = load i64, i64* @kdebug_enable, align 8
  %25 = icmp eq i64 %24, 0
  %26 = zext i1 %25 to i32
  %27 = call i64 @__probable(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @kdebug_current_proc_enabled(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

35:                                               ; preds = %30
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @kdebug_debugid_enabled(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

40:                                               ; preds = %35
  %41 = load i32, i32* %5, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @kdebug_check_trace_string(i32 %41, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

48:                                               ; preds = %40
  %49 = load i8*, i8** %7, align 8
  %50 = icmp eq i8* %49, null
  br i1 %50, label %51, label %62

51:                                               ; preds = %48
  %52 = load i32*, i32** %6, align 8
  %53 = icmp eq i32* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @EINVAL, align 4
  store i32 %55, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

56:                                               ; preds = %51
  %57 = load i32, i32* %5, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @kernel_debug_string_internal(i32 %57, i32 %59, i8* null, i32 0)
  %61 = load i32*, i32** %6, align 8
  store i32 %60, i32* %61, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

62:                                               ; preds = %48
  %63 = trunc i64 %14 to i32
  %64 = call i32 @memset(i8* %16, i32 0, i32 %63)
  %65 = load i8*, i8** %7, align 8
  %66 = load i32, i32* @MAX_STR_LEN, align 4
  %67 = add nsw i32 %66, 1
  %68 = call i32 @strlcpy(i8* %16, i8* %65, i32 %67)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %5, align 4
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %10, align 4
  %73 = call i32 @kernel_debug_string_internal(i32 %69, i32 %71, i8* %16, i32 %72)
  %74 = load i32*, i32** %6, align 8
  store i32 %73, i32* %74, align 4
  store i32 0, i32* %4, align 4
  store i32 1, i32* %12, align 4
  br label %75

75:                                               ; preds = %62, %56, %54, %46, %39, %34, %29
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @static_assert(i32) #2

declare dso_local i32 @assert(i32*) #2

declare dso_local i64 @__probable(i32) #2

declare dso_local i32 @kdebug_current_proc_enabled(i32) #2

declare dso_local i32 @kdebug_debugid_enabled(i32) #2

declare dso_local i32 @kdebug_check_trace_string(i32, i32) #2

declare dso_local i32 @kernel_debug_string_internal(i32, i32, i8*, i32) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
