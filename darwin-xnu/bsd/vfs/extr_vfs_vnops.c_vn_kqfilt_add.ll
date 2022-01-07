; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_kqfilt_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_kqfilt_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.knote = type { i32, i32, i32, i32, i32, i8* }
%struct.kevent_internal_s = type { i32 }
%struct.vnode = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@VNODE_NODEAD = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@EV_ERROR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EVFILTID_VN = common dso_local global i32 0, align 4
@VNODE_MONITOR_BEGIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, %struct.knote*, %struct.kevent_internal_s*, i32)* @vn_kqfilt_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_kqfilt_add(%struct.fileproc* %0, %struct.knote* %1, %struct.kevent_internal_s* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca %struct.knote*, align 8
  %8 = alloca %struct.kevent_internal_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store %struct.knote* %1, %struct.knote** %7, align 8
  store %struct.kevent_internal_s* %2, %struct.kevent_internal_s** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %14 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.vnode*
  store %struct.vnode* %18, %struct.vnode** %10, align 8
  %19 = load %struct.vnode*, %struct.vnode** %10, align 8
  %20 = load i32, i32* @VNODE_NODEAD, align 4
  %21 = call i32 @vget_internal(%struct.vnode* %19, i32 0, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %112

23:                                               ; preds = %4
  %24 = load %struct.knote*, %struct.knote** %7, align 8
  %25 = getelementptr inbounds %struct.knote, %struct.knote* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %75 [
    i32 130, label %27
    i32 128, label %27
    i32 129, label %74
  ]

27:                                               ; preds = %23, %23
  %28 = load %struct.vnode*, %struct.vnode** %10, align 8
  %29 = call i32 @vnode_isfifo(%struct.vnode* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %46

31:                                               ; preds = %27
  %32 = load %struct.vnode*, %struct.vnode** %10, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = icmp ne %struct.TYPE_3__* %34, null
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.vnode*, %struct.vnode** %10, align 8
  %38 = getelementptr inbounds %struct.vnode, %struct.vnode* %37, i32 0, i32 1
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %36, %31
  %44 = load i32, i32* @ENOTSUP, align 4
  store i32 %44, i32* %11, align 4
  br label %45

45:                                               ; preds = %43, %36
  br label %73

46:                                               ; preds = %27
  %47 = load %struct.vnode*, %struct.vnode** %10, align 8
  %48 = call i32 @vnode_isreg(%struct.vnode* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %72, label %50

50:                                               ; preds = %46
  %51 = load %struct.vnode*, %struct.vnode** %10, align 8
  %52 = call i32 @vnode_ischr(%struct.vnode* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %70

54:                                               ; preds = %50
  %55 = load %struct.vnode*, %struct.vnode** %10, align 8
  %56 = load %struct.knote*, %struct.knote** %7, align 8
  %57 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %8, align 8
  %58 = call i32 @spec_kqfilter(%struct.vnode* %55, %struct.knote* %56, %struct.kevent_internal_s* %57)
  store i32 %58, i32* %12, align 4
  %59 = load %struct.knote*, %struct.knote** %7, align 8
  %60 = getelementptr inbounds %struct.knote, %struct.knote* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @EV_ERROR, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %54
  %66 = load %struct.vnode*, %struct.vnode** %10, align 8
  %67 = call i32 @vnode_put(%struct.vnode* %66)
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %5, align 4
  br label %125

69:                                               ; preds = %54
  br label %70

70:                                               ; preds = %69, %50
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %46
  br label %73

73:                                               ; preds = %72, %45
  br label %77

74:                                               ; preds = %23
  br label %77

75:                                               ; preds = %23
  %76 = load i32, i32* @EINVAL, align 4
  store i32 %76, i32* %11, align 4
  br label %77

77:                                               ; preds = %75, %74, %73
  %78 = load i32, i32* %11, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %77
  %81 = load %struct.vnode*, %struct.vnode** %10, align 8
  %82 = bitcast %struct.vnode* %81 to i8*
  %83 = load %struct.knote*, %struct.knote** %7, align 8
  %84 = getelementptr inbounds %struct.knote, %struct.knote* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  %85 = load %struct.vnode*, %struct.vnode** %10, align 8
  %86 = call i32 @vnode_vid(%struct.vnode* %85)
  %87 = load %struct.knote*, %struct.knote** %7, align 8
  %88 = getelementptr inbounds %struct.knote, %struct.knote* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load i32, i32* @EVFILTID_VN, align 4
  %90 = load %struct.knote*, %struct.knote** %7, align 8
  %91 = getelementptr inbounds %struct.knote, %struct.knote* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 4
  %92 = load %struct.vnode*, %struct.vnode** %10, align 8
  %93 = call i32 @vnode_lock(%struct.vnode* %92)
  %94 = load %struct.vnode*, %struct.vnode** %10, align 8
  %95 = getelementptr inbounds %struct.vnode, %struct.vnode* %94, i32 0, i32 0
  %96 = load %struct.knote*, %struct.knote** %7, align 8
  %97 = call i32 @KNOTE_ATTACH(i32* %95, %struct.knote* %96)
  %98 = load %struct.knote*, %struct.knote** %7, align 8
  %99 = load %struct.vnode*, %struct.vnode** %10, align 8
  %100 = call i32 @filt_vnode_common(%struct.knote* %98, %struct.vnode* %99, i32 0)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.vnode*, %struct.vnode** %10, align 8
  %102 = call i32 @vnode_unlock(%struct.vnode* %101)
  %103 = load %struct.vnode*, %struct.vnode** %10, align 8
  %104 = load i32, i32* @VNODE_MONITOR_BEGIN, align 4
  %105 = load %struct.knote*, %struct.knote** %7, align 8
  %106 = bitcast %struct.knote* %105 to i8*
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @VNOP_MONITOR(%struct.vnode* %103, i32 0, i32 %104, i8* %106, i32 %107)
  br label %109

109:                                              ; preds = %80, %77
  %110 = load %struct.vnode*, %struct.vnode** %10, align 8
  %111 = call i32 @vnode_put(%struct.vnode* %110)
  br label %112

112:                                              ; preds = %109, %4
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %11, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %123

116:                                              ; preds = %113
  %117 = load i32, i32* @EV_ERROR, align 4
  %118 = load %struct.knote*, %struct.knote** %7, align 8
  %119 = getelementptr inbounds %struct.knote, %struct.knote* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.knote*, %struct.knote** %7, align 8
  %122 = getelementptr inbounds %struct.knote, %struct.knote* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  br label %123

123:                                              ; preds = %116, %113
  %124 = load i32, i32* %12, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %65
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local i32 @vget_internal(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vnode_isfifo(%struct.vnode*) #1

declare dso_local i32 @vnode_isreg(%struct.vnode*) #1

declare dso_local i32 @vnode_ischr(%struct.vnode*) #1

declare dso_local i32 @spec_kqfilter(%struct.vnode*, %struct.knote*, %struct.kevent_internal_s*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

declare dso_local i32 @vnode_vid(%struct.vnode*) #1

declare dso_local i32 @vnode_lock(%struct.vnode*) #1

declare dso_local i32 @KNOTE_ATTACH(i32*, %struct.knote*) #1

declare dso_local i32 @filt_vnode_common(%struct.knote*, %struct.vnode*, i32) #1

declare dso_local i32 @vnode_unlock(%struct.vnode*) #1

declare dso_local i32 @VNOP_MONITOR(%struct.vnode*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
