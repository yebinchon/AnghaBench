; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nstat_counts = type { i64, i64, i32, i32, i32, i32 }
%struct.nstat_ifnet_cookie = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.nstat_counts*, i32*)* @nstat_ifnet_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_ifnet_counts(i64 %0, %struct.nstat_counts* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.nstat_counts*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.nstat_ifnet_cookie*, align 8
  %9 = alloca %struct.ifnet*, align 8
  store i64 %0, i64* %5, align 8
  store %struct.nstat_counts* %1, %struct.nstat_counts** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.nstat_ifnet_cookie*
  store %struct.nstat_ifnet_cookie* %11, %struct.nstat_ifnet_cookie** %8, align 8
  %12 = load %struct.nstat_ifnet_cookie*, %struct.nstat_ifnet_cookie** %8, align 8
  %13 = getelementptr inbounds %struct.nstat_ifnet_cookie, %struct.nstat_ifnet_cookie* %12, i32 0, i32 0
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %9, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %3
  %20 = load i64, i64* %5, align 8
  %21 = call i64 @nstat_ifnet_gone(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i32*, i32** %7, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %57

30:                                               ; preds = %19
  %31 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %32 = call i32 @bzero(%struct.nstat_counts* %31, i32 32)
  %33 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %34 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %37 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %39 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %42 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %44 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %47 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  %49 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %52 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  %53 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %54 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %53, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = load %struct.nstat_counts*, %struct.nstat_counts** %6, align 8
  %56 = getelementptr inbounds %struct.nstat_counts, %struct.nstat_counts* %55, i32 0, i32 1
  store i64 0, i64* %56, align 8
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %30, %28
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @nstat_ifnet_gone(i64) #1

declare dso_local i32 @bzero(%struct.nstat_counts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
