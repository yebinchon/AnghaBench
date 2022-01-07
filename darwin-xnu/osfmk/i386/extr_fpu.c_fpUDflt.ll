; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpUDflt.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_fpu.c_fpUDflt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"fpUDflt(0x%016llx) prefix: 0x%x\0A\00", align 1
@MAX_X86_INSN_LENGTH = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@fpu_capability = common dso_local global i64 0, align 8
@AVX512 = common dso_local global i64 0, align 8
@XCR0 = common dso_local global i32 0, align 4
@AVX_XMASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"fpUDflt() switching xstate to AVX512\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fpUDflt(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %4, align 4
  %7 = load i64, i64* %2, align 8
  store i64 %7, i64* %5, align 8
  br label %8

8:                                                ; preds = %33, %1
  %9 = load i64, i64* %2, align 8
  %10 = bitcast i32* %3 to i8*
  %11 = call i64 @copyin(i64 %9, i8* %10, i32 1)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %53

14:                                               ; preds = %8
  %15 = load i64, i64* %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  switch i32 %18, label %31 [
    i32 46, label %19
    i32 54, label %19
    i32 62, label %19
    i32 38, label %19
    i32 100, label %19
    i32 101, label %19
    i32 102, label %19
    i32 103, label %19
    i32 98, label %29
    i32 197, label %29
    i32 196, label %29
  ]

19:                                               ; preds = %14, %14, %14, %14, %14, %14, %14, %14
  %20 = load i64, i64* %2, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* %2, align 8
  %22 = load i64, i64* %2, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %22, %23
  %25 = load i64, i64* @MAX_X86_INSN_LENGTH, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %53

28:                                               ; preds = %19
  br label %32

29:                                               ; preds = %14, %14, %14
  %30 = load i32, i32* @TRUE, align 4
  store i32 %30, i32* %4, align 4
  br label %32

31:                                               ; preds = %14
  br label %53

32:                                               ; preds = %29, %28
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  br i1 %36, label %8, label %37

37:                                               ; preds = %33
  %38 = load i64, i64* @fpu_capability, align 8
  %39 = load i64, i64* @AVX512, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %53

42:                                               ; preds = %37
  %43 = load i32, i32* @XCR0, align 4
  %44 = call i64 @xgetbv(i32 %43)
  %45 = load i64, i64* @AVX_XMASK, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %50 = call i32 (...) @current_thread()
  %51 = call i32 @fpu_thread_promote_avx512(i32 %50)
  %52 = call i32 (...) @thread_exception_return()
  br label %53

53:                                               ; preds = %42, %41, %31, %27, %13
  ret void
}

declare dso_local i64 @copyin(i64, i8*, i32) #1

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @xgetbv(i32) #1

declare dso_local i32 @fpu_thread_promote_avx512(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @thread_exception_return(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
