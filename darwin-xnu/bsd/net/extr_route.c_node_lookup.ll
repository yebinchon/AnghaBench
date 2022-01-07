; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_node_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_node_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, %struct.radix_node_head*, i32*, i8*)* }
%struct.radix_node = type { i32 }
%struct.sockaddr = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.matchleaf_arg = type { i32 }

@rn_match_ifscope = common dso_local global i32* null, align 8
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@IFSCOPE_NONE = common dso_local global i32 0, align 4
@RNF_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, i32)* @node_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.radix_node* @node_lookup(%struct.sockaddr* %0, %struct.sockaddr* %1, i32 %2) #0 {
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.radix_node_head*, align 8
  %9 = alloca %struct.radix_node*, align 8
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.matchleaf_arg, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store i32 %2, i32* %7, align 4
  %16 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %17 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %12, align 4
  %19 = getelementptr inbounds %struct.matchleaf_arg, %struct.matchleaf_arg* %13, i32 0, i32 0
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %19, align 4
  %21 = load i32*, i32** @rn_match_ifscope, align 8
  store i32* %21, i32** %14, align 8
  %22 = bitcast %struct.matchleaf_arg* %13 to i8*
  store i8* %22, i8** %15, align 8
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @AF_INET, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %3
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @AF_INET6, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store %struct.radix_node* null, %struct.radix_node** %4, align 8
  br label %80

31:                                               ; preds = %26, %3
  %32 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %33 = load i32, i32* %12, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %32, i64 %34
  %36 = load %struct.radix_node_head*, %struct.radix_node_head** %35, align 8
  store %struct.radix_node_head* %36, %struct.radix_node_head** %8, align 8
  %37 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IFSCOPE_NONE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  br label %43

42:                                               ; preds = %31
  br label %43

43:                                               ; preds = %42, %41
  %44 = phi i32* [ null, %41 ], [ %7, %42 ]
  %45 = call %struct.sockaddr* @sa_copy(%struct.sockaddr* %37, %struct.sockaddr_storage* %10, i32* %44)
  store %struct.sockaddr* %45, %struct.sockaddr** %5, align 8
  %46 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %47 = icmp ne %struct.sockaddr* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.sockaddr* @ma_copy(i32 %49, %struct.sockaddr* %50, %struct.sockaddr_storage* %11, i32 %51)
  store %struct.sockaddr* %52, %struct.sockaddr** %6, align 8
  br label %53

53:                                               ; preds = %48, %43
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @IFSCOPE_NONE, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  store i8* null, i8** %15, align 8
  store i32* null, i32** %14, align 8
  br label %58

58:                                               ; preds = %57, %53
  %59 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %60 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %59, i32 0, i32 0
  %61 = load %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, %struct.radix_node_head*, i32*, i8*)*, %struct.radix_node* (%struct.sockaddr*, %struct.sockaddr*, %struct.radix_node_head*, i32*, i8*)** %60, align 8
  %62 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %64 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %65 = load i32*, i32** %14, align 8
  %66 = load i8*, i8** %15, align 8
  %67 = call %struct.radix_node* %61(%struct.sockaddr* %62, %struct.sockaddr* %63, %struct.radix_node_head* %64, i32* %65, i8* %66)
  store %struct.radix_node* %67, %struct.radix_node** %9, align 8
  %68 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %69 = icmp ne %struct.radix_node* %68, null
  br i1 %69, label %70, label %78

70:                                               ; preds = %58
  %71 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  %72 = getelementptr inbounds %struct.radix_node, %struct.radix_node* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @RNF_ROOT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  store %struct.radix_node* null, %struct.radix_node** %9, align 8
  br label %78

78:                                               ; preds = %77, %70, %58
  %79 = load %struct.radix_node*, %struct.radix_node** %9, align 8
  store %struct.radix_node* %79, %struct.radix_node** %4, align 8
  br label %80

80:                                               ; preds = %78, %30
  %81 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  ret %struct.radix_node* %81
}

declare dso_local %struct.sockaddr* @sa_copy(%struct.sockaddr*, %struct.sockaddr_storage*, i32*) #1

declare dso_local %struct.sockaddr* @ma_copy(i32, %struct.sockaddr*, %struct.sockaddr_storage*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
