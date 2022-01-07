; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_get_defrouter.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llreach.c_ifnet_llreach_get_defrouter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 }
%struct.ifnet = type { i32 }
%struct.ifnet_llreach_info = type { i32, i32 }
%struct.sockaddr_storage = type { i32, i32 }
%struct.rtentry = type { i32, i32 (%struct.rtentry*, %struct.sockaddr_storage*)*, %struct.rtentry* }
%struct.TYPE_2__ = type { i64 }

@ESRCH = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@rnh_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ifnet_llreach_get_defrouter(%struct.ifnet* %0, i32 %1, %struct.ifnet_llreach_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifnet_llreach_info*, align 8
  %8 = alloca %struct.radix_node_head*, align 8
  %9 = alloca %struct.sockaddr_storage, align 4
  %10 = alloca %struct.sockaddr_storage, align 4
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.rtentry*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifnet_llreach_info* %2, %struct.ifnet_llreach_info** %7, align 8
  %14 = load i32, i32* @ESRCH, align 4
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %16 = icmp ne %struct.ifnet* %15, null
  br i1 %16, label %17, label %30

17:                                               ; preds = %3
  %18 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %7, align 8
  %19 = icmp ne %struct.ifnet_llreach_info* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %17
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @AF_INET, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @AF_INET6, align 4
  %27 = icmp eq i32 %25, %26
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i1 [ true, %20 ], [ %27, %24 ]
  br label %30

30:                                               ; preds = %28, %17, %3
  %31 = phi i1 [ false, %17 ], [ false, %3 ], [ %29, %28 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %7, align 8
  %35 = bitcast %struct.ifnet_llreach_info* %34 to %struct.sockaddr_storage*
  %36 = call i32 @bzero(%struct.sockaddr_storage* %35, i32 8)
  %37 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %37, i64 %39
  %41 = load %struct.radix_node_head*, %struct.radix_node_head** %40, align 8
  store %struct.radix_node_head* %41, %struct.radix_node_head** %8, align 8
  %42 = icmp eq %struct.radix_node_head* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %4, align 4
  br label %130

45:                                               ; preds = %30
  %46 = call i32 @bzero(%struct.sockaddr_storage* %9, i32 8)
  %47 = call i32 @bzero(%struct.sockaddr_storage* %10, i32 8)
  %48 = load i32, i32* %6, align 4
  %49 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @AF_INET, align 4
  %52 = icmp eq i32 %50, %51
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i64 4, i64 4
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %9, i32 0, i32 1
  store i32 %55, i32* %56, align 4
  %57 = load i32, i32* @rnh_lock, align 4
  %58 = call i32 @lck_mtx_lock(i32 %57)
  %59 = load i32, i32* @TRUE, align 4
  %60 = call i32 @SA(%struct.sockaddr_storage* %9)
  %61 = call i32 @SA(%struct.sockaddr_storage* %10)
  %62 = load %struct.radix_node_head*, %struct.radix_node_head** %8, align 8
  %63 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %64 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.rtentry* @rt_lookup(i32 %59, i32 %60, i32 %61, %struct.radix_node_head* %62, i32 %65)
  store %struct.rtentry* %66, %struct.rtentry** %11, align 8
  %67 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %68 = icmp ne %struct.rtentry* %67, null
  br i1 %68, label %69, label %126

69:                                               ; preds = %45
  %70 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %71 = call i32 @RT_LOCK(%struct.rtentry* %70)
  %72 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %73 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @RTF_GATEWAY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %120

78:                                               ; preds = %69
  %79 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %80 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %79, i32 0, i32 2
  %81 = load %struct.rtentry*, %struct.rtentry** %80, align 8
  store %struct.rtentry* %81, %struct.rtentry** %13, align 8
  %82 = icmp ne %struct.rtentry* %81, null
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %85 = call %struct.TYPE_2__* @rt_key(%struct.rtentry* %84)
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %89 = call %struct.TYPE_2__* @rt_key(%struct.rtentry* %88)
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp eq i64 %87, %91
  br i1 %92, label %93, label %120

93:                                               ; preds = %83
  %94 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %95 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @RTF_UP, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %93
  %101 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %102 = call i32 @RT_UNLOCK(%struct.rtentry* %101)
  %103 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %104 = call i32 @RT_LOCK(%struct.rtentry* %103)
  %105 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %106 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %105, i32 0, i32 1
  %107 = load i32 (%struct.rtentry*, %struct.sockaddr_storage*)*, i32 (%struct.rtentry*, %struct.sockaddr_storage*)** %106, align 8
  %108 = icmp ne i32 (%struct.rtentry*, %struct.sockaddr_storage*)* %107, null
  br i1 %108, label %109, label %117

109:                                              ; preds = %100
  %110 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %111 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %110, i32 0, i32 1
  %112 = load i32 (%struct.rtentry*, %struct.sockaddr_storage*)*, i32 (%struct.rtentry*, %struct.sockaddr_storage*)** %111, align 8
  %113 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %114 = load %struct.ifnet_llreach_info*, %struct.ifnet_llreach_info** %7, align 8
  %115 = bitcast %struct.ifnet_llreach_info* %114 to %struct.sockaddr_storage*
  %116 = call i32 %112(%struct.rtentry* %113, %struct.sockaddr_storage* %115)
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %109, %100
  %118 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  %119 = call i32 @RT_UNLOCK(%struct.rtentry* %118)
  br label %123

120:                                              ; preds = %93, %83, %78, %69
  %121 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %122 = call i32 @RT_UNLOCK(%struct.rtentry* %121)
  br label %123

123:                                              ; preds = %120, %117
  %124 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %125 = call i32 @rtfree_locked(%struct.rtentry* %124)
  br label %126

126:                                              ; preds = %123, %45
  %127 = load i32, i32* @rnh_lock, align 4
  %128 = call i32 @lck_mtx_unlock(i32 %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %43
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(%struct.sockaddr_storage*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.rtentry* @rt_lookup(i32, i32, i32, %struct.radix_node_head*, i32) #1

declare dso_local i32 @SA(%struct.sockaddr_storage*) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local %struct.TYPE_2__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
