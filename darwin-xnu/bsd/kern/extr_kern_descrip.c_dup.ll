; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.dup_args = type { i32 }
%struct.fileproc = type { i64, i32 }

@GUARD_DUP = common dso_local global i32 0, align 4
@kGUARD_EXC_DUP = common dso_local global i32 0, align 4
@ENTR_SHOULDTRACE = common dso_local global i64 0, align 8
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@kEnTrActKernSocket = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dup(%struct.TYPE_10__* %0, %struct.dup_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.dup_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store %struct.dup_args* %1, %struct.dup_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load %struct.filedesc*, %struct.filedesc** %14, align 8
  store %struct.filedesc* %15, %struct.filedesc** %8, align 8
  %16 = load %struct.dup_args*, %struct.dup_args** %6, align 8
  %17 = getelementptr inbounds %struct.dup_args, %struct.dup_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %20 = call i32 @proc_fdlock(%struct.TYPE_10__* %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @fp_lookup(%struct.TYPE_10__* %21, i32 %22, %struct.fileproc** %12, i32 1)
  store i32 %23, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %27 = call i32 @proc_fdunlock(%struct.TYPE_10__* %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %92

29:                                               ; preds = %3
  %30 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %31 = load i32, i32* @GUARD_DUP, align 4
  %32 = call i64 @FP_ISGUARDED(%struct.fileproc* %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %47

34:                                               ; preds = %29
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %36 = load i32, i32* %9, align 4
  %37 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %38 = load i32, i32* @kGUARD_EXC_DUP, align 4
  %39 = call i32 @fp_guard_exception(%struct.TYPE_10__* %35, i32 %36, %struct.fileproc* %37, i32 %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %43 = call i32 @fp_drop(%struct.TYPE_10__* %40, i32 %41, %struct.fileproc* %42, i32 1)
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %45 = call i32 @proc_fdunlock(%struct.TYPE_10__* %44)
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %4, align 4
  br label %92

47:                                               ; preds = %29
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %49 = call i32 @fdalloc(%struct.TYPE_10__* %48, i32 0, i32* %10)
  store i32 %49, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %53 = load i32, i32* %9, align 4
  %54 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %55 = call i32 @fp_drop(%struct.TYPE_10__* %52, i32 %53, %struct.fileproc* %54, i32 1)
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %57 = call i32 @proc_fdunlock(%struct.TYPE_10__* %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %4, align 4
  br label %92

59:                                               ; preds = %47
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %61 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @finishdup(%struct.TYPE_10__* %60, %struct.filedesc* %61, i32 %62, i32 %63, i32 0, i32* %64)
  store i32 %65, i32* %11, align 4
  %66 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %69 = call i32 @fp_drop(%struct.TYPE_10__* %66, i32 %67, %struct.fileproc* %68, i32 1)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %71 = call i32 @proc_fdunlock(%struct.TYPE_10__* %70)
  %72 = load i64, i64* @ENTR_SHOULDTRACE, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %90

74:                                               ; preds = %59
  %75 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %76 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DTYPE_SOCKET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %90

80:                                               ; preds = %74
  %81 = load i32, i32* @kEnTrActKernSocket, align 4
  %82 = load i32, i32* @DBG_FUNC_START, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %85 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @VM_KERNEL_ADDRPERM(i32 %86)
  %88 = trunc i64 %87 to i32
  %89 = call i32 @KERNEL_ENERGYTRACE(i32 %81, i32 %82, i32 %83, i32 0, i32 %88)
  br label %90

90:                                               ; preds = %80, %74, %59
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %4, align 4
  br label %92

92:                                               ; preds = %90, %51, %34, %25
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local i32 @proc_fdlock(%struct.TYPE_10__*) #1

declare dso_local i32 @fp_lookup(%struct.TYPE_10__*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_10__*) #1

declare dso_local i64 @FP_ISGUARDED(%struct.fileproc*, i32) #1

declare dso_local i32 @fp_guard_exception(%struct.TYPE_10__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @fp_drop(%struct.TYPE_10__*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @fdalloc(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @finishdup(%struct.TYPE_10__*, %struct.filedesc*, i32, i32, i32, i32*) #1

declare dso_local i32 @KERNEL_ENERGYTRACE(i32, i32, i32, i32, i32) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
