; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_link_rtrequest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_link_rtrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { %struct.ifaddr* }
%struct.ifaddr = type { {}*, %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTM_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @link_rtrequest(i32 %0, %struct.rtentry* %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.ifaddr*, align 8
  %8 = alloca %struct.sockaddr*, align 8
  %9 = alloca %struct.ifnet*, align 8
  %10 = alloca void (i32, %struct.rtentry*, %struct.sockaddr*)*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.rtentry* %1, %struct.rtentry** %5, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %6, align 8
  %11 = load i32, i32* @rnh_lock, align 4
  %12 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %13 = call i32 @LCK_MTX_ASSERT(i32 %11, i32 %12)
  %14 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %15 = call i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry* %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @RTM_ADD, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %33, label %19

19:                                               ; preds = %3
  %20 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 0
  %22 = load %struct.ifaddr*, %struct.ifaddr** %21, align 8
  store %struct.ifaddr* %22, %struct.ifaddr** %7, align 8
  %23 = icmp eq %struct.ifaddr* %22, null
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %26 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %25, i32 0, i32 1
  %27 = load %struct.ifnet*, %struct.ifnet** %26, align 8
  store %struct.ifnet* %27, %struct.ifnet** %9, align 8
  %28 = icmp eq %struct.ifnet* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %24
  %30 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %31 = call %struct.sockaddr* @rt_key(%struct.rtentry* %30)
  store %struct.sockaddr* %31, %struct.sockaddr** %8, align 8
  %32 = icmp eq %struct.sockaddr* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %29, %24, %19, %3
  br label %67

34:                                               ; preds = %29
  %35 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %36 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %35)
  %37 = load %struct.sockaddr*, %struct.sockaddr** %8, align 8
  %38 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %39 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %37, %struct.ifnet* %38)
  store %struct.ifaddr* %39, %struct.ifaddr** %7, align 8
  %40 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %41 = icmp ne %struct.ifaddr* %40, null
  br i1 %41, label %42, label %67

42:                                               ; preds = %34
  %43 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %44 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %45 = call i32 @rtsetifa(%struct.rtentry* %43, %struct.ifaddr* %44)
  %46 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %47 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %46)
  %48 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %49 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %48, i32 0, i32 0
  %50 = bitcast {}** %49 to void (i32, %struct.rtentry*, %struct.sockaddr*)**
  %51 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %50, align 8
  store void (i32, %struct.rtentry*, %struct.sockaddr*)* %51, void (i32, %struct.rtentry*, %struct.sockaddr*)** %10, align 8
  %52 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %53 = call i32 @IFA_UNLOCK(%struct.ifaddr* %52)
  %54 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %10, align 8
  %55 = icmp ne void (i32, %struct.rtentry*, %struct.sockaddr*)* %54, null
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %10, align 8
  %58 = icmp ne void (i32, %struct.rtentry*, %struct.sockaddr*)* %57, @link_rtrequest
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load void (i32, %struct.rtentry*, %struct.sockaddr*)*, void (i32, %struct.rtentry*, %struct.sockaddr*)** %10, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %63 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  call void %60(i32 %61, %struct.rtentry* %62, %struct.sockaddr* %63)
  br label %64

64:                                               ; preds = %59, %56, %42
  %65 = load %struct.ifaddr*, %struct.ifaddr** %7, align 8
  %66 = call i32 @IFA_REMREF(%struct.ifaddr* %65)
  br label %67

67:                                               ; preds = %33, %64, %34
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK_ASSERT_HELD(%struct.rtentry*) #1

declare dso_local %struct.sockaddr* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr*, %struct.ifnet*) #1

declare dso_local i32 @rtsetifa(%struct.rtentry*, %struct.ifaddr*) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
