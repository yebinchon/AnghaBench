; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_save.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }
%struct.doc_tombstone = type { i32*, i32, i8*, %struct.vnode*, i32, i8*, %struct.vnode* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doc_tombstone_save(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vnode*, align 8
  %7 = alloca %struct.vnode*, align 8
  %8 = alloca %struct.componentname*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.doc_tombstone*, align 8
  store %struct.vnode* %0, %struct.vnode** %6, align 8
  store %struct.vnode* %1, %struct.vnode** %7, align 8
  store %struct.componentname* %2, %struct.componentname** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = call %struct.doc_tombstone* (...) @doc_tombstone_get()
  store %struct.doc_tombstone* %12, %struct.doc_tombstone** %11, align 8
  %13 = load %struct.vnode*, %struct.vnode** %6, align 8
  %14 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %15 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %14, i32 0, i32 6
  store %struct.vnode* %13, %struct.vnode** %15, align 8
  %16 = load %struct.vnode*, %struct.vnode** %6, align 8
  %17 = call i8* @vnode_vid(%struct.vnode* %16)
  %18 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %19 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %18, i32 0, i32 5
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %22 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 8
  %23 = load %struct.vnode*, %struct.vnode** %7, align 8
  %24 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %25 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %24, i32 0, i32 3
  store %struct.vnode* %23, %struct.vnode** %25, align 8
  %26 = load %struct.vnode*, %struct.vnode** %7, align 8
  %27 = icmp ne %struct.vnode* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load %struct.vnode*, %struct.vnode** %7, align 8
  %30 = call i8* @vnode_vid(%struct.vnode* %29)
  br label %32

31:                                               ; preds = %5
  br label %32

32:                                               ; preds = %31, %28
  %33 = phi i8* [ %30, %28 ], [ null, %31 ]
  %34 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %35 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %38 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  %39 = load %struct.doc_tombstone*, %struct.doc_tombstone** %11, align 8
  %40 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = bitcast i32* %42 to i8*
  %44 = load %struct.componentname*, %struct.componentname** %8, align 8
  %45 = getelementptr inbounds %struct.componentname, %struct.componentname* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @strlcpy(i8* %43, i32 %46, i32 8)
  ret void
}

declare dso_local %struct.doc_tombstone* @doc_tombstone_get(...) #1

declare dso_local i8* @vnode_vid(%struct.vnode*) #1

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
