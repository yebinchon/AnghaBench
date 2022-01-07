; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_vnop_getattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_vnop_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_getattr_args = type { %struct.TYPE_12__*, i32, %struct.vnode_attr* }
%struct.TYPE_12__ = type { i8* }
%struct.vnode_attr = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.nfs_vattr = type { i32*, i32*, i32, i32, i32, i32, i32, i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.nfsmount = type { i32 }

@va_iosize = common dso_local global i32 0, align 4
@nfs_iosize = common dso_local global i32 0, align 4
@NFS3_SUPPORTED_VATTRS = common dso_local global i32 0, align 4
@va_name = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Getting attrs for 0x%llx, vname is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@NGA_CACHED = common dso_local global i32 0, align 4
@VA_64BITOBJIDS = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_rdev = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_nlink = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@va_data_alloc = common dso_local global i32 0, align 4
@NFSTIME_ACCESS = common dso_local global i64 0, align 8
@va_access_time = common dso_local global i32 0, align 4
@NFSTIME_MODIFY = common dso_local global i64 0, align 8
@va_modify_time = common dso_local global i32 0, align 4
@NFSTIME_CHANGE = common dso_local global i64 0, align 8
@va_change_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_vnop_getattr(%struct.vnop_getattr_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_getattr_args*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_vattr, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca i32, align 4
  store %struct.vnop_getattr_args* %0, %struct.vnop_getattr_args** %3, align 8
  %9 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %10 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %9, i32 0, i32 2
  %11 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  store %struct.vnode_attr* %11, %struct.vnode_attr** %6, align 8
  %12 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %13 = load i32, i32* @va_iosize, align 4
  %14 = load i32, i32* @nfs_iosize, align 4
  %15 = call i32 @VATTR_RETURN(%struct.vnode_attr* %12, i32 %13, i32 %14)
  %16 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %17 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NFS3_SUPPORTED_VATTRS, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %199

23:                                               ; preds = %1
  %24 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %24, i32 0, i32 2
  %26 = load %struct.vnode_attr*, %struct.vnode_attr** %25, align 8
  %27 = load i32, i32* @va_name, align 4
  %28 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %23
  %31 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %32 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %31, i32 0, i32 0
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = call i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_12__* %33)
  %35 = trunc i64 %34 to i32
  %36 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %37 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %36, i32 0, i32 0
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %44 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %43, i32 0, i32 0
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  br label %49

48:                                               ; preds = %30
  br label %49

49:                                               ; preds = %48, %42
  %50 = phi i8* [ %47, %42 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), %48 ]
  %51 = call i32 @NFS_VNOP_DBG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %50)
  br label %52

52:                                               ; preds = %49, %23
  %53 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %54 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %53, i32 0, i32 0
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %54, align 8
  %56 = call i32 @VTONFS(%struct.TYPE_12__* %55)
  %57 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %58 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @NGA_CACHED, align 4
  %61 = call i32 @nfs_getattr(i32 %56, %struct.nfs_vattr* %5, i32 %59, i32 %60)
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* %4, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %52
  %65 = load i32, i32* %4, align 4
  store i32 %65, i32* %2, align 4
  br label %199

66:                                               ; preds = %52
  %67 = load %struct.vnop_getattr_args*, %struct.vnop_getattr_args** %3, align 8
  %68 = getelementptr inbounds %struct.vnop_getattr_args, %struct.vnop_getattr_args* %67, i32 0, i32 0
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %68, align 8
  %70 = call %struct.nfsmount* @VTONMP(%struct.TYPE_12__* %69)
  store %struct.nfsmount* %70, %struct.nfsmount** %7, align 8
  %71 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %72 = icmp ne %struct.nfsmount* %71, null
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %75 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @VA_64BITOBJIDS, align 4
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  br label %84

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32 [ %82, %81 ], [ 0, %83 ]
  %86 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %87 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  %90 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %91 = load i32, i32* @va_type, align 4
  %92 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 10
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @VATTR_RETURN(%struct.vnode_attr* %90, i32 %91, i32 %93)
  %95 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %96 = load i32, i32* @va_mode, align 4
  %97 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 9
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @VATTR_RETURN(%struct.vnode_attr* %95, i32 %96, i32 %98)
  %100 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @makedev(i32 %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %108 = load i32, i32* @va_rdev, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 @VATTR_RETURN(%struct.vnode_attr* %107, i32 %108, i32 %109)
  %111 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %112 = load i32, i32* @va_uid, align 4
  %113 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @VATTR_RETURN(%struct.vnode_attr* %111, i32 %112, i32 %114)
  %116 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %117 = load i32, i32* @va_gid, align 4
  %118 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @VATTR_RETURN(%struct.vnode_attr* %116, i32 %117, i32 %119)
  %121 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %122 = load i32, i32* @va_nlink, align 4
  %123 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @VATTR_RETURN(%struct.vnode_attr* %121, i32 %122, i32 %124)
  %126 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %127 = load i32, i32* @va_fileid, align 4
  %128 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @VATTR_RETURN(%struct.vnode_attr* %126, i32 %127, i32 %129)
  %131 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %132 = load i32, i32* @va_data_size, align 4
  %133 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @VATTR_RETURN(%struct.vnode_attr* %131, i32 %132, i32 %134)
  %136 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %137 = load i32, i32* @va_data_alloc, align 4
  %138 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @VATTR_RETURN(%struct.vnode_attr* %136, i32 %137, i32 %139)
  %141 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 1
  %142 = load i32*, i32** %141, align 8
  %143 = load i64, i64* @NFSTIME_ACCESS, align 8
  %144 = getelementptr inbounds i32, i32* %142, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %147 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %146, i32 0, i32 3
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 1
  store i32 %145, i32* %148, align 4
  %149 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = load i64, i64* @NFSTIME_ACCESS, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %155 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %154, i32 0, i32 3
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 0
  store i32 %153, i32* %156, align 4
  %157 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %158 = load i32, i32* @va_access_time, align 4
  %159 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %157, i32 %158)
  %160 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 1
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @NFSTIME_MODIFY, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %166 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  store i32 %164, i32* %167, align 4
  %168 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = load i64, i64* @NFSTIME_MODIFY, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %174 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  store i32 %172, i32* %175, align 4
  %176 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %177 = load i32, i32* @va_modify_time, align 4
  %178 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %176, i32 %177)
  %179 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = load i64, i64* @NFSTIME_CHANGE, align 8
  %182 = getelementptr inbounds i32, i32* %180, i64 %181
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %185 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = getelementptr inbounds %struct.nfs_vattr, %struct.nfs_vattr* %5, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i64, i64* @NFSTIME_CHANGE, align 8
  %190 = getelementptr inbounds i32, i32* %188, i64 %189
  %191 = load i32, i32* %190, align 4
  %192 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %193 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 4
  %195 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %196 = load i32, i32* @va_change_time, align 4
  %197 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %195, i32 %196)
  %198 = load i32, i32* %4, align 4
  store i32 %198, i32* %2, align 4
  br label %199

199:                                              ; preds = %84, %64, %22
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @NFS_VNOP_DBG(i8*, i32, i8*) #1

declare dso_local i64 @VM_KERNEL_ADDRPERM(%struct.TYPE_12__*) #1

declare dso_local i32 @nfs_getattr(i32, %struct.nfs_vattr*, i32, i32) #1

declare dso_local i32 @VTONFS(%struct.TYPE_12__*) #1

declare dso_local %struct.nfsmount* @VTONMP(%struct.TYPE_12__*) #1

declare dso_local i32 @makedev(i32, i32) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
