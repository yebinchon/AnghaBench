; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_iterate_internal.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-db/extr_bintree.c_bintree_iterate_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bintree_node = type { %struct.bintree_node*, i32, %struct.bintree_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bintree_node*, i32 (i32, i8*)*, i8*)* @bintree_iterate_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bintree_iterate_internal(%struct.bintree_node* %0, i32 (i32, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bintree_node*, align 8
  %6 = alloca i32 (i32, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.bintree_node* %0, %struct.bintree_node** %5, align 8
  store i32 (i32, i8*)* %1, i32 (i32, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load %struct.bintree_node*, %struct.bintree_node** %5, align 8
  %10 = call i64 @bintree_is_nil(%struct.bintree_node* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load %struct.bintree_node*, %struct.bintree_node** %5, align 8
  %15 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %14, i32 0, i32 2
  %16 = load %struct.bintree_node*, %struct.bintree_node** %15, align 8
  %17 = load i32 (i32, i8*)*, i32 (i32, i8*)** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = call i32 @bintree_iterate_internal(%struct.bintree_node* %16, i32 (i32, i8*)* %17, i8* %18)
  store i32 %19, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %4, align 4
  br label %44

23:                                               ; preds = %13
  %24 = load i32 (i32, i8*)*, i32 (i32, i8*)** %6, align 8
  %25 = load %struct.bintree_node*, %struct.bintree_node** %5, align 8
  %26 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 %24(i32 %27, i8* %28)
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %4, align 4
  br label %44

33:                                               ; preds = %23
  %34 = load %struct.bintree_node*, %struct.bintree_node** %5, align 8
  %35 = getelementptr inbounds %struct.bintree_node, %struct.bintree_node* %34, i32 0, i32 0
  %36 = load %struct.bintree_node*, %struct.bintree_node** %35, align 8
  %37 = load i32 (i32, i8*)*, i32 (i32, i8*)** %6, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @bintree_iterate_internal(%struct.bintree_node* %36, i32 (i32, i8*)* %37, i8* %38)
  store i32 %39, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %4, align 4
  br label %44

43:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %43, %41, %31, %21, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i64 @bintree_is_nil(%struct.bintree_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
