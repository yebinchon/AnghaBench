; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_fdesc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_label_associate_fdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.fdescnode = type { i32 }
%struct.vnode = type { i32 }
%struct.fileproc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, i64 }
%struct.pipe = type { i32 }
%struct.proc = type { i32 }

@vnode_label_associate_file = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@vnode_label_copy = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vnode_label_associate_pipe = common dso_local global i32 0, align 4
@vnode_label_associate_socket = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_label_associate_fdesc(%struct.mount* %0, %struct.fdescnode* %1, %struct.vnode* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mount*, align 8
  %7 = alloca %struct.fdescnode*, align 8
  %8 = alloca %struct.vnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.fileproc*, align 8
  %11 = alloca %struct.pipe*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca %struct.proc*, align 8
  %14 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %6, align 8
  store %struct.fdescnode* %1, %struct.fdescnode** %7, align 8
  store %struct.vnode* %2, %struct.vnode** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.fdescnode*, %struct.fdescnode** %7, align 8
  %16 = getelementptr inbounds %struct.fdescnode, %struct.fdescnode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %32

19:                                               ; preds = %4
  %20 = load i32, i32* @vnode_label_associate_file, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @vfs_context_ucred(i32 %21)
  %23 = load %struct.mount*, %struct.mount** %6, align 8
  %24 = load %struct.mount*, %struct.mount** %6, align 8
  %25 = getelementptr inbounds %struct.mount, %struct.mount* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vnode*, %struct.vnode** %8, align 8
  %28 = load %struct.vnode*, %struct.vnode** %8, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i32, i32, ...) @MAC_PERFORM(i32 %20, i32 %22, %struct.mount* %23, i32 %26, i8* null, i8* null, %struct.vnode* %27, i32 %30)
  store i32 0, i32* %5, align 4
  br label %147

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = call %struct.proc* @vfs_context_proc(i32 %33)
  store %struct.proc* %34, %struct.proc** %13, align 8
  %35 = load %struct.proc*, %struct.proc** %13, align 8
  %36 = load %struct.fdescnode*, %struct.fdescnode** %7, align 8
  %37 = getelementptr inbounds %struct.fdescnode, %struct.fdescnode* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @fp_lookup(%struct.proc* %35, i32 %38, %struct.fileproc** %10, i32 0)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %32
  %43 = load i32, i32* %14, align 4
  store i32 %43, i32* %5, align 4
  br label %147

44:                                               ; preds = %32
  %45 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %46 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = icmp eq %struct.TYPE_2__* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EBADF, align 4
  store i32 %50, i32* %14, align 4
  br label %139

51:                                               ; preds = %44
  %52 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %53 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = call i32 @FILEGLOB_DTYPE(%struct.TYPE_2__* %54)
  switch i32 %55, label %117 [
    i32 128, label %56
    i32 130, label %78
    i32 131, label %83
    i32 132, label %88
    i32 134, label %116
    i32 135, label %116
    i32 136, label %116
    i32 133, label %116
  ]

56:                                               ; preds = %51
  %57 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %58 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.vnode*
  store %struct.vnode* %62, %struct.vnode** %12, align 8
  %63 = load %struct.vnode*, %struct.vnode** %12, align 8
  %64 = call i32 @vnode_getwithref(%struct.vnode* %63)
  store i32 %64, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %139

67:                                               ; preds = %56
  %68 = load i32, i32* @vnode_label_copy, align 4
  %69 = load %struct.vnode*, %struct.vnode** %12, align 8
  %70 = getelementptr inbounds %struct.vnode, %struct.vnode* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.vnode*, %struct.vnode** %8, align 8
  %73 = getelementptr inbounds %struct.vnode, %struct.vnode* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i32, i32, ...) @MAC_PERFORM(i32 %68, i32 %71, i32 %74)
  %76 = load %struct.vnode*, %struct.vnode** %12, align 8
  %77 = call i32 @vnode_put(%struct.vnode* %76)
  br label %138

78:                                               ; preds = %51
  %79 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %80 = load %struct.vnode*, %struct.vnode** %8, align 8
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @pshm_label_associate(%struct.fileproc* %79, %struct.vnode* %80, i32 %81)
  br label %138

