; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ndrv.c_ndrv_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.socket = type { i32 }
%struct.sockaddr_dl = type { i32, i32, i32, i64, i64, i32, i64, i32 }
%struct.ndrv_cb = type { %struct.socket* }
%struct.sockaddr = type { i32 }
%struct.mbuf = type { i32 }

@AF_NDRV = common dso_local global i32 0, align 4
@IFT_ETHER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@ndrvdomain = common dso_local global %struct.TYPE_8__* null, align 8
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.TYPE_7__*, i8*)* @ndrv_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ndrv_input(i32 %0, i32 %1, %struct.TYPE_7__* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.socket*, align 8
  %11 = alloca %struct.sockaddr_dl, align 8
  %12 = alloca %struct.ndrv_cb*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 0
  store i32 56, i32* %14, align 8
  %15 = load i32, i32* @AF_NDRV, align 4
  %16 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 7
  store i32 %15, i32* %16, align 8
  %17 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 6
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* @IFT_ETHER, align 4
  %19 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 5
  store i32 %18, i32* %19, align 8
  %20 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 1
  store i32 6, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i8*, i8** %9, align 8
  %24 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %11, i32 0, i32 2
  %25 = call i32 @bcopy(i8* %23, i32* %24, i32 6)
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.ndrv_cb* @ndrv_find_inbound(i32 %26, i32 %27)
  store %struct.ndrv_cb* %28, %struct.ndrv_cb** %12, align 8
  %29 = load %struct.ndrv_cb*, %struct.ndrv_cb** %12, align 8
  %30 = icmp eq %struct.ndrv_cb* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %4
  %32 = load i32, i32* @ENOENT, align 4
  store i32 %32, i32* %5, align 4
  br label %77

33:                                               ; preds = %4
  %34 = load %struct.ndrv_cb*, %struct.ndrv_cb** %12, align 8
  %35 = getelementptr inbounds %struct.ndrv_cb, %struct.ndrv_cb* %34, i32 0, i32 0
  %36 = load %struct.socket*, %struct.socket** %35, align 8
  store %struct.socket* %36, %struct.socket** %10, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @ifnet_hdrlen(i32 %38)
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = call %struct.TYPE_7__* @m_prepend(%struct.TYPE_7__* %37, i32 %39, i32 %40)
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %8, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %43 = icmp eq %struct.TYPE_7__* %42, null
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %45, i32* %5, align 4
  br label %77

46:                                               ; preds = %33
  %47 = load i8*, i8** %9, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @ifnet_hdrlen(i32 %51)
  %53 = call i32 @bcopy(i8* %47, i32* %50, i32 %52)
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ndrvdomain, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %58 = call i32 @LCK_MTX_ASSERT(i32 %56, i32 %57)
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ndrvdomain, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @lck_mtx_lock(i32 %61)
  %63 = load %struct.socket*, %struct.socket** %10, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 0
  %65 = bitcast %struct.sockaddr_dl* %11 to %struct.sockaddr*
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %67 = call i64 @sbappendaddr(i32* %64, %struct.sockaddr* %65, %struct.TYPE_7__* %66, %struct.mbuf* null, i32* %13)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %46
  %70 = load %struct.socket*, %struct.socket** %10, align 8
  %71 = call i32 @sorwakeup(%struct.socket* %70)
  br label %72

72:                                               ; preds = %69, %46
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** @ndrvdomain, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @lck_mtx_unlock(i32 %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %44, %31
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @bcopy(i8*, i32*, i32) #1

declare dso_local %struct.ndrv_cb* @ndrv_find_inbound(i32, i32) #1

declare dso_local %struct.TYPE_7__* @m_prepend(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @ifnet_hdrlen(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i64 @sbappendaddr(i32*, %struct.sockaddr*, %struct.TYPE_7__*, %struct.mbuf*, i32*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
