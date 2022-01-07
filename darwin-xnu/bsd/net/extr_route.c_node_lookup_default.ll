; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_node_lookup_default.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_node_lookup_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { %struct.radix_node* (i32*, i32*, %struct.radix_node_head*)* }
%struct.radix_node = type { i32 }

@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@sin_def = common dso_local global i32 0, align 4
@sin6_def = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (i32)* @node_lookup_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @node_lookup_default(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.radix_node_head*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @AF_INET, align 4
  %6 = icmp eq i32 %4, %5
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @AF_INET6, align 4
  %10 = icmp eq i32 %8, %9
  br label %11

11:                                               ; preds = %7, %1
  %12 = phi i1 [ true, %1 ], [ %10, %7 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @VERIFY(i32 %13)
  %15 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %16 = load i32, i32* %2, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %15, i64 %17
  %19 = load %struct.radix_node_head*, %struct.radix_node_head** %18, align 8
  store %struct.radix_node_head* %19, %struct.radix_node_head** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %25 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %24, i32 0, i32 0
  %26 = load %struct.radix_node* (i32*, i32*, %struct.radix_node_head*)*, %struct.radix_node* (i32*, i32*, %struct.radix_node_head*)** %25, align 8
  %27 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %28 = call %struct.radix_node* %26(i32* @sin_def, i32* null, %struct.radix_node_head* %27)
  br label %35

29:                                               ; preds = %11
  %30 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %31 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %30, i32 0, i32 0
  %32 = load %struct.radix_node* (i32*, i32*, %struct.radix_node_head*)*, %struct.radix_node* (i32*, i32*, %struct.radix_node_head*)** %31, align 8
  %33 = load %struct.radix_node_head*, %struct.radix_node_head** %3, align 8
  %34 = call %struct.radix_node* %32(i32* @sin6_def, i32* null, %struct.radix_node_head* %33)
  br label %35

35:                                               ; preds = %29, %23
  %36 = phi %struct.radix_node* [ %28, %23 ], [ %34, %29 ]
  ret %struct.radix_node* %36
}

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
