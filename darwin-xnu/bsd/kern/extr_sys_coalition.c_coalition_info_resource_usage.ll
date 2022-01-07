; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_info_resource_usage.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_coalition.c_coalition_info_resource_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coalition_resource_usage = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @coalition_info_resource_usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coalition_info_resource_usage(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.coalition_resource_usage, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.coalition_resource_usage* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 4, i1 false)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @coalition_resource_usage_internal(i32 %11, %struct.coalition_resource_usage* %9)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %19 [
    i32 130, label %14
    i32 129, label %16
    i32 128, label %18
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %26

16:                                               ; preds = %3
  %17 = load i32, i32* @ENOMEM, align 4
  store i32 %17, i32* %4, align 4
  br label %26

18:                                               ; preds = %3
  br label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EIO, align 4
  store i32 %20, i32* %4, align 4
  br label %26

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @MIN(i32 %23, i32 4)
  %25 = call i32 @copyout(%struct.coalition_resource_usage* %9, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %21, %19, %16, %14
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @coalition_resource_usage_internal(i32, %struct.coalition_resource_usage*) #2

declare dso_local i32 @copyout(%struct.coalition_resource_usage*, i32, i32) #2

declare dso_local i32 @MIN(i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
