; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_ifa_is_dst.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_ifa_is_dst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i64 }
%struct.ifaddr = type { %struct.sockaddr* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt_ifa_is_dst(%struct.sockaddr* %0, %struct.ifaddr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr*, align 8
  %5 = alloca %struct.ifaddr*, align 8
  %6 = alloca i32, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %4, align 8
  store %struct.ifaddr* %1, %struct.ifaddr** %5, align 8
  %7 = load i32, i32* @FALSE, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %9 = icmp eq %struct.ifaddr* %8, null
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %12 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %11, i32 0, i32 0
  %13 = load %struct.sockaddr*, %struct.sockaddr** %12, align 8
  %14 = icmp eq %struct.sockaddr* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %70

17:                                               ; preds = %10
  %18 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %19 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %18)
  %20 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %24 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %23, i32 0, i32 0
  %25 = load %struct.sockaddr*, %struct.sockaddr** %24, align 8
  %26 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %22, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %17
  %30 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %31 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @AF_INET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %29
  %36 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %37 = call %struct.TYPE_4__* @SIN(%struct.sockaddr* %36)
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %42 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %41, i32 0, i32 0
  %43 = load %struct.sockaddr*, %struct.sockaddr** %42, align 8
  %44 = call %struct.TYPE_4__* @SIN(%struct.sockaddr* %43)
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %40, %47
  br i1 %48, label %64, label %49

49:                                               ; preds = %35, %29
  %50 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %51 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @AF_INET6, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %49
  %56 = load %struct.sockaddr*, %struct.sockaddr** %4, align 8
  %57 = call i32 @SIN6(%struct.sockaddr* %56)
  %58 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %59 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %58, i32 0, i32 0
  %60 = load %struct.sockaddr*, %struct.sockaddr** %59, align 8
  %61 = call i32 @SIN6(%struct.sockaddr* %60)
  %62 = call i64 @SA6_ARE_ADDR_EQUAL(i32 %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %55, %35
  %65 = load i32, i32* @TRUE, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %64, %55, %49, %17
  %67 = load %struct.ifaddr*, %struct.ifaddr** %5, align 8
  %68 = call i32 @IFA_UNLOCK(%struct.ifaddr* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %15
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local %struct.TYPE_4__* @SIN(%struct.sockaddr*) #1

declare dso_local i64 @SA6_ARE_ADDR_EQUAL(i32, i32) #1

declare dso_local i32 @SIN6(%struct.sockaddr*) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
