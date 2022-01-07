; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_associd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_associd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.so_aidreq64 = type { i32, i32 }
%union.anon = type { %struct.so_aidreq32 }
%struct.so_aidreq32 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.so_aidreq64*)* @inctl_associd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_associd(%struct.socket* %0, i32 %1, %struct.so_aidreq64* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.so_aidreq64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.so_aidreq64* %2, %struct.so_aidreq64** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = icmp ne %struct.socket* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %52 [
    i32 129, label %14
    i32 128, label %34
  ]

14:                                               ; preds = %3
  %15 = load %struct.so_aidreq64*, %struct.so_aidreq64** %6, align 8
  %16 = bitcast %union.anon* %8 to %struct.so_aidreq32*
  %17 = bitcast %struct.so_aidreq32* %16 to %struct.so_aidreq64*
  %18 = call i32 @bcopy(%struct.so_aidreq64* %15, %struct.so_aidreq64* %17, i32 8)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = bitcast %union.anon* %8 to %struct.so_aidreq32*
  %21 = getelementptr inbounds %struct.so_aidreq32, %struct.so_aidreq32* %20, i32 0, i32 1
  %22 = bitcast %union.anon* %8 to %struct.so_aidreq32*
  %23 = getelementptr inbounds %struct.so_aidreq32, %struct.so_aidreq32* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @in_getassocids(%struct.socket* %19, i32* %21, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %14
  %29 = bitcast %union.anon* %8 to %struct.so_aidreq32*
  %30 = bitcast %struct.so_aidreq32* %29 to %struct.so_aidreq64*
  %31 = load %struct.so_aidreq64*, %struct.so_aidreq64** %6, align 8
  %32 = call i32 @bcopy(%struct.so_aidreq64* %30, %struct.so_aidreq64* %31, i32 8)
  br label %33

33:                                               ; preds = %28, %14
  br label %54

34:                                               ; preds = %3
  %35 = load %struct.so_aidreq64*, %struct.so_aidreq64** %6, align 8
  %36 = bitcast %union.anon* %8 to %struct.so_aidreq64*
  %37 = call i32 @bcopy(%struct.so_aidreq64* %35, %struct.so_aidreq64* %36, i32 8)
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = bitcast %union.anon* %8 to %struct.so_aidreq64*
  %40 = getelementptr inbounds %struct.so_aidreq64, %struct.so_aidreq64* %39, i32 0, i32 1
  %41 = bitcast %union.anon* %8 to %struct.so_aidreq64*
  %42 = getelementptr inbounds %struct.so_aidreq64, %struct.so_aidreq64* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @in_getassocids(%struct.socket* %38, i32* %40, i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %34
  %48 = bitcast %union.anon* %8 to %struct.so_aidreq64*
  %49 = load %struct.so_aidreq64*, %struct.so_aidreq64** %6, align 8
  %50 = call i32 @bcopy(%struct.so_aidreq64* %48, %struct.so_aidreq64* %49, i32 8)
  br label %51

51:                                               ; preds = %47, %34
  br label %54

52:                                               ; preds = %3
  %53 = call i32 @VERIFY(i32 0)
  br label %54

54:                                               ; preds = %52, %51, %33
  %55 = load i32, i32* %7, align 4
  ret i32 %55
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(%struct.so_aidreq64*, %struct.so_aidreq64*, i32) #1

declare dso_local i32 @in_getassocids(%struct.socket*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
