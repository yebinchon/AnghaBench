; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_should_save.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_should_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doc_tombstone = type { %struct.vnode*, i64 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @doc_tombstone_should_save(%struct.doc_tombstone* %0, %struct.vnode* %1, %struct.componentname* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.doc_tombstone*, align 8
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.componentname*, align 8
  store %struct.doc_tombstone* %0, %struct.doc_tombstone** %5, align 8
  store %struct.vnode* %1, %struct.vnode** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  %8 = load %struct.componentname*, %struct.componentname** %7, align 8
  %9 = getelementptr inbounds %struct.componentname, %struct.componentname* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %35

13:                                               ; preds = %3
  %14 = load %struct.doc_tombstone*, %struct.doc_tombstone** %5, align 8
  %15 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load %struct.doc_tombstone*, %struct.doc_tombstone** %5, align 8
  %20 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %19, i32 0, i32 0
  %21 = load %struct.vnode*, %struct.vnode** %20, align 8
  %22 = load %struct.vnode*, %struct.vnode** %6, align 8
  %23 = icmp eq %struct.vnode* %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %18
  %25 = load %struct.componentname*, %struct.componentname** %7, align 8
  %26 = getelementptr inbounds %struct.componentname, %struct.componentname* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.componentname*, %struct.componentname** %7, align 8
  %29 = getelementptr inbounds %struct.componentname, %struct.componentname* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @doc_tombstone_should_ignore_name(i32* %27, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %35

34:                                               ; preds = %24, %18, %13
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %33, %12
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i64 @doc_tombstone_should_ignore_name(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
