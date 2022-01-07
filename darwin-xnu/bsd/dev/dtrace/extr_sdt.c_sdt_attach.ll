; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"sdt\00", align 1
@S_IFCHR = common dso_local global i32 0, align 4
@DDI_PSEUDO = common dso_local global i32 0, align 4
@DDI_FAILURE = common dso_local global i64 0, align 8
@CE_NOTE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"/dev/sdt couldn't create minor node\00", align 1
@sdt_probetab_size = common dso_local global i32 0, align 4
@SDT_PROBETAB_SIZE = common dso_local global i32 0, align 4
@sdt_probetab_mask = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@sdt_probetab = common dso_local global i32 0, align 4
@sdt_invop = common dso_local global i32 0, align 4
@sdt_providers = common dso_local global %struct.TYPE_4__* null, align 8
@DTRACE_PRIV_KERNEL = common dso_local global i32 0, align 4
@sdt_pops = common dso_local global i32 0, align 4
@CE_WARN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"failed to register sdt provider %s\00", align 1
@DDI_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @sdt_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdt_attach(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %3, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @S_IFCHR, align 4
  %7 = load i32, i32* @DDI_PSEUDO, align 4
  %8 = call i64 @ddi_create_minor_node(i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6, i32 0, i32 %7, i32 0)
  %9 = load i64, i64* @DDI_FAILURE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load i32, i32* @CE_NOTE, align 4
  %13 = call i32 (i32, i8*, ...) @cmn_err(i32 %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @ddi_remove_minor_node(i32* %14, i32* null)
  %16 = load i64, i64* @DDI_FAILURE, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %65

18:                                               ; preds = %1
  %19 = load i32, i32* @sdt_probetab_size, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* @SDT_PROBETAB_SIZE, align 4
  store i32 %22, i32* @sdt_probetab_size, align 4
  br label %23

23:                                               ; preds = %21, %18
  %24 = load i32, i32* @sdt_probetab_size, align 4
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* @sdt_probetab_mask, align 4
  %26 = load i32, i32* @sdt_probetab_size, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @KM_SLEEP, align 4
  %31 = call i32 @kmem_zalloc(i32 %29, i32 %30)
  store i32 %31, i32* @sdt_probetab, align 4
  %32 = load i32, i32* @sdt_invop, align 4
  %33 = call i32 @dtrace_invop_add(i32 %32)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @sdt_providers, align 8
  store %struct.TYPE_4__* %34, %struct.TYPE_4__** %4, align 8
  br label %35

35:                                               ; preds = %60, %23
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %63

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @DTRACE_PRIV_KERNEL, align 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i64 @dtrace_register(i32* %43, i32 %46, i32 %47, i32* null, i32* @sdt_pops, %struct.TYPE_4__* %48, i32* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %40
  %54 = load i32, i32* @CE_WARN, align 4
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 (i32, i8*, ...) @cmn_err(i32 %54, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32* %57)
  br label %59

59:                                               ; preds = %53, %40
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 1
  store %struct.TYPE_4__* %62, %struct.TYPE_4__** %4, align 8
  br label %35

63:                                               ; preds = %35
  %64 = load i32, i32* @DDI_SUCCESS, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %11
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i64 @ddi_create_minor_node(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @cmn_err(i32, i8*, ...) #1

declare dso_local i32 @ddi_remove_minor_node(i32*, i32*) #1

declare dso_local i32 @kmem_zalloc(i32, i32) #1

declare dso_local i32 @dtrace_invop_add(i32) #1

declare dso_local i64 @dtrace_register(i32*, i32, i32, i32*, i32*, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
