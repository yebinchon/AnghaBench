; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_record_rtfault.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_fault.c_vm_record_rtfault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64, i64, i64, i32, i64, i64 }
%struct.TYPE_7__ = type { i64 }

@vmrtfrs = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i64, i32, i32)* @vm_record_rtfault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vm_record_rtfault(%struct.TYPE_7__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = call i64 (...) @mach_continuous_time()
  store i64 %18, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %11, align 8
  %22 = call i64 (...) @get_current_unique_pid()
  store i64 %22, i64* %12, align 8
  store i64 0, i64* %13, align 8
  store i64 0, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = call i32 @backtrace_thread_user(%struct.TYPE_7__* %23, i64* %13, i32 1, i64* %14, i32* %15)
  store i32 %24, i32* %16, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i64, i64* %14, align 8
  %29 = icmp sgt i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i64, i64* %13, align 8
  store i64 %31, i64* %10, align 8
  br label %32

32:                                               ; preds = %30, %27, %4
  %33 = load i64, i64* %6, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %32
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp sge i64 %36, %37
  br label %39

39:                                               ; preds = %35, %32
  %40 = phi i1 [ false, %32 ], [ %38, %35 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = call i32 (...) @vm_rtfrecord_lock()
  %44 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 0), align 8
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 1), align 8
  %46 = icmp sle i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 3), align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 3), align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 2), align 8
  %52 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 0), align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 0), align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  store %struct.TYPE_6__* %54, %struct.TYPE_6__** %17, align 8
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 6
  store i64 %55, i64* %57, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i64, i64* %6, align 8
  %60 = sub nsw i64 %58, %59
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load i64, i64* %10, align 8
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load i64, i64* %12, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 0), align 8
  %79 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 1), align 8
  %80 = icmp sgt i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %39
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @vmrtfrs, i32 0, i32 0), align 8
  br label %82

82:                                               ; preds = %81, %39
  %83 = call i32 (...) @vm_rtfrecord_unlock()
  ret void
}

declare dso_local i64 @mach_continuous_time(...) #1

declare dso_local i64 @get_current_unique_pid(...) #1

declare dso_local i32 @backtrace_thread_user(%struct.TYPE_7__*, i64*, i32, i64*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_rtfrecord_lock(...) #1

declare dso_local i32 @vm_rtfrecord_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
