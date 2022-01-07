; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/specfs/extr_spec_vnops.c_spec_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (i32, i32, i64, i32, i32)* }
%struct.TYPE_6__ = type { i32 (i32, i32, i64, i32, i32)* }
%struct.vnop_ioctl_args = type { i32, i32, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@DBG_IOCTL = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@cdevsw = common dso_local global %struct.TYPE_5__* null, align 8
@bdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@DKIOCSETBLOCKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"spec_ioctl\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spec_ioctl(%struct.vnop_ioctl_args* %0) #0 {
  %2 = alloca %struct.vnop_ioctl_args*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.vnop_ioctl_args* %0, %struct.vnop_ioctl_args** %2, align 8
  %6 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %7 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @vfs_context_proc(i32 %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %11 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* @DBG_IOCTL, align 4
  %16 = call i32 @FSDBG_CODE(i32 %15, i32 0)
  %17 = load i32, i32* @DBG_FUNC_START, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %21 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %24 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %27 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %26, i32 0, i32 3
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %18, i32 %19, i32 %22, i32 %25, i32 %30, i32 0)
  %32 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %33 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %32, i32 0, i32 3
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %94 [
    i32 128, label %37
    i32 129, label %56
  ]

37:                                               ; preds = %1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cdevsw, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i64 @major(i32 %39)
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32 (i32, i32, i64, i32, i32)*, i32 (i32, i32, i64, i32, i32)** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %46 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %49 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %52 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = call i32 %43(i32 %44, i32 %47, i64 %50, i32 %53, i32 %54)
  store i32 %55, i32* %5, align 4
  br label %96

56:                                               ; preds = %1
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdevsw, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i64 @major(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32 (i32, i32, i64, i32, i32)*, i32 (i32, i32, i64, i32, i32)** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %65 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %68 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %71 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %3, align 4
  %74 = call i32 %62(i32 %63, i32 %66, i64 %69, i32 %72, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %93, label %77

77:                                               ; preds = %56
  %78 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %79 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @DKIOCSETBLOCKSIZE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %93

83:                                               ; preds = %77
  %84 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %85 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = inttoptr i64 %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %90 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %89, i32 0, i32 3
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %88, i32* %92, align 4
  br label %93

93:                                               ; preds = %83, %77, %56
  br label %96

94:                                               ; preds = %1
  %95 = call i32 @panic(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %93, %37
  %97 = load i32, i32* @DBG_IOCTL, align 4
  %98 = call i32 @FSDBG_CODE(i32 %97, i32 0)
  %99 = load i32, i32* @DBG_FUNC_END, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %103 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %2, align 8
  %106 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @KERNEL_DEBUG_CONSTANT(i32 %100, i32 %101, i32 %104, i32 %107, i32 %108, i32 0)
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @KERNEL_DEBUG_CONSTANT(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FSDBG_CODE(i32, i32) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
