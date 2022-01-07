; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_lltable_delete_addr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_llatbl.c_lltable_delete_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lltable = type { i32 (%struct.lltable*, %struct.llentry*)*, i32, %struct.ifnet* }
%struct.llentry = type opaque
%struct.ifnet = type { i32 }
%struct.sockaddr = type { i32 }
%struct.llentry.0 = type { i32 }

@LLE_EXCLUSIVE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LLE_IFADDR = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lltable_delete_addr(%struct.lltable* %0, i32 %1, %struct.sockaddr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lltable*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca %struct.llentry.0*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store %struct.lltable* %0, %struct.lltable** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  %10 = load %struct.lltable*, %struct.lltable** %5, align 8
  %11 = getelementptr inbounds %struct.lltable, %struct.lltable* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %9, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %14 = load %struct.lltable*, %struct.lltable** %5, align 8
  %15 = getelementptr inbounds %struct.lltable, %struct.lltable* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @IF_AFDATA_WLOCK(%struct.ifnet* %13, i32 %16)
  %18 = load %struct.lltable*, %struct.lltable** %5, align 8
  %19 = load i32, i32* @LLE_EXCLUSIVE, align 4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %21 = call %struct.llentry.0* @lla_lookup(%struct.lltable* %18, i32 %19, %struct.sockaddr* %20)
  store %struct.llentry.0* %21, %struct.llentry.0** %8, align 8
  %22 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %23 = icmp eq %struct.llentry.0* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %3
  %25 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %26 = load %struct.lltable*, %struct.lltable** %5, align 8
  %27 = getelementptr inbounds %struct.lltable, %struct.lltable* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %25, i32 %28)
  %30 = load i32, i32* @ENOENT, align 4
  store i32 %30, i32* %4, align 4
  br label %68

31:                                               ; preds = %3
  %32 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %33 = getelementptr inbounds %struct.llentry.0, %struct.llentry.0* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @LLE_IFADDR, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LLE_IFADDR, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %38
  %44 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %45 = load %struct.lltable*, %struct.lltable** %5, align 8
  %46 = getelementptr inbounds %struct.lltable, %struct.lltable* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %44, i32 %47)
  %49 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %50 = call i32 @LLE_WUNLOCK(%struct.llentry.0* %49)
  %51 = load i32, i32* @EPERM, align 4
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %38, %31
  %53 = load %struct.lltable*, %struct.lltable** %5, align 8
  %54 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %55 = call i32 @lltable_unlink_entry(%struct.lltable* %53, %struct.llentry.0* %54)
  %56 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %57 = load %struct.lltable*, %struct.lltable** %5, align 8
  %58 = getelementptr inbounds %struct.lltable, %struct.lltable* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @IF_AFDATA_WUNLOCK(%struct.ifnet* %56, i32 %59)
  %61 = load %struct.lltable*, %struct.lltable** %5, align 8
  %62 = getelementptr inbounds %struct.lltable, %struct.lltable* %61, i32 0, i32 0
  %63 = load i32 (%struct.lltable*, %struct.llentry*)*, i32 (%struct.lltable*, %struct.llentry*)** %62, align 8
  %64 = load %struct.lltable*, %struct.lltable** %5, align 8
  %65 = load %struct.llentry.0*, %struct.llentry.0** %8, align 8
  %66 = bitcast %struct.llentry.0* %65 to %struct.llentry*
  %67 = call i32 %63(%struct.lltable* %64, %struct.llentry* %66)
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %52, %43, %24
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @IF_AFDATA_WLOCK(%struct.ifnet*, i32) #1

declare dso_local %struct.llentry.0* @lla_lookup(%struct.lltable*, i32, %struct.sockaddr*) #1

declare dso_local i32 @IF_AFDATA_WUNLOCK(%struct.ifnet*, i32) #1

declare dso_local i32 @LLE_WUNLOCK(%struct.llentry.0*) #1

declare dso_local i32 @lltable_unlink_entry(%struct.lltable*, %struct.llentry.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
