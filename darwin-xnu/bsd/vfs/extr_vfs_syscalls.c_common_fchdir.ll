; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_common_fchdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_common_fchdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, %struct.mount* }
%struct.mount = type { i32 }
%struct.TYPE_19__ = type { i32, %struct.filedesc* }
%struct.filedesc = type { %struct.TYPE_17__* }
%struct.fchdir_args = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_17__* }

@fd = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.TYPE_17__* null, align 8
@EBADF = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@P_THCWD = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_19__*, %struct.fchdir_args*, i32)* @common_fchdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @common_fchdir(%struct.TYPE_19__* %0, %struct.fchdir_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca %struct.fchdir_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filedesc*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.mount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store %struct.fchdir_args* %1, %struct.fchdir_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  %21 = load %struct.filedesc*, %struct.filedesc** %20, align 8
  store %struct.filedesc* %21, %struct.filedesc** %8, align 8
  %22 = call i32 (...) @vfs_context_current()
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* @fd, align 4
  %24 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %25 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, ...) @AUDIT_ARG(i32 %23, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %58

30:                                               ; preds = %3
  %31 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %32 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %58

35:                                               ; preds = %30
  %36 = load i32, i32* %14, align 4
  %37 = call i64 @vfs_context_thread(i32 %36)
  store i64 %37, i64* %15, align 8
  %38 = load i64, i64* %15, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load i64, i64* %15, align 8
  %42 = call %struct.TYPE_18__* @get_bsdthread_info(i64 %41)
  store %struct.TYPE_18__* %42, %struct.TYPE_18__** %16, align 8
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %44, align 8
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %11, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NULLVP, align 8
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  store %struct.TYPE_17__* %46, %struct.TYPE_17__** %48, align 8
  %49 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** @NULLVP, align 8
  %51 = icmp ne %struct.TYPE_17__* %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %40
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %54 = call i32 @vnode_rele(%struct.TYPE_17__* %53)
  store i32 0, i32* %4, align 4
  br label %194

55:                                               ; preds = %40
  br label %56

56:                                               ; preds = %55, %35
  %57 = load i32, i32* @EBADF, align 4
  store i32 %57, i32* %4, align 4
  br label %194

58:                                               ; preds = %30, %3
  %59 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %60 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @file_vnode(i32 %61, %struct.TYPE_17__** %9)
  store i32 %62, i32* %13, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %58
  %65 = load i32, i32* %13, align 4
  store i32 %65, i32* %4, align 4
  br label %194

66:                                               ; preds = %58
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %68 = call i32 @vnode_getwithref(%struct.TYPE_17__* %67)
  store i32 %68, i32* %13, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %72 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @file_drop(i32 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %4, align 4
  br label %194

76:                                               ; preds = %66
  %77 = load i32, i32* @vnpath, align 4
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %79 = load i32, i32* @ARG_VNODE1, align 4
  %80 = call i32 (i32, ...) @AUDIT_ARG(i32 %77, %struct.TYPE_17__* %78, i32 %79)
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @VDIR, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %76
  %87 = load i32, i32* @ENOTDIR, align 4
  store i32 %87, i32* %13, align 4
  br label %186

88:                                               ; preds = %76
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %90 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @vnode_authorize(%struct.TYPE_17__* %89, i32* null, i32 %90, i32 %91)
  store i32 %92, i32* %13, align 4
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %186

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %123, %96
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %101, i32 0, i32 1
  %103 = load %struct.mount*, %struct.mount** %102, align 8
  store %struct.mount* %103, %struct.mount** %12, align 8
  %104 = icmp ne %struct.mount* %103, null
  br label %105

105:                                              ; preds = %100, %97
  %106 = phi i1 [ false, %97 ], [ %104, %100 ]
  br i1 %106, label %107, label %127

107:                                              ; preds = %105
  %108 = load %struct.mount*, %struct.mount** %12, align 8
  %109 = load i32, i32* @LK_NOWAIT, align 4
  %110 = call i64 @vfs_busy(%struct.mount* %108, i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* @EACCES, align 4
  store i32 %113, i32* %13, align 4
  br label %186

114:                                              ; preds = %107
  %115 = load %struct.mount*, %struct.mount** %12, align 8
  %116 = load i32, i32* %14, align 4
  %117 = call i32 @VFS_ROOT(%struct.mount* %115, %struct.TYPE_17__** %10, i32 %116)
  store i32 %117, i32* %13, align 4
  %118 = load %struct.mount*, %struct.mount** %12, align 8
  %119 = call i32 @vfs_unbusy(%struct.mount* %118)
  %120 = load i32, i32* %13, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %114
  br label %127

123:                                              ; preds = %114
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %125 = call i32 @vnode_put(%struct.TYPE_17__* %124)
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %9, align 8
  br label %97

127:                                              ; preds = %122, %105
  %128 = load i32, i32* %13, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %127
  br label %186

131:                                              ; preds = %127
  %132 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %133 = call i32 @vnode_ref(%struct.TYPE_17__* %132)
  store i32 %133, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %186

136:                                              ; preds = %131
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %138 = call i32 @vnode_put(%struct.TYPE_17__* %137)
  %139 = load i32, i32* %7, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %164

141:                                              ; preds = %136
  %142 = load i32, i32* %14, align 4
  %143 = call i64 @vfs_context_thread(i32 %142)
  store i64 %143, i64* %17, align 8
  %144 = load i64, i64* %17, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %141
  %147 = load i64, i64* %17, align 8
  %148 = call %struct.TYPE_18__* @get_bsdthread_info(i64 %147)
  store %struct.TYPE_18__* %148, %struct.TYPE_18__** %18, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_17__*, %struct.TYPE_17__** %150, align 8
  store %struct.TYPE_17__* %151, %struct.TYPE_17__** %11, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %153 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  store %struct.TYPE_17__* %152, %struct.TYPE_17__** %154, align 8
  %155 = load i32, i32* @P_THCWD, align 4
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 0
  %158 = call i32 @OSBitOrAtomic(i32 %155, i32* %157)
  br label %163

159:                                              ; preds = %141
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %161 = call i32 @vnode_rele(%struct.TYPE_17__* %160)
  %162 = load i32, i32* @ENOENT, align 4
  store i32 %162, i32* %4, align 4
  br label %194

163:                                              ; preds = %146
  br label %175

164:                                              ; preds = %136
  %165 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %166 = call i32 @proc_fdlock(%struct.TYPE_19__* %165)
  %167 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %168 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %167, i32 0, i32 0
  %169 = load %struct.TYPE_17__*, %struct.TYPE_17__** %168, align 8
  store %struct.TYPE_17__* %169, %struct.TYPE_17__** %11, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %171 = load %struct.filedesc*, %struct.filedesc** %8, align 8
  %172 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %171, i32 0, i32 0
  store %struct.TYPE_17__* %170, %struct.TYPE_17__** %172, align 8
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %174 = call i32 @proc_fdunlock(%struct.TYPE_19__* %173)
  br label %175

175:                                              ; preds = %164, %163
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %177 = icmp ne %struct.TYPE_17__* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %180 = call i32 @vnode_rele(%struct.TYPE_17__* %179)
  br label %181

181:                                              ; preds = %178, %175
  %182 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %183 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @file_drop(i32 %184)
  store i32 0, i32* %4, align 4
  br label %194

186:                                              ; preds = %135, %130, %112, %95, %86
  %187 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %188 = call i32 @vnode_put(%struct.TYPE_17__* %187)
  %189 = load %struct.fchdir_args*, %struct.fchdir_args** %6, align 8
  %190 = getelementptr inbounds %struct.fchdir_args, %struct.fchdir_args* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @file_drop(i32 %191)
  %193 = load i32, i32* %13, align 4
  store i32 %193, i32* %4, align 4
  br label %194

194:                                              ; preds = %186, %181, %159, %70, %64, %56, %52
  %195 = load i32, i32* %4, align 4
  ret i32 %195
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @AUDIT_ARG(i32, ...) #1

declare dso_local i64 @vfs_context_thread(i32) #1

declare dso_local %struct.TYPE_18__* @get_bsdthread_info(i64) #1

declare dso_local i32 @vnode_rele(%struct.TYPE_17__*) #1

declare dso_local i32 @file_vnode(i32, %struct.TYPE_17__**) #1

declare dso_local i32 @vnode_getwithref(%struct.TYPE_17__*) #1

declare dso_local i32 @file_drop(i32) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_17__*, i32*, i32, i32) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i32 @VFS_ROOT(%struct.mount*, %struct.TYPE_17__**, i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_17__*) #1

declare dso_local i32 @vnode_ref(%struct.TYPE_17__*) #1

declare dso_local i32 @OSBitOrAtomic(i32, i32*) #1

declare dso_local i32 @proc_fdlock(%struct.TYPE_19__*) #1

declare dso_local i32 @proc_fdunlock(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
