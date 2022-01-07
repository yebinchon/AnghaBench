; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_proxy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_proxy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 (%struct.radix_node_head*, %struct.TYPE_3__*, i64, i32, %struct.rtentry*)* }
%struct.TYPE_3__ = type { i64 }
%struct.rtentry = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@RTF_PROXY = common dso_local global i32 0, align 4
@rt_fixdelete = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_set_proxy(%struct.rtentry* %0, i64 %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.radix_node_head*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32, i32* @rnh_lock, align 4
  %7 = call i32 @lck_mtx_lock(i32 %6)
  %8 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %9 = call i32 @RT_LOCK(%struct.rtentry* %8)
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @RTF_CLONING, align 4
  %14 = load i32, i32* @RTF_PRCLONING, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %63

18:                                               ; preds = %2
  %19 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %20 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %21 = call %struct.TYPE_3__* @rt_key(%struct.rtentry* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %19, i64 %23
  %25 = load %struct.radix_node_head*, %struct.radix_node_head** %24, align 8
  store %struct.radix_node_head* %25, %struct.radix_node_head** %5, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %18
  %29 = load i32, i32* @RTF_PROXY, align 4
  %30 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %31 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %41

34:                                               ; preds = %18
  %35 = load i32, i32* @RTF_PROXY, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %28
  %42 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %43 = call i32 @RT_UNLOCK(%struct.rtentry* %42)
  %44 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %45 = icmp ne %struct.radix_node_head* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %48 = call i64 @rt_mask(%struct.rtentry* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %46
  %51 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %52 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %51, i32 0, i32 0
  %53 = load i32 (%struct.radix_node_head*, %struct.TYPE_3__*, i64, i32, %struct.rtentry*)*, i32 (%struct.radix_node_head*, %struct.TYPE_3__*, i64, i32, %struct.rtentry*)** %52, align 8
  %54 = load %struct.radix_node_head*, %struct.radix_node_head** %5, align 8
  %55 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %56 = call %struct.TYPE_3__* @rt_key(%struct.rtentry* %55)
  %57 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %58 = call i64 @rt_mask(%struct.rtentry* %57)
  %59 = load i32, i32* @rt_fixdelete, align 4
  %60 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %61 = call i32 %53(%struct.radix_node_head* %54, %struct.TYPE_3__* %56, i64 %58, i32 %59, %struct.rtentry* %60)
  br label %62

62:                                               ; preds = %50, %46, %41
  br label %66

63:                                               ; preds = %2
  %64 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %65 = call i32 @RT_UNLOCK(%struct.rtentry* %64)
  br label %66

66:                                               ; preds = %63, %62
  %67 = load i32, i32* @rnh_lock, align 4
  %68 = call i32 @lck_mtx_unlock(i32 %67)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local %struct.TYPE_3__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i64 @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
