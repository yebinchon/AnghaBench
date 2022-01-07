; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_writev_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_writev_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.writev_nocancel_args = type { i64, i32, i32 }
%struct.fileproc = type { i32 }
%struct.user_iovec = type { i32 }

@fd = common dso_local global i32 0, align 4
@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@GUARD_WRITE = common dso_local global i32 0, align 4
@kGUARD_EXC_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @writev_nocancel(%struct.proc* %0, %struct.writev_nocancel_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.writev_nocancel_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca %struct.user_iovec*, align 8
  %12 = alloca i32, align 4
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.writev_nocancel_args* %1, %struct.writev_nocancel_args** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32* null, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @fd, align 4
  %14 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %15 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @AUDIT_ARG(i32 %13, i32 %16)
  %18 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %19 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %3
  %23 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %24 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @UIO_MAXIOV, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22, %3
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %4, align 4
  br label %150

30:                                               ; preds = %22
  %31 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %32 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.proc*, %struct.proc** %5, align 8
  %35 = call i64 @IS_64BIT_PROCESS(%struct.proc* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %41

39:                                               ; preds = %30
  %40 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi i32 [ %38, %37 ], [ %40, %39 ]
  %43 = load i32, i32* @UIO_WRITE, align 4
  %44 = call i32* @uio_create(i64 %33, i32 0, i32 %42, i32 %43)
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call %struct.user_iovec* @uio_iovsaddr(i32* %45)
  store %struct.user_iovec* %46, %struct.user_iovec** %11, align 8
  %47 = load %struct.user_iovec*, %struct.user_iovec** %11, align 8
  %48 = icmp eq %struct.user_iovec* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %9, align 4
  br label %142

51:                                               ; preds = %41
  %52 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %53 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.proc*, %struct.proc** %5, align 8
  %56 = call i64 @IS_64BIT_PROCESS(%struct.proc* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %65 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.user_iovec*, %struct.user_iovec** %11, align 8
  %68 = call i32 @copyin_user_iovec_array(i32 %54, i32 %63, i64 %66, %struct.user_iovec* %67)
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %9, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %62
  br label %142

72:                                               ; preds = %62
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @uio_calculateresid(i32* %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %72
  br label %142

78:                                               ; preds = %72
  %79 = load %struct.proc*, %struct.proc** %5, align 8
  %80 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %81 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @fp_lookup(%struct.proc* %79, i32 %82, %struct.fileproc** %10, i32 0)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %142

87:                                               ; preds = %78
  %88 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %89 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @FWRITE, align 4
  %92 = and i32 %90, %91
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = load i32, i32* @EBADF, align 4
  store i32 %95, i32* %9, align 4
  br label %124

96:                                               ; preds = %87
  %97 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %98 = load i32, i32* @GUARD_WRITE, align 4
  %99 = call i64 @FP_ISGUARDED(%struct.fileproc* %97, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %113

101:                                              ; preds = %96
  %102 = load %struct.proc*, %struct.proc** %5, align 8
  %103 = call i32 @proc_fdlock(%struct.proc* %102)
  %104 = load %struct.proc*, %struct.proc** %5, align 8
  %105 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %106 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %109 = load i32, i32* @kGUARD_EXC_WRITE, align 4
  %110 = call i32 @fp_guard_exception(%struct.proc* %104, i32 %107, %struct.fileproc* %108, i32 %109)
  store i32 %110, i32* %9, align 4
  %111 = load %struct.proc*, %struct.proc** %5, align 8
  %112 = call i32 @proc_fdunlock(%struct.proc* %111)
  br label %123

113:                                              ; preds = %96
  %114 = load %struct.proc*, %struct.proc** %5, align 8
  %115 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load i64*, i64** %7, align 8
  %118 = call i32 @wr_uio(%struct.proc* %114, %struct.fileproc* %115, i32* %116, i64* %117)
  store i32 %118, i32* %9, align 4
  %119 = load i64*, i64** %7, align 8
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %120, 0
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %113, %101
  br label %124

124:                                              ; preds = %123, %94
  %125 = load i32, i32* %12, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %134

127:                                              ; preds = %124
  %128 = load %struct.proc*, %struct.proc** %5, align 8
  %129 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %130 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %133 = call i32 @fp_drop_written(%struct.proc* %128, i32 %131, %struct.fileproc* %132)
  br label %141

134:                                              ; preds = %124
  %135 = load %struct.proc*, %struct.proc** %5, align 8
  %136 = load %struct.writev_nocancel_args*, %struct.writev_nocancel_args** %6, align 8
  %137 = getelementptr inbounds %struct.writev_nocancel_args, %struct.writev_nocancel_args* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %140 = call i32 @fp_drop(%struct.proc* %135, i32 %138, %struct.fileproc* %139, i32 0)
  br label %141

141:                                              ; preds = %134, %127
  br label %142

142:                                              ; preds = %141, %86, %77, %71, %49
  %143 = load i32*, i32** %8, align 8
  %144 = icmp ne i32* %143, null
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32*, i32** %8, align 8
  %147 = call i32 @uio_free(i32* %146)
  br label %148

148:                                              ; preds = %145, %142
  %149 = load i32, i32* %9, align 4
  store i32 %149, i32* %4, align 4
  br label %150

150:                                              ; preds = %148, %28
  %151 = load i32, i32* %4, align 4
  ret i32 %151
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i64 @FP_ISGUARDED(%struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdlock(%struct.proc*) #1

declare dso_local i32 @fp_guard_exception(%struct.proc*, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @proc_fdunlock(%struct.proc*) #1

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
