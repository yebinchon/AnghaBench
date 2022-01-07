; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kperf/extr_kperf.c_kperf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@kperf_init.lck_grp_attr = internal global i32 0, align 4
@kperf_initted = common dso_local global i64 0, align 8
@kperf_lck_grp = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"kperf\00", align 1
@machine_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@VM_KERN_MEMORY_DIAG = common dso_local global i32 0, align 4
@kperf_tid_on_cpus = common dso_local global i32* null, align 8
@ENOMEM = common dso_local global i32 0, align 4
@intr_samplec = common dso_local global i32 0, align 4
@intr_samplev = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kperf_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %2, align 4
  %4 = load i64, i64* @kperf_initted, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %73

7:                                                ; preds = %0
  %8 = call i32 @lck_grp_attr_setdefault(i32* @kperf_init.lck_grp_attr)
  %9 = call i32 @lck_grp_init(i32* @kperf_lck_grp, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32* @kperf_init.lck_grp_attr)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @machine_info, i32 0, i32 0), align 4
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = zext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %16 = call i32* @kalloc_tag(i32 %14, i32 %15)
  store i32* %16, i32** @kperf_tid_on_cpus, align 8
  %17 = load i32*, i32** @kperf_tid_on_cpus, align 8
  %18 = icmp eq i32* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %7
  %20 = load i32, i32* @ENOMEM, align 4
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %7
  %22 = load i32*, i32** @kperf_tid_on_cpus, align 8
  %23 = load i32, i32* %2, align 4
  %24 = zext i32 %23 to i64
  %25 = mul i64 %24, 4
  %26 = trunc i64 %25 to i32
  %27 = call i32 @bzero(i32* %22, i32 %26)
  %28 = load i32, i32* %2, align 4
  store i32 %28, i32* @intr_samplec, align 4
  %29 = load i32, i32* %2, align 4
  %30 = zext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load i32, i32* @VM_KERN_MEMORY_DIAG, align 4
  %34 = call i32* @kalloc_tag(i32 %32, i32 %33)
  store i32* %34, i32** @intr_samplev, align 8
  %35 = load i32*, i32** @intr_samplev, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %21
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %3, align 4
  br label %51

39:                                               ; preds = %21
  %40 = load i32*, i32** @intr_samplev, align 8
  %41 = load i32, i32* %2, align 4
  %42 = zext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = call i32 @bzero(i32* %40, i32 %44)
  %46 = call i32 (...) @kperf_kdebug_init()
  store i32 %46, i32* %3, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %51

49:                                               ; preds = %39
  %50 = load i64, i64* @TRUE, align 8
  store i64 %50, i64* @kperf_initted, align 8
  store i32 0, i32* %1, align 4
  br label %73

51:                                               ; preds = %48, %37, %19
  %52 = load i32*, i32** @intr_samplev, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i32*, i32** @intr_samplev, align 8
  %56 = load i32, i32* %2, align 4
  %57 = zext i32 %56 to i64
  %58 = mul i64 %57, 4
  %59 = trunc i64 %58 to i32
  %60 = call i32 @kfree(i32* %55, i32 %59)
  store i32* null, i32** @intr_samplev, align 8
  store i32 0, i32* @intr_samplec, align 4
  br label %61

61:                                               ; preds = %54, %51
  %62 = load i32*, i32** @kperf_tid_on_cpus, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i32*, i32** @kperf_tid_on_cpus, align 8
  %66 = load i32, i32* %2, align 4
  %67 = zext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = call i32 @kfree(i32* %65, i32 %69)
  store i32* null, i32** @kperf_tid_on_cpus, align 8
  br label %71

71:                                               ; preds = %64, %61
  %72 = load i32, i32* %3, align 4
  store i32 %72, i32* %1, align 4
  br label %73

73:                                               ; preds = %71, %49, %6
  %74 = load i32, i32* %1, align 4
  ret i32 %74
}

declare dso_local i32 @lck_grp_attr_setdefault(i32*) #1

declare dso_local i32 @lck_grp_init(i32*, i8*, i32*) #1

declare dso_local i32* @kalloc_tag(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @kperf_kdebug_init(...) #1

declare dso_local i32 @kfree(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
