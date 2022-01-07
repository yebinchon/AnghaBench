; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_threadentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MACH_VM_MIN_ADDRESS = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@LOAD_BADMACHO = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@LOAD_FAILURE = common dso_local global i32 0, align 4
@LOAD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i32*)* @load_threadentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_threadentry(i32 %0, i32* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @MACH_VM_MIN_ADDRESS, align 4
  %15 = load i32*, i32** %9, align 8
  store i32 %14, i32* %15, align 4
  br label %16

16:                                               ; preds = %67, %4
  %17 = load i32, i32* %8, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %72

19:                                               ; preds = %16
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i32 1
  store i32* %21, i32** %7, align 8
  %22 = load i32, i32* %20, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = getelementptr inbounds i32, i32* %23, i32 1
  store i32* %24, i32** %7, align 8
  %25 = load i32, i32* %23, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* @UINT32_MAX, align 4
  %27 = sub nsw i32 %26, 2
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @UINT32_MAX, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 4
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = icmp ult i64 %33, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %19
  %39 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %39, i32* %5, align 4
  br label %74

40:                                               ; preds = %30
  %41 = load i32, i32* %11, align 4
  %42 = add nsw i32 %41, 2
  %43 = sext i32 %42 to i64
  %44 = mul i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %50, i32* %5, align 4
  br label %74

51:                                               ; preds = %40
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %8, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %12, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = ptrtoint i32* %57 to i32
  %59 = load i32, i32* %11, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = call i64 @thread_entrypoint(i32 %55, i32 %56, i32 %58, i32 %59, i32* %60)
  store i64 %61, i64* %10, align 8
  %62 = load i64, i64* %10, align 8
  %63 = load i64, i64* @KERN_SUCCESS, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %66, i32* %5, align 4
  br label %74

67:                                               ; preds = %51
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %7, align 8
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  store i32* %71, i32** %7, align 8
  br label %16

72:                                               ; preds = %16
  %73 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %72, %65, %49, %38
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local i64 @thread_entrypoint(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
