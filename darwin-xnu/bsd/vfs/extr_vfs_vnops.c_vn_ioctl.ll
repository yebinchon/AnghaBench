; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.fileproc = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i64 }
%struct.vnode = type { i32, i32 }
%struct.session = type { i32, %struct.vnode* }

@FIONREAD = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@FIOASYNC = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@DKIOCSETBLOCKSIZE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@FIODTYPE = common dso_local global i32 0, align 4
@nblkdev = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@bdevsw = common dso_local global %struct.TYPE_6__* null, align 8
@nchrdev = common dso_local global i64 0, align 8
@cdevsw = common dso_local global %struct.TYPE_5__* null, align 8
@TIOCSCTTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileproc*, i32, i64, i32)* @vn_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_ioctl(%struct.fileproc* %0, i32 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fileproc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.session*, align 8
  store %struct.fileproc* %0, %struct.fileproc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %16 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.vnode*
  store %struct.vnode* %20, %struct.vnode** %10, align 8
  %21 = load %struct.vnode*, %struct.vnode** %10, align 8
  %22 = call i32 @vnode_getwithref(%struct.vnode* %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* %12, align 4
  store i32 %25, i32* %5, align 4
  br label %169

26:                                               ; preds = %4
  %27 = load %struct.vnode*, %struct.vnode** %10, align 8
  %28 = getelementptr inbounds %struct.vnode, %struct.vnode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %60 [
    i32 128, label %30
    i32 130, label %30
    i32 129, label %62
    i32 131, label %62
    i32 132, label %62
  ]

30:                                               ; preds = %26, %26
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @FIONREAD, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %30
  %35 = load %struct.vnode*, %struct.vnode** %10, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @vnode_size(%struct.vnode* %35, i32* %11, i32 %36)
  store i32 %37, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  br label %165

40:                                               ; preds = %34
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %43 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %41, %46
  %48 = load i64, i64* %8, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32 %47, i32* %49, align 4
  br label %165

50:                                               ; preds = %30
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* @FIONBIO, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @FIOASYNC, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %54, %50
  br label %165

59:                                               ; preds = %54
  br label %60

60:                                               ; preds = %26, %59
  %61 = load i32, i32* @ENOTTY, align 4
  store i32 %61, i32* %12, align 4
  br label %165

62:                                               ; preds = %26, %26, %26
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @DKIOCSETBLOCKSIZE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %62
  %67 = load i32, i32* @EPERM, align 4
  store i32 %67, i32* %12, align 4
  br label %165

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @FIODTYPE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %126

72:                                               ; preds = %68
  %73 = load %struct.vnode*, %struct.vnode** %10, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp eq i32 %75, 132
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.vnode*, %struct.vnode** %10, align 8
  %79 = getelementptr inbounds %struct.vnode, %struct.vnode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @major(i32 %80)
  %82 = load i64, i64* @nblkdev, align 8
  %83 = icmp uge i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %77
  %85 = load i32, i32* @ENXIO, align 4
  store i32 %85, i32* %12, align 4
  br label %165

86:                                               ; preds = %77
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @bdevsw, align 8
  %88 = load %struct.vnode*, %struct.vnode** %10, align 8
  %89 = getelementptr inbounds %struct.vnode, %struct.vnode* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @major(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i64, i64* %8, align 8
  %96 = inttoptr i64 %95 to i32*
  store i32 %94, i32* %96, align 4
  br label %125

97:                                               ; preds = %72
  %98 = load %struct.vnode*, %struct.vnode** %10, align 8
  %99 = getelementptr inbounds %struct.vnode, %struct.vnode* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 131
  br i1 %101, label %102, label %122

102:                                              ; preds = %97
  %103 = load %struct.vnode*, %struct.vnode** %10, align 8
  %104 = getelementptr inbounds %struct.vnode, %struct.vnode* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @major(i32 %105)
  %107 = load i64, i64* @nchrdev, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @ENXIO, align 4
  store i32 %110, i32* %12, align 4
  br label %165

111:                                              ; preds = %102
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** @cdevsw, align 8
  %113 = load %struct.vnode*, %struct.vnode** %10, align 8
  %114 = getelementptr inbounds %struct.vnode, %struct.vnode* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @major(i32 %115)
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = load i64, i64* %8, align 8
  %121 = inttoptr i64 %120 to i32*
  store i32 %119, i32* %121, align 4
  br label %124

122:                                              ; preds = %97
  %123 = load i32, i32* @ENOTTY, align 4
  store i32 %123, i32* %12, align 4
  br label %165

124:                                              ; preds = %111
  br label %125

125:                                              ; preds = %124, %86
  br label %165

126:                                              ; preds = %68
  %127 = load %struct.vnode*, %struct.vnode** %10, align 8
  %128 = load i32, i32* %7, align 4
  %129 = load i64, i64* %8, align 8
  %130 = load %struct.fileproc*, %struct.fileproc** %6, align 8
  %131 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %9, align 4
  %136 = call i32 @VNOP_IOCTL(%struct.vnode* %127, i32 %128, i64 %129, i32 %134, i32 %135)
  store i32 %136, i32* %12, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %163

139:                                              ; preds = %126
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* @TIOCSCTTY, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %163

143:                                              ; preds = %139
  %144 = load i32, i32* %9, align 4
  %145 = call i32 @vfs_context_proc(i32 %144)
  %146 = call %struct.session* @proc_session(i32 %145)
  store %struct.session* %146, %struct.session** %14, align 8
  %147 = load %struct.session*, %struct.session** %14, align 8
  %148 = call i32 @session_lock(%struct.session* %147)
  %149 = load %struct.session*, %struct.session** %14, align 8
  %150 = getelementptr inbounds %struct.session, %struct.session* %149, i32 0, i32 1
  %151 = load %struct.vnode*, %struct.vnode** %150, align 8
  store %struct.vnode* %151, %struct.vnode** %13, align 8
  %152 = load %struct.vnode*, %struct.vnode** %10, align 8
  %153 = load %struct.session*, %struct.session** %14, align 8
  %154 = getelementptr inbounds %struct.session, %struct.session* %153, i32 0, i32 1
  store %struct.vnode* %152, %struct.vnode** %154, align 8
  %155 = load %struct.vnode*, %struct.vnode** %10, align 8
  %156 = call i32 @vnode_vid(%struct.vnode* %155)
  %157 = load %struct.session*, %struct.session** %14, align 8
  %158 = getelementptr inbounds %struct.session, %struct.session* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 8
  %159 = load %struct.session*, %struct.session** %14, align 8
  %160 = call i32 @session_unlock(%struct.session* %159)
  %161 = load %struct.session*, %struct.session** %14, align 8
  %162 = call i32 @session_rele(%struct.session* %161)
  br label %163

163:                                              ; preds = %143, %139, %126
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164, %125, %122, %109, %84, %66, %60, %58, %40, %39
  %166 = load %struct.vnode*, %struct.vnode** %10, align 8
  %167 = call i32 @vnode_put(%struct.vnode* %166)
  %168 = load i32, i32* %12, align 4
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %165, %24
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i32 @vnode_size(%struct.vnode*, i32*, i32) #1

declare dso_local i64 @major(i32) #1

declare dso_local i32 @VNOP_IOCTL(%struct.vnode*, i32, i64, i32, i32) #1

declare dso_local %struct.session* @proc_session(i32) #1

declare dso_local i32 @vfs_context_proc(i32) #1

declare dso_local i32 @session_lock(%struct.session*) #1

declare dso_local i32 @vnode_vid(%struct.vnode*) #1

declare dso_local i32 @session_unlock(%struct.session*) #1

declare dso_local i32 @session_rele(%struct.session*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