83:                                               ; preds = %51
  %84 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %85 = load %struct.vnode*, %struct.vnode** %8, align 8
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @psem_label_associate(%struct.fileproc* %84, %struct.vnode* %85, i32 %86)
  br label %138

88:                                               ; preds = %51
  %89 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %90 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.pipe*
  store %struct.pipe* %94, %struct.pipe** %11, align 8
  %95 = load %struct.pipe*, %struct.pipe** %11, align 8
  %96 = icmp eq %struct.pipe* %95, inttoptr (i64 -1 to %struct.pipe*)
  br i1 %96, label %97, label %99

97:                                               ; preds = %88
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %14, align 4
  br label %139

99:                                               ; preds = %88
  %100 = load %struct.pipe*, %struct.pipe** %11, align 8
  %101 = call i32 @PIPE_LOCK(%struct.pipe* %100)
  %102 = load i32, i32* @vnode_label_associate_pipe, align 4
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @vfs_context_ucred(i32 %103)
  %105 = load %struct.pipe*, %struct.pipe** %11, align 8
  %106 = load %struct.pipe*, %struct.pipe** %11, align 8
  %107 = getelementptr inbounds %struct.pipe, %struct.pipe* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.vnode*, %struct.vnode** %8, align 8
  %110 = load %struct.vnode*, %struct.vnode** %8, align 8
  %111 = getelementptr inbounds %struct.vnode, %struct.vnode* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i32, i32, ...) @MAC_PERFORM(i32 %102, i32 %104, %struct.pipe* %105, i32 %108, %struct.vnode* %109, i32 %112)
  %114 = load %struct.pipe*, %struct.pipe** %11, align 8
  %115 = call i32 @PIPE_UNLOCK(%struct.pipe* %114)
  br label %138

116:                                              ; preds = %51, %51, %51, %51
  br label %117

117:                                              ; preds = %51, %116
  %118 = load i32, i32* @vnode_label_associate_file, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @vfs_context_ucred(i32 %119)
  %121 = load %struct.mount*, %struct.mount** %6, align 8
  %122 = load %struct.mount*, %struct.mount** %6, align 8
  %123 = getelementptr inbounds %struct.mount, %struct.mount* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %126 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %129 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %128, i32 0, i32 0
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.vnode*, %struct.vnode** %8, align 8
  %134 = load %struct.vnode*, %struct.vnode** %8, align 8
  %135 = getelementptr inbounds %struct.vnode, %struct.vnode* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 (i32, i32, ...) @MAC_PERFORM(i32 %118, i32 %120, %struct.mount* %121, i32 %124, %struct.TYPE_2__* %127, i32* %132, %struct.vnode* %133, i32 %136)
  br label %138

138:                                              ; preds = %117, %99, %83, %78, %67
  br label %139

139:                                              ; preds = %138, %97, %66, %49
  %140 = load %struct.proc*, %struct.proc** %13, align 8
  %141 = load %struct.fdescnode*, %struct.fdescnode** %7, align 8
  %142 = getelementptr inbounds %struct.fdescnode, %struct.fdescnode* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.fileproc*, %struct.fileproc** %10, align 8
  %145 = call i32 @fp_drop(%struct.proc* %140, i32 %143, %struct.fileproc* %144, i32 0)
  %146 = load i32, i32* %14, align 4
  store i32 %146, i32* %5, align 4
  br label %147

147:                                              ; preds = %139, %42, %19
  %148 = load i32, i32* %5, align 4
  ret i32 %148
}

declare dso_local i32 @MAC_PERFORM(i32, i32, ...) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local %struct.proc* @vfs_context_proc(i32) #1

declare dso_local i32 @fp_lookup(%struct.proc*, i32, %struct.fileproc**, i32) #1

declare dso_local i32 @FILEGLOB_DTYPE(%struct.TYPE_2__*) #1

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @pshm_label_associate(%struct.fileproc*, %struct.vnode*, i32) #1

declare dso_local i32 @psem_label_associate(%struct.fileproc*, %struct.vnode*, i32) #1

declare dso_local i32 @PIPE_LOCK(%struct.pipe*) #1

declare dso_local i32 @PIPE_UNLOCK(%struct.pipe*) #1

declare dso_local i32 @fp_drop(%struct.proc*, i32, %struct.fileproc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
