; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_kdp_pthread_find_owner.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/pthread/extr_pthread_shims.c_kdp_pthread_find_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, %struct.stackshot_thread_waitinfo*)* }
%struct.stackshot_thread_waitinfo = type { i32 }

@pthread_functions = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kdp_pthread_find_owner(i32 %0, %struct.stackshot_thread_waitinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.stackshot_thread_waitinfo*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.stackshot_thread_waitinfo* %1, %struct.stackshot_thread_waitinfo** %4, align 8
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pthread_functions, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32 (i32, %struct.stackshot_thread_waitinfo*)*, i32 (i32, %struct.stackshot_thread_waitinfo*)** %6, align 8
  %8 = icmp ne i32 (i32, %struct.stackshot_thread_waitinfo*)* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pthread_functions, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.stackshot_thread_waitinfo*)*, i32 (i32, %struct.stackshot_thread_waitinfo*)** %11, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.stackshot_thread_waitinfo*, %struct.stackshot_thread_waitinfo** %4, align 8
  %15 = call i32 %12(i32 %13, %struct.stackshot_thread_waitinfo* %14)
  br label %16

16:                                               ; preds = %9, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
