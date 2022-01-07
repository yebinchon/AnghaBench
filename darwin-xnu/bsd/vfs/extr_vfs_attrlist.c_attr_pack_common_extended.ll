; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_common_extended.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_attr_pack_common_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.attrlist = type { i32 }
%struct._attrlist_buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vnode_attr = type { i32, i32, i32 }

@ATTR_CMNEXT_RELPATH = common dso_local global i32 0, align 4
@ATTR_CMNEXT_PRIVATESIZE = common dso_local global i32 0, align 4
@va_private_size = common dso_local global i32 0, align 4
@ATTR_CMNEXT_LINKID = common dso_local global i32 0, align 4
@va_linkid = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnode*, %struct.attrlist*, %struct._attrlist_buf*, i8*, i32, %struct.vnode_attr*, i32, i32)* @attr_pack_common_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @attr_pack_common_extended(%struct.vnode* %0, %struct.attrlist* %1, %struct._attrlist_buf* %2, i8* %3, i32 %4, %struct.vnode_attr* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca %struct.attrlist*, align 8
  %11 = alloca %struct._attrlist_buf*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode_attr*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.vnode* %0, %struct.vnode** %9, align 8
  store %struct.attrlist* %1, %struct.attrlist** %10, align 8
  store %struct._attrlist_buf* %2, %struct._attrlist_buf** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.vnode_attr* %5, %struct.vnode_attr** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %19 = load %struct.vnode*, %struct.vnode** %9, align 8
  %20 = icmp ne %struct.vnode* %19, null
  br i1 %20, label %21, label %39

21:                                               ; preds = %8
  %22 = load %struct.attrlist*, %struct.attrlist** %10, align 8
  %23 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATTR_CMNEXT_RELPATH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %21
  %29 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @attrlist_pack_string(%struct._attrlist_buf* %29, i8* %30, i32 %31)
  %33 = load i32, i32* @ATTR_CMNEXT_RELPATH, align 4
  %34 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %35 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %33
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %28, %21, %8
  %40 = load %struct.attrlist*, %struct.attrlist** %10, align 8
  %41 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @ATTR_CMNEXT_PRIVATESIZE, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %39
  %47 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %48 = load i32, i32* @va_private_size, align 4
  %49 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %53 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %54 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %52, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ATTR_PACK8(i32 %58, i32 %55)
  %60 = load i32, i32* @ATTR_CMNEXT_PRIVATESIZE, align 4
  %61 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %62 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 4
  br label %80

66:                                               ; preds = %46
  %67 = load i32, i32* %15, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load i32, i32* %16, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69, %66
  store i32 0, i32* %17, align 4
  %73 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %74 = load i32, i32* %17, align 4
  %75 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %73, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @ATTR_PACK8(i32 %77, i32 %74)
  br label %79

79:                                               ; preds = %72, %69
  br label %80

80:                                               ; preds = %79, %51
  br label %81

81:                                               ; preds = %80, %39
  %82 = load %struct.attrlist*, %struct.attrlist** %10, align 8
  %83 = getelementptr inbounds %struct.attrlist, %struct.attrlist* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ATTR_CMNEXT_LINKID, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %114

88:                                               ; preds = %81
  %89 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %90 = load i32, i32* @va_linkid, align 4
  %91 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %95 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  store i32 %96, i32* %18, align 4
  br label %101

97:                                               ; preds = %88
  %98 = load %struct.vnode_attr*, %struct.vnode_attr** %14, align 8
  %99 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %18, align 4
  br label %101

101:                                              ; preds = %97, %93
  %102 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %103 = load i32, i32* %18, align 4
  %104 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %102, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ATTR_PACK8(i32 %106, i32 %103)
  %108 = load i32, i32* @ATTR_CMNEXT_LINKID, align 4
  %109 = load %struct._attrlist_buf*, %struct._attrlist_buf** %11, align 8
  %110 = getelementptr inbounds %struct._attrlist_buf, %struct._attrlist_buf* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %108
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %101, %81
  ret i32 0
}

declare dso_local i32 @attrlist_pack_string(%struct._attrlist_buf*, i8*, i32) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @ATTR_PACK8(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
