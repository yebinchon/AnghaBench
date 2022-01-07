; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtsetifa.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtsetifa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.ifaddr* }
%struct.ifaddr = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtsetifa(%struct.rtentry* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.ifaddr*, align 8
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %4, align 8
  %5 = load i32, i32* @rnh_lock, align 4
  %6 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %7 = call i32 @LCK_MTX_ASSERT(i32 %5, i32 %6)
  %8 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %9 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %8)
  %10 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %11 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %10, i32 0, i32 0
  %12 = load %struct.ifaddr*, %struct.ifaddr** %11, align 8
  %13 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %14 = icmp eq %struct.ifaddr* %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %18 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %17)
  %19 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 0
  %21 = load %struct.ifaddr*, %struct.ifaddr** %20, align 8
  %22 = icmp ne %struct.ifaddr* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 0
  %26 = load %struct.ifaddr*, %struct.ifaddr** %25, align 8
  %27 = call i32 @IFA_REMREF(%struct.ifaddr* %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.ifaddr*, %struct.ifaddr** %4, align 8
  %30 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %31 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %30, i32 0, i32 0
  store %struct.ifaddr* %29, %struct.ifaddr** %31, align 8
  %32 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %33 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %32, i32 0, i32 0
  %34 = load %struct.ifaddr*, %struct.ifaddr** %33, align 8
  %35 = icmp ne %struct.ifaddr* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 0
  %39 = load %struct.ifaddr*, %struct.ifaddr** %38, align 8
  %40 = call i32 @IFA_ADDREF(%struct.ifaddr* %39)
  br label %41

41:                                               ; preds = %15, %36, %28
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
