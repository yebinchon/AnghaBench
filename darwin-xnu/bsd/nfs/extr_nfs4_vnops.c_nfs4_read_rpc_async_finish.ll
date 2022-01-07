; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_read_rpc_async_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_read_rpc_async_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_READ = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@NFS_FFLAG_IS_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_read_rpc_async_finish(%struct.TYPE_9__* %0, %struct.nfsreq* %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.nfsreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store %struct.nfsreq* %1, %struct.nfsreq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__* %22)
  store %struct.nfsmount* %23, %struct.nfsmount** %12, align 8
  %24 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %25 = call i64 @nfs_mount_gone(%struct.nfsmount* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %5
  %28 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %29 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %28)
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %6, align 4
  br label %122

31:                                               ; preds = %5
  %32 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %33 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %15, align 4
  %35 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %21)
  %36 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %37 = call i32 @nfs_request_async_finish(%struct.nfsreq* %36, %struct.nfsm_chain* %21, i32* %20, i32* %17)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* @EINPROGRESS, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %31
  %42 = load i32, i32* %13, align 4
  store i32 %42, i32* %6, align 4
  br label %122

43:                                               ; preds = %31
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = call i32 @nfs_node_lock(%struct.TYPE_9__* %44)
  store i32 %45, i32* %14, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %43
  %48 = load i32, i32* %14, align 4
  store i32 %48, i32* %13, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @nfsm_chain_skip_tag(i32 %50, %struct.nfsm_chain* %21)
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = call i32 @nfsm_chain_get_32(i32 %52, %struct.nfsm_chain* %21, i64 %54)
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @NFS_OP_PUTFH, align 4
  %58 = call i32 @nfsm_chain_op_check(i32 %56, %struct.nfsm_chain* %21, i32 %57)
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* @NFS_OP_READ, align 4
  %61 = call i32 @nfsm_chain_op_check(i32 %59, %struct.nfsm_chain* %21, i32 %60)
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* %18, align 4
  %64 = sext i32 %63 to i64
  %65 = call i32 @nfsm_chain_get_32(i32 %62, %struct.nfsm_chain* %21, i64 %64)
  %66 = load i32, i32* %13, align 4
  %67 = load i64, i64* %19, align 8
  %68 = call i32 @nfsm_chain_get_32(i32 %66, %struct.nfsm_chain* %21, i64 %67)
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %49
  %72 = load i64, i64* %19, align 8
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %73, align 8
  %75 = call i64 @MIN(i64 %72, i64 %74)
  %76 = load i64*, i64** %10, align 8
  store i64 %75, i64* %76, align 8
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = call i32 @nfsm_chain_get_uio(%struct.nfsm_chain* %21, i64 %78, i32 %79)
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %71, %49
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @NFS_OP_GETATTR, align 4
  %84 = call i32 @nfsm_chain_op_check(i32 %82, %struct.nfsm_chain* %21, i32 %83)
  %85 = load i32, i32* %13, align 4
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @nfsm_chain_loadattr(i32 %85, %struct.nfsm_chain* %21, %struct.TYPE_9__* %86, i32 %87, i32* %20)
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %81
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %93 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %92)
  br label %94

94:                                               ; preds = %91, %81
  %95 = load i32*, i32** %11, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %18, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %97
  %101 = load i64, i64* %19, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %100
  store i32 1, i32* %18, align 4
  br label %104

104:                                              ; preds = %103, %100, %97
  %105 = load i32, i32* %18, align 4
  %106 = load i32*, i32** %11, align 8
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %104, %94
  %108 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %21)
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @NFS_FFLAG_IS_ATTR, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %107
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = call i32 @microuptime(i32* %118)
  br label %120

120:                                              ; preds = %116, %107
  %121 = load i32, i32* %13, align 4
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %120, %41, %27
  %123 = load i32, i32* %6, align 4
  ret i32 %123
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.nfsreq*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_request_async_finish(%struct.nfsreq*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @nfsm_chain_get_uio(%struct.nfsm_chain*, i64, i32) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @microuptime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
