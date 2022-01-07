; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_page_throttled.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_page_throttled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@TH_OPT_VMPRIV = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@HARD_THROTTLE_DELAY = common dso_local global i32 0, align 4
@vm_page_free_count = common dso_local global i64 0, align 8
@vm_page_throttle_limit = common dso_local global i64 0, align 8
@VM_CONFIG_COMPRESSOR_IS_PRESENT = common dso_local global i64 0, align 8
@VM_PAGE_CREATION_THROTTLE_PERIOD_SECS = common dso_local global i32 0, align 4
@VM_PAGE_CREATION_THROTTLE_RATE_PER_SEC = common dso_local global i32 0, align 4
@vm_page_free_wanted = common dso_local global i64 0, align 8
@vm_page_free_wanted_privileged = common dso_local global i64 0, align 8
@vm_page_throttle_count = common dso_local global i32 0, align 4
@SOFT_THROTTLE_DELAY = common dso_local global i32 0, align 4
@vm_page_creation_throttle_avoided = common dso_local global i32 0, align 4
@vm_page_creation_throttled_hard = common dso_local global i32 0, align 4
@vm_page_creation_throttled_soft = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @vm_page_throttled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_page_throttled(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store i64 %0, i64* %3, align 8
  %8 = call %struct.TYPE_3__* (...) @current_thread()
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %7, align 8
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @TH_OPT_VMPRIV, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %118

16:                                               ; preds = %1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i32 0, i32* %23, align 4
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @FALSE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %113

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28, %16
  %30 = call i64 (...) @NEED_TO_HARD_THROTTLE_THIS_TASK()
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @HARD_THROTTLE_DELAY, align 4
  store i32 %33, i32* %2, align 4
  br label %118

34:                                               ; preds = %29
  %35 = load i64, i64* @vm_page_free_count, align 8
  %36 = load i64, i64* @vm_page_throttle_limit, align 8
  %37 = icmp slt i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %112

41:                                               ; preds = %38
  %42 = call i64 (...) @SWAPPER_NEEDS_TO_UNTHROTTLE()
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %112

44:                                               ; preds = %41, %34
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_PERIOD_SECS, align 4
  %49 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_RATE_PER_SEC, align 4
  %50 = mul nsw i32 %48, %49
  %51 = icmp sgt i32 %47, %50
  br i1 %51, label %52, label %112

52:                                               ; preds = %44
  %53 = load i64, i64* @vm_page_free_wanted, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i64, i64* @vm_page_free_wanted_privileged, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %113

59:                                               ; preds = %55, %52
  %60 = call i32 @clock_get_system_microtime(i32* %5, i32* %6)
  %61 = load i32, i32* %5, align 4
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = sub nsw i32 %61, %64
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_PERIOD_SECS, align 4
  %68 = icmp sle i32 %66, %67
  br i1 %68, label %77, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = sdiv i32 %72, %73
  %75 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_RATE_PER_SEC, align 4
  %76 = icmp sge i32 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %69, %59
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_PERIOD_SECS, align 4
  %80 = mul nsw i32 3, %79
  %81 = icmp sge i32 %78, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %77
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_RATE_PER_SEC, align 4
  %87 = load i32, i32* @VM_PAGE_CREATION_THROTTLE_PERIOD_SECS, align 4
  %88 = sub nsw i32 %87, 1
  %89 = mul nsw i32 %86, %88
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 4
  br label %92

92:                                               ; preds = %82, %77
  %93 = load i32, i32* @vm_page_throttle_count, align 4
  %94 = call i32 @VM_PAGEOUT_DEBUG(i32 %93, i32 1)
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 1
  store i32 1, i32* %96, align 4
  %97 = load i64, i64* @VM_CONFIG_COMPRESSOR_IS_PRESENT, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = call i64 (...) @HARD_THROTTLE_LIMIT_REACHED()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32, i32* @HARD_THROTTLE_DELAY, align 4
  store i32 %103, i32* %2, align 4
  br label %118

104:                                              ; preds = %99, %92
  %105 = load i32, i32* @SOFT_THROTTLE_DELAY, align 4
  store i32 %105, i32* %2, align 4
  br label %118

106:                                              ; preds = %69
  %107 = load i32, i32* %5, align 4
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i32 %107, i32* %109, align 4
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 2
  store i32 0, i32* %111, align 4
  br label %112

112:                                              ; preds = %106, %44, %41, %38
  br label %113

113:                                              ; preds = %112, %58, %27
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %113, %104, %102, %32, %15
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local %struct.TYPE_3__* @current_thread(...) #1

declare dso_local i64 @NEED_TO_HARD_THROTTLE_THIS_TASK(...) #1

declare dso_local i64 @SWAPPER_NEEDS_TO_UNTHROTTLE(...) #1

declare dso_local i32 @clock_get_system_microtime(i32*, i32*) #1

declare dso_local i32 @VM_PAGEOUT_DEBUG(i32, i32) #1

declare dso_local i64 @HARD_THROTTLE_LIMIT_REACHED(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
