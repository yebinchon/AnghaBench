; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_interrupted_kernel_sp_value.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_callstack.c_interrupted_kernel_sp_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_9__ = type { i64 }

@KERN_FAILURE = common dso_local global i32 0, align 4
@SEL_PL = common dso_local global i32 0, align 4
@SEL_PL_U = common dso_local global i32 0, align 4
@kernel_stack_size = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*)* @interrupted_kernel_sp_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interrupted_kernel_sp_value(i64* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64* %0, i64** %3, align 8
  %10 = call %struct.TYPE_10__* (...) @current_cpu_datap()
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %17, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %1
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @is_saved_state64(i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load i32*, i32** %4, align 8
  %24 = call %struct.TYPE_7__* @saved_state64(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %7, align 4
  br label %33

28:                                               ; preds = %17
  %29 = load i32*, i32** %4, align 8
  %30 = call %struct.TYPE_8__* @saved_state32(i32* %29)
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %28, %22
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SEL_PL, align 4
  %36 = and i32 %34, %35
  %37 = load i32, i32* @SEL_PL_U, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %40, i32* %2, align 4
  br label %77

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32*, i32** %4, align 8
  %46 = call %struct.TYPE_7__* @saved_state64(i32* %45)
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %5, align 8
  br label %55

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  %52 = call %struct.TYPE_8__* @saved_state32(i32* %51)
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  store i64 %54, i64* %5, align 8
  br label %55

55:                                               ; preds = %50, %44
  %56 = call %struct.TYPE_9__* (...) @current_thread()
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* %9, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @kernel_stack_size, align 8
  %61 = add i64 %59, %60
  store i64 %61, i64* %8, align 8
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %9, align 8
  %64 = icmp uge i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %55
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %65
  %70 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %70, i32* %2, align 4
  br label %77

71:                                               ; preds = %65, %55
  %72 = load i64, i64* %5, align 8
  %73 = inttoptr i64 %72 to i64*
  %74 = load i64, i64* %73, align 8
  %75 = load i64*, i64** %3, align 8
  store i64 %74, i64* %75, align 8
  %76 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %71, %69, %39, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local %struct.TYPE_10__* @current_cpu_datap(...) #1

declare dso_local i32 @is_saved_state64(i32*) #1

declare dso_local %struct.TYPE_7__* @saved_state64(i32*) #1

declare dso_local %struct.TYPE_8__* @saved_state32(i32*) #1

declare dso_local %struct.TYPE_9__* @current_thread(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
