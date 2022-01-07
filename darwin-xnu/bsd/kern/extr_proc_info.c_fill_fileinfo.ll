; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_fill_fileinfo.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_proc_info.c_fill_fileinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.proc_fileinfo = type { i32, i32, i32, i32, i32 }

@PROC_FP_SHARED = common dso_local global i32 0, align 4
@PROC_NULL = common dso_local global i64 0, align 8
@UF_EXCLOSE = common dso_local global i32 0, align 4
@PROC_FP_CLEXEC = common dso_local global i32 0, align 4
@UF_FORKCLOSE = common dso_local global i32 0, align 4
@PROC_FP_CLFORK = common dso_local global i32 0, align 4
@FTYPE_GUARDED = common dso_local global i64 0, align 8
@PROC_FP_GUARDED = common dso_local global i32 0, align 4
@GUARD_CLOSE = common dso_local global i32 0, align 4
@PROC_FI_GUARD_CLOSE = common dso_local global i32 0, align 4
@GUARD_DUP = common dso_local global i32 0, align 4
@PROC_FI_GUARD_DUP = common dso_local global i32 0, align 4
@GUARD_SOCKET_IPC = common dso_local global i32 0, align 4
@PROC_FI_GUARD_SOCKET_IPC = common dso_local global i32 0, align 4
@GUARD_FILEPORT = common dso_local global i32 0, align 4
@PROC_FI_GUARD_FILEPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fill_fileinfo(%struct.fileproc* %0, i64 %1, i32 %2, %struct.proc_fileinfo* %3) #0 {
  %5 = alloca %struct.fileproc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.proc_fileinfo*, align 8
  store %struct.fileproc* %0, %struct.fileproc** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.proc_fileinfo* %3, %struct.proc_fileinfo** %8, align 8
  %9 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %10 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %15 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %14, i32 0, i32 4
  store i32 %13, i32* %15, align 4
  %16 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %17 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %19 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %24 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %26 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_2__* %27)
  %29 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %30 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %32 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load i32, i32* @PROC_FP_SHARED, align 4
  %39 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %40 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %4
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* @PROC_NULL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %74

47:                                               ; preds = %43
  %48 = load i64, i64* %6, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @FDFLAGS_GET(i64 %48, i32 %49)
  %51 = load i32, i32* @UF_EXCLOSE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %47
  %55 = load i32, i32* @PROC_FP_CLEXEC, align 4
  %56 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %57 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %47
  %61 = load i64, i64* %6, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @FDFLAGS_GET(i64 %61, i32 %62)
  %64 = load i32, i32* @UF_FORKCLOSE, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %60
  %68 = load i32, i32* @PROC_FP_CLFORK, align 4
  %69 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %70 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  br label %73

73:                                               ; preds = %67, %60
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %76 = call i64 @FILEPROC_TYPE(%struct.fileproc* %75)
  %77 = load i64, i64* @FTYPE_GUARDED, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %131

79:                                               ; preds = %74
  %80 = load i32, i32* @PROC_FP_GUARDED, align 4
  %81 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %82 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %86 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %85, i32 0, i32 0
  store i32 0, i32* %86, align 4
  %87 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %88 = load i32, i32* @GUARD_CLOSE, align 4
  %89 = call i64 @fp_isguarded(%struct.fileproc* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %79
  %92 = load i32, i32* @PROC_FI_GUARD_CLOSE, align 4
  %93 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %94 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %91, %79
  %98 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %99 = load i32, i32* @GUARD_DUP, align 4
  %100 = call i64 @fp_isguarded(%struct.fileproc* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load i32, i32* @PROC_FI_GUARD_DUP, align 4
  %104 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %105 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  br label %108

108:                                              ; preds = %102, %97
  %109 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %110 = load i32, i32* @GUARD_SOCKET_IPC, align 4
  %111 = call i64 @fp_isguarded(%struct.fileproc* %109, i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load i32, i32* @PROC_FI_GUARD_SOCKET_IPC, align 4
  %115 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %116 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %119

119:                                              ; preds = %113, %108
  %120 = load %struct.fileproc*, %struct.fileproc** %5, align 8
  %121 = load i32, i32* @GUARD_FILEPORT, align 4
  %122 = call i64 @fp_isguarded(%struct.fileproc* %120, i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %119
  %125 = load i32, i32* @PROC_FI_GUARD_FILEPORT, align 4
  %126 = load %struct.proc_fileinfo*, %struct.proc_fileinfo** %8, align 8
  %127 = getelementptr inbounds %struct.proc_fileinfo, %struct.proc_fileinfo* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %119
  br label %131

131:                                              ; preds = %130, %74
  ret void
}

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_2__*) #1

declare dso_local i32 @FDFLAGS_GET(i64, i32) #1

declare dso_local i64 @FILEPROC_TYPE(%struct.fileproc*) #1

declare dso_local i64 @fp_isguarded(%struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
