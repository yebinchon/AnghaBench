; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdgetf_noref.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fdgetf_noref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }
%struct.fileproc = type { i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fdgetf_noref(%struct.TYPE_3__* %0, i32 %1, %struct.fileproc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fileproc**, align 8
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca %struct.fileproc*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.fileproc** %2, %struct.fileproc*** %7, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.filedesc*, %struct.filedesc** %11, align 8
  store %struct.filedesc* %12, %struct.filedesc** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %41, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %18 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp sge i32 %16, %19
  br i1 %20, label %41, label %21

21:                                               ; preds = %15
  %22 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %23 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %22, i32 0, i32 2
  %24 = load %struct.fileproc**, %struct.fileproc*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %24, i64 %26
  %28 = load %struct.fileproc*, %struct.fileproc** %27, align 8
  store %struct.fileproc* %28, %struct.fileproc** %9, align 8
  %29 = icmp eq %struct.fileproc* %28, null
  br i1 %29, label %41, label %30

30:                                               ; preds = %21
  %31 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %32 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @UF_RESERVED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %30, %21, %15, %3
  %42 = load i32, i32* @EBADF, align 4
  store i32 %42, i32* %4, align 4
  br label %50

43:                                               ; preds = %30
  %44 = load %struct.fileproc**, %struct.fileproc*** %7, align 8
  %45 = icmp ne %struct.fileproc** %44, null
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load %struct.fileproc*, %struct.fileproc** %9, align 8
  %48 = load %struct.fileproc**, %struct.fileproc*** %7, align 8
  store %struct.fileproc* %47, %struct.fileproc** %48, align 8
  br label %49

49:                                               ; preds = %46, %43
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %41
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
