; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_qf_put.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_quota.c_qf_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quotafile = type { i32 }

@QTF_WANTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qf_put(%struct.quotafile* %0, i32 %1) #0 {
  %3 = alloca %struct.quotafile*, align 8
  %4 = alloca i32, align 4
  store %struct.quotafile* %0, %struct.quotafile** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @dq_list_lock()
  %6 = load i32, i32* %4, align 4
  switch i32 %6, label %14 [
    i32 128, label %7
    i32 129, label %7
  ]

7:                                                ; preds = %2, %2
  %8 = load i32, i32* %4, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %11 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  br label %14

14:                                               ; preds = %2, %7
  %15 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %16 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @QTF_WANTED, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %14
  %22 = load i32, i32* @QTF_WANTED, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %25 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.quotafile*, %struct.quotafile** %3, align 8
  %29 = getelementptr inbounds %struct.quotafile, %struct.quotafile* %28, i32 0, i32 0
  %30 = call i32 @wakeup(i32* %29)
  br label %31

31:                                               ; preds = %21, %14
  %32 = call i32 (...) @dq_list_unlock()
  ret void
}

declare dso_local i32 @dq_list_lock(...) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @dq_list_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
