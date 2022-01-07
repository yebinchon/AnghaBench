; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/arm/extr_kdp_vm.c_kdp_machine_vm_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/ml/arm/extr_kdp_vm.c_kdp_machine_vm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_machine_vm_write(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %11, align 4
  br label %18

18:                                               ; preds = %72, %3
  %19 = load i32, i32* %11, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %94

21:                                               ; preds = %18
  %22 = load i32, i32* @kernel_pmap, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @kdp_vtophys(i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %95

27:                                               ; preds = %21
  %28 = load i32, i32* @kernel_pmap, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @kdp_vtophys(i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %95

33:                                               ; preds = %27
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @pmap_valid_address(i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @pmap_valid_address(i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %37, %33
  br label %95

42:                                               ; preds = %37
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* @ARM_PGBYTES, align 4
  %45 = add nsw i32 %43, %44
  %46 = load i32, i32* @ARM_PGBYTES, align 4
  %47 = sub nsw i32 0, %46
  %48 = and i32 %45, %47
  %49 = load i32, i32* %9, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @ARM_PGBYTES, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @ARM_PGBYTES, align 4
  %55 = sub nsw i32 0, %54
  %56 = and i32 %53, %55
  %57 = load i32, i32* %10, align 4
  %58 = sub nsw i32 %56, %57
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %14, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %42
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %12, align 4
  br label %66

64:                                               ; preds = %42
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66
  %71 = load i32, i32* %11, align 4
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %70, %66
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* %10, align 4
  %75 = load i32, i32* %12, align 4
  %76 = call i32 @bcopy_phys(i32 %73, i32 %74, i32 %75)
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @TRUE, align 4
  %80 = call i32 @flush_dcache64(i32 %77, i32 %78, i32 %79)
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* @TRUE, align 4
  %84 = call i32 @invalidate_icache64(i32 %81, i32 %82, i32 %83)
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %7, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %8, align 4
  %91 = load i32, i32* %12, align 4
  %92 = load i32, i32* %11, align 4
  %93 = sub nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %18

94:                                               ; preds = %18
  br label %95

95:                                               ; preds = %94, %41, %32, %26
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* %11, align 4
  %98 = sub nsw i32 %96, %97
  ret i32 %98
}

declare dso_local i32 @kdp_vtophys(i32, i32) #1

declare dso_local i32 @pmap_valid_address(i32) #1

declare dso_local i32 @bcopy_phys(i32, i32, i32) #1

declare dso_local i32 @flush_dcache64(i32, i32, i32) #1

declare dso_local i32 @invalidate_icache64(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
