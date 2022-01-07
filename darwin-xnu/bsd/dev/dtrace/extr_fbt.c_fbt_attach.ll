; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fbt_probetab_size = common dso_local global i32 0, align 4
@FBT_PROBETAB_SIZE = common dso_local global i32 0, align 4
@fbt_probetab_mask = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@fbt_probetab = common dso_local global i32 0, align 4
@fbt_invop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fbt\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@DDI_PSEUDO = common dso_local global i32 0, align 4
@DDI_FAILURE = common dso_local global i64 0, align 8
@fbt_attr = common dso_local global i32 0, align 4
@DTRACE_PRIV_KERNEL = common dso_local global i32 0, align 4
@fbt_pops = common dso_local global i32 0, align 4
@fbt_id = common dso_local global i32 0, align 4
@DDI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @fbt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fbt_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  %4 = load i32, i32* @fbt_probetab_size, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* @FBT_PROBETAB_SIZE, align 4
  store i32 %7, i32* @fbt_probetab_size, align 4
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @fbt_probetab_size, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* @fbt_probetab_mask, align 4
  %11 = load i32, i32* @fbt_probetab_size, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 8
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @KM_SLEEP, align 4
  %16 = call i32 @kmem_zalloc(i32 %14, i32 %15)
  store i32 %16, i32* @fbt_probetab, align 4
  %17 = load i32, i32* @fbt_invop, align 4
  %18 = call i32 @dtrace_invop_add(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = load i32, i32* @S_IFCHR, align 4
  %21 = load i32, i32* @DDI_PSEUDO, align 4
  %22 = call i64 @ddi_create_minor_node(i32* %19, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %20, i32 0, i32 %21, i32 0)
  %23 = load i64, i64* @DDI_FAILURE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %8
  %26 = load i32, i32* @DTRACE_PRIV_KERNEL, align 4
  %27 = call i64 @dtrace_register(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* @fbt_attr, i32 %26, i32* null, i32* @fbt_pops, i32* null, i32* @fbt_id)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %25, %8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @fbt_cleanup(i32* %30)
  %32 = load i64, i64* @DDI_FAILURE, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %2, align 4
  br label %36

34:                                               ; preds = %25
  %35 = load i32, i32* @DDI_SUCCESS, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %29
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dtrace_invop_add(i32) #1

declare dso_local i64 @ddi_create_minor_node(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i64 @dtrace_register(i8*, i32*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @fbt_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
