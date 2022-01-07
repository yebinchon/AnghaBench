; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_drop.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fp_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i64, i32 }
%struct.TYPE_5__ = type { i64, %struct.filedesc* }
%struct.filedesc = type { i32, i32*, %struct.fileproc** }

@FILEPROC_NULL = common dso_local global %struct.fileproc* null, align 8
@UF_RESERVED = common dso_local global i32 0, align 4
@UF_CLOSING = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FP_SELCONFLICT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fp_drop(%struct.TYPE_5__* %0, i32 %1, %struct.fileproc* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.fileproc* %2, %struct.fileproc** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.filedesc*, %struct.filedesc** %13, align 8
  store %struct.filedesc* %14, %struct.filedesc** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = call i32 @proc_fdlock_spin(%struct.TYPE_5__* %18)
  br label %20

20:                                               ; preds = %17, %4
  %21 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %22 = load %struct.fileproc*, %struct.fileproc** @FILEPROC_NULL, align 8
  %23 = icmp eq %struct.fileproc* %21, %22
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %64, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %30 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %64, label %33

33:                                               ; preds = %27
  %34 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %35 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %34, i32 0, i32 2
  %36 = load %struct.fileproc**, %struct.fileproc*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %36, i64 %38
  %40 = load %struct.fileproc*, %struct.fileproc** %39, align 8
  store %struct.fileproc* %40, %struct.fileproc** %8, align 8
  %41 = icmp eq %struct.fileproc* %40, null
  br i1 %41, label %64, label %42

42:                                               ; preds = %33
  %43 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %44 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @UF_RESERVED, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %72

53:                                               ; preds = %42
  %54 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %55 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @UF_CLOSING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %72, label %64

64:                                               ; preds = %53, %33, %27, %24
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = call i32 @proc_fdunlock(%struct.TYPE_5__* %68)
  br label %70

70:                                               ; preds = %67, %64
  %71 = load i32, i32* @EBADF, align 4
  store i32 %71, i32* %5, align 4
  br label %118

72:                                               ; preds = %53, %42, %20
  %73 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %74 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %78 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %104

81:                                               ; preds = %72
  %82 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %83 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @FP_SELCONFLICT, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load i32, i32* @FP_SELCONFLICT, align 4
  %90 = xor i32 %89, -1
  %91 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %92 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = and i32 %93, %90
  store i32 %94, i32* %92, align 8
  br label %95

95:                                               ; preds = %88, %81
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %95
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  store i32 1, i32* %11, align 4
  br label %103

103:                                              ; preds = %100, %95
  br label %104

104:                                              ; preds = %103, %72
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %104
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %109 = call i32 @proc_fdunlock(%struct.TYPE_5__* %108)
  br label %110

110:                                              ; preds = %107, %104
  %111 = load i32, i32* %11, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = call i32 @wakeup(i64* %115)
  br label %117

117:                                              ; preds = %113, %110
  store i32 0, i32* %5, align 4
  br label %118

118:                                              ; preds = %117, %70
  %119 = load i32, i32* %5, align 4
  ret i32 %119
}

declare dso_local i32 @proc_fdlock_spin(%struct.TYPE_5__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_5__*) #1

declare dso_local i32 @wakeup(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
