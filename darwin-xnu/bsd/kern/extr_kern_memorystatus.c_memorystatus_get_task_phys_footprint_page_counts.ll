; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_task_phys_footprint_page_counts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_memorystatus.c_memorystatus_get_task_phys_footprint_page_counts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE_64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*)* @memorystatus_get_task_phys_footprint_page_counts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @memorystatus_get_task_phys_footprint_page_counts(i32 %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store i32* %2, i32** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  store i32* %8, i32** %18, align 8
  %19 = load i32, i32* %10, align 4
  %20 = call i32 @assert(i32 %19)
  %21 = load i32*, i32** %11, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %9
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @get_task_internal(i32 %24)
  %26 = load i32, i32* @PAGE_SIZE_64, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32*, i32** %11, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %23, %9
  %30 = load i32*, i32** %12, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @get_task_internal_compressed(i32 %33)
  %35 = load i32, i32* @PAGE_SIZE_64, align 4
  %36 = sdiv i32 %34, %35
  %37 = load i32*, i32** %12, align 8
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32*, i32** %13, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %38
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @get_task_purgeable_nonvolatile(i32 %42)
  %44 = load i32, i32* @PAGE_SIZE_64, align 4
  %45 = sdiv i32 %43, %44
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %41, %38
  %48 = load i32*, i32** %14, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = call i32 @get_task_purgeable_nonvolatile_compressed(i32 %51)
  %53 = load i32, i32* @PAGE_SIZE_64, align 4
  %54 = sdiv i32 %52, %53
  %55 = load i32*, i32** %14, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %50, %47
  %57 = load i32*, i32** %15, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @get_task_alternate_accounting(i32 %60)
  %62 = load i32, i32* @PAGE_SIZE_64, align 4
  %63 = sdiv i32 %61, %62
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %59, %56
  %66 = load i32*, i32** %16, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %74

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @get_task_alternate_accounting_compressed(i32 %69)
  %71 = load i32, i32* @PAGE_SIZE_64, align 4
  %72 = sdiv i32 %70, %71
  %73 = load i32*, i32** %16, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %68, %65
  %75 = load i32*, i32** %17, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %83

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @get_task_iokit_mapped(i32 %78)
  %80 = load i32, i32* @PAGE_SIZE_64, align 4
  %81 = sdiv i32 %79, %80
  %82 = load i32*, i32** %17, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %77, %74
  %84 = load i32*, i32** %18, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %92

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @get_task_page_table(i32 %87)
  %89 = load i32, i32* @PAGE_SIZE_64, align 4
  %90 = sdiv i32 %88, %89
  %91 = load i32*, i32** %18, align 8
  store i32 %90, i32* %91, align 4
  br label %92

92:                                               ; preds = %86, %83
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @get_task_internal(i32) #1

declare dso_local i32 @get_task_internal_compressed(i32) #1

declare dso_local i32 @get_task_purgeable_nonvolatile(i32) #1

declare dso_local i32 @get_task_purgeable_nonvolatile_compressed(i32) #1

declare dso_local i32 @get_task_alternate_accounting(i32) #1

declare dso_local i32 @get_task_alternate_accounting_compressed(i32) #1

declare dso_local i32 @get_task_iokit_mapped(i32) #1

declare dso_local i32 @get_task_page_table(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
