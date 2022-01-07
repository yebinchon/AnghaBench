; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_selscan.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/lwip/extr_network.c_net_selscan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsocket = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32*, i32*, i32*)* @net_selscan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @net_selscan(i64 %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.netsocket*, align 8
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %10, align 8
  %15 = call i32 @FD_ZERO(i32* %11)
  %16 = call i32 @FD_ZERO(i32* %12)
  %17 = call i32 @FD_ZERO(i32* %13)
  store i64 0, i64* %9, align 8
  br label %18

18:                                               ; preds = %70, %4
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %73

22:                                               ; preds = %18
  %23 = load i64, i64* %9, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call i64 @FD_ISSET(i64 %23, i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %48

27:                                               ; preds = %22
  %28 = load i64, i64* %9, align 8
  %29 = call %struct.netsocket* @get_socket(i64 %28)
  store %struct.netsocket* %29, %struct.netsocket** %14, align 8
  %30 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %31 = icmp ne %struct.netsocket* %30, null
  br i1 %31, label %32, label %47

32:                                               ; preds = %27
  %33 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %34 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %39 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37, %32
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @FD_SET(i64 %43, i32* %11)
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %42, %37, %27
  br label %48

48:                                               ; preds = %47, %22
  %49 = load i64, i64* %9, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @FD_ISSET(i64 %49, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %48
  %54 = load i64, i64* %9, align 8
  %55 = call %struct.netsocket* @get_socket(i64 %54)
  store %struct.netsocket* %55, %struct.netsocket** %14, align 8
  %56 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %57 = icmp ne %struct.netsocket* %56, null
  br i1 %57, label %58, label %68

58:                                               ; preds = %53
  %59 = load %struct.netsocket*, %struct.netsocket** %14, align 8
  %60 = getelementptr inbounds %struct.netsocket, %struct.netsocket* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @FD_SET(i64 %64, i32* %12)
  %66 = load i64, i64* %10, align 8
  %67 = add nsw i64 %66, 1
  store i64 %67, i64* %10, align 8
  br label %68

68:                                               ; preds = %63, %58, %53
  br label %69

69:                                               ; preds = %68, %48
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %9, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %9, align 8
  br label %18

73:                                               ; preds = %18
  %74 = load i32, i32* %11, align 4
  %75 = load i32*, i32** %6, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32, i32* %12, align 4
  %77 = load i32*, i32** %7, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %8, align 8
  %79 = call i32 @FD_ZERO(i32* %78)
  %80 = load i64, i64* %10, align 8
  ret i64 %80
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local %struct.netsocket* @get_socket(i64) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
