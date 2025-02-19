; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_mtime.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_mtime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.vnode_attr = type { %struct.timespec }

@va_modify_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_mtime(i32 %0, %struct.timespec* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnode_attr, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @VATTR_INIT(%struct.vnode_attr* %7)
  %10 = load i32, i32* @va_modify_time, align 4
  %11 = call i32 @VATTR_WANTED(%struct.vnode_attr* %7, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @vnode_getattr(i32 %12, %struct.vnode_attr* %7, i32 %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.timespec*, %struct.timespec** %5, align 8
  %19 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %7, i32 0, i32 0
  %20 = bitcast %struct.timespec* %18 to i8*
  %21 = bitcast %struct.timespec* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  br label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(i32, %struct.vnode_attr*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
