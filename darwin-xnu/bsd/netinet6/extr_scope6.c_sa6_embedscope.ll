; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_sa6_embedscope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_scope6.c_sa6_embedscope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.sockaddr_in6 = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@if_index = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ifindex2ifnet = common dso_local global %struct.ifnet** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sa6_embedscope(%struct.sockaddr_in6* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca i64, align 8
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %9 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %7, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1
  %18 = call i64 @scope6_addr2default(%struct.TYPE_4__* %17)
  store i64 %18, i64* %7, align 8
  br label %19

19:                                               ; preds = %15, %12, %2
  %20 = load i64, i64* %7, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %19
  %23 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %23, i32 0, i32 1
  %25 = call i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %29 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %28, i32 0, i32 1
  %30 = call i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %61

32:                                               ; preds = %27, %22
  %33 = load i64, i64* @if_index, align 8
  %34 = load i64, i64* %7, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @ENXIO, align 4
  store i32 %37, i32* %3, align 4
  br label %62

38:                                               ; preds = %32
  %39 = call i32 (...) @ifnet_head_lock_shared()
  %40 = load %struct.ifnet**, %struct.ifnet*** @ifindex2ifnet, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.ifnet*, %struct.ifnet** %40, i64 %41
  %43 = load %struct.ifnet*, %struct.ifnet** %42, align 8
  store %struct.ifnet* %43, %struct.ifnet** %6, align 8
  %44 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %45 = icmp eq %struct.ifnet* %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = call i32 (...) @ifnet_head_done()
  %48 = load i32, i32* @ENXIO, align 4
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %38
  %50 = call i32 (...) @ifnet_head_done()
  %51 = load i64, i64* %7, align 8
  %52 = and i64 %51, 65535
  %53 = call i32 @htons(i64 %52)
  %54 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 %53, i32* %58, align 4
  %59 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %60 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  br label %61

61:                                               ; preds = %49, %27, %19
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %46, %36
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @scope6_addr2default(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_SCOPE_LINKLOCAL(%struct.TYPE_4__*) #1

declare dso_local i64 @IN6_IS_ADDR_MC_INTFACELOCAL(%struct.TYPE_4__*) #1

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
