; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dupfdopen.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_dupfdopen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filedesc = type { i32, i32*, i32, %struct.fileproc** }
%struct.fileproc = type { i32, i32 }

@UF_RESERVED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@GUARD_DUP = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@UF_EXCLOSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dupfdopen(%struct.filedesc* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.filedesc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fileproc*, align 8
  %13 = alloca %struct.fileproc*, align 8
  %14 = alloca i32, align 4
  store %struct.filedesc* %0, %struct.filedesc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = call i32 (...) @current_proc()
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %14, align 4
  %17 = call i32 @proc_fdlock(i32 %16)
  %18 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %19 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %18, i32 0, i32 3
  %20 = load %struct.fileproc**, %struct.fileproc*** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %20, i64 %22
  %24 = load %struct.fileproc*, %struct.fileproc** %23, align 8
  store %struct.fileproc* %24, %struct.fileproc** %13, align 8
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %57, label %27

27:                                               ; preds = %5
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %30 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp sge i32 %28, %31
  br i1 %32, label %57, label %33

33:                                               ; preds = %27
  %34 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %35 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %34, i32 0, i32 3
  %36 = load %struct.fileproc**, %struct.fileproc*** %35, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.fileproc*, %struct.fileproc** %36, i64 %38
  %40 = load %struct.fileproc*, %struct.fileproc** %39, align 8
  store %struct.fileproc* %40, %struct.fileproc** %12, align 8
  %41 = icmp eq %struct.fileproc* %40, null
  br i1 %41, label %57, label %42

42:                                               ; preds = %33
  %43 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %44 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %45 = icmp eq %struct.fileproc* %43, %44
  br i1 %45, label %57, label %46

46:                                               ; preds = %42
  %47 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %48 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @UF_RESERVED, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %46, %42, %33, %27, %5
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @proc_fdunlock(i32 %58)
  %60 = load i32, i32* @EBADF, align 4
  store i32 %60, i32* %6, align 4
  br label %147

61:                                               ; preds = %46
  %62 = load i32, i32* %11, align 4
  switch i32 %62, label %143 [
    i32 128, label %63
  ]

63:                                               ; preds = %61
  %64 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %65 = load i32, i32* @GUARD_DUP, align 4
  %66 = call i32 @FP_ISGUARDED(%struct.fileproc* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %63
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @proc_fdunlock(i32 %69)
  %71 = load i32, i32* @EPERM, align 4
  store i32 %71, i32* %6, align 4
  br label %147

72:                                               ; preds = %63
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* @FREAD, align 4
  %75 = load i32, i32* @FWRITE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %79 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %77, %80
  %82 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %83 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %81, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %72
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @proc_fdunlock(i32 %87)
  %89 = load i32, i32* @EACCES, align 4
  store i32 %89, i32* %6, align 4
  br label %147

90:                                               ; preds = %72
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %93 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* %8, align 4
  %98 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %99 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %102 = call i32 @fg_ref(%struct.fileproc* %101)
  %103 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %104 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %100
  %108 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %109 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @fg_free(i32 %110)
  br label %112

112:                                              ; preds = %107, %100
  %113 = load %struct.fileproc*, %struct.fileproc** %12, align 8
  %114 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.fileproc*, %struct.fileproc** %13, align 8
  %117 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %119 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @O_CLOEXEC, align 4
  %127 = and i32 %125, %126
  %128 = or i32 %124, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %112
  %131 = load i32, i32* @UF_EXCLOSE, align 4
  br label %133

132:                                              ; preds = %112
  br label %133

133:                                              ; preds = %132, %130
  %134 = phi i32 [ %131, %130 ], [ 0, %132 ]
  %135 = load %struct.filedesc*, %struct.filedesc** %7, align 8
  %136 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %135, i32 0, i32 1
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %134, i32* %140, align 4
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @proc_fdunlock(i32 %141)
  store i32 0, i32* %6, align 4
  br label %147

143:                                              ; preds = %61
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @proc_fdunlock(i32 %144)
  %146 = load i32, i32* %11, align 4
  store i32 %146, i32* %6, align 4
  br label %147

147:                                              ; preds = %143, %133, %86, %68, %57
  %148 = load i32, i32* %6, align 4
  ret i32 %148
}

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @proc_fdlock(i32) #1

declare dso_local i32 @proc_fdunlock(i32) #1

declare dso_local i32 @FP_ISGUARDED(%struct.fileproc*, i32) #1

declare dso_local i32 @fg_ref(%struct.fileproc*) #1

declare dso_local i32 @fg_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
