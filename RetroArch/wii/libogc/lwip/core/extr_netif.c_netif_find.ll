; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_netif.c_netif_find.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/core/extr_netif.c_netif_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netif = type { i8, i8*, %struct.netif* }

@netif_list = common dso_local global %struct.netif* null, align 8
@NETIF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"netif_find: found %c%c\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"netif_find: didn't find %c%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.netif* @netif_find(i8* %0) #0 {
  %2 = alloca %struct.netif*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.netif*, align 8
  %5 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.netif* null, %struct.netif** %2, align 8
  br label %80

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 2
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = sub nsw i32 %13, 48
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %5, align 1
  %16 = load %struct.netif*, %struct.netif** @netif_list, align 8
  store %struct.netif* %16, %struct.netif** %4, align 8
  br label %17

17:                                               ; preds = %65, %9
  %18 = load %struct.netif*, %struct.netif** %4, align 8
  %19 = icmp ne %struct.netif* %18, null
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  %21 = load i8, i8* %5, align 1
  %22 = sext i8 %21 to i32
  %23 = load %struct.netif*, %struct.netif** %4, align 8
  %24 = getelementptr inbounds %struct.netif, %struct.netif* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 8
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %22, %26
  br i1 %27, label %28, label %64

28:                                               ; preds = %20
  %29 = load i8*, i8** %3, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 0
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = load %struct.netif*, %struct.netif** %4, align 8
  %34 = getelementptr inbounds %struct.netif, %struct.netif* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %32, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %28
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load %struct.netif*, %struct.netif** %4, align 8
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  %51 = icmp eq i32 %44, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %40
  %53 = load i32, i32* @NETIF_DEBUG, align 4
  %54 = load i8*, i8** %3, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 0
  %56 = load i8, i8* %55, align 1
  %57 = load i8*, i8** %3, align 8
  %58 = getelementptr inbounds i8, i8* %57, i64 1
  %59 = load i8, i8* %58, align 1
  %60 = sext i8 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @LWIP_DEBUGF(i32 %53, i8* %61)
  %63 = load %struct.netif*, %struct.netif** %4, align 8
  store %struct.netif* %63, %struct.netif** %2, align 8
  br label %80

64:                                               ; preds = %40, %28, %20
  br label %65

65:                                               ; preds = %64
  %66 = load %struct.netif*, %struct.netif** %4, align 8
  %67 = getelementptr inbounds %struct.netif, %struct.netif* %66, i32 0, i32 2
  %68 = load %struct.netif*, %struct.netif** %67, align 8
  store %struct.netif* %68, %struct.netif** %4, align 8
  br label %17

69:                                               ; preds = %17
  %70 = load i32, i32* @NETIF_DEBUG, align 4
  %71 = load i8*, i8** %3, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 0
  %73 = load i8, i8* %72, align 1
  %74 = load i8*, i8** %3, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @LWIP_DEBUGF(i32 %70, i8* %78)
  store %struct.netif* null, %struct.netif** %2, align 8
  br label %80

80:                                               ; preds = %69, %52, %8
  %81 = load %struct.netif*, %struct.netif** %2, align 8
  ret %struct.netif* %81
}

declare dso_local i32 @LWIP_DEBUGF(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
