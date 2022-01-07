; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_issubdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_cache.c_vnode_issubdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_16__* }
%struct.componentname = type { i32, i8*, i32, i8*, i32, i32, i32 }

@__const.vnode_issubdir.dotdotbuf = private unnamed_addr constant [3 x i8] c"..\00", align 1
@FALSE = common dso_local global i8* null, align 8
@NULLVP = common dso_local global %struct.TYPE_16__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@rootvnode = common dso_local global %struct.TYPE_16__* null, align 8
@MAX_ERROR_RETRY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@ISLASTCN = common dso_local global i32 0, align 4
@ISDOTDOT = common dso_local global i32 0, align 4
@VISHARDLINK = common dso_local global i32 0, align 4
@VNODE_UPDATE_PARENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_issubdir(%struct.TYPE_16__* %0, %struct.TYPE_16__* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i8], align 1
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_16__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.componentname, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %12, align 4
  %20 = bitcast [3 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.vnode_issubdir.dotdotbuf, i32 0, i32 0), i64 3, i1 false)
  store i32 0, i32* %14, align 4
  %21 = load i8*, i8** @FALSE, align 8
  %22 = ptrtoint i8* %21 to i32
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %9, align 8
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %10, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** @NULLVP, align 8
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %11, align 8
  br label %26

26:                                               ; preds = %4, %69, %95, %147
  %27 = load i8*, i8** @FALSE, align 8
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %19, align 4
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %31 = icmp eq %struct.TYPE_16__* %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, i32* @TRUE, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  br label %149

35:                                               ; preds = %26
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** @rootvnode, align 8
  %38 = icmp eq %struct.TYPE_16__* %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %149

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %40
  %42 = call i32 (...) @NAME_CACHE_LOCK_SHARED()
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %45 = call i32 @cache_check_vnode_issubdir(%struct.TYPE_16__* %43, %struct.TYPE_16__* %44, i32* %19, %struct.TYPE_16__** %10)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = icmp ne %struct.TYPE_16__* %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %53 = call i32 @vnode_vid(%struct.TYPE_16__* %52)
  store i32 %53, i32* %17, align 4
  br label %54

54:                                               ; preds = %51, %48, %41
  %55 = call i32 (...) @NAME_CACHE_UNLOCK()
  %56 = load i32, i32* %15, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %61, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* %19, align 4
  %60 = load i32*, i32** %7, align 8
  store i32 %59, i32* %60, align 4
  br label %149

61:                                               ; preds = %54
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = icmp ne %struct.TYPE_16__* %62, null
  br i1 %63, label %73, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* @MAX_ERROR_RETRY, align 4
  %68 = icmp slt i32 %65, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %70, %struct.TYPE_16__** %10, align 8
  br label %26

71:                                               ; preds = %64
  %72 = load i32, i32* @ENOENT, align 4
  store i32 %72, i32* %12, align 4
  br label %149

73:                                               ; preds = %61
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %76 = icmp ne %struct.TYPE_16__* %74, %75
  br i1 %76, label %77, label %100

77:                                               ; preds = %73
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %79 = icmp ne %struct.TYPE_16__* %78, null
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %82 = call i32 @vnode_put(%struct.TYPE_16__* %81)
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** @NULLVP, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %11, align 8
  br label %84

84:                                               ; preds = %80, %77
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %86 = load i32, i32* %17, align 4
  %87 = call i32 @vnode_getwithvid(%struct.TYPE_16__* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  %93 = load i32, i32* @MAX_ERROR_RETRY, align 4
  %94 = icmp slt i32 %91, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  store %struct.TYPE_16__* %96, %struct.TYPE_16__** %10, align 8
  store i32 0, i32* %12, align 4
  br label %26

97:                                               ; preds = %90
  br label %149

98:                                               ; preds = %84
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %99, %struct.TYPE_16__** %11, align 8
  br label %100

100:                                              ; preds = %98, %73
  %101 = call i32 @bzero(%struct.componentname* %18, i32 48)
  %102 = load i32, i32* @LOOKUP, align 4
  %103 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 6
  store i32 %102, i32* %103, align 8
  %104 = load i32, i32* @ISLASTCN, align 4
  %105 = load i32, i32* @ISDOTDOT, align 4
  %106 = or i32 %104, %105
  %107 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 0
  store i32 %106, i32* %107, align 8
  %108 = load i32, i32* %8, align 4
  %109 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 5
  store i32 %108, i32* %109, align 4
  %110 = getelementptr inbounds [3 x i8], [3 x i8]* %13, i64 0, i64 0
  %111 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 1
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 2
  store i32 3, i32* %112, align 8
  %113 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 3
  store i8* %114, i8** %115, align 8
  %116 = getelementptr inbounds %struct.componentname, %struct.componentname* %18, i32 0, i32 4
  store i32 2, i32* %116, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** @NULLVP, align 8
  store %struct.TYPE_16__* %117, %struct.TYPE_16__** %16, align 8
  %118 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @VNOP_LOOKUP(%struct.TYPE_16__* %118, %struct.TYPE_16__** %16, %struct.componentname* %18, i32 %119)
  store i32 %120, i32* %12, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %100
  br label %149

123:                                              ; preds = %100
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @VISHARDLINK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %123
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 1
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %135 = icmp ne %struct.TYPE_16__* %133, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %130
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  %139 = load i32, i32* @VNODE_UPDATE_PARENT, align 4
  %140 = call i32 @vnode_update_identity(%struct.TYPE_16__* %137, %struct.TYPE_16__* %138, i32* null, i32 0, i32 0, i32 %139)
  br label %141

141:                                              ; preds = %136, %130, %123
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %143 = icmp ne %struct.TYPE_16__* %142, null
  br i1 %143, label %144, label %147

144:                                              ; preds = %141
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %146 = call i32 @vnode_put(%struct.TYPE_16__* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %16, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %10, align 8
  store %struct.TYPE_16__* %148, %struct.TYPE_16__** %11, align 8
  br label %26

149:                                              ; preds = %122, %97, %71, %58, %39, %32
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %154 = call i32 @vnode_put(%struct.TYPE_16__* %153)
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* %12, align 4
  ret i32 %156
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @NAME_CACHE_LOCK_SHARED(...) #2

declare dso_local i32 @cache_check_vnode_issubdir(%struct.TYPE_16__*, %struct.TYPE_16__*, i32*, %struct.TYPE_16__**) #2

declare dso_local i32 @vnode_vid(%struct.TYPE_16__*) #2

declare dso_local i32 @NAME_CACHE_UNLOCK(...) #2

declare dso_local i32 @vnode_put(%struct.TYPE_16__*) #2

declare dso_local i32 @vnode_getwithvid(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @bzero(%struct.componentname*, i32) #2

declare dso_local i32 @VNOP_LOOKUP(%struct.TYPE_16__*, %struct.TYPE_16__**, %struct.componentname*, i32) #2

declare dso_local i32 @vnode_update_identity(%struct.TYPE_16__*, %struct.TYPE_16__*, i32*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
