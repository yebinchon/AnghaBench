; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_walktree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_route_event_walktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.route_event = type { i32, %struct.rtentry* }
%struct.rtentry = type { i32, %struct.rtentry* }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTPRF_OURS = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @route_event_walktree(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.route_event*, align 8
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca %struct.rtentry*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.route_event*
  store %struct.route_event* %10, %struct.route_event** %6, align 8
  %11 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %12 = bitcast %struct.radix_node* %11 to %struct.rtentry*
  store %struct.rtentry* %12, %struct.rtentry** %7, align 8
  %13 = load %struct.route_event*, %struct.route_event** %6, align 8
  %14 = getelementptr inbounds %struct.route_event, %struct.route_event* %13, i32 0, i32 1
  %15 = load %struct.rtentry*, %struct.rtentry** %14, align 8
  store %struct.rtentry* %15, %struct.rtentry** %8, align 8
  %16 = load i32, i32* @rnh_lock, align 4
  %17 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %18 = call i32 @LCK_MTX_ASSERT(i32 %16, i32 %17)
  %19 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %20 = call i32 @RT_LOCK(%struct.rtentry* %19)
  %21 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %22 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RTPRF_OURS, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %29 = call i32 @RT_UNLOCK(%struct.rtentry* %28)
  store i32 0, i32* %3, align 4
  br label %59

30:                                               ; preds = %2
  %31 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %32 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @RTF_GATEWAY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %39 = call i32 @RT_UNLOCK(%struct.rtentry* %38)
  store i32 0, i32* %3, align 4
  br label %59

40:                                               ; preds = %30
  %41 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 1
  %43 = load %struct.rtentry*, %struct.rtentry** %42, align 8
  %44 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %45 = icmp ne %struct.rtentry* %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %48 = call i32 @RT_UNLOCK(%struct.rtentry* %47)
  store i32 0, i32* %3, align 4
  br label %59

49:                                               ; preds = %40
  %50 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %51 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %52 = load %struct.route_event*, %struct.route_event** %6, align 8
  %53 = getelementptr inbounds %struct.route_event, %struct.route_event* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @TRUE, align 4
  %56 = call i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry* %50, %struct.rtentry* %51, i32 %54, i32* null, i32 %55)
  %57 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %58 = call i32 @RT_UNLOCK(%struct.rtentry* %57)
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %49, %46, %37, %27
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry*, %struct.rtentry*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
