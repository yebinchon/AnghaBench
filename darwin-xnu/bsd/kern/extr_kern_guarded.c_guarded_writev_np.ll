; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_writev_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_writev_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.guarded_writev_np_args = type { i64, i32, i32, i32 }
%struct.fileproc = type { i32 }
%struct.user_iovec = type { i32 }
%struct.guarded_fileproc = type { i32 }

@fd = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guarded_writev_np(%struct.proc* %0, %struct.guarded_writev_np_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.guarded_writev_np_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca %struct.user_iovec*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.guarded_fileproc*, align 8
  %14 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.guarded_writev_np_args* %1, %struct.guarded_writev_np_args** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @fd, align 4
  %16 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %17 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @AUDIT_ARG(i32 %15, i32 %18)
  %20 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %21 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %3
  %25 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %26 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @UIO_MAXIOV, align 8
  %29 = icmp sgt i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %3
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %144

32:                                               ; preds = %24
  %33 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %34 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.proc*, %struct.proc** %5, align 8
  %37 = call i64 @IS_64BIT_PROCESS(%struct.proc* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = phi i32 [ %40, %39 ], [ %42, %41 ]
  %45 = load i32, i32* @UIO_WRITE, align 4
  %46 = call i32* @uio_create(i64 %35, i32 0, i32 %44, i32 %45)
  store i32* %46, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call %struct.user_iovec* @uio_iovsaddr(i32* %47)
  store %struct.user_iovec* %48, %struct.user_iovec** %11, align 8
  %49 = load %struct.user_iovec*, %struct.user_iovec** %11, align 8
  %50 = icmp eq %struct.user_iovec* %49, null
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* @ENOMEM, align 4
  store i32 %52, i32* %9, align 4
  br label %136

53:                                               ; preds = %43
  %54 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %55 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.proc*, %struct.proc** %5, align 8
  %58 = call i64 @IS_64BIT_PROCESS(%struct.proc* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %64

62:                                               ; preds = %53
  %63 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %67 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.user_iovec*, %struct.user_iovec** %11, align 8
  %70 = call i32 @copyin_user_iovec_array(i32 %56, i32 %65, i64 %68, %struct.user_iovec* %69)
  store i32 %70, i32* %9, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  br label %136

74:                                               ; preds = %64
  %75 = load i32*, i32** %8, align 8
  %76 = call i32 @uio_calculateresid(i32* %75)
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %136

80:                                               ; preds = %74
  %81 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %82 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @copyin(i32 %83, i32* %12, i32 4)
  store i32 %84, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %80
  br label %136

87:                                               ; preds = %80
  %88 = load %struct.proc*, %struct.proc** %5, align 8
  %89 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %90 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @fp_lookup_guarded(%struct.proc* %88, i32 %91, i32 %92, %struct.guarded_fileproc** %13, i32 0)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %87
  br label %136

97:                                               ; preds = %87
  %98 = load %struct.guarded_fileproc*, %struct.guarded_fileproc** %13, align 8
  %99 = call %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc* %98)
  store %struct.fileproc* %99, %struct.fileproc** %10, align 8
  %100 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %101 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @FWRITE, align 4
  %104 = and i32 %102, %103
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %97
  %107 = load i32, i32* @EBADF, align 4
  store i32 %107, i32* %9, align 4
  br label %118

108:                                              ; preds = %97
  %109 = load %struct.proc*, %struct.proc** %5, align 8
  %110 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %111 = load i32*, i32** %8, align 8
  %112 = load i64*, i64** %7, align 8
  %113 = call i32 @wr_uio(%struct.proc* %109, %struct.fileproc* %110, i32* %111, i64* %112)
  store i32 %113, i32* %9, align 4
  %114 = load i64*, i64** %7, align 8
  %115 = load i64, i64* %114, align 8
  %116 = icmp sgt i64 %115, 0
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %14, align 4
  br label %118

118:                                              ; preds = %108, %106
  %119 = load i32, i32* %14, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %118
  %122 = load %struct.proc*, %struct.proc** %5, align 8
  %123 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %124 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %127 = call i32 @fp_drop_written(%struct.proc* %122, i32 %125, %struct.fileproc* %126)
  br label %135

128:                                              ; preds = %118
  %129 = load %struct.proc*, %struct.proc** %5, align 8
  %130 = load %struct.guarded_writev_np_args*, %struct.guarded_writev_np_args** %6, align 8
  %131 = getelementptr inbounds %struct.guarded_writev_np_args, %struct.guarded_writev_np_args* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %134 = call i32 @fp_drop(%struct.proc* %129, i32 %132, %struct.fileproc* %133, i32 0)
  br label %135

135:                                              ; preds = %128, %121
  br label %136

136:                                              ; preds = %135, %96, %86, %79, %73, %51
  %137 = load i32*, i32** %8, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %139, label %142

139:                                              ; preds = %136
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @uio_free(i32* %140)
  br label %142

142:                                              ; preds = %139, %136
  %143 = load i32, i32* %9, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %30
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @copyin(i32, i32*, i32) #1

declare dso_local i32 @fp_lookup_guarded(%struct.proc*, i32, i32, %struct.guarded_fileproc**, i32) #1

declare dso_local %struct.fileproc* @GFP_TO_FP(%struct.guarded_fileproc*) #1

declare dso_local i32 @wr_uio(%struct.proc*, %struct.fileproc*, i32*, i64*) #1

declare dso_local i32 @fp_drop_written(%struct.proc*, i32, %struct.fileproc*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
