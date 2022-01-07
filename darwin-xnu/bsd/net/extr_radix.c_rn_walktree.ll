; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_walktree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_radix.c_rn_walktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32, %struct.radix_node* }
%struct.radix_node = type { i64, i32, %struct.radix_node*, %struct.radix_node*, %struct.radix_node*, %struct.radix_node* }
%struct.radix_node.0 = type opaque

@RNF_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node_head*, i32 (%struct.radix_node.0*, i8*)**, i8*)* @rn_walktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rn_walktree(%struct.radix_node_head* %0, i32 (%struct.radix_node.0*, i8*)** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.radix_node_head*, align 8
  %6 = alloca i32 (%struct.radix_node.0*, i8*)**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.radix_node*, align 8
  %11 = alloca %struct.radix_node*, align 8
  %12 = alloca i32, align 4
  store %struct.radix_node_head* %0, %struct.radix_node_head** %5, align 8
  store i32 (%struct.radix_node.0*, i8*)** %1, i32 (%struct.radix_node.0*, i8*)*** %6, align 8
  store i8* %2, i8** %7, align 8
  br label %13

13:                                               ; preds = %100, %3
  %14 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %15 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %14, i32 0, i32 1
  %16 = load %struct.radix_node*, %struct.radix_node** %15, align 8
  store %struct.radix_node* %16, %struct.radix_node** %11, align 8
  %17 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %18 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %12, align 4
  br label %20

20:                                               ; preds = %25, %13
  %21 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %22 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sge i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %27 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %26, i32 0, i32 3
  %28 = load %struct.radix_node*, %struct.radix_node** %27, align 8
  store %struct.radix_node* %28, %struct.radix_node** %11, align 8
  br label %20

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %110, %29
  %31 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %31, %struct.radix_node** %9, align 8
  br label %32

32:                                               ; preds = %49, %30
  %33 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %34 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %33, i32 0, i32 5
  %35 = load %struct.radix_node*, %struct.radix_node** %34, align 8
  %36 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %35, i32 0, i32 4
  %37 = load %struct.radix_node*, %struct.radix_node** %36, align 8
  %38 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %39 = icmp eq %struct.radix_node* %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %32
  %41 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %42 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @RNF_ROOT, align 4
  %45 = and i32 %43, %44
  %46 = icmp eq i32 %45, 0
  br label %47

47:                                               ; preds = %40, %32
  %48 = phi i1 [ false, %32 ], [ %46, %40 ]
  br i1 %48, label %49, label %53

49:                                               ; preds = %47
  %50 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %51 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %50, i32 0, i32 5
  %52 = load %struct.radix_node*, %struct.radix_node** %51, align 8
  store %struct.radix_node* %52, %struct.radix_node** %11, align 8
  br label %32

53:                                               ; preds = %47
  %54 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %55 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %54, i32 0, i32 5
  %56 = load %struct.radix_node*, %struct.radix_node** %55, align 8
  %57 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %56, i32 0, i32 4
  %58 = load %struct.radix_node*, %struct.radix_node** %57, align 8
  store %struct.radix_node* %58, %struct.radix_node** %11, align 8
  br label %59

59:                                               ; preds = %64, %53
  %60 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %61 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %66 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %65, i32 0, i32 3
  %67 = load %struct.radix_node*, %struct.radix_node** %66, align 8
  store %struct.radix_node* %67, %struct.radix_node** %11, align 8
  br label %59

68:                                               ; preds = %59
  %69 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  store %struct.radix_node* %69, %struct.radix_node** %10, align 8
  br label %70

70:                                               ; preds = %93, %68
  %71 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %71, %struct.radix_node** %11, align 8
  %72 = icmp ne %struct.radix_node* %71, null
  br i1 %72, label %73, label %94

73:                                               ; preds = %70
  %74 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %75 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %74, i32 0, i32 2
  %76 = load %struct.radix_node*, %struct.radix_node** %75, align 8
  store %struct.radix_node* %76, %struct.radix_node** %9, align 8
  %77 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %78 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @RNF_ROOT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %93, label %83

83:                                               ; preds = %73
  %84 = load i32 (%struct.radix_node.0*, i8*)**, i32 (%struct.radix_node.0*, i8*)*** %6, align 8
  %85 = load i32 (%struct.radix_node.0*, i8*)*, i32 (%struct.radix_node.0*, i8*)** %84, align 8
  %86 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %87 = bitcast %struct.radix_node* %86 to %struct.radix_node.0*
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 %85(%struct.radix_node.0* %87, i8* %88)
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* %8, align 4
  store i32 %92, i32* %4, align 4
  br label %111

93:                                               ; preds = %83, %73
  br label %70

94:                                               ; preds = %70
  %95 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %96 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %12, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %94
  br label %13

101:                                              ; preds = %94
  %102 = load %struct.radix_node*, %struct.radix_node** %10, align 8
  store %struct.radix_node* %102, %struct.radix_node** %11, align 8
  %103 = load %struct.radix_node*, %struct.radix_node** %11, align 8
  %104 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @RNF_ROOT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %111

110:                                              ; preds = %101
  br label %30

111:                                              ; preds = %109, %91
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
