; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_provide_module.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_sdt.c_sdt_provide_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, i64, i64 }
%struct.modctl = type { i32 }

@dtrace_kernel_symbol_mode = common dso_local global i64 0, align 8
@DTRACE_KERNEL_SYMBOLS_NEVER = common dso_local global i64 0, align 8
@mod_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@g_sdt_kernctl = common dso_local global i32 0, align 4
@g_sdt_mach_module = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@MODCTL_SDT_PROBES_PROVIDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdt_provide_module(i8* %0, %struct.modctl* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.modctl*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.modctl* %1, %struct.modctl** %4, align 8
  %7 = load %struct.modctl*, %struct.modctl** %4, align 8
  %8 = icmp ne %struct.modctl* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* @dtrace_kernel_symbol_mode, align 8
  %12 = load i64, i64* @DTRACE_KERNEL_SYMBOLS_NEVER, align 8
  %13 = icmp ne i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32* @mod_lock, i32 %16)
  %18 = load %struct.modctl*, %struct.modctl** %4, align 8
  %19 = call i64 @MOD_SDT_DONE(%struct.modctl* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %69

22:                                               ; preds = %2
  %23 = load %struct.modctl*, %struct.modctl** %4, align 8
  %24 = call i64 @MOD_IS_MACH_KERNEL(%struct.modctl* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %62

26:                                               ; preds = %22
  %27 = load i8*, i8** %3, align 8
  %28 = call i32 @__sdt_provide_module(i8* %27, i32* @g_sdt_kernctl)
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_sdt_mach_module, i32 0, i32 0), align 8
  store %struct.TYPE_3__* %29, %struct.TYPE_3__** %5, align 8
  br label %30

30:                                               ; preds = %33, %26
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %30
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  store %struct.TYPE_3__* %34, %struct.TYPE_3__** %6, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to i8*
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @strlen(i64 %41)
  %43 = add nsw i32 %42, 1
  %44 = call i32 @kmem_free(i8* %38, i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = inttoptr i64 %47 to i8*
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @strlen(i64 %51)
  %53 = add nsw i32 %52, 1
  %54 = call i32 @kmem_free(i8* %48, i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  store %struct.TYPE_3__* %57, %struct.TYPE_3__** %5, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %59 = bitcast %struct.TYPE_3__* %58 to i8*
  %60 = call i32 @kmem_free(i8* %59, i32 24)
  br label %30

61:                                               ; preds = %30
  store %struct.TYPE_3__* null, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @g_sdt_mach_module, i32 0, i32 0), align 8
  br label %63

62:                                               ; preds = %22
  br label %63

63:                                               ; preds = %62, %61
  %64 = load i32, i32* @MODCTL_SDT_PROBES_PROVIDED, align 4
  %65 = load %struct.modctl*, %struct.modctl** %4, align 8
  %66 = getelementptr inbounds %struct.modctl, %struct.modctl* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %21
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i64 @MOD_SDT_DONE(%struct.modctl*) #1

declare dso_local i64 @MOD_IS_MACH_KERNEL(%struct.modctl*) #1

declare dso_local i32 @__sdt_provide_module(i8*, i32*) #1

declare dso_local i32 @kmem_free(i8*, i32) #1

declare dso_local i32 @strlen(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
