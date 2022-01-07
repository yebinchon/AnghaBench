; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_backtrace.c_interrupted_kernel_pc_fp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_backtrace.c_interrupted_kernel_pc_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32, i64, i64 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@SEL_PL = common dso_local global i32 0, align 4
@SEL_PL_U = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @interrupted_kernel_pc_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupted_kernel_pc_fp(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = call %struct.TYPE_8__* (...) @current_cpu_datap()
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %6, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %15, i32* %3, align 4
  br label %68

16:                                               ; preds = %2
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @is_saved_state64(i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load i32*, i32** %6, align 8
  %23 = call %struct.TYPE_6__* @saved_state64(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  br label %32

27:                                               ; preds = %16
  %28 = load i32*, i32** %6, align 8
  %29 = call %struct.TYPE_7__* @saved_state32(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %27, %21
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SEL_PL, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @SEL_PL_U, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %39, i32* %3, align 4
  br label %68

40:                                               ; preds = %32
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %55

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = call %struct.TYPE_6__* @saved_state64(i32* %44)
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %4, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call %struct.TYPE_6__* @saved_state64(i32* %50)
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %5, align 8
  store i64 %53, i64* %54, align 8
  br label %66

55:                                               ; preds = %40
  %56 = load i32*, i32** %6, align 8
  %57 = call %struct.TYPE_7__* @saved_state32(i32* %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64*, i64** %4, align 8
  store i64 %59, i64* %60, align 8
  %61 = load i32*, i32** %6, align 8
  %62 = call %struct.TYPE_7__* @saved_state32(i32* %61)
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load i64*, i64** %5, align 8
  store i64 %64, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %43
  %67 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %38, %14
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.TYPE_8__* @current_cpu_datap(...) #1

declare dso_local i32 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_6__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_7__* @saved_state32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
