; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSpecialListener.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Admin.c_StSetSpecialListener.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i64, i32* }
%struct.TYPE_10__ = type { i64, i64 }

@ERR_NO_ERROR = common dso_local global i32 0, align 4
@SERVER_ADMIN_ONLY = common dso_local global i32 0, align 4
@NO_SUPPORT_FOR_BRIDGE = common dso_local global i32 0, align 4
@ERR_SPECIAL_LISTENER_DNS_ERROR = common dso_local global i32 0, align 4
@ERR_SPECIAL_LISTENER_ICMP_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"LA_SET_SPECIAL_LISTENER\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @StSetSpecialListener(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %6, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %7, align 8
  %15 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* @SERVER_ADMIN_ONLY, align 4
  %17 = load i32, i32* @NO_SUPPORT_FOR_BRIDGE, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i64 @MAKEBOOL(i64 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @MAKEBOOL(i64 %29)
  %31 = icmp ne i64 %26, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %22
  %33 = call i32 (...) @SiCanOpenVpnOverDnsPort()
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @ERR_SPECIAL_LISTENER_DNS_ERROR, align 4
  store i32 %36, i32* %3, align 4
  br label %77

37:                                               ; preds = %32
  br label %38

38:                                               ; preds = %37, %22, %2
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %38
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @MAKEBOOL(i64 %46)
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i64 @MAKEBOOL(i64 %50)
  %52 = icmp ne i64 %47, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %43
  %54 = call i32 (...) @SiCanOpenVpnOverIcmpPort()
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* @ERR_SPECIAL_LISTENER_ICMP_ERROR, align 4
  store i32 %57, i32* %3, align 4
  br label %77

58:                                               ; preds = %53
  br label %59

59:                                               ; preds = %58, %43, %38
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  store i64 %62, i64* %64, align 8
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %71 = call i32 @SiApplySpecialListenerStatus(%struct.TYPE_9__* %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %73 = call i32 @ALog(%struct.TYPE_11__* %72, i32* null, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %75 = call i32 @IncrementServerConfigRevision(%struct.TYPE_9__* %74)
  %76 = load i32, i32* @ERR_NO_ERROR, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %59, %56, %35
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i64 @MAKEBOOL(i64) #1

declare dso_local i32 @SiCanOpenVpnOverDnsPort(...) #1

declare dso_local i32 @SiCanOpenVpnOverIcmpPort(...) #1

declare dso_local i32 @SiApplySpecialListenerStatus(%struct.TYPE_9__*) #1

declare dso_local i32 @ALog(%struct.TYPE_11__*, i32*, i8*) #1

declare dso_local i32 @IncrementServerConfigRevision(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
