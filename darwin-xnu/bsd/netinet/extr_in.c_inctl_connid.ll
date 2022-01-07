; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_connid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in.c_inctl_connid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.so_cidreq64 = type { i32, i32, i32 }
%union.anon = type { %struct.so_cidreq32 }
%struct.so_cidreq32 = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, i32, %struct.so_cidreq64*)* @inctl_connid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inctl_connid(%struct.socket* %0, i32 %1, %struct.so_cidreq64* %2) #0 {
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.so_cidreq64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.anon, align 4
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.so_cidreq64* %2, %struct.so_cidreq64** %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.socket*, %struct.socket** %4, align 8
  %10 = icmp ne %struct.socket* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %58 [
    i32 129, label %14
    i32 128, label %37
  ]

14:                                               ; preds = %3
  %15 = load %struct.so_cidreq64*, %struct.so_cidreq64** %6, align 8
  %16 = bitcast %union.anon* %8 to %struct.so_cidreq32*
  %17 = bitcast %struct.so_cidreq32* %16 to %struct.so_cidreq64*
  %18 = call i32 @bcopy(%struct.so_cidreq64* %15, %struct.so_cidreq64* %17, i32 12)
  %19 = load %struct.socket*, %struct.socket** %4, align 8
  %20 = bitcast %union.anon* %8 to %struct.so_cidreq32*
  %21 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = bitcast %union.anon* %8 to %struct.so_cidreq32*
  %24 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %23, i32 0, i32 1
  %25 = bitcast %union.anon* %8 to %struct.so_cidreq32*
  %26 = getelementptr inbounds %struct.so_cidreq32, %struct.so_cidreq32* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @in_getconnids(%struct.socket* %19, i32 %22, i32* %24, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %14
  %32 = bitcast %union.anon* %8 to %struct.so_cidreq32*
  %33 = bitcast %struct.so_cidreq32* %32 to %struct.so_cidreq64*
  %34 = load %struct.so_cidreq64*, %struct.so_cidreq64** %6, align 8
  %35 = call i32 @bcopy(%struct.so_cidreq64* %33, %struct.so_cidreq64* %34, i32 12)
  br label %36

36:                                               ; preds = %31, %14
  br label %60

37:                                               ; preds = %3
  %38 = load %struct.so_cidreq64*, %struct.so_cidreq64** %6, align 8
  %39 = bitcast %union.anon* %8 to %struct.so_cidreq64*
  %40 = call i32 @bcopy(%struct.so_cidreq64* %38, %struct.so_cidreq64* %39, i32 12)
  %41 = load %struct.socket*, %struct.socket** %4, align 8
  %42 = bitcast %union.anon* %8 to %struct.so_cidreq64*
  %43 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = bitcast %union.anon* %8 to %struct.so_cidreq64*
  %46 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %45, i32 0, i32 1
  %47 = bitcast %union.anon* %8 to %struct.so_cidreq64*
  %48 = getelementptr inbounds %struct.so_cidreq64, %struct.so_cidreq64* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @in_getconnids(%struct.socket* %41, i32 %44, i32* %46, i32 %49)
  store i32 %50, i32* %7, align 4
  %51 = load i32, i32* %7, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = bitcast %union.anon* %8 to %struct.so_cidreq64*
  %55 = load %struct.so_cidreq64*, %struct.so_cidreq64** %6, align 8
  %56 = call i32 @bcopy(%struct.so_cidreq64* %54, %struct.so_cidreq64* %55, i32 12)
  br label %57

57:                                               ; preds = %53, %37
  br label %60

58:                                               ; preds = %3
  %59 = call i32 @VERIFY(i32 0)
  br label %60

60:                                               ; preds = %58, %57, %36
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bcopy(%struct.so_cidreq64*, %struct.so_cidreq64*, i32) #1

declare dso_local i32 @in_getconnids(%struct.socket*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
