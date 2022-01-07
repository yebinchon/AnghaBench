; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_csr.c_csr_check.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_csr.c_csr_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@PE_state = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CSR_ALLOW_DEVICE_CONFIGURATION = common dso_local global i32 0, align 4
@kBootArgsFlagCSRConfigMode = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@CSR_ALLOW_UNTRUSTED_KEXTS = common dso_local global i32 0, align 4
@CSR_ALLOW_APPLE_INTERNAL = common dso_local global i32 0, align 4
@CSR_ALLOW_KERNEL_DEBUGGER = common dso_local global i32 0, align 4
@csr_allow_all = common dso_local global i64 0, align 8
@CSR_ALWAYS_ENFORCED_FLAGS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @csr_check(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @PE_state, i32 0, i32 0), align 8
  %8 = inttoptr i64 %7 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %8, %struct.TYPE_3__** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @CSR_ALLOW_DEVICE_CONFIGURATION, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @kBootArgsFlagCSRConfigMode, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %23

21:                                               ; preds = %13
  %22 = load i32, i32* @EPERM, align 4
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ 0, %20 ], [ %22, %21 ]
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %1
  %26 = call i32 @csr_get_active_config(i32* %5)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %68

31:                                               ; preds = %25
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @CSR_ALLOW_UNTRUSTED_KEXTS, align 4
  %34 = load i32, i32* @CSR_ALLOW_APPLE_INTERNAL, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @CSR_ALLOW_KERNEL_DEBUGGER, align 4
  %40 = load i32, i32* %5, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %5, align 4
  br label %42

42:                                               ; preds = %38, %31
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %51

49:                                               ; preds = %42
  %50 = load i32, i32* @EPERM, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @EPERM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load i64, i64* @csr_allow_all, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @CSR_ALWAYS_ENFORCED_FLAGS, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  store i32 0, i32* %6, align 4
  br label %65

65:                                               ; preds = %64, %59, %56
  br label %66

66:                                               ; preds = %65, %51
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %29, %23
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @csr_get_active_config(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
