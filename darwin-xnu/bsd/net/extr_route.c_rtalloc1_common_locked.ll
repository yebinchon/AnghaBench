; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtalloc1_common_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rtalloc1_common_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.rtentry = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.rt_addrinfo = type { %struct.sockaddr** }
%struct.sockaddr_storage = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@RTM_MISS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTM_RESOLVE = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_LLINFO = common dso_local global i32 0, align 4
@RTF_ROUTER = common dso_local global i32 0, align 4
@RTF_XRESOLVE = common dso_local global i32 0, align 4
@rtstat = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@RTAX_DST = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtentry* @rtalloc1_common_locked(%struct.sockaddr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sockaddr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.radix_node_head*, align 8
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca %struct.rtentry*, align 8
  %12 = alloca %struct.rt_addrinfo, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.rtentry*, align 8
  %17 = alloca %struct.sockaddr_storage, align 4
  store %struct.sockaddr* %0, %struct.sockaddr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %19 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %20 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %18, i64 %21
  %23 = load %struct.radix_node_head*, %struct.radix_node_head** %22, align 8
  store %struct.radix_node_head* %23, %struct.radix_node_head** %9, align 8
  store %struct.rtentry* null, %struct.rtentry** %11, align 8
  store i32 0, i32* %14, align 4
  %24 = load i32, i32* @RTM_MISS, align 4
  store i32 %24, i32* %15, align 4
  %25 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %26 = icmp eq %struct.radix_node_head* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %4
  br label %133

28:                                               ; preds = %4
  %29 = load i32, i32* @FALSE, align 4
  %30 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %31 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call %struct.rtentry* @rt_lookup(i32 %29, %struct.sockaddr* %30, i32* null, %struct.radix_node_head* %31, i32 %32)
  store %struct.rtentry* %33, %struct.rtentry** %10, align 8
  %34 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %35 = icmp eq %struct.rtentry* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %133

37:                                               ; preds = %28
  %38 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %39 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %38)
  %40 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  store %struct.rtentry* %40, %struct.rtentry** %11, align 8
  %41 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %42 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %13, align 4
  %47 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %48 = call i32 @RT_UNLOCK(%struct.rtentry* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %132

51:                                               ; preds = %37
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @RTF_CLONING, align 4
  %54 = load i32, i32* @RTF_PRCLONING, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %132

58:                                               ; preds = %51
  %59 = load i32, i32* @RTM_RESOLVE, align 4
  %60 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %61 = call i32 @rtrequest_locked(i32 %59, %struct.sockaddr* %60, i32* null, i32* null, i32 0, %struct.rtentry** %11)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  store %struct.rtentry* %65, %struct.rtentry** %11, align 8
  br label %136

66:                                               ; preds = %58
  %67 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %68 = call i32 @rtfree_locked(%struct.rtentry* %67)
  %69 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %70 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @RTF_HOST, align 4
  %73 = load i32, i32* @RTF_LLINFO, align 4
  %74 = or i32 %72, %73
  %75 = and i32 %71, %74
  %76 = load i32, i32* @RTF_HOST, align 4
  %77 = load i32, i32* @RTF_LLINFO, align 4
  %78 = or i32 %76, %77
  %79 = icmp eq i32 %75, %78
  br i1 %79, label %80, label %119

80:                                               ; preds = %66
  store %struct.rtentry* null, %struct.rtentry** %16, align 8
  %81 = call i32 @bzero(%struct.sockaddr_storage* %17, i32 8)
  %82 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %83 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %82)
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %88 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %87)
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.sockaddr_storage, %struct.sockaddr_storage* %17, i32 0, i32 0
  store i32 %90, i32* %91, align 4
  %92 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  %93 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %94 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %93, i32 0, i32 2
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr* %92, i32 0, i32 0, i32 %97)
  store %struct.rtentry* %98, %struct.rtentry** %16, align 8
  %99 = load %struct.rtentry*, %struct.rtentry** %16, align 8
  %100 = icmp ne %struct.rtentry* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %80
  %102 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %103 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %102)
  %104 = load %struct.rtentry*, %struct.rtentry** %16, align 8
  %105 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @equal(%struct.TYPE_7__* %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @RTF_ROUTER, align 4
  %111 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  %112 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load %struct.rtentry*, %struct.rtentry** %16, align 8
  %117 = call i32 @rtfree_locked(%struct.rtentry* %116)
  br label %118

118:                                              ; preds = %115, %80
  br label %119

119:                                              ; preds = %118, %66
  %120 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  store %struct.rtentry* %120, %struct.rtentry** %10, align 8
  %121 = icmp ne %struct.rtentry* %120, null
  br i1 %121, label %122, label %131

122:                                              ; preds = %119
  %123 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %124 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @RTF_XRESOLVE, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @RTM_RESOLVE, align 4
  store i32 %130, i32* %15, align 4
  br label %136

131:                                              ; preds = %122, %119
  br label %132

132:                                              ; preds = %131, %51, %37
  br label %151

133:                                              ; preds = %36, %27
  %134 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rtstat, i32 0, i32 0), align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @rtstat, i32 0, i32 0), align 4
  br label %136

136:                                              ; preds = %133, %129, %64
  %137 = load i32, i32* %6, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %150

139:                                              ; preds = %136
  %140 = bitcast %struct.rt_addrinfo* %12 to %struct.sockaddr_storage*
  %141 = call i32 @bzero(%struct.sockaddr_storage* %140, i32 8)
  %142 = load %struct.sockaddr*, %struct.sockaddr** %5, align 8
  %143 = getelementptr inbounds %struct.rt_addrinfo, %struct.rt_addrinfo* %12, i32 0, i32 0
  %144 = load %struct.sockaddr**, %struct.sockaddr*** %143, align 8
  %145 = load i64, i64* @RTAX_DST, align 8
  %146 = getelementptr inbounds %struct.sockaddr*, %struct.sockaddr** %144, i64 %145
  store %struct.sockaddr* %142, %struct.sockaddr** %146, align 8
  %147 = load i32, i32* %15, align 4
  %148 = load i32, i32* %14, align 4
  %149 = call i32 @rt_missmsg(i32 %147, %struct.rt_addrinfo* %12, i32 0, i32 %148)
  br label %150

150:                                              ; preds = %139, %136
  br label %151

151:                                              ; preds = %150, %132
  %152 = load %struct.rtentry*, %struct.rtentry** %11, align 8
  ret %struct.rtentry* %152
}

declare dso_local %struct.rtentry* @rt_lookup(i32, %struct.sockaddr*, i32*, %struct.radix_node_head*, i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_locked(i32, %struct.sockaddr*, i32*, i32*, i32, %struct.rtentry**) #1

declare dso_local i32 @rtfree_locked(%struct.rtentry*) #1

declare dso_local i32 @bzero(%struct.sockaddr_storage*, i32) #1

declare dso_local %struct.TYPE_7__* @rt_key(%struct.rtentry*) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i64 @equal(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @rt_missmsg(i32, %struct.rt_addrinfo*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
