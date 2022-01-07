; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_module.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fbt.c_fbt_provide_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.modctl = type { i32 }

@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_NEVER = common dso_local global i64 0, align 8
@mod_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@ignore_fbt_blacklist = common dso_local global i64 0, align 8
@MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES = common dso_local global i32 0, align 4
@MODCTL_FBT_INVALID = common dso_local global i32 0, align 4
@MODCTL_FBT_PROBES_PROVIDED = common dso_local global i32 0, align 4
@MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED = common dso_local global i32 0, align 4
@MODCTL_FBT_PRIVATE_PROBES_PROVIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fbt_provide_module(i8* %0, %struct.modctl* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.modctl*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.modctl* %1, %struct.modctl** %4, align 8
  %5 = load %struct.modctl*, %struct.modctl** %4, align 8
  %6 = icmp ne %struct.modctl* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %10 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_NEVER, align 8
  %11 = icmp ne i64 %9, %10
  %12 = zext i1 %11 to i32
  %13 = call i32 @ASSERT(i32 %12)
  %14 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %15 = call i32 @LCK_MTX_ASSERT(i32* @mod_lock, i32 %14)
  %16 = load i64, i64* @ignore_fbt_blacklist, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @MODCTL_FBT_PROVIDE_BLACKLISTED_PROBES, align 4
  %20 = load %struct.modctl*, %struct.modctl** %4, align 8
  %21 = getelementptr inbounds %struct.modctl, %struct.modctl* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.modctl*, %struct.modctl** %4, align 8
  %26 = call i64 @MOD_FBT_DONE(%struct.modctl* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %93

29:                                               ; preds = %24
  %30 = load %struct.modctl*, %struct.modctl** %4, align 8
  %31 = call i64 @fbt_module_excluded(%struct.modctl* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i32, i32* @MODCTL_FBT_INVALID, align 4
  %35 = load %struct.modctl*, %struct.modctl** %4, align 8
  %36 = getelementptr inbounds %struct.modctl, %struct.modctl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %93

39:                                               ; preds = %29
  %40 = load %struct.modctl*, %struct.modctl** %4, align 8
  %41 = call i64 @MOD_HAS_KERNEL_SYMBOLS(%struct.modctl* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.modctl*, %struct.modctl** %4, align 8
  %45 = call i32 @fbt_provide_module_kernel_syms(%struct.modctl* %44)
  %46 = load i32, i32* @MODCTL_FBT_PROBES_PROVIDED, align 4
  %47 = load %struct.modctl*, %struct.modctl** %4, align 8
  %48 = getelementptr inbounds %struct.modctl, %struct.modctl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load %struct.modctl*, %struct.modctl** %4, align 8
  %52 = call i64 @MOD_FBT_PROVIDE_BLACKLISTED_PROBES(%struct.modctl* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %43
  %55 = load i32, i32* @MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED, align 4
  %56 = load %struct.modctl*, %struct.modctl** %4, align 8
  %57 = getelementptr inbounds %struct.modctl, %struct.modctl* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %43
  br label %93

61:                                               ; preds = %39
  %62 = load %struct.modctl*, %struct.modctl** %4, align 8
  %63 = call i64 @MOD_HAS_USERSPACE_SYMBOLS(%struct.modctl* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %61
  %66 = load %struct.modctl*, %struct.modctl** %4, align 8
  %67 = call i32 @fbt_provide_module_user_syms(%struct.modctl* %66)
  %68 = load i32, i32* @MODCTL_FBT_PROBES_PROVIDED, align 4
  %69 = load %struct.modctl*, %struct.modctl** %4, align 8
  %70 = getelementptr inbounds %struct.modctl, %struct.modctl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = load %struct.modctl*, %struct.modctl** %4, align 8
  %74 = call i64 @MOD_FBT_PROVIDE_PRIVATE_PROBES(%struct.modctl* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %65
  %77 = load i32, i32* @MODCTL_FBT_PRIVATE_PROBES_PROVIDED, align 4
  %78 = load %struct.modctl*, %struct.modctl** %4, align 8
  %79 = getelementptr inbounds %struct.modctl, %struct.modctl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %76, %65
  %83 = load %struct.modctl*, %struct.modctl** %4, align 8
  %84 = call i64 @MOD_FBT_PROVIDE_BLACKLISTED_PROBES(%struct.modctl* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @MODCTL_FBT_BLACKLISTED_PROBES_PROVIDED, align 4
  %88 = load %struct.modctl*, %struct.modctl** %4, align 8
  %89 = getelementptr inbounds %struct.modctl, %struct.modctl* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %82
  br label %93

93:                                               ; preds = %28, %33, %60, %92, %61
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @MOD_FBT_DONE(%struct.modctl*) #1

declare dso_local i64 @fbt_module_excluded(%struct.modctl*) #1

declare dso_local i64 @MOD_HAS_KERNEL_SYMBOLS(%struct.modctl*) #1

declare dso_local i32 @fbt_provide_module_kernel_syms(%struct.modctl*) #1

declare dso_local i64 @MOD_FBT_PROVIDE_BLACKLISTED_PROBES(%struct.modctl*) #1

declare dso_local i64 @MOD_HAS_USERSPACE_SYMBOLS(%struct.modctl*) #1

declare dso_local i32 @fbt_provide_module_user_syms(%struct.modctl*) #1

declare dso_local i64 @MOD_FBT_PROVIDE_PRIVATE_PROBES(%struct.modctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
