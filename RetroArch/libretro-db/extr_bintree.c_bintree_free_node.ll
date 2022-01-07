; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_free_node.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintree_node = type { %struct.bintree_node*, %struct.bintree_node*, i32* }

@NIL_NODE = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bintree_node*)* @bintree_free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bintree_free_node(%struct.bintree_node* %0) #0 {
  %2 = alloca %struct.bintree_node*, align 8
  store %struct.bintree_node* %0, %struct.bintree_node** %2, align 8
  %3 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %4 = icmp ne %struct.bintree_node* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %26

6:                                                ; preds = %1
  %7 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %8 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %7, i32 0, i32 2
  %9 = load i32*, i32** %8, align 8
  %10 = load i32*, i32** @NIL_NODE, align 8
  %11 = icmp eq i32* %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %6
  %13 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %14 = call i32 @free(%struct.bintree_node* %13)
  br label %26

15:                                               ; preds = %6
  %16 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %17 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %16, i32 0, i32 2
  store i32* null, i32** %17, align 8
  %18 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %19 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %18, i32 0, i32 1
  %20 = load %struct.bintree_node*, %struct.bintree_node** %19, align 8
  call void @bintree_free_node(%struct.bintree_node* %20)
  %21 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %22 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %21, i32 0, i32 0
  %23 = load %struct.bintree_node*, %struct.bintree_node** %22, align 8
  call void @bintree_free_node(%struct.bintree_node* %23)
  %24 = load %struct.bintree_node*, %struct.bintree_node** %2, align 8
  %25 = call i32 @free(%struct.bintree_node* %24)
  br label %26

26:                                               ; preds = %15, %12, %5
  ret void
}

declare dso_local i32 @free(%struct.bintree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
