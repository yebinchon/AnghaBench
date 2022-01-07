; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_input.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/netif/skeleton/extr_slipif.c_slipif_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.pbuf = type { i32, i64 }
%struct.netif = type { i32 }

@link = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SLIP_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"slipif: Got packet\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"slipif_input: alloc\0A\00", align 1
@PBUF_LINK = common dso_local global i32 0, align 4
@PBUF_POOL_BUFSIZE = common dso_local global i32 0, align 4
@PBUF_POOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"slipif_input: no new pbuf! (DROP)\0A\00", align 1
@MAX_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pbuf* (%struct.netif*)* @slipif_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pbuf* @slipif_input(%struct.netif* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.pbuf*, align 8
  %5 = alloca %struct.pbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.netif* %0, %struct.netif** %2, align 8
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  store %struct.pbuf* null, %struct.pbuf** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %1, %91
  %9 = load %struct.netif*, %struct.netif** %2, align 8
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @sio_recv(i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  switch i32 %13, label %36 [
    i32 131, label %14
    i32 130, label %27
  ]

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @pbuf_realloc(%struct.pbuf* %18, i32 %19)
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link, i32 0, i32 1), align 4
  %22 = call i32 @LINK_STATS_INC(i32 %21)
  %23 = load i32, i32* @SLIP_DEBUG, align 4
  %24 = call i32 @LWIP_DEBUGF(i32 %23, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  ret %struct.pbuf* %25

26:                                               ; preds = %14
  br label %91

27:                                               ; preds = %8
  %28 = load %struct.netif*, %struct.netif** %2, align 8
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @sio_recv(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* %3, align 4
  switch i32 %32, label %35 [
    i32 129, label %33
    i32 128, label %34
  ]

33:                                               ; preds = %27
  store i32 131, i32* %3, align 4
  br label %35

34:                                               ; preds = %27
  store i32 130, i32* %3, align 4
  br label %35

35:                                               ; preds = %27, %34, %33
  br label %36

36:                                               ; preds = %8, %35
  %37 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %38 = icmp eq %struct.pbuf* %37, null
  br i1 %38, label %39, label %63

39:                                               ; preds = %36
  %40 = load i32, i32* @SLIP_DEBUG, align 4
  %41 = call i32 @LWIP_DEBUGF(i32 %40, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @PBUF_LINK, align 4
  %43 = load i32, i32* @PBUF_POOL_BUFSIZE, align 4
  %44 = load i32, i32* @PBUF_POOL, align 4
  %45 = call %struct.pbuf* @pbuf_alloc(i32 %42, i32 %43, i32 %44)
  store %struct.pbuf* %45, %struct.pbuf** %4, align 8
  %46 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %47 = icmp eq %struct.pbuf* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @link, i32 0, i32 0), align 4
  %50 = call i32 @LINK_STATS_INC(i32 %49)
  %51 = load i32, i32* @SLIP_DEBUG, align 4
  %52 = call i32 @LWIP_DEBUGF(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %53

53:                                               ; preds = %48, %39
  %54 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %55 = icmp ne %struct.pbuf* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.pbuf*, %struct.pbuf** %5, align 8
  %58 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %59 = call i32 @pbuf_cat(%struct.pbuf* %57, %struct.pbuf* %58)
  br label %62

60:                                               ; preds = %53
  %61 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  store %struct.pbuf* %61, %struct.pbuf** %5, align 8
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %62, %36
  %64 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %65 = icmp ne %struct.pbuf* %64, null
  br i1 %65, label %66, label %90

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @MAX_SIZE, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %90

70:                                               ; preds = %66
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  store i32 %71, i32* %78, align 4
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.pbuf*, %struct.pbuf** %4, align 8
  %85 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %70
  store i32 0, i32* %7, align 4
  store %struct.pbuf* null, %struct.pbuf** %4, align 8
  br label %89

89:                                               ; preds = %88, %70
  br label %90

90:                                               ; preds = %89, %66, %63
  br label %91

91:                                               ; preds = %90, %26
  br label %8
}

declare dso_local i32 @sio_recv(i32) #1

declare dso_local i32 @pbuf_realloc(%struct.pbuf*, i32) #1

declare dso_local i32 @LINK_STATS_INC(i32) #1

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

declare dso_local %struct.pbuf* @pbuf_alloc(i32, i32, i32) #1

declare dso_local i32 @pbuf_cat(%struct.pbuf*, %struct.pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
