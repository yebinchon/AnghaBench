; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_devfd_readdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_devfd_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_readdir_args = type { i32, %struct.uio* }
%struct.uio = type { i32 }
%struct.proc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dirent = type { i32, i64, i32, i32, i32 }

@VNODE_READDIR_EXTENDED = common dso_local global i32 0, align 4
@VNODE_READDIR_REQSEEKOFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UIO_MX = common dso_local global i32 0, align 4
@UF_RESERVED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@DT_UNKNOWN = common dso_local global i32 0, align 4
@FD_STDIN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_devfd_readdir(%struct.vnop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_readdir_args*, align 8
  %4 = alloca %struct.uio*, align 8
  %5 = alloca %struct.proc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dirent, align 8
  %9 = alloca %struct.dirent*, align 8
  store %struct.vnop_readdir_args* %0, %struct.vnop_readdir_args** %3, align 8
  %10 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %11 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %10, i32 0, i32 1
  %12 = load %struct.uio*, %struct.uio** %11, align 8
  store %struct.uio* %12, %struct.uio** %4, align 8
  %13 = call %struct.proc* (...) @current_proc()
  store %struct.proc* %13, %struct.proc** %5, align 8
  %14 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %15 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @VNODE_READDIR_EXTENDED, align 4
  %18 = load i32, i32* @VNODE_READDIR_REQSEEKOFF, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %2, align 4
  br label %108

24:                                               ; preds = %1
  %25 = load %struct.uio*, %struct.uio** %4, align 8
  %26 = call i32 @uio_resid(%struct.uio* %25)
  %27 = load i32, i32* @UIO_MX, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %2, align 4
  br label %108

31:                                               ; preds = %24
  %32 = load %struct.uio*, %struct.uio** %4, align 8
  %33 = getelementptr inbounds %struct.uio, %struct.uio* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @UIO_MX, align 4
  %36 = sdiv i32 %34, %35
  store i32 %36, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %98, %31
  %38 = load %struct.uio*, %struct.uio** %4, align 8
  %39 = call i32 @uio_resid(%struct.uio* %38)
  %40 = load i32, i32* @UIO_MX, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %101

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.proc*, %struct.proc** %5, align 8
  %45 = getelementptr inbounds %struct.proc, %struct.proc* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sge i32 %43, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %101

51:                                               ; preds = %42
  %52 = load %struct.proc*, %struct.proc** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = call i32** @fdfile(%struct.proc* %52, i32 %53)
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %98

57:                                               ; preds = %51
  %58 = load %struct.proc*, %struct.proc** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32* @fdflags(%struct.proc* %58, i32 %59)
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @UF_RESERVED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %98, label %65

65:                                               ; preds = %57
  store %struct.dirent* %8, %struct.dirent** %9, align 8
  %66 = load %struct.dirent*, %struct.dirent** %9, align 8
  %67 = ptrtoint %struct.dirent* %66 to i32
  %68 = load i32, i32* @UIO_MX, align 4
  %69 = call i32 @bzero(i32 %67, i32 %68)
  %70 = load %struct.dirent*, %struct.dirent** %9, align 8
  %71 = getelementptr inbounds %struct.dirent, %struct.dirent* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @snprintf(i32 %72, i32 4, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %73)
  %75 = load %struct.dirent*, %struct.dirent** %9, align 8
  %76 = getelementptr inbounds %struct.dirent, %struct.dirent* %75, i32 0, i32 4
  store i32 %74, i32* %76, align 8
  %77 = load i32, i32* @UIO_MX, align 4
  %78 = load %struct.dirent*, %struct.dirent** %9, align 8
  %79 = getelementptr inbounds %struct.dirent, %struct.dirent* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load i32, i32* @DT_UNKNOWN, align 4
  %81 = load %struct.dirent*, %struct.dirent** %9, align 8
  %82 = getelementptr inbounds %struct.dirent, %struct.dirent* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* @FD_STDIN, align 8
  %86 = add nsw i64 %84, %85
  %87 = load %struct.dirent*, %struct.dirent** %9, align 8
  %88 = getelementptr inbounds %struct.dirent, %struct.dirent* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.dirent*, %struct.dirent** %9, align 8
  %90 = ptrtoint %struct.dirent* %89 to i32
  %91 = load i32, i32* @UIO_MX, align 4
  %92 = load %struct.uio*, %struct.uio** %4, align 8
  %93 = call i32 @uiomove(i32 %90, i32 %91, %struct.uio* %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %65
  br label %101

97:                                               ; preds = %65
  br label %98

98:                                               ; preds = %97, %57, %51
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %6, align 4
  br label %37

101:                                              ; preds = %96, %50, %37
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @UIO_MX, align 4
  %104 = mul nsw i32 %102, %103
  %105 = load %struct.uio*, %struct.uio** %4, align 8
  %106 = getelementptr inbounds %struct.uio, %struct.uio* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* %7, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %101, %29, %22
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local %struct.proc* @current_proc(...) #1

declare dso_local i32 @uio_resid(%struct.uio*) #1

declare dso_local i32** @fdfile(%struct.proc*, i32) #1

declare dso_local i32* @fdflags(%struct.proc*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @uiomove(i32, i32, %struct.uio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
