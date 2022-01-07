; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_null_nodeget.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_subr.c_null_nodeget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }
%struct.vnode = type { i32 }
%struct.componentname = type { i32 }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @null_nodeget(%struct.mount* %0, %struct.vnode* %1, %struct.vnode* %2, %struct.vnode** %3, %struct.componentname* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mount*, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode**, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca i32, align 4
  store %struct.mount* %0, %struct.mount** %8, align 8
  store %struct.vnode* %1, %struct.vnode** %9, align 8
  store %struct.vnode* %2, %struct.vnode** %10, align 8
  store %struct.vnode** %3, %struct.vnode*** %11, align 8
  store %struct.componentname* %4, %struct.componentname** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load %struct.mount*, %struct.mount** %8, align 8
  %17 = load %struct.vnode*, %struct.vnode** %9, align 8
  %18 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %19 = call i32 @null_hashget(%struct.mount* %16, %struct.vnode* %17, %struct.vnode** %18)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %6
  %24 = load i32, i32* %15, align 4
  store i32 %24, i32* %7, align 4
  br label %66

25:                                               ; preds = %6
  %26 = load %struct.vnode*, %struct.vnode** %9, align 8
  %27 = call i32 @vnode_ref(%struct.vnode* %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %7, align 4
  br label %66

32:                                               ; preds = %25
  %33 = load %struct.mount*, %struct.mount** %8, align 8
  %34 = load %struct.vnode*, %struct.vnode** %9, align 8
  %35 = load %struct.vnode*, %struct.vnode** %10, align 8
  %36 = load %struct.componentname*, %struct.componentname** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @null_getnewvnode(%struct.mount* %33, %struct.vnode* %34, %struct.vnode* %35, %struct.vnode** %14, %struct.componentname* %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %32
  %42 = load %struct.vnode*, %struct.vnode** %9, align 8
  %43 = call i32 @vnode_rele(%struct.vnode* %42)
  %44 = load i32, i32* %15, align 4
  store i32 %44, i32* %7, align 4
  br label %66

45:                                               ; preds = %32
  %46 = load %struct.mount*, %struct.mount** %8, align 8
  %47 = load %struct.vnode*, %struct.vnode** %14, align 8
  %48 = call i32 @VTONULL(%struct.vnode* %47)
  %49 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %50 = call i32 @null_hashins(%struct.mount* %46, i32 %48, %struct.vnode** %49)
  store i32 %50, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %45
  %54 = load %struct.vnode**, %struct.vnode*** %11, align 8
  %55 = load %struct.vnode*, %struct.vnode** %54, align 8
  %56 = icmp ne %struct.vnode* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %53, %45
  %58 = load %struct.vnode*, %struct.vnode** %14, align 8
  %59 = call i32 @vnode_recycle(%struct.vnode* %58)
  %60 = load %struct.vnode*, %struct.vnode** %14, align 8
  %61 = call i32 @vnode_put(%struct.vnode* %60)
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %7, align 4
  br label %66

63:                                               ; preds = %53
  %64 = load %struct.vnode*, %struct.vnode** %14, align 8
  %65 = load %struct.vnode**, %struct.vnode*** %11, align 8
  store %struct.vnode* %64, %struct.vnode** %65, align 8
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %57, %41, %30, %23
  %67 = load i32, i32* %7, align 4
  ret i32 %67
}

declare dso_local i32 @null_hashget(%struct.mount*, %struct.vnode*, %struct.vnode**) #1

declare dso_local i32 @vnode_ref(%struct.vnode*) #1

declare dso_local i32 @null_getnewvnode(%struct.mount*, %struct.vnode*, %struct.vnode*, %struct.vnode**, %struct.componentname*, i32) #1

declare dso_local i32 @vnode_rele(%struct.vnode*) #1

declare dso_local i32 @null_hashins(%struct.mount*, i32, %struct.vnode**) #1

declare dso_local i32 @VTONULL(%struct.vnode*) #1

declare dso_local i32 @vnode_recycle(%struct.vnode*) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
