; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_rmx.c_in6_inithead.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_rmx.c_in6_inithead.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32, i32, i32, i32, i32 }

@rt_tables = common dso_local global i32* null, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@in6_addroute = common dso_local global i32 0, align 4
@in6_deleteroute = common dso_local global i32 0, align 4
@in6_matroute = common dso_local global i32 0, align 4
@in6_matroute_args = common dso_local global i32 0, align 4
@in6_clsroute = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_inithead(i8** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8**, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.radix_node_head*, align 8
  store i8** %0, i8*** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i8**, i8*** %4, align 8
  %8 = load i32*, i32** @rt_tables, align 8
  %9 = load i64, i64* @AF_INET6, align 8
  %10 = getelementptr inbounds i32, i32* %8, i64 %9
  %11 = bitcast i32* %10 to i8**
  %12 = icmp ne i8** %7, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i8**, i8*** %4, align 8
  %15 = load i8*, i8** %14, align 8
  %16 = icmp eq i8* %15, null
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ true, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @VERIFY(i32 %19)
  %21 = load i8**, i8*** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @rn_inithead(i8** %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %53

26:                                               ; preds = %17
  %27 = load i8**, i8*** %4, align 8
  %28 = load i32*, i32** @rt_tables, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = bitcast i32* %30 to i8**
  %32 = icmp ne i8** %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %3, align 4
  br label %53

34:                                               ; preds = %26
  %35 = load i8**, i8*** %4, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = bitcast i8* %36 to %struct.radix_node_head*
  store %struct.radix_node_head* %37, %struct.radix_node_head** %6, align 8
  %38 = load i32, i32* @in6_addroute, align 4
  %39 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %40 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @in6_deleteroute, align 4
  %42 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %43 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %42, i32 0, i32 3
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @in6_matroute, align 4
  %45 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %46 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @in6_matroute_args, align 4
  %48 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %49 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @in6_clsroute, align 4
  %51 = load %struct.radix_node_head*, %struct.radix_node_head** %6, align 8
  %52 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 4
  store i32 1, i32* %3, align 4
  br label %53

53:                                               ; preds = %34, %33, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @rn_inithead(i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
