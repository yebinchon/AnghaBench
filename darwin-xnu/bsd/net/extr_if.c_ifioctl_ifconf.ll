; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_ifconf.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_ifconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifconf64 = type { i32, i32 }
%struct.ifconf32 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ifconf64*)* @ifioctl_ifconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_ifconf(i32 %0, %struct.ifconf64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ifconf64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifconf32, align 4
  %7 = alloca %struct.ifconf64, align 4
  store i32 %0, i32* %3, align 4
  store %struct.ifconf64* %1, %struct.ifconf64** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %32 [
    i32 131, label %9
    i32 129, label %9
    i32 128, label %22
    i32 130, label %22
  ]

9:                                                ; preds = %2, %2
  %10 = load %struct.ifconf64*, %struct.ifconf64** %4, align 8
  %11 = bitcast %struct.ifconf32* %6 to %struct.ifconf64*
  %12 = call i32 @bcopy(%struct.ifconf64* %10, %struct.ifconf64* %11, i32 8)
  %13 = load i32, i32* %3, align 4
  %14 = getelementptr inbounds %struct.ifconf32, %struct.ifconf32* %6, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @CAST_USER_ADDR_T(i32 %15)
  %17 = getelementptr inbounds %struct.ifconf32, %struct.ifconf32* %6, i32 0, i32 0
  %18 = call i32 @ifconf(i32 %13, i32 %16, i32* %17)
  store i32 %18, i32* %5, align 4
  %19 = bitcast %struct.ifconf32* %6 to %struct.ifconf64*
  %20 = load %struct.ifconf64*, %struct.ifconf64** %4, align 8
  %21 = call i32 @bcopy(%struct.ifconf64* %19, %struct.ifconf64* %20, i32 8)
  br label %34

22:                                               ; preds = %2, %2
  %23 = load %struct.ifconf64*, %struct.ifconf64** %4, align 8
  %24 = call i32 @bcopy(%struct.ifconf64* %23, %struct.ifconf64* %7, i32 8)
  %25 = load i32, i32* %3, align 4
  %26 = getelementptr inbounds %struct.ifconf64, %struct.ifconf64* %7, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.ifconf64, %struct.ifconf64* %7, i32 0, i32 0
  %29 = call i32 @ifconf(i32 %25, i32 %27, i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.ifconf64*, %struct.ifconf64** %4, align 8
  %31 = call i32 @bcopy(%struct.ifconf64* %7, %struct.ifconf64* %30, i32 8)
  br label %34

32:                                               ; preds = %2
  %33 = call i32 @VERIFY(i32 0)
  br label %34

34:                                               ; preds = %32, %22, %9
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @bcopy(%struct.ifconf64*, %struct.ifconf64*, i32) #1

declare dso_local i32 @ifconf(i32, i32, i32*) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
