; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_table_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_if.c_pfi_table_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfr_ktable = type { i8*, i32 }
%struct.pfi_kif = type { i32* }

@pfi_buffer_cnt = common dso_local global i32 0, align 4
@pfi_buffer = common dso_local global i32 0, align 4
@PFR_TFLAG_ALLMASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"pfi_table_update: cannot set %d new addresses into table %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pfi_table_update(%struct.pfr_ktable* %0, %struct.pfi_kif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pfr_ktable*, align 8
  %6 = alloca %struct.pfi_kif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %5, align 8
  store %struct.pfi_kif* %1, %struct.pfi_kif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* @pfi_buffer_cnt, align 4
  %11 = load %struct.pfi_kif*, %struct.pfi_kif** %6, align 8
  %12 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %4
  %16 = load %struct.pfi_kif*, %struct.pfi_kif** %6, align 8
  %17 = getelementptr inbounds %struct.pfi_kif, %struct.pfi_kif* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @pfi_instance_add(i32* %18, i32 %19, i32 %20)
  br label %22

22:                                               ; preds = %15, %4
  %23 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %24 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %23, i32 0, i32 1
  %25 = load i32, i32* @pfi_buffer, align 4
  %26 = call i32 @CAST_USER_ADDR_T(i32 %25)
  %27 = load i32, i32* @pfi_buffer_cnt, align 4
  %28 = load i32, i32* @PFR_TFLAG_ALLMASK, align 4
  %29 = call i32 @pfr_set_addrs(i32* %24, i32 %26, i32 %27, i32* %10, i32* null, i32* null, i32* null, i32 0, i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @pfi_buffer_cnt, align 4
  %33 = load %struct.pfr_ktable*, %struct.pfr_ktable** %5, align 8
  %34 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %32, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %22
  ret void
}

declare dso_local i32 @pfi_instance_add(i32*, i32, i32) #1

declare dso_local i32 @pfr_set_addrs(i32*, i32, i32, i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i32) #1

declare dso_local i32 @printf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
