; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_fixdelete.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_fixdelete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, %struct.rtentry* }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rt_fixdelete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_fixdelete(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.rtentry*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %9 = bitcast %struct.radix_node* %8 to %struct.rtentry*
  store %struct.rtentry* %9, %struct.rtentry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.rtentry*
  store %struct.rtentry* %11, %struct.rtentry** %7, align 8
  %12 = load i32, i32* @rnh_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32 %12, i32 %13)
  %15 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %16 = call i32 @RT_LOCK(%struct.rtentry* %15)
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 1
  %19 = load %struct.rtentry*, %struct.rtentry** %18, align 8
  %20 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %21 = icmp eq %struct.rtentry* %19, %20
  br i1 %21, label %22, label %43

22:                                               ; preds = %2
  %23 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %24 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RTF_CLONING, align 4
  %27 = load i32, i32* @RTF_PRCLONING, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %22
  %32 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %33 = call i32 @RT_UNLOCK(%struct.rtentry* %32)
  %34 = load i32, i32* @RTM_DELETE, align 4
  %35 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %36 = call i32 @rt_key(%struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = call i32 @rt_mask(%struct.rtentry* %37)
  %39 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @rtrequest_locked(i32 %34, i32 %36, i32* null, i32 %38, i32 %41, i32* null)
  store i32 %42, i32* %3, align 4
  br label %46

43:                                               ; preds = %22, %2
  %44 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %45 = call i32 @RT_UNLOCK(%struct.rtentry* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %43, %31
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_locked(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
