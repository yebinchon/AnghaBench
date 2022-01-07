; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_aio.c_do_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }
%struct.fileproc = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }
%struct.vfs_context = type { i32, i32 }

@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@FOF_PCRED = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @do_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_aio_write(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.fileproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vfs_context, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @fp_lookup(i32 %10, i32 %14, %struct.fileproc** %4, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %21 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @FWRITE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %19
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %37 = call i32 @fp_drop(i32 %31, i32 %35, %struct.fileproc* %36, i32 0)
  %38 = load i32, i32* @EBADF, align 4
  store i32 %38, i32* %2, align 4
  br label %107

39:                                               ; preds = %19
  %40 = load i32, i32* @FOF_PCRED, align 4
  store i32 %40, i32* %6, align 4
  %41 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %42 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @O_APPEND, align 4
  %47 = and i32 %45, %46
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %39
  %50 = load i32, i32* @FOF_OFFSET, align 4
  %51 = load i32, i32* %6, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %49, %39
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %7, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %59 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %7, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 2
  %80 = call i32 @dofilewrite(%struct.vfs_context* %7, %struct.fileproc* %64, i32 %68, i32 %72, i32 %76, i32 %77, i32* %79)
  store i32 %80, i32* %5, align 4
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %53
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %94 = call i32 @fp_drop_written(i32 %88, i32 %92, %struct.fileproc* %93)
  br label %105

95:                                               ; preds = %53
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.fileproc*, %struct.fileproc** %4, align 8
  %104 = call i32 @fp_drop(i32 %98, i32 %102, %struct.fileproc* %103, i32 0)
  br label %105

105:                                              ; preds = %95, %85
  %106 = load i32, i32* %5, align 4
  store i32 %106, i32* %2, align 4
  br label %107

107:                                              ; preds = %105, %28, %17
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

declare dso_local i32 @dofilewrite(%struct.vfs_context*, %struct.fileproc*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @fp_drop_written(i32, i32, %struct.fileproc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
