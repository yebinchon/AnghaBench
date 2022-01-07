; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_check_for_panic_log.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_check_for_panic_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.embedded_panic_header = type { i8 }

@kSuccess = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"pram\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/chosen\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"embedded-panic-log-size\00", align 1
@gPanicBase = common dso_local global i64 0, align 8
@panic_text_len = common dso_local global i8* null, align 8
@gPanicSize = common dso_local global i8* null, align 8
@panic_info = common dso_local global %struct.embedded_panic_header* null, align 8
@TRUE = common dso_local global i32 0, align 4
@panic_console_available = common dso_local global i32 0, align 4
@EMBEDDED_PANIC_MAGIC = common dso_local global i8 0, align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"iBoot didn't extract panic log from previous session crash, this is bad\0A\00", align 1
@PLATFORM_PANIC_LOG_PADDR = common dso_local global i64 0, align 8
@PLATFORM_PANIC_LOG_SIZE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @check_for_panic_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_for_panic_log() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i8**, align 8
  %6 = load i64, i64* @kSuccess, align 8
  %7 = call i64 @DTLookupEntry(i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* %1)
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  br label %75

10:                                               ; preds = %0
  %11 = load i64, i64* @kSuccess, align 8
  %12 = load i32, i32* %1, align 4
  %13 = bitcast i64** %4 to i8**
  %14 = call i64 @DTGetProperty(i32 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %13, i32* %3)
  %15 = icmp ne i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  br label %75

17:                                               ; preds = %10
  %18 = load i64, i64* @kSuccess, align 8
  %19 = call i64 @DTLookupEntry(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %2)
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %75

22:                                               ; preds = %17
  %23 = load i64, i64* @kSuccess, align 8
  %24 = load i32, i32* %2, align 4
  %25 = bitcast i8*** %5 to i8**
  %26 = call i64 @DTGetProperty(i32 %24, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), i8** %25, i32* %3)
  %27 = icmp ne i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %75

29:                                               ; preds = %22
  %30 = load i64*, i64** %4, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @ml_io_map_wcomb(i64 %32, i8* %35)
  store i64 %36, i64* @gPanicBase, align 8
  %37 = load i8**, i8*** %5, align 8
  %38 = getelementptr inbounds i8*, i8** %37, i64 0
  %39 = load i8*, i8** %38, align 8
  %40 = getelementptr i8, i8* %39, i64 -1
  store i8* %40, i8** @panic_text_len, align 8
  %41 = load i8**, i8*** %5, align 8
  %42 = getelementptr inbounds i8*, i8** %41, i64 0
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** @gPanicSize, align 8
  %44 = load i64, i64* @gPanicBase, align 8
  %45 = inttoptr i64 %44 to %struct.embedded_panic_header*
  store %struct.embedded_panic_header* %45, %struct.embedded_panic_header** @panic_info, align 8
  %46 = load %struct.embedded_panic_header*, %struct.embedded_panic_header** @panic_info, align 8
  %47 = getelementptr inbounds %struct.embedded_panic_header, %struct.embedded_panic_header* %46, i32 0, i32 0
  %48 = load i8, i8* %47, align 1
  %49 = sext i8 %48 to i32
  %50 = icmp eq i32 %49, 1397247299
  br i1 %50, label %51, label %53

51:                                               ; preds = %29
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* @panic_console_available, align 4
  br label %75

53:                                               ; preds = %29
  %54 = load %struct.embedded_panic_header*, %struct.embedded_panic_header** @panic_info, align 8
  %55 = getelementptr inbounds %struct.embedded_panic_header, %struct.embedded_panic_header* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = sext i8 %56 to i32
  %58 = icmp eq i32 %57, 1112822339
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %75

60:                                               ; preds = %53
  %61 = load %struct.embedded_panic_header*, %struct.embedded_panic_header** @panic_info, align 8
  %62 = getelementptr inbounds %struct.embedded_panic_header, %struct.embedded_panic_header* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = load i8, i8* @EMBEDDED_PANIC_MAGIC, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %60
  %69 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %60
  %71 = load i64, i64* @gPanicBase, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load i8*, i8** @gPanicSize, align 8
  %74 = call i32 @bzero(i8* %72, i8* %73)
  br label %75

75:                                               ; preds = %70, %59, %51, %28, %21, %16, %9
  ret void
}

declare dso_local i64 @DTLookupEntry(i32, i8*, i32*) #1

declare dso_local i64 @DTGetProperty(i32, i8*, i8**, i32*) #1

declare dso_local i64 @ml_io_map_wcomb(i64, i8*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @bzero(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
