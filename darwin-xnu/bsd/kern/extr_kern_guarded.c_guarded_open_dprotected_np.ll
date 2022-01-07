; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_open_dprotected_np.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_guarded.c_guarded_open_dprotected_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.filedesc* }
%struct.filedesc = type { i32 }
%struct.guarded_open_dprotected_np_args = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.gfp_crarg = type { i32, i64 }
%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }

@O_CLOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GUARD_REQUIRED = common dso_local global i32 0, align 4
@GUARD_ALL = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i32 0, align 4
@S_ISTXT = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@UIO_USERSPACE = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@va_dataprotect_class = common dso_local global i32 0, align 4
@O_DP_GETRAWENCRYPTED = common dso_local global i32 0, align 4
@O_DP_GETRAWUNENCRYPTED = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@va_dataprotect_flags = common dso_local global i32 0, align 4
@VA_DP_RAWENCRYPTED = common dso_local global i32 0, align 4
@VA_DP_RAWUNENCRYPTED = common dso_local global i32 0, align 4
@O_CLOFORK = common dso_local global i32 0, align 4
@guarded_fileproc_alloc_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @guarded_open_dprotected_np(%struct.TYPE_3__* %0, %struct.guarded_open_dprotected_np_args* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca %struct.guarded_open_dprotected_np_args*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.gfp_crarg, align 8
  %10 = alloca %struct.filedesc*, align 8
  %11 = alloca %struct.vnode_attr, align 4
  %12 = alloca %struct.nameidata, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store %struct.guarded_open_dprotected_np_args* %1, %struct.guarded_open_dprotected_np_args** %6, align 8
  store i32* %2, i32** %7, align 8
  %15 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %16 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @O_CLOEXEC, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %161

23:                                               ; preds = %3
  %24 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %25 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @GUARD_REQUIRED, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @GUARD_REQUIRED, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %23
  %32 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %33 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @GUARD_ALL, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %4, align 4
  br label %161

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 0
  %43 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %44 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %42, align 8
  %46 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %48 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  %51 = call i32 @copyin(i32 %49, i64* %50, i32 8)
  store i32 %51, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %41
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %161

55:                                               ; preds = %41
  %56 = getelementptr inbounds %struct.gfp_crarg, %struct.gfp_crarg* %9, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %55
  %60 = load i32, i32* @EINVAL, align 4
  store i32 %60, i32* %4, align 4
  br label %161

61:                                               ; preds = %55
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.filedesc*, %struct.filedesc** %63, align 8
  store %struct.filedesc* %64, %struct.filedesc** %10, align 8
  %65 = call i32 (...) @vfs_context_current()
  store i32 %65, i32* %13, align 4
  %66 = call i32 @VATTR_INIT(%struct.vnode_attr* %11)
  %67 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %68 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.filedesc*, %struct.filedesc** %10, align 8
  %71 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  %75 = load i32, i32* @ALLPERMS, align 4
  %76 = and i32 %74, %75
  %77 = load i32, i32* @S_ISTXT, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  store i32 %79, i32* %14, align 4
  %80 = load i32, i32* @va_mode, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* @ACCESSPERMS, align 4
  %83 = and i32 %81, %82
  %84 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %80, i32 %83)
  %85 = load i32, i32* @LOOKUP, align 4
  %86 = load i32, i32* @OP_OPEN, align 4
  %87 = load i32, i32* @FOLLOW, align 4
  %88 = load i32, i32* @AUDITVNPATH1, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @UIO_USERSPACE, align 4
  %91 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %92 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %13, align 4
  %95 = call i32 @NDINIT(%struct.nameidata* %12, i32 %85, i32 %86, i32 %89, i32 %90, i32 %93, i32 %94)
  %96 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %97 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @O_CREAT, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %61
  %103 = load i32, i32* @va_dataprotect_class, align 4
  %104 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %105 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %61
  %109 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %110 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @O_DP_GETRAWENCRYPTED, align 4
  %113 = load i32, i32* @O_DP_GETRAWUNENCRYPTED, align 4
  %114 = or i32 %112, %113
  %115 = and i32 %111, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %151

117:                                              ; preds = %108
  %118 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %119 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @O_RDWR, align 4
  %122 = load i32, i32* @O_WRONLY, align 4
  %123 = or i32 %121, %122
  %124 = and i32 %120, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* @EINVAL, align 4
  store i32 %127, i32* %4, align 4
  br label %161

128:                                              ; preds = %117
  %129 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %130 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @O_DP_GETRAWENCRYPTED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load i32, i32* @va_dataprotect_flags, align 4
  %137 = load i32, i32* @VA_DP_RAWENCRYPTED, align 4
  %138 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %128
  %140 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %141 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @O_DP_GETRAWUNENCRYPTED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load i32, i32* @va_dataprotect_flags, align 4
  %148 = load i32, i32* @VA_DP_RAWUNENCRYPTED, align 4
  %149 = call i32 @VATTR_SET(%struct.vnode_attr* %11, i32 %147, i32 %148)
  br label %150

150:                                              ; preds = %146, %139
  br label %151

151:                                              ; preds = %150, %108
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.guarded_open_dprotected_np_args*, %struct.guarded_open_dprotected_np_args** %6, align 8
  %154 = getelementptr inbounds %struct.guarded_open_dprotected_np_args, %struct.guarded_open_dprotected_np_args* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @O_CLOFORK, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* @guarded_fileproc_alloc_init, align 4
  %159 = load i32*, i32** %7, align 8
  %160 = call i32 @open1(i32 %152, %struct.nameidata* %12, i32 %157, %struct.vnode_attr* %11, i32 %158, %struct.gfp_crarg* %9, i32* %159)
  store i32 %160, i32* %4, align 4
  br label %161

161:                                              ; preds = %151, %126, %59, %53, %39, %21
  %162 = load i32, i32* %4, align 4
  ret i32 %162
}

declare dso_local i32 @copyin(i32, i64*, i32) #1

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @open1(i32, %struct.nameidata*, i32, %struct.vnode_attr*, i32, %struct.gfp_crarg*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
