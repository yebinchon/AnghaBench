; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_validate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@RTF_UP = common dso_local global i32 0, align 4
@RTF_CONDEMNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_validate(%struct.rtentry* %0) #0 {
  %2 = alloca %struct.rtentry*, align 8
  %3 = alloca i32, align 4
  store %struct.rtentry* %0, %struct.rtentry** %2, align 8
  %4 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %5 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %4)
  %6 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %7 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @RTF_UP, align 4
  %10 = load i32, i32* @RTF_CONDEMNED, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = load i32, i32* @RTF_UP, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %1
  %16 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %17 = call %struct.TYPE_2__* @rt_key(%struct.rtentry* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @AF_INET, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %25 = call i32 @RN(%struct.rtentry* %24)
  %26 = call i32 @in_validate(i32 %25)
  br label %36

27:                                               ; preds = %15
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @AF_INET6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %33 = call i32 @RN(%struct.rtentry* %32)
  %34 = call i32 @in6_validate(i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %35, %23
  br label %38

37:                                               ; preds = %1
  store %struct.rtentry* null, %struct.rtentry** %2, align 8
  br label %38

38:                                               ; preds = %37, %36
  %39 = load %struct.rtentry*, %struct.rtentry** %2, align 8
  %40 = icmp ne %struct.rtentry* %39, null
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local %struct.TYPE_2__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @in_validate(i32) #1

declare dso_local i32 @RN(%struct.rtentry*) #1

declare dso_local i32 @in6_validate(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
