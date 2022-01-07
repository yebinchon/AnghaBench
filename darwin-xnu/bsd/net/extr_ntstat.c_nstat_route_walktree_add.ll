; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_walktree_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_walktree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@nstat_route_provider = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @nstat_route_walktree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_route_walktree_add(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca i32*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %10 = bitcast %struct.radix_node* %9 to %struct.rtentry*
  store %struct.rtentry* %10, %struct.rtentry** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to i32*
  store i32* %12, i32** %8, align 8
  %13 = load i32, i32* @rnh_lock, align 4
  %14 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32 %13, i32 %14)
  %16 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %17 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @RTF_UP, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %50

22:                                               ; preds = %2
  %23 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %24 = call i32 @RT_LOCK(%struct.rtentry* %23)
  %25 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %26 = call i64 @rt_validate(%struct.rtentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %22
  %29 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %30 = call i32 @RT_ADDREF_LOCKED(%struct.rtentry* %29)
  %31 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %32 = call i32 @RT_UNLOCK(%struct.rtentry* %31)
  br label %36

33:                                               ; preds = %22
  %34 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %35 = call i32 @RT_UNLOCK(%struct.rtentry* %34)
  store %struct.rtentry* null, %struct.rtentry** %7, align 8
  br label %36

36:                                               ; preds = %33, %28
  %37 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %38 = icmp eq %struct.rtentry* %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %52

40:                                               ; preds = %36
  %41 = load i32*, i32** %8, align 8
  %42 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %43 = call i32 @nstat_control_source_add(i32 0, i32* %41, i32* @nstat_route_provider, %struct.rtentry* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %48 = call i32 @rtfree_locked(%struct.rtentry* %47)
  br label %49

49:                                               ; preds = %46, %40
  br label %50

50:                                               ; preds = %49, %2
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i64 @rt_validate(%struct.rtentry*) #1

declare dso_local i32 @RT_ADDREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @nstat_control_source_add(i32, i32*, i32*, %struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
