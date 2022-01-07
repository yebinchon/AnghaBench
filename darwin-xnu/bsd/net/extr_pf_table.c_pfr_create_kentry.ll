; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_create_kentry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_create_kentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_kentry = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.pfr_addr = type { i64, i32, i32, i32, i32 }

@pfr_kentry_pl2 = common dso_local global i32 0, align 4
@PR_WAITOK = common dso_local global i32 0, align 4
@pfr_kentry_pl = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pfr_kentry* (%struct.pfr_addr*, i32)* @pfr_create_kentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pfr_kentry* @pfr_create_kentry(%struct.pfr_addr* %0, i32 %1) #0 {
  %3 = alloca %struct.pfr_kentry*, align 8
  %4 = alloca %struct.pfr_addr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pfr_kentry*, align 8
  store %struct.pfr_addr* %0, %struct.pfr_addr** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load i32, i32* @PR_WAITOK, align 4
  %11 = call %struct.pfr_kentry* @pool_get(i32* @pfr_kentry_pl2, i32 %10)
  store %struct.pfr_kentry* %11, %struct.pfr_kentry** %6, align 8
  br label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @PR_WAITOK, align 4
  %14 = call %struct.pfr_kentry* @pool_get(i32* @pfr_kentry_pl, i32 %13)
  store %struct.pfr_kentry* %14, %struct.pfr_kentry** %6, align 8
  br label %15

15:                                               ; preds = %12, %9
  %16 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %17 = icmp eq %struct.pfr_kentry* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store %struct.pfr_kentry* null, %struct.pfr_kentry** %3, align 8
  br label %72

19:                                               ; preds = %15
  %20 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %21 = call i32 @bzero(%struct.pfr_kentry* %20, i32 32)
  %22 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %23 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @AF_INET, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %29 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %33 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @FILLIN_SIN(i32 %31, i32 %34)
  br label %52

36:                                               ; preds = %19
  %37 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %38 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @AF_INET6, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %44 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %48 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @FILLIN_SIN6(i32 %46, i32 %49)
  br label %51

51:                                               ; preds = %42, %36
  br label %52

52:                                               ; preds = %51, %27
  %53 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %54 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %57 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %59 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %62 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pfr_addr*, %struct.pfr_addr** %4, align 8
  %64 = getelementptr inbounds %struct.pfr_addr, %struct.pfr_addr* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %67 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %70 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  store %struct.pfr_kentry* %71, %struct.pfr_kentry** %3, align 8
  br label %72

72:                                               ; preds = %52, %18
  %73 = load %struct.pfr_kentry*, %struct.pfr_kentry** %3, align 8
  ret %struct.pfr_kentry* %73
}

declare dso_local %struct.pfr_kentry* @pool_get(i32*, i32) #1

declare dso_local i32 @bzero(%struct.pfr_kentry*, i32) #1

declare dso_local i32 @FILLIN_SIN(i32, i32) #1

declare dso_local i32 @FILLIN_SIN6(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
