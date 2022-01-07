; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nut.c_ff_nut_add_sp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nut.c_ff_nut_add_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.AVTreeNode = type { i8*, i8*, i8* }

@ENOMEM = common dso_local global i32 0, align 4
@ff_nut_sp_pos_cmp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_nut_add_sp(%struct.TYPE_3__* %0, i8* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.AVTreeNode*, align 8
  %11 = alloca %struct.AVTreeNode*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = call %struct.AVTreeNode* @av_mallocz(i32 24)
  store %struct.AVTreeNode* %12, %struct.AVTreeNode** %10, align 8
  %13 = call %struct.AVTreeNode* (...) @av_tree_node_alloc()
  store %struct.AVTreeNode* %13, %struct.AVTreeNode** %11, align 8
  %14 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %15 = icmp ne %struct.AVTreeNode* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %18 = icmp ne %struct.AVTreeNode* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %16, %4
  %20 = call i32 @av_freep(%struct.AVTreeNode** %10)
  %21 = call i32 @av_freep(%struct.AVTreeNode** %11)
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = call i32 @AVERROR(i32 %22)
  store i32 %23, i32* %5, align 4
  br label %51

24:                                               ; preds = %16
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i8*, i8** %7, align 8
  %30 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %31 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load i8*, i8** %8, align 8
  %33 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %34 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %37 = getelementptr inbounds %struct.AVTreeNode, %struct.AVTreeNode* %36, i32 0, i32 0
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %41 = load i32, i32* @ff_nut_sp_pos_cmp, align 4
  %42 = call i32 @av_tree_insert(i32* %39, %struct.AVTreeNode* %40, i32 %41, %struct.AVTreeNode** %11)
  %43 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %44 = icmp ne %struct.AVTreeNode* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %24
  %46 = load %struct.AVTreeNode*, %struct.AVTreeNode** %10, align 8
  %47 = call i32 @av_free(%struct.AVTreeNode* %46)
  %48 = load %struct.AVTreeNode*, %struct.AVTreeNode** %11, align 8
  %49 = call i32 @av_free(%struct.AVTreeNode* %48)
  br label %50

50:                                               ; preds = %45, %24
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %50, %19
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.AVTreeNode* @av_mallocz(i32) #1

declare dso_local %struct.AVTreeNode* @av_tree_node_alloc(...) #1

declare dso_local i32 @av_freep(%struct.AVTreeNode**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_tree_insert(i32*, %struct.AVTreeNode*, i32, %struct.AVTreeNode**) #1

declare dso_local i32 @av_free(%struct.AVTreeNode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
