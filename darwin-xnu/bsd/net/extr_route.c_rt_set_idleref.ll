; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_idleref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_set_idleref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i32, i32 (i32, i32)*, i32* }

@RTF_NOIFREF = common dso_local global i32 0, align 4
@RTF_BROADCAST = common dso_local global i32 0, align 4
@RTF_MULTICAST = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_WASCLONED = common dso_local global i32 0, align 4
@RTF_IFREF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*)* @rt_set_idleref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt_set_idleref(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %3 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %4 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %3)
  %5 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %6 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %5, i32 0, i32 3
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %53

9:                                                ; preds = %1
  %10 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @RTF_NOIFREF, align 4
  %14 = load i32, i32* @RTF_BROADCAST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @RTF_MULTICAST, align 4
  %17 = or i32 %15, %16
  %18 = and i32 %12, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %53, label %20

20:                                               ; preds = %9
  %21 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %22 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @RTF_UP, align 4
  %25 = load i32, i32* @RTF_WASCLONED, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @RTF_IFREF, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %23, %28
  %30 = load i32, i32* @RTF_UP, align 4
  %31 = load i32, i32* @RTF_WASCLONED, align 4
  %32 = or i32 %30, %31
  %33 = icmp eq i32 %29, %32
  br i1 %33, label %34, label %53

34:                                               ; preds = %20
  %35 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %36 = call i32 @rt_clear_idleref(%struct.rtentry* %35)
  %37 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 2
  store i32 (i32, i32)* @rte_if_ref, i32 (i32, i32)** %38, align 8
  %39 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %40 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %39)
  %41 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 2
  %43 = load i32 (i32, i32)*, i32 (i32, i32)** %42, align 8
  %44 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %45 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 %43(i32 %46, i32 1)
  %48 = load i32, i32* @RTF_IFREF, align 4
  %49 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %34, %20, %9, %1
  ret void
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @rt_clear_idleref(%struct.rtentry*) #1

declare dso_local i32 @rte_if_ref(i32, i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
