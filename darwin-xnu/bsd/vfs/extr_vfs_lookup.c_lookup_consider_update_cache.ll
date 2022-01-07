; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_consider_update_cache.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_consider_update_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, i32* }
%struct.componentname = type { i32, i8*, i32, i32 }

@ISDOTDOT = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i64 0, align 8
@VNODE_UPDATE_NAME = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@VNCACHEABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.componentname*, i32)* @lookup_consider_update_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lookup_consider_update_cache(%struct.TYPE_8__* %0, %struct.TYPE_8__* %1, %struct.componentname* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.componentname*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %6, align 8
  store %struct.componentname* %2, %struct.componentname** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.componentname*, %struct.componentname** %7, align 8
  %12 = getelementptr inbounds %struct.componentname, %struct.componentname* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = load %struct.componentname*, %struct.componentname** %7, align 8
  %17 = getelementptr inbounds %struct.componentname, %struct.componentname* %16, i32 0, i32 1
  %18 = load i8*, i8** %17, align 8
  %19 = getelementptr inbounds i8, i8* %18, i64 0
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp eq i32 %21, 46
  br i1 %22, label %30, label %23

23:                                               ; preds = %15, %4
  %24 = load %struct.componentname*, %struct.componentname** %7, align 8
  %25 = getelementptr inbounds %struct.componentname, %struct.componentname* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @ISDOTDOT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %23, %15
  %31 = phi i1 [ true, %15 ], [ %29, %23 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @NULLVP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %89

43:                                               ; preds = %37, %30
  store i32 0, i32* %10, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %43
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @VNODE_UPDATE_NAME, align 4
  %53 = load i32, i32* %10, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = load i64, i64* @NULLVP, align 8
  %58 = inttoptr i64 %57 to %struct.TYPE_8__*
  %59 = icmp ne %struct.TYPE_8__* %56, %58
  br i1 %59, label %60, label %70

60:                                               ; preds = %55
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @NULLVP, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %68 = load i32, i32* %10, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %66, %60, %55
  %71 = load i32, i32* %10, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %87

73:                                               ; preds = %70
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = load %struct.componentname*, %struct.componentname** %7, align 8
  %77 = getelementptr inbounds %struct.componentname, %struct.componentname* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.componentname*, %struct.componentname** %7, align 8
  %80 = getelementptr inbounds %struct.componentname, %struct.componentname* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.componentname*, %struct.componentname** %7, align 8
  %83 = getelementptr inbounds %struct.componentname, %struct.componentname* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @vnode_update_identity(%struct.TYPE_8__* %74, %struct.TYPE_8__* %75, i8* %78, i32 %81, i32 %84, i32 %85)
  br label %87

87:                                               ; preds = %73, %70
  br label %88

88:                                               ; preds = %87, %43
  br label %89

89:                                               ; preds = %88, %37
  %90 = load %struct.componentname*, %struct.componentname** %7, align 8
  %91 = getelementptr inbounds %struct.componentname, %struct.componentname* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @MAKEENTRY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %129

96:                                               ; preds = %89
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @VNCACHEABLE, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %129

103:                                              ; preds = %96
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 3
  %106 = call i32* @LIST_FIRST(i32* %105)
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %129

108:                                              ; preds = %103
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = load i64, i64* @NULLVP, align 8
  %111 = inttoptr i64 %110 to %struct.TYPE_8__*
  %112 = icmp ne %struct.TYPE_8__* %109, %111
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load i32, i32* %8, align 4
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp eq i32 %114, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %113
  %120 = load i32, i32* %9, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %128, label %122

122:                                              ; preds = %119
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %125 = load %struct.componentname*, %struct.componentname** %7, align 8
  %126 = load i32, i32* %8, align 4
  %127 = call i32 @cache_enter_with_gen(%struct.TYPE_8__* %123, %struct.TYPE_8__* %124, %struct.componentname* %125, i32 %126)
  br label %128

128:                                              ; preds = %122, %119, %113, %108
  br label %129

129:                                              ; preds = %128, %103, %96, %89
  ret void
}

declare dso_local i32 @vnode_update_identity(%struct.TYPE_8__*, %struct.TYPE_8__*, i8*, i32, i32, i32) #1

declare dso_local i32* @LIST_FIRST(i32*) #1

declare dso_local i32 @cache_enter_with_gen(%struct.TYPE_8__*, %struct.TYPE_8__*, %struct.componentname*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
