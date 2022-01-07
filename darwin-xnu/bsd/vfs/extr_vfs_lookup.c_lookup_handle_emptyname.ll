; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_handle_emptyname.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_handle_emptyname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_4__*, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.componentname = type { i64, i32, i32, i64 }

@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i64 0, align 8
@EISDIR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@AUDITVNPATH2 = common dso_local global i32 0, align 4
@ARG_VNODE2 = common dso_local global i32 0, align 4
@SAVESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"lookup: SAVESTART\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.componentname*, i32)* @lookup_handle_emptyname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lookup_handle_emptyname(%struct.nameidata* %0, %struct.componentname* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.componentname*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %5, align 8
  store %struct.componentname* %1, %struct.componentname** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %11 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  store %struct.TYPE_4__* %12, %struct.TYPE_4__** %8, align 8
  %13 = load %struct.componentname*, %struct.componentname** %6, align 8
  %14 = getelementptr inbounds %struct.componentname, %struct.componentname* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @VDIR, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOTDIR, align 4
  store i32 %21, i32* %9, align 4
  br label %97

22:                                               ; preds = %3
  %23 = load %struct.componentname*, %struct.componentname** %6, align 8
  %24 = getelementptr inbounds %struct.componentname, %struct.componentname* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @LOOKUP, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @EISDIR, align 4
  store i32 %29, i32* %9, align 4
  br label %97

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %35 = call i64 @vnode_get(%struct.TYPE_4__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @ENOENT, align 4
  store i32 %38, i32* %9, align 4
  br label %97

39:                                               ; preds = %33
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %41 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 2
  store %struct.TYPE_4__* %40, %struct.TYPE_4__** %42, align 8
  br label %43

43:                                               ; preds = %39, %30
  %44 = load i32, i32* @ISDOTDOT, align 4
  %45 = xor i32 %44, -1
  %46 = load %struct.componentname*, %struct.componentname** %6, align 8
  %47 = getelementptr inbounds %struct.componentname, %struct.componentname* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %45
  store i32 %49, i32* %47, align 8
  %50 = load i32, i32* @ISLASTCN, align 4
  %51 = load %struct.componentname*, %struct.componentname** %6, align 8
  %52 = getelementptr inbounds %struct.componentname, %struct.componentname* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.componentname*, %struct.componentname** %6, align 8
  %56 = getelementptr inbounds %struct.componentname, %struct.componentname* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %59 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 8
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %61 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %62 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %61, i32 0, i32 0
  store %struct.TYPE_4__* %60, %struct.TYPE_4__** %62, align 8
  %63 = load %struct.componentname*, %struct.componentname** %6, align 8
  %64 = getelementptr inbounds %struct.componentname, %struct.componentname* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @AUDITVNPATH1, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %43
  %70 = load i32, i32* @vnpath, align 4
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %72 = load i32, i32* @ARG_VNODE1, align 4
  %73 = call i32 @AUDIT_ARG(i32 %70, %struct.TYPE_4__* %71, i32 %72)
  br label %87

74:                                               ; preds = %43
  %75 = load %struct.componentname*, %struct.componentname** %6, align 8
  %76 = getelementptr inbounds %struct.componentname, %struct.componentname* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @AUDITVNPATH2, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %74
  %82 = load i32, i32* @vnpath, align 4
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %84 = load i32, i32* @ARG_VNODE2, align 4
  %85 = call i32 @AUDIT_ARG(i32 %82, %struct.TYPE_4__* %83, i32 %84)
  br label %86

86:                                               ; preds = %81, %74
  br label %87

87:                                               ; preds = %86, %69
  %88 = load %struct.componentname*, %struct.componentname** %6, align 8
  %89 = getelementptr inbounds %struct.componentname, %struct.componentname* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @SAVESTART, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %87
  %95 = call i32 @panic(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %96

96:                                               ; preds = %94, %87
  store i32 0, i32* %4, align 4
  br label %99

97:                                               ; preds = %37, %28, %20
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %97, %96
  %100 = load i32, i32* %4, align 4
  ret i32 %100
}

declare dso_local i64 @vnode_get(%struct.TYPE_4__*) #1

declare dso_local i32 @AUDIT_ARG(i32, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
