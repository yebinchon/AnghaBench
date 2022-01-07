; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_build_signal_reason.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_sig.c_build_signal_reason.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8*, i8* }

@OS_REASON_NULL = common dso_local global %struct.TYPE_9__* null, align 8
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@OS_REASON_SIGNAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"build_signal_reason: unable to allocate signal reason structure.\0A\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"build_signal_reason: unable to allocate signal reason buffer.\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KCDATA_TYPE_PID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [77 x i8] c"build_signal_reason: exceeded space in signal reason buf, unable to log PID\0A\00", align 1
@KCDATA_TYPE_PROCNAME = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [82 x i8] c"build_signal_reason: exceeded space in signal reason buf, unable to log procname\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (i32, i8*)* @build_signal_reason to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @build_signal_reason(i32 %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OS_REASON_NULL, align 8
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %6, align 8
  %16 = call %struct.TYPE_8__* (...) @current_proc()
  store %struct.TYPE_8__* %16, %struct.TYPE_8__** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %17 = load i32, i32* @OS_REASON_SIGNAL, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call %struct.TYPE_9__* @os_reason_create(i32 %17, i32 %18)
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %6, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** @OS_REASON_NULL, align 8
  %22 = icmp eq %struct.TYPE_9__* %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %3, align 8
  br label %108

26:                                               ; preds = %2
  %27 = call i32 @kcdata_estimate_required_buffer_size(i32 2, i32 16)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @os_reason_alloc_buffer_noblock(%struct.TYPE_9__* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %35, %struct.TYPE_9__** %3, align 8
  br label %108

36:                                               ; preds = %26
  %37 = load i64, i64* @KERN_SUCCESS, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* @KCDATA_TYPE_PID, align 4
  %41 = call i64 @kcdata_get_memory_addr(i32* %39, i32 %40, i32 8, i32* %11)
  %42 = icmp eq i64 %37, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = call i32 (i32*, i32, ...) @kcdata_memcpy(i32* %45, i32 %46, i8** %48, i64 8)
  br label %52

50:                                               ; preds = %36
  %51 = call i32 @printf(i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str.3, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %43
  store i32 8, i32* %9, align 4
  %53 = load i64, i64* @KERN_SUCCESS, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  %56 = load i32, i32* @KCDATA_TYPE_PROCNAME, align 4
  %57 = load i32, i32* %9, align 4
  %58 = call i64 @kcdata_get_memory_addr(i32* %55, i32 %56, i32 %57, i32* %11)
  %59 = icmp eq i64 %53, %58
  br i1 %59, label %60, label %104

60:                                               ; preds = %52
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %81

63:                                               ; preds = %60
  %64 = load i32, i32* %9, align 4
  %65 = zext i32 %64 to i64
  %66 = call i8* @llvm.stacksave()
  store i8* %66, i8** %13, align 8
  %67 = alloca i8, i64 %65, align 16
  store i64 %65, i64* %14, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @strncpy(i8* %67, i8* %68, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = sub nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, i8* %67, i64 %73
  store i8 0, i8* %74, align 1
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @strlen(i8* %67)
  %79 = call i32 (i32*, i32, ...) @kcdata_memcpy(i32* %76, i32 %77, i8* %67, i32 %78)
  %80 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %80)
  br label %103

81:                                               ; preds = %60
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load i8*, i8** %83, align 8
  %85 = load i8, i8* %84, align 1
  %86 = icmp ne i8 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 1
  %93 = call i32 (i32*, i32, ...) @kcdata_memcpy(i32* %89, i32 %90, i8** %92, i64 8)
  br label %102

94:                                               ; preds = %81
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load i32, i32* %11, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = call i32 @strlen(i8* %98)
  %100 = add nsw i32 %99, 1
  %101 = call i32 (i32*, i32, ...) @kcdata_memcpy(i32* %96, i32 %97, i8** %10, i32 %100)
  br label %102

102:                                              ; preds = %94, %87
  br label %103

103:                                              ; preds = %102, %63
  br label %106

104:                                              ; preds = %52
  %105 = call i32 @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0))
  br label %106

106:                                              ; preds = %104, %103
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  store %struct.TYPE_9__* %107, %struct.TYPE_9__** %3, align 8
  br label %108

108:                                              ; preds = %106, %33, %23
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  ret %struct.TYPE_9__* %109
}

declare dso_local %struct.TYPE_8__* @current_proc(...) #1

declare dso_local %struct.TYPE_9__* @os_reason_create(i32, i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @kcdata_estimate_required_buffer_size(i32, i32) #1

declare dso_local i32 @os_reason_alloc_buffer_noblock(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @kcdata_get_memory_addr(i32*, i32, i32, i32*) #1

declare dso_local i32 @kcdata_memcpy(i32*, i32, ...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
