; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_rt6_deleteroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_rt6_deleteroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.in6_addr = type { i32 }
%struct.TYPE_5__ = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rt6_deleteroute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt6_deleteroute(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.in6_addr*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %9 = bitcast %struct.radix_node* %8 to %struct.rtentry*
  store %struct.rtentry* %9, %struct.rtentry** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.in6_addr*
  store %struct.in6_addr* %11, %struct.in6_addr** %7, align 8
  %12 = load i32, i32* @rnh_lock, align 4
  %13 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %14 = call i32 @LCK_MTX_ASSERT(i32 %12, i32 %13)
  %15 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %16 = call i32 @RT_LOCK(%struct.rtentry* %15)
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp eq %struct.TYPE_4__* %19, null
  br i1 %20, label %29, label %21

21:                                               ; preds = %2
  %22 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %23 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @AF_INET6, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %2
  %30 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %31 = call i32 @RT_UNLOCK(%struct.rtentry* %30)
  store i32 0, i32* %3, align 4
  br label %79

32:                                               ; preds = %21
  %33 = load %struct.in6_addr*, %struct.in6_addr** %7, align 8
  %34 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = call %struct.TYPE_5__* @SIN6(%struct.TYPE_4__* %36)
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = call i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr* %33, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32
  %42 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %43 = call i32 @RT_UNLOCK(%struct.rtentry* %42)
  store i32 0, i32* %3, align 4
  br label %79

44:                                               ; preds = %32
  %45 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %46 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @RTF_STATIC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %53 = call i32 @RT_UNLOCK(%struct.rtentry* %52)
  store i32 0, i32* %3, align 4
  br label %79

54:                                               ; preds = %44
  %55 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %56 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @RTF_HOST, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %63 = call i32 @RT_UNLOCK(%struct.rtentry* %62)
  store i32 0, i32* %3, align 4
  br label %79

64:                                               ; preds = %54
  %65 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %66 = call i32 @RT_UNLOCK(%struct.rtentry* %65)
  %67 = load i32, i32* @RTM_DELETE, align 4
  %68 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %69 = call i32 @rt_key(%struct.rtentry* %68)
  %70 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %71 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %70, i32 0, i32 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %74 = call i32 @rt_mask(%struct.rtentry* %73)
  %75 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %76 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @rtrequest_locked(i32 %67, i32 %69, %struct.TYPE_4__* %72, i32 %74, i32 %77, i32 0)
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %64, %61, %51, %41, %29
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @IN6_ARE_ADDR_EQUAL(%struct.in6_addr*, i32*) #1

declare dso_local %struct.TYPE_5__* @SIN6(%struct.TYPE_4__*) #1

declare dso_local i32 @rtrequest_locked(i32, i32, %struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
