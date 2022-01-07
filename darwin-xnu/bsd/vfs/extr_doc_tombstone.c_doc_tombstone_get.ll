; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doc_tombstone = type { i32 }
%struct.uthread = type { %struct.doc_tombstone* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.doc_tombstone* @doc_tombstone_get() #0 {
  %1 = alloca %struct.uthread*, align 8
  %2 = call i32 (...) @current_thread()
  %3 = call %struct.uthread* @get_bsdthread_info(i32 %2)
  store %struct.uthread* %3, %struct.uthread** %1, align 8
  %4 = load %struct.uthread*, %struct.uthread** %1, align 8
  %5 = getelementptr inbounds %struct.uthread, %struct.uthread* %4, i32 0, i32 0
  %6 = load %struct.doc_tombstone*, %struct.doc_tombstone** %5, align 8
  %7 = icmp eq %struct.doc_tombstone* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %0
  %9 = call %struct.doc_tombstone* @kalloc(i32 4)
  %10 = load %struct.uthread*, %struct.uthread** %1, align 8
  %11 = getelementptr inbounds %struct.uthread, %struct.uthread* %10, i32 0, i32 0
  store %struct.doc_tombstone* %9, %struct.doc_tombstone** %11, align 8
  %12 = load %struct.uthread*, %struct.uthread** %1, align 8
  %13 = getelementptr inbounds %struct.uthread, %struct.uthread* %12, i32 0, i32 0
  %14 = load %struct.doc_tombstone*, %struct.doc_tombstone** %13, align 8
  %15 = icmp ne %struct.doc_tombstone* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %8
  %17 = load %struct.uthread*, %struct.uthread** %1, align 8
  %18 = getelementptr inbounds %struct.uthread, %struct.uthread* %17, i32 0, i32 0
  %19 = load %struct.doc_tombstone*, %struct.doc_tombstone** %18, align 8
  %20 = call i32 @memset(%struct.doc_tombstone* %19, i32 0, i32 4)
  br label %21

21:                                               ; preds = %16, %8
  br label %22

22:                                               ; preds = %21, %0
  %23 = load %struct.uthread*, %struct.uthread** %1, align 8
  %24 = getelementptr inbounds %struct.uthread, %struct.uthread* %23, i32 0, i32 0
  %25 = load %struct.doc_tombstone*, %struct.doc_tombstone** %24, align 8
  ret %struct.doc_tombstone* %25
}

declare dso_local %struct.uthread* @get_bsdthread_info(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local %struct.doc_tombstone* @kalloc(i32) #1

declare dso_local i32 @memset(%struct.doc_tombstone*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
