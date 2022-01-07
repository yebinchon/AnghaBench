; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_broadcast_xcall.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_cpu_common.c_cpu_broadcast_xcall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@real_ncpus = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@CpuDataEntries = common dso_local global %struct.TYPE_2__* null, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@SIGPxcall = common dso_local global i32 0, align 4
@THREAD_AWAKENED = common dso_local global i32 0, align 4
@THREAD_CONTINUE_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpu_broadcast_xcall(i32* %0, i64 %1, i32 (i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32 (i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 (i8*)* %2, i32 (i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %16 = load i64, i64* @FALSE, align 8
  %17 = call i64 @ml_set_interrupts_enabled(i64 %16)
  store i64 %17, i64* %10, align 8
  %18 = call i32* (...) @getCpuDatap()
  store i32* %18, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %6, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %4
  %22 = load i32, i32* @real_ncpus, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = ptrtoint i32* %24 to i32
  %26 = load i32, i32* @THREAD_UNINT, align 4
  %27 = call i32 @assert_wait(i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %21, %4
  %29 = call i32 (...) @ml_get_max_cpu_number()
  store i32 %29, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %30

30:                                               ; preds = %62, %28
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %65

34:                                               ; preds = %30
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @CpuDataEntries, align 8
  %36 = load i32, i32* %14, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %48, label %44

44:                                               ; preds = %34
  %45 = load i32*, i32** %12, align 8
  %46 = load i32*, i32** %11, align 8
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44, %34
  br label %62

49:                                               ; preds = %44
  %50 = load i64, i64* @KERN_SUCCESS, align 8
  %51 = load i32*, i32** %12, align 8
  %52 = load i32, i32* @SIGPxcall, align 4
  %53 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %54 = bitcast i32 (i8*)* %53 to i8*
  %55 = load i8*, i8** %9, align 8
  %56 = call i64 @cpu_signal(i32* %51, i32 %52, i8* %54, i8* %55)
  %57 = icmp ne i64 %50, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load i32, i32* %13, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %13, align 4
  br label %61

61:                                               ; preds = %58, %49
  br label %62

62:                                               ; preds = %61, %48
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %14, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32 (i8*)*, i32 (i8*)** %8, align 8
  %70 = load i8*, i8** %9, align 8
  %71 = call i32 %69(i8* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = load i64, i64* %10, align 8
  %74 = call i64 @ml_set_interrupts_enabled(i64 %73)
  %75 = load i32*, i32** %6, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %98

77:                                               ; preds = %72
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load i32, i32* %13, align 4
  %83 = add i32 %82, 1
  br label %86

84:                                               ; preds = %77
  %85 = load i32, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %83, %81 ], [ %85, %84 ]
  %88 = call i64 @hw_atomic_sub(i32* %78, i32 %87)
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %86
  %91 = call i32 (...) @current_thread()
  %92 = load i32, i32* @THREAD_AWAKENED, align 4
  %93 = call i32 @clear_wait(i32 %91, i32 %92)
  br label %97

94:                                               ; preds = %86
  %95 = load i32, i32* @THREAD_CONTINUE_NULL, align 4
  %96 = call i32 @thread_block(i32 %95)
  br label %97

97:                                               ; preds = %94, %90
  br label %98

98:                                               ; preds = %97, %72
  %99 = load i64, i64* %7, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %98
  %102 = load i32, i32* @real_ncpus, align 4
  %103 = load i32, i32* %13, align 4
  %104 = sub i32 %102, %103
  %105 = sub i32 %104, 1
  store i32 %105, i32* %5, align 4
  br label %110

106:                                              ; preds = %98
  %107 = load i32, i32* @real_ncpus, align 4
  %108 = load i32, i32* %13, align 4
  %109 = sub i32 %107, %108
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %101
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i64 @ml_set_interrupts_enabled(i64) #1

declare dso_local i32* @getCpuDatap(...) #1

declare dso_local i32 @assert_wait(i32, i32) #1

declare dso_local i32 @ml_get_max_cpu_number(...) #1

declare dso_local i64 @cpu_signal(i32*, i32, i8*, i8*) #1

declare dso_local i64 @hw_atomic_sub(i32*, i32) #1

declare dso_local i32 @clear_wait(i32, i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @thread_block(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
