; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_get_fs_locations.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs4_get_fs_locations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32* }
%struct.nfs_fs_locations = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsreq_secinfo_args = type { i32 }
%struct.nfsm_chain = type { i32 }

@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"fs_locations\00", align 1
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i32 0, align 4
@NFS_OP_LOOKUP = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@NFS_FATTR_FS_LOCATIONS = common dso_local global i32 0, align 4
@EPROTO = common dso_local global i32 0, align 4
@NFSPROC4_COMPOUND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_get_fs_locations(%struct.nfsmount* %0, %struct.TYPE_4__* %1, i32* %2, i32 %3, i8* %4, i32 %5, %struct.nfs_fs_locations* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfs_fs_locations*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.nfsreq, align 4
  %22 = alloca %struct.nfsreq*, align 8
  %23 = alloca %struct.nfsreq_secinfo_args, align 4
  %24 = alloca %struct.nfsm_chain, align 4
  %25 = alloca %struct.nfsm_chain, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %9, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %10, align 8
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store %struct.nfs_fs_locations* %6, %struct.nfs_fs_locations** %15, align 8
  store i32 0, i32* %16, align 4
  %28 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %19, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %20, align 8
  store %struct.nfsreq* %21, %struct.nfsreq** %22, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %44, label %34

34:                                               ; preds = %7
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = icmp ne %struct.TYPE_4__* %35, null
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %11, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %12, align 4
  br label %44

44:                                               ; preds = %37, %34, %7
  %45 = load i32*, i32** %11, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %146

49:                                               ; preds = %44
  %50 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %24)
  %51 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %25)
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i8*, i8** %13, align 8
  %55 = call i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args* %23, i32* null, i32* %52, i32 %53, i8* %54, i32 0)
  store i32 3, i32* %17, align 4
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* @NFSX_UNSIGNED, align 4
  %58 = mul nsw i32 18, %57
  %59 = call i32 @nfsm_chain_build_alloc_init(i32 %56, %struct.nfsm_chain* %24, i32 %58)
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %62 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %17, align 4
  %65 = call i32 @nfsm_chain_add_compound_header(i32 %60, %struct.nfsm_chain* %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  %66 = load i32, i32* %17, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %17, align 4
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @NFS_OP_PUTFH, align 4
  %70 = call i32 @nfsm_chain_add_32(i32 %68, %struct.nfsm_chain* %24, i32 %69)
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* @NFS_VER4, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 @nfsm_chain_add_fh(i32 %71, %struct.nfsm_chain* %24, i32 %72, i32* %73, i32 %74)
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %17, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* @NFS_OP_LOOKUP, align 4
  %80 = call i32 @nfsm_chain_add_32(i32 %78, %struct.nfsm_chain* %24, i32 %79)
  %81 = load i32, i32* %16, align 4
  %82 = load i8*, i8** %13, align 8
  %83 = load i8*, i8** %13, align 8
  %84 = call i32 @strlen(i8* %83)
  %85 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %86 = call i32 @nfsm_chain_add_name(i32 %81, %struct.nfsm_chain* %24, i8* %82, i32 %84, %struct.nfsmount* %85)
  %87 = load i32, i32* %17, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %17, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* @NFS_OP_GETATTR, align 4
  %91 = call i32 @nfsm_chain_add_32(i32 %89, %struct.nfsm_chain* %24, i32 %90)
  %92 = call i32 @NFS_CLEAR_ATTRIBUTES(i32* %31)
  %93 = load i32, i32* @NFS_FATTR_FS_LOCATIONS, align 4
  %94 = call i32 @NFS_BITMAP_SET(i32* %31, i32 %93)
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %97 = call i32 @nfsm_chain_add_bitmap(i32 %95, %struct.nfsm_chain* %24, i32* %31, i32 %96)
  %98 = load i32, i32* %16, align 4
  %99 = call i32 @nfsm_chain_build_done(i32 %98, %struct.nfsm_chain* %24)
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %17, align 4
  %102 = icmp eq i32 %101, 0
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* @EPROTO, align 4
  %105 = call i32 @nfsm_assert(i32 %100, i32 %103, i32 %104)
  %106 = load i32, i32* %16, align 4
  %107 = call i32 @nfsmout_if(i32 %106)
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %109 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %110 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @NFSPROC4_COMPOUND, align 4
  %113 = load i32, i32* %14, align 4
  %114 = call i32 @vfs_context_thread(i32 %113)
  %115 = load i32, i32* %14, align 4
  %116 = call i32 @vfs_context_ucred(i32 %115)
  %117 = call i32 @nfs_request_async(%struct.TYPE_4__* %108, i32 %111, %struct.nfsm_chain* %24, i32 %112, i32 %114, i32 %116, %struct.nfsreq_secinfo_args* %23, i32 0, i32* null, %struct.nfsreq** %22)
  store i32 %117, i32* %16, align 4
  %118 = load i32, i32* %16, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %49
  %121 = load %struct.nfsreq*, %struct.nfsreq** %22, align 8
  %122 = call i32 @nfs_request_async_finish(%struct.nfsreq* %121, %struct.nfsm_chain* %25, i32* %26, i32* %18)
  store i32 %122, i32* %16, align 4
  br label %123

123:                                              ; preds = %120, %49
  %124 = load i32, i32* %16, align 4
  %125 = call i32 @nfsm_chain_skip_tag(i32 %124, %struct.nfsm_chain* %25)
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %17, align 4
  %128 = call i32 @nfsm_chain_get_32(i32 %126, %struct.nfsm_chain* %25, i32 %127)
  %129 = load i32, i32* %16, align 4
  %130 = load i32, i32* @NFS_OP_PUTFH, align 4
  %131 = call i32 @nfsm_chain_op_check(i32 %129, %struct.nfsm_chain* %25, i32 %130)
  %132 = load i32, i32* %16, align 4
  %133 = load i32, i32* @NFS_OP_LOOKUP, align 4
  %134 = call i32 @nfsm_chain_op_check(i32 %132, %struct.nfsm_chain* %25, i32 %133)
  %135 = load i32, i32* %16, align 4
  %136 = load i32, i32* @NFS_OP_GETATTR, align 4
  %137 = call i32 @nfsm_chain_op_check(i32 %135, %struct.nfsm_chain* %25, i32 %136)
  %138 = load i32, i32* %16, align 4
  %139 = call i32 @nfsmout_if(i32 %138)
  %140 = load %struct.nfs_fs_locations*, %struct.nfs_fs_locations** %15, align 8
  %141 = call i32 @nfs4_parsefattr(%struct.nfsm_chain* %25, i32* null, i32* null, i32* null, i32* null, %struct.nfs_fs_locations* %140)
  store i32 %141, i32* %16, align 4
  br label %142

142:                                              ; preds = %123
  %143 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %25)
  %144 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %24)
  %145 = load i32, i32* %16, align 4
  store i32 %145, i32* %8, align 4
  store i32 1, i32* %27, align 4
  br label %146

