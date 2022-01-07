; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_traverse_union.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_traverse_union.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.nameidata = type { %struct.TYPE_9__*, %struct.TYPE_9__* }

@VROOT = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"lookup_traverse_union: null parent name: .%s\0A\00", align 1
@ENAMETOOLONG = common dso_local global i32 0, align 4
@NULLVP = common dso_local global %struct.TYPE_9__* null, align 8
@LOOKUP = common dso_local global i32 0, align 4
@OP_LOOKUP = common dso_local global i32 0, align 4
@USEDVP = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lookup_traverse_union(%struct.TYPE_9__* %0, %struct.TYPE_9__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.nameidata, align 8
  %15 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %8, align 8
  store i32 0, i32* %13, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %15, align 8
  %17 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %17, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %41

20:                                               ; preds = %3
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @VROOT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %20
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %32, %struct.TYPE_9__** %33, align 8
  %34 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call i64 @vnode_getwithref(%struct.TYPE_9__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOENT, align 4
  store i32 %39, i32* %4, align 4
  br label %151

40:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %151

41:                                               ; preds = %20, %3
  %42 = load i32, i32* @MAXPATHLEN, align 4
  %43 = call i64 @kalloc(i32 %42)
  %44 = inttoptr i64 %43 to i8*
  store i8* %44, i8** %8, align 8
  %45 = load i8*, i8** %8, align 8
  %46 = icmp eq i8* %45, null
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %13, align 4
  br label %142

49:                                               ; preds = %41
  %50 = load i8*, i8** %8, align 8
  %51 = load i32, i32* @MAXPATHLEN, align 4
  %52 = sub nsw i32 %51, 1
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  store i8 0, i8* %55, align 1
  br label %56

56:                                               ; preds = %49, %115
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %58 = call i8* @vnode_getname(%struct.TYPE_9__* %57)
  store i8* %58, i8** %10, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = icmp eq i8* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i8*, i8** %9, align 8
  %63 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %62)
  %64 = load i32, i32* @ENOENT, align 4
  store i32 %64, i32* %13, align 4
  br label %142

65:                                               ; preds = %56
  %66 = load i8*, i8** %10, align 8
  %67 = call i32 @strlen(i8* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = load i8*, i8** %9, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = ptrtoint i8* %71 to i64
  %74 = ptrtoint i8* %72 to i64
  %75 = sub i64 %73, %74
  %76 = icmp sgt i64 %70, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %65
  %78 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %78, i32* %13, align 4
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @vnode_putname(i8* %79)
  br label %142

81:                                               ; preds = %65
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  store i8* %85, i8** %11, align 8
  br label %86

86:                                               ; preds = %95, %81
  %87 = load i32, i32* %12, align 4
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %86
  %90 = load i8*, i8** %11, align 8
  %91 = getelementptr inbounds i8, i8* %90, i32 -1
  store i8* %91, i8** %11, align 8
  %92 = load i8, i8* %91, align 1
  %93 = load i8*, i8** %9, align 8
  %94 = getelementptr inbounds i8, i8* %93, i32 -1
  store i8* %94, i8** %9, align 8
  store i8 %92, i8* %94, align 1
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %12, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %12, align 4
  br label %86

98:                                               ; preds = %86
  %99 = load i8*, i8** %10, align 8
  %100 = call i32 @vnode_putname(i8* %99)
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %102, align 8
  store %struct.TYPE_9__* %103, %struct.TYPE_9__** %15, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** @NULLVP, align 8
  %106 = icmp eq %struct.TYPE_9__* %104, %105
  br i1 %106, label %114, label %107

107:                                              ; preds = %98
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @VROOT, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %107, %98
  br label %118

115:                                              ; preds = %107
  %116 = load i8*, i8** %9, align 8
  %117 = getelementptr inbounds i8, i8* %116, i32 -1
  store i8* %117, i8** %9, align 8
  store i8 47, i8* %117, align 1
  br label %56

118:                                              ; preds = %114
  %119 = load i32, i32* @LOOKUP, align 4
  %120 = load i32, i32* @OP_LOOKUP, align 4
  %121 = load i32, i32* @USEDVP, align 4
  %122 = load i32, i32* @UIO_SYSSPACE, align 4
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @CAST_USER_ADDR_T(i8* %123)
  %125 = load i32, i32* %7, align 4
  %126 = call i32 @NDINIT(%struct.nameidata* %14, i32 %119, i32 %120, i32 %121, i32 %122, i32 %124, i32 %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_9__*, %struct.TYPE_9__** %130, align 8
  %132 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 1
  store %struct.TYPE_9__* %131, %struct.TYPE_9__** %132, align 8
  %133 = call i32 @namei(%struct.nameidata* %14)
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %118
  %137 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %137, align 8
  %139 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %6, align 8
  store %struct.TYPE_9__* %138, %struct.TYPE_9__** %139, align 8
  br label %140

140:                                              ; preds = %136, %118
  %141 = call i32 @nameidone(%struct.nameidata* %14)
  br label %142

142:                                              ; preds = %140, %77, %61, %47
  %143 = load i8*, i8** %8, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i8*, i8** %8, align 8
  %147 = load i32, i32* @MAXPATHLEN, align 4
  %148 = call i32 @kfree(i8* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %4, align 4
  br label %151

151:                                              ; preds = %149, %40, %38
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local i64 @vnode_getwithref(%struct.TYPE_9__*) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i8* @vnode_getname(%struct.TYPE_9__*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @vnode_putname(i8*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
