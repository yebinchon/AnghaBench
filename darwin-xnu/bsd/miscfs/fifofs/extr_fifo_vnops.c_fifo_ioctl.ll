; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/fifofs/extr_fifo_vnops.c_fifo_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_ioctl_args = type { i32, i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.fileproc = type { %struct.fileglob* }
%struct.fileglob = type { i8* }

@FIONBIO = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fifo_ioctl(%struct.vnop_ioctl_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_ioctl_args*, align 8
  %4 = alloca %struct.fileproc, align 8
  %5 = alloca %struct.fileglob, align 8
  %6 = alloca i32, align 4
  store %struct.vnop_ioctl_args* %0, %struct.vnop_ioctl_args** %3, align 8
  %7 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %8 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @FIONBIO, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

13:                                               ; preds = %1
  %14 = call i32 @bzero(%struct.fileproc* %4, i32 8)
  %15 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  store %struct.fileglob* %5, %struct.fileglob** %15, align 8
  %16 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %17 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %13
  %23 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %24 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  %32 = load %struct.fileglob*, %struct.fileglob** %31, align 8
  %33 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %32, i32 0, i32 0
  store i8* %30, i8** %33, align 8
  %34 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %35 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %38 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %41 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @soo_ioctl(%struct.fileproc* %4, i32 %36, i32 %39, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %22
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %2, align 4
  br label %84

48:                                               ; preds = %22
  br label %49

49:                                               ; preds = %48, %13
  %50 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %51 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @FWRITE, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %83

56:                                               ; preds = %49
  %57 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %58 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %57, i32 0, i32 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %4, i32 0, i32 0
  %66 = load %struct.fileglob*, %struct.fileglob** %65, align 8
  %67 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %66, i32 0, i32 0
  store i8* %64, i8** %67, align 8
  %68 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %69 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %72 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.vnop_ioctl_args*, %struct.vnop_ioctl_args** %3, align 8
  %75 = getelementptr inbounds %struct.vnop_ioctl_args, %struct.vnop_ioctl_args* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @soo_ioctl(%struct.fileproc* %4, i32 %70, i32 %73, i32 %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %56
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %2, align 4
  br label %84

82:                                               ; preds = %56
  br label %83

83:                                               ; preds = %82, %49
  store i32 0, i32* %2, align 4
  br label %84

84:                                               ; preds = %83, %80, %46, %12
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @bzero(%struct.fileproc*, i32) #1

declare dso_local i32 @soo_ioctl(%struct.fileproc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
