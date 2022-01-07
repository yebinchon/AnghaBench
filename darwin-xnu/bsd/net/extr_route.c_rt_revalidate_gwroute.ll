; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_revalidate_gwroute.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_revalidate_gwroute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32, i64, %struct.TYPE_9__*, %struct.TYPE_8__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 }
%struct.sockaddr_storage = type { i32 }

@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_UP = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@rnh_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt_revalidate_gwroute(%struct.rtentry* %0, %struct.rtentry* %1) #0 {
  %3 = alloca %struct.rtentry*, align 8
  %4 = alloca %struct.rtentry*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sockaddr_storage, align 4
  %7 = alloca %struct.sockaddr_storage, align 4
  store %struct.rtentry* %0, %struct.rtentry** %3, align 8
  store %struct.rtentry* %1, %struct.rtentry** %4, align 8
  %8 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %9 = icmp ne %struct.rtentry* %8, null
  %10 = zext i1 %9 to i32
  %11 = call i32 @VERIFY(i32 %10)
  %12 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %13 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %12)
  %14 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %15 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @RTF_GATEWAY, align 4
  %18 = load i32, i32* @RTF_UP, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @RTF_GATEWAY, align 4
  %22 = load i32, i32* @RTF_UP, align 4
  %23 = or i32 %21, %22
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %123

25:                                               ; preds = %2
  %26 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %27 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %30 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %28, %31
  br i1 %32, label %33, label %123

33:                                               ; preds = %25
  %34 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 2
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %40 = call %struct.TYPE_9__* @rt_key(%struct.rtentry* %39)
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %38, %42
  br i1 %43, label %44, label %123

44:                                               ; preds = %33
  %45 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %46 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %45, i32 0, i32 3
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp eq %struct.TYPE_8__* %47, null
  br i1 %48, label %58, label %49

49:                                               ; preds = %44
  %50 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %51 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %50, i32 0, i32 3
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @RTF_UP, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %123, label %58

58:                                               ; preds = %49, %44
  %59 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %60 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @RTF_CLONING, align 4
  %63 = load i32, i32* @RTF_PRCLONING, align 4
  %64 = or i32 %62, %63
  %65 = and i32 %61, %64
  %66 = call i32 @VERIFY(i32 %65)
  %67 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %68 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %67, i32 0, i32 2
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @AF_INET, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %82, label %74

74:                                               ; preds = %58
  %75 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %76 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %75, i32 0, i32 2
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @AF_INET6, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %93

82:                                               ; preds = %74, %58
  %83 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %84 = call %struct.TYPE_9__* @rt_key(%struct.rtentry* %83)
  %85 = call i32 @sa_copy(%struct.TYPE_9__* %84, %struct.sockaddr_storage* %6, i32* null)
  %86 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %87 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %86, i32 0, i32 2
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %87, align 8
  %89 = call i32 @sa_copy(%struct.TYPE_9__* %88, %struct.sockaddr_storage* %7, i32* null)
  %90 = call %struct.TYPE_9__* @SA(%struct.sockaddr_storage* %6)
  %91 = call %struct.TYPE_9__* @SA(%struct.sockaddr_storage* %7)
  %92 = call i64 @equal(%struct.TYPE_9__* %90, %struct.TYPE_9__* %91)
  store i64 %92, i64* %5, align 8
  br label %100

93:                                               ; preds = %74
  %94 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %95 = call %struct.TYPE_9__* @rt_key(%struct.rtentry* %94)
  %96 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %97 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %96, i32 0, i32 2
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %97, align 8
  %99 = call i64 @equal(%struct.TYPE_9__* %95, %struct.TYPE_9__* %98)
  store i64 %99, i64* %5, align 8
  br label %100

100:                                              ; preds = %93, %82
  %101 = load i64, i64* %5, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %105 = call i32 @RT_UNLOCK(%struct.rtentry* %104)
  %106 = load i32, i32* @rnh_lock, align 4
  %107 = call i32 @lck_mtx_lock(i32 %106)
  %108 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %109 = call i32 @RT_LOCK(%struct.rtentry* %108)
  %110 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %111 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %112 = call %struct.TYPE_9__* @rt_key(%struct.rtentry* %111)
  %113 = load %struct.rtentry*, %struct.rtentry** %4, align 8
  %114 = call i32 @rt_set_gwroute(%struct.rtentry* %110, %struct.TYPE_9__* %112, %struct.rtentry* %113)
  %115 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %116 = call i32 @RT_UNLOCK(%struct.rtentry* %115)
  %117 = load i32, i32* @rnh_lock, align 4
  %118 = call i32 @lck_mtx_unlock(i32 %117)
  br label %122

119:                                              ; preds = %100
  %120 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %121 = call i32 @RT_UNLOCK(%struct.rtentry* %120)
  br label %122

122:                                              ; preds = %119, %103
  br label %126

123:                                              ; preds = %49, %33, %25, %2
  %124 = load %struct.rtentry*, %struct.rtentry** %3, align 8
  %125 = call i32 @RT_UNLOCK(%struct.rtentry* %124)
  br label %126

126:                                              ; preds = %123, %122
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local %struct.TYPE_9__* @rt_key(%struct.rtentry*) #1

declare dso_local i32 @sa_copy(%struct.TYPE_9__*, %struct.sockaddr_storage*, i32*) #1

declare dso_local i64 @equal(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_9__* @SA(%struct.sockaddr_storage*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @rt_set_gwroute(%struct.rtentry*, %struct.TYPE_9__*, %struct.rtentry*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
