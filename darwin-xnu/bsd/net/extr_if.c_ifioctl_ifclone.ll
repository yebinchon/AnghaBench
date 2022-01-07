; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_ifclone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_ifioctl_ifclone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clonereq64 = type { i32, i32, i32 }
%struct.if_clonereq32 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.if_clonereq64*)* @ifioctl_ifclone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifioctl_ifclone(i32 %0, %struct.if_clonereq64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.if_clonereq64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.if_clonereq32, align 4
  %7 = alloca %struct.if_clonereq64, align 4
  store i32 %0, i32* %3, align 4
  store %struct.if_clonereq64* %1, %struct.if_clonereq64** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  switch i32 %8, label %34 [
    i32 129, label %9
    i32 128, label %23
  ]

9:                                                ; preds = %2
  %10 = load %struct.if_clonereq64*, %struct.if_clonereq64** %4, align 8
  %11 = bitcast %struct.if_clonereq32* %6 to %struct.if_clonereq64*
  %12 = call i32 @bcopy(%struct.if_clonereq64* %10, %struct.if_clonereq64* %11, i32 12)
  %13 = getelementptr inbounds %struct.if_clonereq32, %struct.if_clonereq32* %6, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = getelementptr inbounds %struct.if_clonereq32, %struct.if_clonereq32* %6, i32 0, i32 1
  %16 = getelementptr inbounds %struct.if_clonereq32, %struct.if_clonereq32* %6, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @CAST_USER_ADDR_T(i32 %17)
  %19 = call i32 @if_clone_list(i32 %14, i32* %15, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = bitcast %struct.if_clonereq32* %6 to %struct.if_clonereq64*
  %21 = load %struct.if_clonereq64*, %struct.if_clonereq64** %4, align 8
  %22 = call i32 @bcopy(%struct.if_clonereq64* %20, %struct.if_clonereq64* %21, i32 12)
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.if_clonereq64*, %struct.if_clonereq64** %4, align 8
  %25 = call i32 @bcopy(%struct.if_clonereq64* %24, %struct.if_clonereq64* %7, i32 12)
  %26 = getelementptr inbounds %struct.if_clonereq64, %struct.if_clonereq64* %7, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.if_clonereq64, %struct.if_clonereq64* %7, i32 0, i32 1
  %29 = getelementptr inbounds %struct.if_clonereq64, %struct.if_clonereq64* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @if_clone_list(i32 %27, i32* %28, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load %struct.if_clonereq64*, %struct.if_clonereq64** %4, align 8
  %33 = call i32 @bcopy(%struct.if_clonereq64* %7, %struct.if_clonereq64* %32, i32 12)
  br label %36

34:                                               ; preds = %2
  %35 = call i32 @VERIFY(i32 0)
  br label %36

36:                                               ; preds = %34, %23, %9
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @bcopy(%struct.if_clonereq64*, %struct.if_clonereq64*, i32) #1

declare dso_local i32 @if_clone_list(i32, i32*, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @VERIFY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
