; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_bsd_setthreadname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_bsd_setthreadname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uthread = type { i32 }

@MAXTHREADNAMESIZE = common dso_local global i64 0, align 8
@TRACE_STRING_THREADNAME_PREV = common dso_local global i32 0, align 4
@TRACE_STRING_THREADNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bsd_setthreadname(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.uthread*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.uthread*
  store %struct.uthread* %8, %struct.uthread** %5, align 8
  store i8* null, i8** %6, align 8
  %9 = load %struct.uthread*, %struct.uthread** %5, align 8
  %10 = getelementptr inbounds %struct.uthread, %struct.uthread* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %31, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* @MAXTHREADNAMESIZE, align 8
  %15 = call i8* @kalloc(i64 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = call i32 @assert(i8* %16)
  %18 = load i8*, i8** %6, align 8
  %19 = load i64, i64* @MAXTHREADNAMESIZE, align 8
  %20 = call i32 @bzero(i8* %18, i64 %19)
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.uthread*, %struct.uthread** %5, align 8
  %23 = getelementptr inbounds %struct.uthread, %struct.uthread* %22, i32 0, i32 0
  %24 = call i32 @OSCompareAndSwapPtr(i32* null, i8* %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %13
  %27 = load i8*, i8** %6, align 8
  %28 = load i64, i64* @MAXTHREADNAMESIZE, align 8
  %29 = call i32 @kfree(i8* %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %13
  br label %37

31:                                               ; preds = %2
  %32 = load i32, i32* @TRACE_STRING_THREADNAME_PREV, align 4
  %33 = load %struct.uthread*, %struct.uthread** %5, align 8
  %34 = getelementptr inbounds %struct.uthread, %struct.uthread* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kernel_debug_string_simple(i32 %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %30
  %38 = load %struct.uthread*, %struct.uthread** %5, align 8
  %39 = getelementptr inbounds %struct.uthread, %struct.uthread* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i8*, i8** %4, align 8
  %42 = load i64, i64* @MAXTHREADNAMESIZE, align 8
  %43 = sub nsw i64 %42, 1
  %44 = call i32 @strncpy(i32 %40, i8* %41, i64 %43)
  %45 = load i32, i32* @TRACE_STRING_THREADNAME, align 4
  %46 = load %struct.uthread*, %struct.uthread** %5, align 8
  %47 = getelementptr inbounds %struct.uthread, %struct.uthread* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @kernel_debug_string_simple(i32 %45, i32 %48)
  ret void
}

declare dso_local i8* @kalloc(i64) #1

declare dso_local i32 @assert(i8*) #1

declare dso_local i32 @bzero(i8*, i64) #1

declare dso_local i32 @OSCompareAndSwapPtr(i32*, i8*, i32*) #1

declare dso_local i32 @kfree(i8*, i64) #1

declare dso_local i32 @kernel_debug_string_simple(i32, i32) #1

declare dso_local i32 @strncpy(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
