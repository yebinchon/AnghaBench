; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtmtu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_rtmtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { %struct.TYPE_3__, %struct.ifnet* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.ifnet = type { i64 }
%struct.TYPE_4__ = type { i64 }

@RTV_MTU = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@CLAT46_HDR_EXPANSION_OVERHD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @if_rtmtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_rtmtu(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca %struct.radix_node*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rtentry*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.radix_node* %0, %struct.radix_node** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.radix_node*, %struct.radix_node** %3, align 8
  %8 = bitcast %struct.radix_node* %7 to %struct.rtentry*
  store %struct.rtentry* %8, %struct.rtentry** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ifnet*
  store %struct.ifnet* %10, %struct.ifnet** %6, align 8
  %11 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %12 = call i32 @RT_LOCK(%struct.rtentry* %11)
  %13 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %14 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %13, i32 0, i32 1
  %15 = load %struct.ifnet*, %struct.ifnet** %14, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = icmp eq %struct.ifnet* %15, %16
  br i1 %17, label %18, label %63

18:                                               ; preds = %2
  %19 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @RTV_MTU, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %62, label %26

26:                                               ; preds = %18
  %27 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %28 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %62

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %37 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  store i64 %35, i64* %38, align 8
  %39 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %40 = call %struct.TYPE_4__* @rt_key(%struct.rtentry* %39)
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @AF_INET, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %47 = call i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.ifnet* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %51 = call i64 @IN6_LINKMTU(%struct.ifnet* %50)
  %52 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %53 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i64 %51, i64* %54, align 8
  %55 = load i64, i64* @CLAT46_HDR_EXPANSION_OVERHD, align 8
  %56 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %57 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %59, %55
  store i64 %60, i64* %58, align 8
  br label %61

61:                                               ; preds = %49, %45, %32
  br label %62

62:                                               ; preds = %61, %26, %18
  br label %63

63:                                               ; preds = %62, %2
  %64 = load %struct.rtentry*, %struct.rtentry** %5, align 8
  %65 = call i32 @RT_UNLOCK(%struct.rtentry* %64)
  ret i32 0
}

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local %struct.TYPE_4__* @rt_key(%struct.rtentry*) #1

declare dso_local i64 @INTF_ADJUST_MTU_FOR_CLAT46(%struct.ifnet*) #1

declare dso_local i64 @IN6_LINKMTU(%struct.ifnet*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
