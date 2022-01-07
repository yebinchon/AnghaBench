; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_set_tbi.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_set_tbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"tbi\00", align 1
@TBI_USER = common dso_local global i32 0, align 4
@user_tbi = common dso_local global i32 0, align 4
@TCR_TBI0_TOPBYTE_IGNORED = common dso_local global i32 0, align 4
@TBI_KERNEL = common dso_local global i32 0, align 4
@TCR_TBI1_TOPBYTE_IGNORED = common dso_local global i32 0, align 4
@sysreg_restore = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_tbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_tbi() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = call i64 @PE_parse_boot_argn(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %3, i32 4)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @TBI_USER, align 4
  %9 = and i32 %7, %8
  %10 = load i32, i32* @TBI_USER, align 4
  %11 = icmp eq i32 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* @user_tbi, align 4
  br label %13

13:                                               ; preds = %6, %0
  %14 = call i32 (...) @get_tcr()
  store i32 %14, i32* %2, align 4
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @user_tbi, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = load i32, i32* @TCR_TBI0_TOPBYTE_IGNORED, align 4
  br label %20

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i32 [ %18, %17 ], [ 0, %19 ]
  %22 = load i32, i32* %2, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TBI_KERNEL, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* @TCR_TBI1_TOPBYTE_IGNORED, align 4
  br label %31

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %30 ]
  %33 = load i32, i32* %2, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %2, align 4
  %35 = load i32, i32* %1, align 4
  %36 = load i32, i32* %2, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @set_tcr(i32 %39)
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sysreg_restore, i32 0, i32 0), align 4
  br label %42

42:                                               ; preds = %38, %31
  ret void
}

declare dso_local i64 @PE_parse_boot_argn(i8*, i32*, i32) #1

declare dso_local i32 @get_tcr(...) #1

declare dso_local i32 @set_tcr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
