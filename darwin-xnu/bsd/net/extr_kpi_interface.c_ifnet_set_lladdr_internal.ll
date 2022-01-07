; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_lladdr_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_set_lladdr_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { i64 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.sockaddr_dl = type { i64, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ifnet_addrs = common dso_local global %struct.ifaddr** null, align 8
@ENXIO = common dso_local global i64 0, align 8
@INTF_EVENT_CODE_LLADDR_UPDATE = common dso_local global i32 0, align 4
@KEV_DL_SUBCLASS = common dso_local global i32 0, align 4
@KEV_DL_LINK_ADDRESS_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i8*, i64, i32, i32)* @ifnet_set_lladdr_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ifnet_set_lladdr_internal(%struct.TYPE_7__* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ifaddr*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.sockaddr_dl*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %13, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = icmp eq %struct.TYPE_7__* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %5
  %18 = load i64, i64* @EINVAL, align 8
  store i64 %18, i64* %6, align 8
  br label %104

19:                                               ; preds = %5
  %20 = call i32 (...) @ifnet_head_lock_shared()
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %22 = call i32 @ifnet_lock_exclusive(%struct.TYPE_7__* %21)
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %19
  %26 = load i64, i64* %9, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i8*, i8** %8, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %31, %25
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = call i32 @ifnet_lock_done(%struct.TYPE_7__* %35)
  %37 = call i32 (...) @ifnet_head_done()
  %38 = load i64, i64* @EINVAL, align 8
  store i64 %38, i64* %6, align 8
  br label %104

39:                                               ; preds = %31, %19
  %40 = load %struct.ifaddr**, %struct.ifaddr*** @ifnet_addrs, align 8
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.ifaddr*, %struct.ifaddr** %40, i64 %45
  %47 = load %struct.ifaddr*, %struct.ifaddr** %46, align 8
  store %struct.ifaddr* %47, %struct.ifaddr** %12, align 8
  %48 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %49 = icmp ne %struct.ifaddr* %48, null
  br i1 %49, label %50, label %86

50:                                               ; preds = %39
  %51 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %52 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %51)
  %53 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %54 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i8*
  %57 = bitcast i8* %56 to %struct.sockaddr_dl*
  store %struct.sockaddr_dl* %57, %struct.sockaddr_dl** %14, align 8
  %58 = load i64, i64* %9, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load i8*, i8** %8, align 8
  %62 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %63 = call i32 @LLADDR(%struct.sockaddr_dl* %62)
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @bcopy(i8* %61, i32 %63, i64 %64)
  br label %73

66:                                               ; preds = %50
  %67 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %68 = call i32 @LLADDR(%struct.sockaddr_dl* %67)
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @bzero(i32 %68, i64 %71)
  br label %73

73:                                               ; preds = %66, %60
  %74 = load i64, i64* %9, align 8
  %75 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %76 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %14, align 8
  %82 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %73
  %84 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %85 = call i32 @IFA_UNLOCK(%struct.ifaddr* %84)
  br label %88

86:                                               ; preds = %39
  %87 = load i64, i64* @ENXIO, align 8
  store i64 %87, i64* %13, align 8
  br label %88

88:                                               ; preds = %86, %83
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = call i32 @ifnet_lock_done(%struct.TYPE_7__* %89)
  %91 = call i32 (...) @ifnet_head_done()
  %92 = load i64, i64* %13, align 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %88
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %96 = load i32, i32* @INTF_EVENT_CODE_LLADDR_UPDATE, align 4
  %97 = call i32 @intf_event_enqueue_nwk_wq_entry(%struct.TYPE_7__* %95, i32* null, i32 %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %99 = load i32, i32* @KEV_DL_SUBCLASS, align 4
  %100 = load i32, i32* @KEV_DL_LINK_ADDRESS_CHANGED, align 4
  %101 = call i32 @dlil_post_msg(%struct.TYPE_7__* %98, i32 %99, i32 %100, i32* null, i32 0)
  br label %102

102:                                              ; preds = %94, %88
  %103 = load i64, i64* %13, align 8
  store i64 %103, i64* %6, align 8
  br label %104

104:                                              ; preds = %102, %34, %17
  %105 = load i64, i64* %6, align 8
  ret i64 %105
}

declare dso_local i32 @ifnet_head_lock_shared(...) #1

declare dso_local i32 @ifnet_lock_exclusive(%struct.TYPE_7__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.TYPE_7__*) #1

declare dso_local i32 @ifnet_head_done(...) #1

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #1

declare dso_local i32 @bcopy(i8*, i32, i64) #1

declare dso_local i32 @LLADDR(%struct.sockaddr_dl*) #1

declare dso_local i32 @bzero(i32, i64) #1

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #1

declare dso_local i32 @intf_event_enqueue_nwk_wq_entry(%struct.TYPE_7__*, i32*, i32) #1

declare dso_local i32 @dlil_post_msg(%struct.TYPE_7__*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
