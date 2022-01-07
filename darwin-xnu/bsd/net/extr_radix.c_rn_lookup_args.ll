; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_lookup_args.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_lookup_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i64, i64, %struct.radix_node* }
%struct.radix_node_head = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.radix_node* @rn_lookup_args(i8* %0, i8* %1, %struct.radix_node_head* %2, i32* %3, i8* %4) #0 {
  %6 = alloca %struct.radix_node*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.radix_node_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.radix_node*, align 8
  %13 = alloca i64, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store %struct.radix_node_head* %2, %struct.radix_node_head** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 0, i64* %13, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %5
  %17 = load i8*, i8** %8, align 8
  %18 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %19 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.radix_node* @rn_addmask(i8* %17, i32 1, i32 %22)
  store %struct.radix_node* %23, %struct.radix_node** %12, align 8
  %24 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %25 = icmp eq %struct.radix_node* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct.radix_node* null, %struct.radix_node** %6, align 8
  br label %61

27:                                               ; preds = %16
  %28 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %29 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  br label %31

31:                                               ; preds = %27, %5
  %32 = load i8*, i8** %7, align 8
  %33 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = call %struct.radix_node* @rn_match_args(i8* %32, %struct.radix_node_head* %33, i32* %34, i8* %35)
  store %struct.radix_node* %36, %struct.radix_node** %12, align 8
  %37 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %38 = icmp ne %struct.radix_node* %37, null
  br i1 %38, label %39, label %59

39:                                               ; preds = %31
  %40 = load i64, i64* %13, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %39
  br label %43

43:                                               ; preds = %54, %42
  %44 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %45 = icmp ne %struct.radix_node* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %48 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %13, align 8
  %51 = icmp ne i64 %49, %50
  br label %52

52:                                               ; preds = %46, %43
  %53 = phi i1 [ false, %43 ], [ %51, %46 ]
  br i1 %53, label %54, label %58

54:                                               ; preds = %52
  %55 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  %56 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %55, i32 0, i32 2
  %57 = load %struct.radix_node*, %struct.radix_node** %56, align 8
  store %struct.radix_node* %57, %struct.radix_node** %12, align 8
  br label %43

58:                                               ; preds = %52
  br label %59

59:                                               ; preds = %58, %39, %31
  %60 = load %struct.radix_node*, %struct.radix_node** %12, align 8
  store %struct.radix_node* %60, %struct.radix_node** %6, align 8
  br label %61

61:                                               ; preds = %59, %26
  %62 = load %struct.radix_node*, %struct.radix_node** %6, align 8
  ret %struct.radix_node* %62
}

declare dso_local %struct.radix_node* @rn_addmask(i8*, i32, i32) #1

declare dso_local %struct.radix_node* @rn_match_args(i8*, %struct.radix_node_head*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
