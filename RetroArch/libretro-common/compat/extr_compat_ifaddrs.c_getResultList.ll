; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_getResultList.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_getResultList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_5__* }
%struct.nlmsghdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_5__* (i32, i32)* @getResultList to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_5__* @getResultList(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_5__*, align 8
  %11 = alloca %struct.nlmsghdr*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @netlink_send(i32 %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %51

17:                                               ; preds = %2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %7, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  br i1 %21, label %22, label %46

22:                                               ; preds = %18
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %10, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call %struct.nlmsghdr* @getNetlinkResponse(i32 %23, i32* %8, i32* %9)
  store %struct.nlmsghdr* %24, %struct.nlmsghdr** %11, align 8
  %25 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %26 = icmp ne %struct.nlmsghdr* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %48

28:                                               ; preds = %22
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.TYPE_5__* @newListItem(%struct.nlmsghdr* %29, i32 %30)
  store %struct.TYPE_5__* %31, %struct.TYPE_5__** %10, align 8
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %48

35:                                               ; preds = %28
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = icmp ne %struct.TYPE_5__* %36, null
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %39, %struct.TYPE_5__** %6, align 8
  br label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store %struct.TYPE_5__* %41, %struct.TYPE_5__** %43, align 8
  br label %44

44:                                               ; preds = %40, %38
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %7, align 8
  br label %18

46:                                               ; preds = %18
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  store %struct.TYPE_5__* %47, %struct.TYPE_5__** %3, align 8
  br label %51

48:                                               ; preds = %34, %27
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = call i32 @freeResultList(%struct.TYPE_5__* %49)
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %3, align 8
  br label %51

51:                                               ; preds = %48, %46, %16
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  ret %struct.TYPE_5__* %52
}

declare dso_local i64 @netlink_send(i32, i32) #1

declare dso_local %struct.nlmsghdr* @getNetlinkResponse(i32, i32*, i32*) #1

declare dso_local %struct.TYPE_5__* @newListItem(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @freeResultList(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