146:                                              ; preds = %142, %47
  %147 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %8, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #2

declare dso_local i32 @NFSREQ_SECINFO_SET(%struct.nfsreq_secinfo_args*, i32*, i32*, i32, i8*, i32) #2

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_compound_header(i32, %struct.nfsm_chain*, i8*, i32, i32) #2

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32*, i32) #2

declare dso_local i32 @nfsm_chain_add_name(i32, %struct.nfsm_chain*, i8*, i32, %struct.nfsmount*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @NFS_CLEAR_ATTRIBUTES(i32*) #2

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #2

declare dso_local i32 @nfsm_chain_add_bitmap(i32, %struct.nfsm_chain*, i32*, i32) #2

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_assert(i32, i32, i32) #2

declare dso_local i32 @nfsmout_if(i32) #2

declare dso_local i32 @nfs_request_async(%struct.TYPE_4__*, i32, %struct.nfsm_chain*, i32, i32, i32, %struct.nfsreq_secinfo_args*, i32, i32*, %struct.nfsreq**) #2

declare dso_local i32 @vfs_context_thread(i32) #2

declare dso_local i32 @vfs_context_ucred(i32) #2

declare dso_local i32 @nfs_request_async_finish(%struct.nfsreq*, %struct.nfsm_chain*, i32*, i32*) #2

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #2

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #2

declare dso_local i32 @nfs4_parsefattr(%struct.nfsm_chain*, i32*, i32*, i32*, i32*, %struct.nfs_fs_locations*) #2

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
