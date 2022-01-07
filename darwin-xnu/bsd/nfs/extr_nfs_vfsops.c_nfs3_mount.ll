; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_mount.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs3_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.nfs_vattr = type { i32 }
%struct.nfs_fsattr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RPCAUTH_UNKNOWN = common dso_local global i32 0, align 4
@NG_MARKROOT = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i64 0, align 8
@NFS_FATTR_MAXNAME = common dso_local global i32 0, align 4
@NFS_MAXNAMLEN = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i64 0, align 8
@NFS_FATTR_HOMOGENEOUS = common dso_local global i32 0, align 4
@NFS_FSFLAG_HOMOGENEOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_mount(%struct.nfsmount* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsmount*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfs_vattr, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nfs_fsattr, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i32**, i32*** %7, align 8
  store i32* null, i32** %12, align 8
  %13 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %14 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %153

19:                                               ; preds = %3
  %20 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %21 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 3
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 3
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @nfs3_getattr_rpc(i32* null, i32 %22, i32 %27, i32 %32, i32 0, i32 %33, %struct.nfs_vattr* %9, i32* %10)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  br label %134

38:                                               ; preds = %19
  %39 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %40 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %43 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %48 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %47, i32 0, i32 3
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @RPCAUTH_UNKNOWN, align 4
  %53 = load i32, i32* @NG_MARKROOT, align 4
  %54 = load i32**, i32*** %7, align 8
  %55 = call i32 @nfs_nget(i32 %41, i32* null, i32* null, i32 %46, i32 %51, %struct.nfs_vattr* %9, i32* %10, i32 %52, i32 %53, i32** %54)
  store i32 %55, i32* %8, align 4
  %56 = load i32**, i32*** %7, align 8
  %57 = load i32*, i32** %56, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %59, label %63

59:                                               ; preds = %38
  %60 = load i32**, i32*** %7, align 8
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @nfs_node_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %38
  %64 = load i32, i32* %8, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %134

67:                                               ; preds = %63
  %68 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %69 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @NFS_VER2, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %75 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @NFS_FATTR_MAXNAME, align 4
  %79 = call i32 @NFS_BITMAP_SET(i32 %77, i32 %78)
  %80 = load i32, i32* @NFS_MAXNAMLEN, align 4
  %81 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %82 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  store i32 %80, i32* %83, align 4
  br label %133

84:                                               ; preds = %67
  %85 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %86 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @NFS_VER3, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %132

90:                                               ; preds = %84
  %91 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %92 = load i32**, i32*** %7, align 8
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %6, align 4
  %95 = call i32 @nfs3_fsinfo(%struct.nfsmount* %91, i32* %93, i32 %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %134

99:                                               ; preds = %90
  %100 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %101 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NFS_FATTR_HOMOGENEOUS, align 4
  %105 = call i64 @NFS_BITMAP_ISSET(i32 %103, i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %131

107:                                              ; preds = %99
  %108 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %109 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NFS_FSFLAG_HOMOGENEOUS, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %131

115:                                              ; preds = %107
  %116 = load i32**, i32*** %7, align 8
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = call i32 @nfs3_pathconf_rpc(i32* %117, %struct.nfs_fsattr* %11, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %115
  %122 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 1
  %124 = call i32 @lck_mtx_lock(i32* %123)
  %125 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %126 = call i32 @nfs3_pathconf_cache(%struct.nfsmount* %125, %struct.nfs_fsattr* %11)
  %127 = load %struct.nfsmount*, %struct.nfsmount** %5, align 8
  %128 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %127, i32 0, i32 1
  %129 = call i32 @lck_mtx_unlock(i32* %128)
  br label %130

130:                                              ; preds = %121, %115
  br label %131

131:                                              ; preds = %130, %107, %99
  br label %132

132:                                              ; preds = %131, %84
  br label %133

133:                                              ; preds = %132, %73
  br label %134

134:                                              ; preds = %133, %98, %66, %37
  %135 = load i32**, i32*** %7, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %134
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %151

141:                                              ; preds = %138
  %142 = load i32**, i32*** %7, align 8
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @NFSTOV(i32* %143)
  %145 = call i32 @vnode_put(i32 %144)
  %146 = load i32**, i32*** %7, align 8
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @NFSTOV(i32* %147)
  %149 = call i32 @vnode_recycle(i32 %148)
  %150 = load i32**, i32*** %7, align 8
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %141, %138, %134
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %4, align 4
  br label %153

153:                                              ; preds = %151, %17
  %154 = load i32, i32* %4, align 4
  ret i32 %154
}

declare dso_local i32 @nfs3_getattr_rpc(i32*, i32, i32, i32, i32, i32, %struct.nfs_vattr*, i32*) #1

declare dso_local i32 @nfs_nget(i32, i32*, i32*, i32, i32, %struct.nfs_vattr*, i32*, i32, i32, i32**) #1

declare dso_local i32 @nfs_node_unlock(i32*) #1

declare dso_local i32 @NFS_BITMAP_SET(i32, i32) #1

declare dso_local i32 @nfs3_fsinfo(%struct.nfsmount*, i32*, i32) #1

declare dso_local i64 @NFS_BITMAP_ISSET(i32, i32) #1

declare dso_local i32 @nfs3_pathconf_rpc(i32*, %struct.nfs_fsattr*, i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @nfs3_pathconf_cache(%struct.nfsmount*, %struct.nfs_fsattr*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @NFSTOV(i32*) #1

declare dso_local i32 @vnode_recycle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
