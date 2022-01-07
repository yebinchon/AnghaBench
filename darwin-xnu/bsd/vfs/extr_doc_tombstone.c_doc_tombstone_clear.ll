; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_clear.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_doc_tombstone.c_doc_tombstone_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.doc_tombstone = type { i8*, i64, i64, %struct.TYPE_6__*, i64, i32*, i64 }
%struct.TYPE_6__ = type { i32 }

@VL_TERMINATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @doc_tombstone_clear(%struct.doc_tombstone* %0, %struct.TYPE_6__** %1) #0 {
  %3 = alloca %struct.doc_tombstone*, align 8
  %4 = alloca %struct.TYPE_6__**, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.doc_tombstone* %0, %struct.doc_tombstone** %3, align 8
  store %struct.TYPE_6__** %1, %struct.TYPE_6__*** %4, align 8
  %7 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %8 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %7, i32 0, i32 6
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %11 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %10, i32 0, i32 6
  store i64 0, i64* %11, align 8
  %12 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %13 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %12, i32 0, i32 5
  store i32* null, i32** %13, align 8
  %14 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %15 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %17 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  store i8 0, i8* %19, align 1
  %20 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  %21 = icmp ne %struct.TYPE_6__** %20, null
  br i1 %21, label %22, label %78

22:                                               ; preds = %2
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %23, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %77

26:                                               ; preds = %22
  %27 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %28 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %27, i32 0, i32 3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = icmp ne %struct.TYPE_6__* %29, null
  br i1 %30, label %31, label %77

31:                                               ; preds = %26
  %32 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %33 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %32, i32 0, i32 3
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i64 @vnode_vid(%struct.TYPE_6__* %34)
  %36 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %37 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %31
  %41 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %42 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %41, i32 0, i32 3
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %42, align 8
  %44 = call i32 @vnode_get(%struct.TYPE_6__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %40
  %48 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %49 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %48, i32 0, i32 3
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = call i64 @vnode_vid(%struct.TYPE_6__* %50)
  %52 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %53 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %47
  %57 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %58 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %57, i32 0, i32 3
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @VL_TERMINATE, align 4
  %63 = call i32 @ISSET(i32 %61, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %56
  %66 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %67 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %66, i32 0, i32 3
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %4, align 8
  store %struct.TYPE_6__* %68, %struct.TYPE_6__** %69, align 8
  br label %75

70:                                               ; preds = %56, %47
  %71 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %72 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %71, i32 0, i32 3
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = call i32 @vnode_put(%struct.TYPE_6__* %73)
  br label %75

75:                                               ; preds = %70, %65
  br label %76

76:                                               ; preds = %75, %40
  br label %77

77:                                               ; preds = %76, %31, %26, %22
  br label %78

78:                                               ; preds = %77, %2
  %79 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %80 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %79, i32 0, i32 3
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %80, align 8
  %81 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %82 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.doc_tombstone*, %struct.doc_tombstone** %3, align 8
  %84 = getelementptr inbounds %struct.doc_tombstone, %struct.doc_tombstone* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  ret void
}

declare dso_local i64 @vnode_vid(%struct.TYPE_6__*) #1

declare dso_local i32 @vnode_get(%struct.TYPE_6__*) #1

declare dso_local i32 @ISSET(i32, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
