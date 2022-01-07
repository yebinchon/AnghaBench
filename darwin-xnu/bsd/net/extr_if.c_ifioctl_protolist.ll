; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_protolist.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_protolist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }
%struct.if_protolistreq64 = type { i32, i32, i32 }
%struct.if_protolistreq32 = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i32, %struct.if_protolistreq64*)* @ifioctl_protolist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_protolist(%struct.ifnet* %0, i32 %1, %struct.if_protolistreq64* %2) #0 {
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_protolistreq64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.if_protolistreq32, align 4
  %9 = alloca %struct.if_protolistreq64, align 4
  store %struct.ifnet* %0, %struct.ifnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.if_protolistreq64* %2, %struct.if_protolistreq64** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %46 [
    i32 129, label %11
    i32 128, label %30
  ]

11:                                               ; preds = %3
  %12 = load %struct.if_protolistreq64*, %struct.if_protolistreq64** %6, align 8
  %13 = bitcast %struct.if_protolistreq32* %8 to %struct.if_protolistreq64*
  %14 = call i32 @bcopy(%struct.if_protolistreq64* %12, %struct.if_protolistreq64* %13, i32 12)
  %15 = getelementptr inbounds %struct.if_protolistreq32, %struct.if_protolistreq32* %8, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %7, align 4
  br label %48

20:                                               ; preds = %11
  %21 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %22 = getelementptr inbounds %struct.if_protolistreq32, %struct.if_protolistreq32* %8, i32 0, i32 1
  %23 = getelementptr inbounds %struct.if_protolistreq32, %struct.if_protolistreq32* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CAST_USER_ADDR_T(i32 %24)
  %26 = call i32 @ifioctl_get_protolist(%struct.ifnet* %21, i32* %22, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = bitcast %struct.if_protolistreq32* %8 to %struct.if_protolistreq64*
  %28 = load %struct.if_protolistreq64*, %struct.if_protolistreq64** %6, align 8
  %29 = call i32 @bcopy(%struct.if_protolistreq64* %27, %struct.if_protolistreq64* %28, i32 12)
  br label %48

30:                                               ; preds = %3
  %31 = load %struct.if_protolistreq64*, %struct.if_protolistreq64** %6, align 8
  %32 = call i32 @bcopy(%struct.if_protolistreq64* %31, %struct.if_protolistreq64* %9, i32 12)
  %33 = getelementptr inbounds %struct.if_protolistreq64, %struct.if_protolistreq64* %9, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %7, align 4
  br label %48

38:                                               ; preds = %30
  %39 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %40 = getelementptr inbounds %struct.if_protolistreq64, %struct.if_protolistreq64* %9, i32 0, i32 1
  %41 = getelementptr inbounds %struct.if_protolistreq64, %struct.if_protolistreq64* %9, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ifioctl_get_protolist(%struct.ifnet* %39, i32* %40, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.if_protolistreq64*, %struct.if_protolistreq64** %6, align 8
  %45 = call i32 @bcopy(%struct.if_protolistreq64* %9, %struct.if_protolistreq64* %44, i32 12)
  br label %48

46:                                               ; preds = %3
  %47 = call i32 @VERIFY(i32 0)
  br label %48

48:                                               ; preds = %46, %38, %36, %20, %18
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

declare dso_local i32 @bcopy(%struct.if_protolistreq64*, %struct.if_protolistreq64*, i32) #1

declare dso_local i32 @ifioctl_get_protolist(%struct.ifnet*, i32*, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
