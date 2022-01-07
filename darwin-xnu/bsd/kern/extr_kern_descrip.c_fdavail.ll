; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdavail.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdavail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__*, %struct.filedesc* }
%struct.TYPE_4__ = type { i64 }
%struct.filedesc = type { i32, i64, i8*, %struct.fileproc** }
%struct.fileproc = type { i32 }

@RLIMIT_NOFILE = common dso_local global i64 0, align 8
@maxfiles = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdavail(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.filedesc*, align 8
  %7 = alloca %struct.fileproc**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %13 = load %struct.filedesc*, %struct.filedesc** %12, align 8
  store %struct.filedesc* %13, %struct.filedesc** %6, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i64, i64* @RLIMIT_NOFILE, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @maxfiles, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %26 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sub nsw i32 %24, %27
  store i32 %28, i32* %9, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %5, align 4
  %33 = sub nsw i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %88

36:                                               ; preds = %30, %2
  %37 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %38 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %37, i32 0, i32 3
  %39 = load %struct.fileproc**, %struct.fileproc*** %38, align 8
  %40 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %41 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %39, i64 %42
  store %struct.fileproc** %43, %struct.fileproc*** %7, align 8
  %44 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %45 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %44, i32 0, i32 2
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %48 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i8, i8* %46, i64 %49
  store i8* %50, i8** %8, align 8
  %51 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %52 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = load %struct.filedesc*, %struct.filedesc** %6, align 8
  %56 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %82, %36
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %9, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %60
  %65 = load %struct.fileproc**, %struct.fileproc*** %7, align 8
  %66 = load %struct.fileproc*, %struct.fileproc** %65, align 8
  %67 = icmp eq %struct.fileproc* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %64
  %69 = load i8*, i8** %8, align 8
  %70 = load i8, i8* %69, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8, i8* @UF_RESERVED, align 1
  %73 = sext i8 %72 to i32
  %74 = and i32 %71, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %5, align 4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %76
  store i32 1, i32* %3, align 4
  br label %88

81:                                               ; preds = %76, %68, %64
  br label %82

82:                                               ; preds = %81
  %83 = load %struct.fileproc**, %struct.fileproc*** %7, align 8
  %84 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %83, i32 1
  store %struct.fileproc** %84, %struct.fileproc*** %7, align 8
  %85 = load i8*, i8** %8, align 8
  %86 = getelementptr inbounds i8, i8* %85, i32 1
  store i8* %86, i8** %8, align 8
  br label %60

87:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %88

88:                                               ; preds = %87, %80, %35
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
