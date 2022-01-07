; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_lseek.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lseek_args = type { i64, i32, i32 }
%struct.fileproc = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.vfs_context = type { i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@FSIOC_FIOSEEKHOLE = common dso_local global i32 0, align 4
@FSIOC_FIOSEEKDATA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@VCHR = common dso_local global i64 0, align 8
@NOTE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lseek(i32 %0, %struct.lseek_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.lseek_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.fileproc*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.vfs_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.lseek_args* %1, %struct.lseek_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %14 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %15 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %11, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %19 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @fp_getfvp(i32 %17, i32 %20, %struct.fileproc** %8, %struct.TYPE_11__** %9)
  store i32 %21, i32* %13, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %3
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* @ENOTSUP, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @ESPIPE, align 4
  store i32 %28, i32* %4, align 4
  br label %139

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %4, align 4
  br label %139

31:                                               ; preds = %3
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %33 = call i64 @vnode_isfifo(%struct.TYPE_11__* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %37 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @file_drop(i32 %38)
  %40 = load i32, i32* @ESPIPE, align 4
  store i32 %40, i32* %4, align 4
  br label %139

41:                                               ; preds = %31
  %42 = call %struct.vfs_context* (...) @vfs_context_current()
  store %struct.vfs_context* %42, %struct.vfs_context** %10, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %44 = call i32 @vnode_getwithref(%struct.TYPE_11__* %43)
  store i32 %44, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %48 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @file_drop(i32 %49)
  %51 = load i32, i32* %13, align 4
  store i32 %51, i32* %4, align 4
  br label %139

52:                                               ; preds = %41
  %53 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %54 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %87 [
    i32 132, label %56
    i32 130, label %64
    i32 131, label %74
    i32 128, label %75
    i32 129, label %81
  ]

56:                                               ; preds = %52
  %57 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %58 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = add nsw i64 %62, %61
  store i64 %63, i64* %11, align 8
  br label %89

64:                                               ; preds = %52
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %66 = load %struct.vfs_context*, %struct.vfs_context** %10, align 8
  %67 = call i32 @vnode_size(%struct.TYPE_11__* %65, i64* %12, %struct.vfs_context* %66)
  store i32 %67, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %89

70:                                               ; preds = %64
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %11, align 8
  br label %89

74:                                               ; preds = %52
  br label %89

75:                                               ; preds = %52
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %77 = load i32, i32* @FSIOC_FIOSEEKHOLE, align 4
  %78 = ptrtoint i64* %11 to i32
  %79 = load %struct.vfs_context*, %struct.vfs_context** %10, align 8
  %80 = call i32 @VNOP_IOCTL(%struct.TYPE_11__* %76, i32 %77, i32 %78, i32 0, %struct.vfs_context* %79)
  store i32 %80, i32* %13, align 4
  br label %89

81:                                               ; preds = %52
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %83 = load i32, i32* @FSIOC_FIOSEEKDATA, align 4
  %84 = ptrtoint i64* %11 to i32
  %85 = load %struct.vfs_context*, %struct.vfs_context** %10, align 8
  %86 = call i32 @VNOP_IOCTL(%struct.TYPE_11__* %82, i32 %83, i32 %84, i32 0, %struct.vfs_context* %85)
  store i32 %86, i32* %13, align 4
  br label %89

87:                                               ; preds = %52
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %13, align 4
  br label %89

89:                                               ; preds = %87, %81, %75, %74, %70, %69, %56
  %90 = load i32, i32* %13, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %127

92:                                               ; preds = %89
  %93 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %94 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i64, i64* %11, align 8
  %99 = icmp slt i64 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = load i32, i32* @EOVERFLOW, align 4
  store i32 %101, i32* %13, align 4
  br label %126

102:                                              ; preds = %97, %92
  %103 = load i64, i64* %11, align 8
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %102
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @VCHR, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %112 = load i32, i32* @EINVAL, align 4
  store i32 %112, i32* %13, align 4
  br label %125

113:                                              ; preds = %105, %102
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %116 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %115, i32 0, i32 0
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 0
  store i64 %114, i64* %118, align 8
  %119 = load %struct.fileproc*, %struct.fileproc** %8, align 8
  %120 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %119, i32 0, i32 0
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64*, i64** %7, align 8
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %113, %111
  br label %126

126:                                              ; preds = %125, %100
  br label %127

127:                                              ; preds = %126, %89
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %129 = load i32, i32* %13, align 4
  %130 = load i32, i32* @NOTE_NONE, align 4
  %131 = call i32 @post_event_if_success(%struct.TYPE_11__* %128, i32 %129, i32 %130)
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %133 = call i32 @vnode_put(%struct.TYPE_11__* %132)
  %134 = load %struct.lseek_args*, %struct.lseek_args** %6, align 8
  %135 = getelementptr inbounds %struct.lseek_args, %struct.lseek_args* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @file_drop(i32 %136)
  %138 = load i32, i32* %13, align 4
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %127, %46, %35, %29, %27
  %140 = load i32, i32* %4, align 4
  ret i32 %140
}

declare dso_local i32 @fp_getfvp(i32, i32, %struct.fileproc**, %struct.TYPE_11__**) #1

declare dso_local i64 @vnode_isfifo(%struct.TYPE_11__*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

declare dso_local i32 @vnode_getwithref(%struct.TYPE_11__*) #1

declare dso_local i32 @vnode_size(%struct.TYPE_11__*, i64*, %struct.vfs_context*) #1

declare dso_local i32 @VNOP_IOCTL(%struct.TYPE_11__*, i32, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @post_event_if_success(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
