; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_getifaddrs.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/compat/extr_compat_ifaddrs.c_getifaddrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddrs = type { i32 }

@RTM_GETLINK = common dso_local global i32 0, align 4
@RTM_GETADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getifaddrs(%struct.ifaddrs** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifaddrs**, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ifaddrs** %0, %struct.ifaddrs*** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %9 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %10 = icmp ne %struct.ifaddrs** %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  store %struct.ifaddrs* null, %struct.ifaddrs** %13, align 8
  %14 = call i32 (...) @netlink_socket()
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 -1, i32* %2, align 4
  br label %61

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @RTM_GETLINK, align 4
  %21 = call i32* @getResultList(i32 %19, i32 %20)
  store i32* %21, i32** %6, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @close(i32 %25)
  store i32 -1, i32* %2, align 4
  br label %61

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @RTM_GETADDR, align 4
  %30 = call i32* @getResultList(i32 %28, i32 %29)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @close(i32 %34)
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @freeResultList(i32* %36)
  store i32 -1, i32* %2, align 4
  br label %61

38:                                               ; preds = %27
  %39 = load i32, i32* %4, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %42 = call i32 @interpretLinks(i32 %39, i32* %40, %struct.ifaddrs** %41)
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, -1
  br i1 %44, label %52, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %4, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.ifaddrs**, %struct.ifaddrs*** %3, align 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @interpretAddrs(i32 %46, i32* %47, %struct.ifaddrs** %48, i32 %49)
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %45, %38
  store i32 -1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %45
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @freeResultList(i32* %54)
  %56 = load i32*, i32** %7, align 8
  %57 = call i32 @freeResultList(i32* %56)
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @close(i32 %58)
  %60 = load i32, i32* %5, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %53, %33, %24, %17, %11
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @netlink_socket(...) #1

declare dso_local i32* @getResultList(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @freeResultList(i32*) #1

declare dso_local i32 @interpretLinks(i32, i32*, %struct.ifaddrs**) #1

declare dso_local i32 @interpretAddrs(i32, i32*, %struct.ifaddrs**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
