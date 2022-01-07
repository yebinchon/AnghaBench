; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_llentry_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_llentry_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llentry = type { i32 }
%struct.ifnet = type { i32 }
%struct.lltable = type { i32 }
%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@IFF_NOARP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.llentry* @llentry_alloc(%struct.ifnet* %0, %struct.lltable* %1, %struct.sockaddr_storage* %2) #0 {
  %4 = alloca %struct.llentry*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.lltable*, align 8
  %7 = alloca %struct.sockaddr_storage*, align 8
  %8 = alloca %struct.llentry*, align 8
  %9 = alloca %struct.llentry*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %5, align 8
  store %struct.lltable* %1, %struct.lltable** %6, align 8
  store %struct.sockaddr_storage* %2, %struct.sockaddr_storage** %7, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %11 = load %struct.lltable*, %struct.lltable** %6, align 8
  %12 = getelementptr inbounds %struct.lltable, %struct.lltable* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @IF_AFDATA_RLOCK(%struct.ifnet* %10, i32 %13)
  %15 = load %struct.lltable*, %struct.lltable** %6, align 8
  %16 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %17 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %18 = bitcast %struct.sockaddr_storage* %17 to %struct.sockaddr*
  %19 = call %struct.llentry* @lla_lookup(%struct.lltable* %15, i32 %16, %struct.sockaddr* %18)
  store %struct.llentry* %19, %struct.llentry** %8, align 8
  %20 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %21 = load %struct.lltable*, %struct.lltable** %6, align 8
  %22 = getelementptr inbounds %struct.lltable, %struct.lltable* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @IF_AFDATA_RUNLOCK(%struct.ifnet* %20, i32 %23)
  %25 = load %struct.llentry*, %struct.llentry** %8, align 8
  %26 = icmp ne %struct.llentry* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %3
  %28 = load %struct.llentry*, %struct.llentry** %8, align 8
  %29 = call i32 @LLE_ADDREF(%struct.llentry* %28)
  %30 = load %struct.llentry*, %struct.llentry** %8, align 8
  %31 = call i32 @LLE_WUNLOCK(%struct.llentry* %30)
  %32 = load %struct.llentry*, %struct.llentry** %8, align 8
  store %struct.llentry* %32, %struct.llentry** %4, align 8
  br label %87

33:                                               ; preds = %3
  %34 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %35 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @IFF_NOARP, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %85

40:                                               ; preds = %33
  %41 = load %struct.lltable*, %struct.lltable** %6, align 8
  %42 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %43 = bitcast %struct.sockaddr_storage* %42 to %struct.sockaddr*
  %44 = call %struct.llentry* @lltable_alloc_entry(%struct.lltable* %41, i32 0, %struct.sockaddr* %43)
  store %struct.llentry* %44, %struct.llentry** %8, align 8
  %45 = load %struct.llentry*, %struct.llentry** %8, align 8
  %46 = icmp eq %struct.llentry* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store %struct.llentry* null, %struct.llentry** %4, align 8
  br label %87

48:                                               ; preds = %40
  %49 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %50 = load %struct.lltable*, %struct.lltable** %6, align 8
  %51 = getelementptr inbounds %struct.lltable, %struct.lltable* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %49, i32 %52)
  %54 = load %struct.llentry*, %struct.llentry** %8, align 8
  %55 = call i32 @LLE_WLOCK(%struct.llentry* %54)
  %56 = load %struct.lltable*, %struct.lltable** %6, align 8
  %57 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %58 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %7, align 8
  %59 = bitcast %struct.sockaddr_storage* %58 to %struct.sockaddr*
  %60 = call %struct.llentry* @lla_lookup(%struct.lltable* %56, i32 %57, %struct.sockaddr* %59)
  store %struct.llentry* %60, %struct.llentry** %9, align 8
  %61 = load %struct.llentry*, %struct.llentry** %9, align 8
  %62 = icmp eq %struct.llentry* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %48
  %64 = load %struct.lltable*, %struct.lltable** %6, align 8
  %65 = load %struct.llentry*, %struct.llentry** %8, align 8
  %66 = call i32 @lltable_link_entry(%struct.lltable* %64, %struct.llentry* %65)
  br label %67

67:                                               ; preds = %63, %48
  %68 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %69 = load %struct.lltable*, %struct.lltable** %6, align 8
  %70 = getelementptr inbounds %struct.lltable, %struct.lltable* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %68, i32 %71)
  %73 = load %struct.llentry*, %struct.llentry** %9, align 8
  %74 = icmp ne %struct.llentry* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %67
  %76 = load %struct.lltable*, %struct.lltable** %6, align 8
  %77 = load %struct.llentry*, %struct.llentry** %8, align 8
  %78 = call i32 @lltable_free_entry(%struct.lltable* %76, %struct.llentry* %77)
  %79 = load %struct.llentry*, %struct.llentry** %9, align 8
  store %struct.llentry* %79, %struct.llentry** %8, align 8
  br label %80

80:                                               ; preds = %75, %67
  %81 = load %struct.llentry*, %struct.llentry** %8, align 8
  %82 = call i32 @LLE_ADDREF(%struct.llentry* %81)
  %83 = load %struct.llentry*, %struct.llentry** %8, align 8
  %84 = call i32 @LLE_WUNLOCK(%struct.llentry* %83)
  br label %85

85:                                               ; preds = %80, %33
  %86 = load %struct.llentry*, %struct.llentry** %8, align 8
  store %struct.llentry* %86, %struct.llentry** %4, align 8
  br label %87

87:                                               ; preds = %85, %47, %27
  %88 = load %struct.llentry*, %struct.llentry** %4, align 8
  ret %struct.llentry* %88
}

declare dso_local i32 @IF_AFDATA_RLOCK(%struct.ifnet*, i32) #1

declare dso_local %struct.llentry* @lla_lookup(%struct.lltable*, i32, %struct.sockaddr*) #1

declare dso_local i32 @IF_AFDATA_RUNLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @LLE_ADDREF(%struct.llentry*) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry*) #1

declare dso_local %struct.llentry* @lltable_alloc_entry(%struct.lltable*, i32, %struct.sockaddr*) #1

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @LLE_WLOCK(%struct.llentry*) #1

declare dso_local i32 @lltable_link_entry(%struct.lltable*, %struct.llentry*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @lltable_free_entry(%struct.lltable*, %struct.llentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
