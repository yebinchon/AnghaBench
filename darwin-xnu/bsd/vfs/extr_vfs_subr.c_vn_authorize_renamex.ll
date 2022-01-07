; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_renamex.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vn_authorize_renamex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_authorize_renamex(%struct.vnode* %0, %struct.vnode* %1, %struct.componentname* %2, %struct.vnode* %3, %struct.vnode* %4, %struct.componentname* %5, i32 %6, i32 %7, i8* %8) #0 {
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.componentname*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.vnode* %0, %struct.vnode** %10, align 8
  store %struct.vnode* %1, %struct.vnode** %11, align 8
  store %struct.componentname* %2, %struct.componentname** %12, align 8
  store %struct.vnode* %3, %struct.vnode** %13, align 8
  store %struct.vnode* %4, %struct.vnode** %14, align 8
  store %struct.componentname* %5, %struct.componentname** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i8* %8, i8** %18, align 8
  %19 = load %struct.vnode*, %struct.vnode** %10, align 8
  %20 = load %struct.vnode*, %struct.vnode** %11, align 8
  %21 = load %struct.componentname*, %struct.componentname** %12, align 8
  %22 = load %struct.vnode*, %struct.vnode** %13, align 8
  %23 = load %struct.vnode*, %struct.vnode** %14, align 8
  %24 = load %struct.componentname*, %struct.componentname** %15, align 8
  %25 = load i32, i32* %16, align 4
  %26 = load i32, i32* %17, align 4
  %27 = load i8*, i8** %18, align 8
  %28 = call i32 @vn_authorize_renamex_with_paths(%struct.vnode* %19, %struct.vnode* %20, %struct.componentname* %21, i32* null, %struct.vnode* %22, %struct.vnode* %23, %struct.componentname* %24, i32* null, i32 %25, i32 %26, i8* %27)
  ret i32 %28
}

declare dso_local i32 @vn_authorize_renamex_with_paths(%struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, %struct.vnode*, %struct.vnode*, %struct.componentname*, i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
