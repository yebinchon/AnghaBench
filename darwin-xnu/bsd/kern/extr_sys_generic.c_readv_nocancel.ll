; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_readv_nocancel.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_sys_generic.c_readv_nocancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32 }
%struct.readv_nocancel_args = type { i64, i32, i32 }
%struct.user_iovec = type { i32 }

@UIO_MAXIOV = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @readv_nocancel(%struct.proc* %0, %struct.readv_nocancel_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.proc*, align 8
  %6 = alloca %struct.readv_nocancel_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.user_iovec*, align 8
  store %struct.proc* %0, %struct.proc** %5, align 8
  store %struct.readv_nocancel_args* %1, %struct.readv_nocancel_args** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %12 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sle i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %17 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @UIO_MAXIOV, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %87

23:                                               ; preds = %15
  %24 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %25 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.proc*, %struct.proc** %5, align 8
  %28 = call i64 @IS_64BIT_PROCESS(%struct.proc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %34

32:                                               ; preds = %23
  %33 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  %36 = load i32, i32* @UIO_READ, align 4
  %37 = call i32* @uio_create(i64 %26, i32 0, i32 %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call %struct.user_iovec* @uio_iovsaddr(i32* %38)
  store %struct.user_iovec* %39, %struct.user_iovec** %10, align 8
  %40 = load %struct.user_iovec*, %struct.user_iovec** %10, align 8
  %41 = icmp eq %struct.user_iovec* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* @ENOMEM, align 4
  store i32 %43, i32* %9, align 4
  br label %79

44:                                               ; preds = %34
  %45 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %46 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.proc*, %struct.proc** %5, align 8
  %49 = call i64 @IS_64BIT_PROCESS(%struct.proc* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %55

53:                                               ; preds = %44
  %54 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %58 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.user_iovec*, %struct.user_iovec** %10, align 8
  %61 = call i32 @copyin_user_iovec_array(i32 %47, i32 %56, i64 %59, %struct.user_iovec* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %79

65:                                               ; preds = %55
  %66 = load i32*, i32** %8, align 8
  %67 = call i32 @uio_calculateresid(i32* %66)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  br label %79

71:                                               ; preds = %65
  %72 = load %struct.proc*, %struct.proc** %5, align 8
  %73 = load %struct.readv_nocancel_args*, %struct.readv_nocancel_args** %6, align 8
  %74 = getelementptr inbounds %struct.readv_nocancel_args, %struct.readv_nocancel_args* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = load i32*, i32** %7, align 8
  %78 = call i32 @rd_uio(%struct.proc* %72, i32 %75, i32* %76, i32* %77)
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %71, %70, %64, %42
  %80 = load i32*, i32** %8, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @uio_free(i32* %83)
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %85, %21
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32* @uio_create(i64, i32, i32, i32) #1

declare dso_local i64 @IS_64BIT_PROCESS(%struct.proc*) #1

declare dso_local %struct.user_iovec* @uio_iovsaddr(i32*) #1

declare dso_local i32 @copyin_user_iovec_array(i32, i32, i64, %struct.user_iovec*) #1

declare dso_local i32 @uio_calculateresid(i32*) #1

declare dso_local i32 @rd_uio(%struct.proc*, i32, i32*, i32*) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
