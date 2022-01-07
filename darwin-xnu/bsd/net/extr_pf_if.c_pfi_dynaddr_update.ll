; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_dynaddr_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfi_dynaddr = type { i32, i32, %struct.pfr_ktable*, %struct.pfi_kif* }
%struct.pfr_ktable = type { i64 }
%struct.pfi_kif = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"pfi_dynaddr_update\00", align 1
@pfi_update = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_dynaddr_update(%struct.pfi_dynaddr* %0) #0 {
  %2 = alloca %struct.pfi_dynaddr*, align 8
  %3 = alloca %struct.pfi_kif*, align 8
  %4 = alloca %struct.pfr_ktable*, align 8
  store %struct.pfi_dynaddr* %0, %struct.pfi_dynaddr** %2, align 8
  %5 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %6 = icmp eq %struct.pfi_dynaddr* %5, null
  br i1 %6, label %17, label %7

7:                                                ; preds = %1
  %8 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %9 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %8, i32 0, i32 3
  %10 = load %struct.pfi_kif*, %struct.pfi_kif** %9, align 8
  %11 = icmp eq %struct.pfi_kif* %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %14 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %13, i32 0, i32 2
  %15 = load %struct.pfr_ktable*, %struct.pfr_ktable** %14, align 8
  %16 = icmp eq %struct.pfr_ktable* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %12, %7, %1
  %18 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %12
  %20 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %21 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %20, i32 0, i32 3
  %22 = load %struct.pfi_kif*, %struct.pfi_kif** %21, align 8
  store %struct.pfi_kif* %22, %struct.pfi_kif** %3, align 8
  %23 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %24 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %23, i32 0, i32 2
  %25 = load %struct.pfr_ktable*, %struct.pfr_ktable** %24, align 8
  store %struct.pfr_ktable* %25, %struct.pfr_ktable** %4, align 8
  %26 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %27 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @pfi_update, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %44

31:                                               ; preds = %19
  %32 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %33 = load %struct.pfi_kif*, %struct.pfi_kif** %3, align 8
  %34 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %35 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %38 = getelementptr inbounds %struct.pfi_dynaddr, %struct.pfi_dynaddr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pfi_table_update(%struct.pfr_ktable* %32, %struct.pfi_kif* %33, i32 %36, i32 %39)
  %41 = load i64, i64* @pfi_update, align 8
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %31, %19
  %45 = load %struct.pfr_ktable*, %struct.pfr_ktable** %4, align 8
  %46 = load %struct.pfi_dynaddr*, %struct.pfi_dynaddr** %2, align 8
  %47 = call i32 @pfr_dynaddr_update(%struct.pfr_ktable* %45, %struct.pfi_dynaddr* %46)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pfi_table_update(%struct.pfr_ktable*, %struct.pfi_kif*, i32, i32) #1

declare dso_local i32 @pfr_dynaddr_update(%struct.pfr_ktable*, %struct.pfi_dynaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
