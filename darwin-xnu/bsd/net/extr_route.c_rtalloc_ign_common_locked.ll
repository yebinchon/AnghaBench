; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtalloc_ign_common_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtalloc_ign_common_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.route = type { %struct.rtentry*, i32 }
%struct.rtentry = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.route*, i32, i32)* @rtalloc_ign_common_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtalloc_ign_common_locked(%struct.route* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.route*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtentry*, align 8
  store %struct.route* %0, %struct.route** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.route*, %struct.route** %4, align 8
  %9 = getelementptr inbounds %struct.route, %struct.route* %8, i32 0, i32 0
  %10 = load %struct.rtentry*, %struct.rtentry** %9, align 8
  store %struct.rtentry* %10, %struct.rtentry** %7, align 8
  %11 = icmp ne %struct.rtentry* %10, null
  br i1 %11, label %12, label %31

12:                                               ; preds = %3
  %13 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %14 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %13)
  %15 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %16 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = load %struct.route*, %struct.route** %4, align 8
  %21 = call i32 @ROUTE_UNUSABLE(%struct.route* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %25 = call i32 @RT_UNLOCK(%struct.rtentry* %24)
  br label %52

26:                                               ; preds = %19, %12
  %27 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %28 = call i32 @RT_UNLOCK(%struct.rtentry* %27)
  %29 = load %struct.route*, %struct.route** %4, align 8
  %30 = call i32 @ROUTE_RELEASE_LOCKED(%struct.route* %29)
  br label %31

31:                                               ; preds = %26, %3
  %32 = load %struct.route*, %struct.route** %4, align 8
  %33 = getelementptr inbounds %struct.route, %struct.route* %32, i32 0, i32 1
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.rtentry* @rtalloc1_common_locked(i32* %33, i32 1, i32 %34, i32 %35)
  %37 = load %struct.route*, %struct.route** %4, align 8
  %38 = getelementptr inbounds %struct.route, %struct.route* %37, i32 0, i32 0
  store %struct.rtentry* %36, %struct.rtentry** %38, align 8
  %39 = load %struct.route*, %struct.route** %4, align 8
  %40 = getelementptr inbounds %struct.route, %struct.route* %39, i32 0, i32 0
  %41 = load %struct.rtentry*, %struct.rtentry** %40, align 8
  %42 = icmp ne %struct.rtentry* %41, null
  br i1 %42, label %43, label %52

43:                                               ; preds = %31
  %44 = load %struct.route*, %struct.route** %4, align 8
  %45 = getelementptr inbounds %struct.route, %struct.route* %44, i32 0, i32 0
  %46 = load %struct.rtentry*, %struct.rtentry** %45, align 8
  %47 = call i32 @RT_GENID_SYNC(%struct.rtentry* %46)
  %48 = load %struct.route*, %struct.route** %4, align 8
  %49 = getelementptr inbounds %struct.route, %struct.route* %48, i32 0, i32 0
  %50 = load %struct.rtentry*, %struct.rtentry** %49, align 8
  %51 = call i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry* %50)
  br label %52

52:                                               ; preds = %23, %43, %31
  ret void
}

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @ROUTE_UNUSABLE(%struct.route*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @ROUTE_RELEASE_LOCKED(%struct.route*) #1

declare dso_local %struct.rtentry* @rtalloc1_common_locked(i32*, i32, i32, i32) #1

declare dso_local i32 @RT_GENID_SYNC(%struct.rtentry*) #1

declare dso_local i32 @RT_LOCK_ASSERT_NOTHELD(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
