; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_mkdir1at.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_mkdir1at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.nameidata = type { %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_11__*, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@mode = common dso_local global i32 0, align 4
@CREATE = common dso_local global i32 0, align 4
@OP_MKDIR = common dso_local global i32 0, align 4
@LOCKPARENT = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@WILLBEDIR = common dso_local global i32 0, align 4
@NAMEI_COMPOUNDMKDIR = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@VDIR = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@LOOKUP = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@FSE_ARG_DONE = common dso_local global i32 0, align 4
@FSE_ARG_VNODE = common dso_local global i32 0, align 4
@FSE_CREATE_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.vnode_attr*, i32, i32)* @mkdir1at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mkdir1at(i32 %0, i32 %1, %struct.vnode_attr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode_attr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.nameidata, align 8
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.vnode_attr* %2, %struct.vnode_attr** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %19 = load i32, i32* @mode, align 4
  %20 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %21 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @AUDIT_ARG(i32 %19, i32 %22)
  %24 = load i32, i32* @CREATE, align 4
  %25 = load i32, i32* @OP_MKDIR, align 4
  %26 = load i32, i32* @LOCKPARENT, align 4
  %27 = load i32, i32* @AUDITVNPATH1, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @NDINIT(%struct.nameidata* %17, i32 %24, i32 %25, i32 %28, i32 %29, i32 %30, i32 %31)
  %33 = load i32, i32* @WILLBEDIR, align 4
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load i32, i32* @NAMEI_COMPOUNDMKDIR, align 4
  %39 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 3
  store i32 %38, i32* %39, align 8
  br label %40

40:                                               ; preds = %110, %5
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @nameiat(%struct.nameidata* %17, i32 %41)
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %14, align 4
  store i32 %46, i32* %6, align 4
  br label %166

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 2
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %13, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %50, align 8
  store %struct.TYPE_11__* %51, %struct.TYPE_11__** %12, align 8
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %53 = icmp ne %struct.TYPE_11__* %52, null
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @EEXIST, align 4
  store i32 %55, i32* %14, align 4
  br label %151

56:                                               ; preds = %47
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %58 = call i32 @vnode_compound_mkdir_available(%struct.TYPE_11__* %57)
  store i32 %58, i32* %16, align 4
  %59 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %60 = load i32, i32* @va_type, align 4
  %61 = load i32, i32* @VDIR, align 4
  %62 = call i32 @VATTR_SET(%struct.vnode_attr* %59, i32 %60, i32 %61)
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %65 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @vn_authorize_mkdir(%struct.TYPE_11__* %63, %struct.TYPE_12__* %64, %struct.vnode_attr* %65, i32 %66, i32* null)
  store i32 %67, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %100

69:                                               ; preds = %56
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* @EACCES, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %77, label %73

73:                                               ; preds = %69
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @EPERM, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %99

77:                                               ; preds = %73, %69
  %78 = call i32 @nameidone(%struct.nameidata* %17)
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %80 = call i32 @vnode_put(%struct.TYPE_11__* %79)
  %81 = load i64, i64* @NULLVP, align 8
  %82 = inttoptr i64 %81 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %82, %struct.TYPE_11__** %13, align 8
  %83 = load i32, i32* @LOOKUP, align 4
  %84 = load i32, i32* @OP_MKDIR, align 4
  %85 = load i32, i32* @AUDITVNPATH1, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @NDINIT(%struct.nameidata* %17, i32 %83, i32 %84, i32 %85, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @nameiat(%struct.nameidata* %17, i32 %90)
  store i32 %91, i32* %18, align 4
  %92 = load i32, i32* %18, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %77
  br label %151

95:                                               ; preds = %77
  %96 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %12, align 8
  %98 = load i32, i32* @EEXIST, align 4
  store i32 %98, i32* %14, align 4
  br label %151

99:                                               ; preds = %73
  br label %151

100:                                              ; preds = %56
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %102 = load %struct.vnode_attr*, %struct.vnode_attr** %9, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @vn_create(%struct.TYPE_11__* %101, %struct.TYPE_11__** %12, %struct.nameidata* %17, %struct.vnode_attr* %102, i32 0, i32 0, i32* null, i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %100
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @EKEEPLOOKING, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %113

110:                                              ; preds = %106
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %112 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 1
  store %struct.TYPE_11__* %111, %struct.TYPE_11__** %112, align 8
  br label %40

113:                                              ; preds = %106
  br label %151

114:                                              ; preds = %100
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32*, i32** %116, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %114
  %120 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %121 = load i32, i32* %15, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %119, %114
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @NULLVP, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %131 = load i32, i32* %15, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %15, align 4
  br label %133

133:                                              ; preds = %129, %123
  %134 = load i32, i32* %15, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %150

136:                                              ; preds = %133
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %138 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %139 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %17, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %15, align 4
  %149 = call i32 @vnode_update_identity(%struct.TYPE_11__* %137, %struct.TYPE_11__* %138, i32 %141, i32 %144, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %136, %133
  br label %151

151:                                              ; preds = %150, %113, %99, %95, %94, %54
  %152 = call i32 @nameidone(%struct.nameidata* %17)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %154 = icmp ne %struct.TYPE_11__* %153, null
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %157 = call i32 @vnode_put(%struct.TYPE_11__* %156)
  br label %158

158:                                              ; preds = %155, %151
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %160 = icmp ne %struct.TYPE_11__* %159, null
  br i1 %160, label %161, label %164

161:                                              ; preds = %158
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %163 = call i32 @vnode_put(%struct.TYPE_11__* %162)
  br label %164

164:                                              ; preds = %161, %158
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %6, align 4
  br label %166

166:                                              ; preds = %164, %45
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @AUDIT_ARG(i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @nameiat(%struct.nameidata*, i32) #1

declare dso_local i32 @vnode_compound_mkdir_available(%struct.TYPE_11__*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vn_authorize_mkdir(%struct.TYPE_11__*, %struct.TYPE_12__*, %struct.vnode_attr*, i32, i32*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_11__*) #1

declare dso_local i32 @vn_create(%struct.TYPE_11__*, %struct.TYPE_11__**, %struct.nameidata*, %struct.vnode_attr*, i32, i32, i32*, i32) #1

declare dso_local i32 @vnode_update_identity(%struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
