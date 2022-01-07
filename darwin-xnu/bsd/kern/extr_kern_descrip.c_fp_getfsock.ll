; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_getfsock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_getfsock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i64, i64, i32 }
%struct.socket = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp_getfsock(%struct.TYPE_5__* %0, i32 %1, %struct.fileproc** %2, %struct.socket** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fileproc**, align 8
  %9 = alloca %struct.socket**, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fileproc** %2, %struct.fileproc*** %8, align 8
  store %struct.socket** %3, %struct.socket*** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.filedesc*, %struct.filedesc** %13, align 8
  store %struct.filedesc* %14, %struct.filedesc** %10, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %16 = call i32 @proc_fdlock_spin(%struct.TYPE_5__* %15)
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %45, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %22 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %20, %23
  br i1 %24, label %45, label %25

25:                                               ; preds = %19
  %26 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %27 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %26, i32 0, i32 2
  %28 = load %struct.fileproc**, %struct.fileproc*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %28, i64 %30
  %32 = load %struct.fileproc*, %struct.fileproc** %31, align 8
  store %struct.fileproc* %32, %struct.fileproc** %11, align 8
  %33 = icmp eq %struct.fileproc* %32, null
  br i1 %33, label %45, label %34

34:                                               ; preds = %25
  %35 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %36 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @UF_RESERVED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %34, %25, %19, %4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = call i32 @proc_fdunlock(%struct.TYPE_5__* %46)
  %48 = load i32, i32* @EBADF, align 4
  store i32 %48, i32* %5, align 4
  br label %81

49:                                               ; preds = %34
  %50 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %51 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @DTYPE_SOCKET, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = call i32 @proc_fdunlock(%struct.TYPE_5__* %56)
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %58, i32* %5, align 4
  br label %81

59:                                               ; preds = %49
  %60 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %61 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = load %struct.fileproc**, %struct.fileproc*** %8, align 8
  %65 = icmp ne %struct.fileproc** %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %68 = load %struct.fileproc**, %struct.fileproc*** %8, align 8
  store %struct.fileproc* %67, %struct.fileproc** %68, align 8
  br label %69

69:                                               ; preds = %66, %59
  %70 = load %struct.socket**, %struct.socket*** %9, align 8
  %71 = icmp ne %struct.socket** %70, null
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = load %struct.fileproc*, %struct.fileproc** %11, align 8
  %74 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = inttoptr i64 %75 to %struct.socket*
  %77 = load %struct.socket**, %struct.socket*** %9, align 8
  store %struct.socket* %76, %struct.socket** %77, align 8
  br label %78

78:                                               ; preds = %72, %69
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %80 = call i32 @proc_fdunlock(%struct.TYPE_5__* %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %78, %55, %45
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @proc_fdlock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
