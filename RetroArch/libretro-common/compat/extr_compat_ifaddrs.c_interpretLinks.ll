; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_interpretLinks.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_interpretLinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.nlmsghdr*, %struct.TYPE_3__* }
%struct.nlmsghdr = type { i64, i64, i64 }
%struct.ifaddrs = type { i32 }

@NLMSG_DONE = common dso_local global i64 0, align 8
@RTM_NEWLINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_3__*, %struct.ifaddrs**)* @interpretLinks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @interpretLinks(i32 %0, %struct.TYPE_3__* %1, %struct.ifaddrs** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca %struct.ifaddrs**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.nlmsghdr*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store %struct.ifaddrs** %2, %struct.ifaddrs*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = call i64 (...) @getpid()
  store i64 %12, i64* %9, align 8
  br label %13

13:                                               ; preds = %70, %3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %15 = icmp ne %struct.TYPE_3__* %14, null
  br i1 %15, label %16, label %74

16:                                               ; preds = %13
  store %struct.nlmsghdr* null, %struct.nlmsghdr** %10, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %11, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load %struct.nlmsghdr*, %struct.nlmsghdr** %21, align 8
  store %struct.nlmsghdr* %22, %struct.nlmsghdr** %10, align 8
  br label %23

23:                                               ; preds = %65, %16
  %24 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = call i64 @NLMSG_OK(%struct.nlmsghdr* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %69

28:                                               ; preds = %23
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %30 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %28
  %35 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %36 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34, %28
  br label %65

42:                                               ; preds = %34
  %43 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %44 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NLMSG_DONE, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %69

49:                                               ; preds = %42
  %50 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %51 = getelementptr inbounds %struct.nlmsghdr, %struct.nlmsghdr* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @RTM_NEWLINK, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %49
  %56 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %57 = load %struct.ifaddrs**, %struct.ifaddrs*** %7, align 8
  %58 = call i32 @interpretLink(%struct.nlmsghdr* %56, %struct.ifaddrs** %57)
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  store i32 -1, i32* %4, align 4
  br label %76

61:                                               ; preds = %55
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %61, %49
  br label %65

65:                                               ; preds = %64, %41
  %66 = load %struct.nlmsghdr*, %struct.nlmsghdr** %10, align 8
  %67 = load i32, i32* %11, align 4
  %68 = call %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr* %66, i32 %67)
  store %struct.nlmsghdr* %68, %struct.nlmsghdr** %10, align 8
  br label %23

69:                                               ; preds = %48, %23
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  store %struct.TYPE_3__* %73, %struct.TYPE_3__** %6, align 8
  br label %13

74:                                               ; preds = %13
  %75 = load i32, i32* %8, align 4
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %74, %60
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @getpid(...) #1

declare dso_local i64 @NLMSG_OK(%struct.nlmsghdr*, i32) #1

declare dso_local i32 @interpretLink(%struct.nlmsghdr*, %struct.ifaddrs**) #1

declare dso_local %struct.nlmsghdr* @NLMSG_NEXT(%struct.nlmsghdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
