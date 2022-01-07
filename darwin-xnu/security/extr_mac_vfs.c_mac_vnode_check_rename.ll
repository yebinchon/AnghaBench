; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_rename.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_vnode_check_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32* }
%struct.componentname = type { i32 }

@vnode_check_rename_from = common dso_local global i32 0, align 4
@vnode_check_rename_to = common dso_local global i32 0, align 4
@vnode_check_rename = common dso_local global i32 0, align 4
@mac_vnode_enforce = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_vnode_check_rename(i32 %0, %struct.vnode* %1, %struct.vnode* %2, %struct.componentname* %3, %struct.vnode* %4, %struct.vnode* %5, %struct.componentname* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca %struct.vnode*, align 8
  %12 = alloca %struct.componentname*, align 8
  %13 = alloca %struct.vnode*, align 8
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.componentname*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store %struct.vnode* %1, %struct.vnode** %10, align 8
  store %struct.vnode* %2, %struct.vnode** %11, align 8
  store %struct.componentname* %3, %struct.componentname** %12, align 8
  store %struct.vnode* %4, %struct.vnode** %13, align 8
  store %struct.vnode* %5, %struct.vnode** %14, align 8
  store %struct.componentname* %6, %struct.componentname** %15, align 8
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @vfs_context_ucred(i32 %18)
  store i32 %19, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = call i32 @mac_cred_check_enforce(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %7
  store i32 0, i32* %8, align 4
  br label %99

24:                                               ; preds = %7
  %25 = load i32, i32* @vnode_check_rename_from, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load %struct.vnode*, %struct.vnode** %10, align 8
  %28 = load %struct.vnode*, %struct.vnode** %10, align 8
  %29 = getelementptr inbounds %struct.vnode, %struct.vnode* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.vnode*, %struct.vnode** %11, align 8
  %32 = load %struct.vnode*, %struct.vnode** %11, align 8
  %33 = getelementptr inbounds %struct.vnode, %struct.vnode* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.componentname*, %struct.componentname** %12, align 8
  %36 = ptrtoint %struct.componentname* %35 to i32
  %37 = call i32 (i32, i32, %struct.vnode*, i32*, %struct.vnode*, i32*, i32, ...) @MAC_CHECK(i32 %25, i32 %26, %struct.vnode* %27, i32* %30, %struct.vnode* %31, i32* %34, i32 %36)
  %38 = load i32, i32* %17, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load i32, i32* %17, align 4
  store i32 %41, i32* %8, align 4
  br label %99

42:                                               ; preds = %24
  %43 = load i32, i32* @vnode_check_rename_to, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load %struct.vnode*, %struct.vnode** %13, align 8
  %46 = load %struct.vnode*, %struct.vnode** %13, align 8
  %47 = getelementptr inbounds %struct.vnode, %struct.vnode* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.vnode*, %struct.vnode** %14, align 8
  %50 = load %struct.vnode*, %struct.vnode** %14, align 8
  %51 = icmp ne %struct.vnode* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %42
  %53 = load %struct.vnode*, %struct.vnode** %14, align 8
  %54 = getelementptr inbounds %struct.vnode, %struct.vnode* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  br label %57

56:                                               ; preds = %42
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi i32* [ %55, %52 ], [ null, %56 ]
  %59 = load %struct.vnode*, %struct.vnode** %10, align 8
  %60 = load %struct.vnode*, %struct.vnode** %13, align 8
  %61 = icmp eq %struct.vnode* %59, %60
  %62 = zext i1 %61 to i32
  %63 = load %struct.componentname*, %struct.componentname** %15, align 8
  %64 = call i32 (i32, i32, %struct.vnode*, i32*, %struct.vnode*, i32*, i32, ...) @MAC_CHECK(i32 %43, i32 %44, %struct.vnode* %45, i32* %48, %struct.vnode* %49, i32* %58, i32 %62, %struct.componentname* %63)
  %65 = load i32, i32* %17, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %57
  %68 = load i32, i32* %17, align 4
  store i32 %68, i32* %8, align 4
  br label %99

69:                                               ; preds = %57
  %70 = load i32, i32* @vnode_check_rename, align 4
  %71 = load i32, i32* %16, align 4
  %72 = load %struct.vnode*, %struct.vnode** %10, align 8
  %73 = load %struct.vnode*, %struct.vnode** %10, align 8
  %74 = getelementptr inbounds %struct.vnode, %struct.vnode* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.vnode*, %struct.vnode** %11, align 8
  %77 = load %struct.vnode*, %struct.vnode** %11, align 8
  %78 = getelementptr inbounds %struct.vnode, %struct.vnode* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = load %struct.componentname*, %struct.componentname** %12, align 8
  %81 = ptrtoint %struct.componentname* %80 to i32
  %82 = load %struct.vnode*, %struct.vnode** %13, align 8
  %83 = load %struct.vnode*, %struct.vnode** %13, align 8
  %84 = getelementptr inbounds %struct.vnode, %struct.vnode* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load %struct.vnode*, %struct.vnode** %14, align 8
  %87 = load %struct.vnode*, %struct.vnode** %14, align 8
  %88 = icmp ne %struct.vnode* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %69
  %90 = load %struct.vnode*, %struct.vnode** %14, align 8
  %91 = getelementptr inbounds %struct.vnode, %struct.vnode* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  br label %94

93:                                               ; preds = %69
  br label %94

94:                                               ; preds = %93, %89
  %95 = phi i32* [ %92, %89 ], [ null, %93 ]
  %96 = load %struct.componentname*, %struct.componentname** %15, align 8
  %97 = call i32 (i32, i32, %struct.vnode*, i32*, %struct.vnode*, i32*, i32, ...) @MAC_CHECK(i32 %70, i32 %71, %struct.vnode* %72, i32* %75, %struct.vnode* %76, i32* %79, i32 %81, %struct.vnode* %82, i32* %85, %struct.vnode* %86, i32* %95, %struct.componentname* %96)
  %98 = load i32, i32* %17, align 4
  store i32 %98, i32* %8, align 4
  br label %99

99:                                               ; preds = %94, %67, %40, %23
  %100 = load i32, i32* %8, align 4
  ret i32 %100
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @mac_cred_check_enforce(i32) #1

declare dso_local i32 @MAC_CHECK(i32, i32, %struct.vnode*, i32*, %struct.vnode*, i32*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
