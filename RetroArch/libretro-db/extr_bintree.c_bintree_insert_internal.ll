; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_insert_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_insert_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i8*, i8*, i32)*, i32 }
%struct.bintree_node = type { %struct.bintree_node*, %struct.bintree_node*, i8* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, %struct.bintree_node*, i8*)* @bintree_insert_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bintree_insert_internal(%struct.TYPE_3__* %0, %struct.bintree_node* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.bintree_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.bintree_node* %1, %struct.bintree_node** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %10 = call i64 @bintree_is_nil(%struct.bintree_node* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %3
  %13 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %14 = call i8* @bintree_new_nil_node(%struct.bintree_node* %13)
  %15 = bitcast i8* %14 to %struct.bintree_node*
  %16 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %17 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %16, i32 0, i32 1
  store %struct.bintree_node* %15, %struct.bintree_node** %17, align 8
  %18 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %19 = call i8* @bintree_new_nil_node(%struct.bintree_node* %18)
  %20 = bitcast i8* %19 to %struct.bintree_node*
  %21 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %22 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %21, i32 0, i32 0
  store %struct.bintree_node* %20, %struct.bintree_node** %22, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %25 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  store i32 0, i32* %4, align 4
  br label %61

26:                                               ; preds = %3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32 (i8*, i8*, i32)*, i32 (i8*, i8*, i32)** %28, align 8
  %30 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %31 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %29(i8* %32, i8* %33, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %26
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %43 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %42, i32 0, i32 1
  %44 = load %struct.bintree_node*, %struct.bintree_node** %43, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @bintree_insert_internal(%struct.TYPE_3__* %41, %struct.bintree_node* %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %61

47:                                               ; preds = %26
  %48 = load i32, i32* %8, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %52 = load %struct.bintree_node*, %struct.bintree_node** %6, align 8
  %53 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %52, i32 0, i32 0
  %54 = load %struct.bintree_node*, %struct.bintree_node** %53, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @bintree_insert_internal(%struct.TYPE_3__* %51, %struct.bintree_node* %54, i8* %55)
  store i32 %56, i32* %4, align 4
  br label %61

57:                                               ; preds = %47
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %58, %50, %40, %12
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i64 @bintree_is_nil(%struct.bintree_node*) #1

declare dso_local i8* @bintree_new_nil_node(%struct.bintree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
