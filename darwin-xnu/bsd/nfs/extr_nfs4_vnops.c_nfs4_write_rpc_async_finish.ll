; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_write_rpc_async_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs4_write_rpc_async_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32, i32, i64, i32 }
%struct.nfsm_chain = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_WRITE_FILESYNC = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NFS_OP_PUTFH = common dso_local global i32 0, align 4
@NFS_OP_WRITE = common dso_local global i32 0, align 4
@NFSERR_IO = common dso_local global i32 0, align 4
@NFSSTA_HASWRITEVERF = common dso_local global i32 0, align 4
@NFS_OP_GETATTR = common dso_local global i32 0, align 4
@nfs_allow_async = common dso_local global i64 0, align 8
@MNT_ASYNC = common dso_local global i32 0, align 4
@NFS_FFLAG_IS_ATTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs4_write_rpc_async_finish(%struct.TYPE_10__* %0, %struct.nfsreq* %1, i32* %2, i64* %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.nfsreq*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.nfsmount*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store %struct.nfsreq* %1, %struct.nfsreq** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64* %4, i64** %11, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @ENOENT, align 4
  store i32 %24, i32* %14, align 4
  %25 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %25, i32* %18, align 4
  store i64 0, i64* %19, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %26)
  store %struct.nfsmount* %27, %struct.nfsmount** %12, align 8
  %28 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %29 = call i64 @nfs_mount_gone(%struct.nfsmount* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %5
  %32 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %33 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %32)
  %34 = load i32, i32* @ENXIO, align 4
  store i32 %34, i32* %6, align 4
  br label %185

35:                                               ; preds = %5
  %36 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %37 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %15, align 4
  %39 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %23)
  %40 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %41 = call i32 @nfs_request_async_finish(%struct.nfsreq* %40, %struct.nfsm_chain* %23, i64* %20, i32* %17)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = load i32, i32* @EINPROGRESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %6, align 4
  br label %185

47:                                               ; preds = %35
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__* %48)
  store %struct.nfsmount* %49, %struct.nfsmount** %12, align 8
  %50 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %51 = call i64 @nfs_mount_gone(%struct.nfsmount* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %13, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %55
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %60 = call i32 @nfs_node_lock(%struct.TYPE_10__* %59)
  store i32 %60, i32* %14, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %14, align 4
  store i32 %63, i32* %13, align 4
  br label %64

64:                                               ; preds = %62, %58, %55
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @nfsm_chain_skip_tag(i32 %65, %struct.nfsm_chain* %23)
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %16, align 4
  %69 = call i32 @nfsm_chain_get_32(i32 %67, %struct.nfsm_chain* %23, i32 %68)
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @NFS_OP_PUTFH, align 4
  %72 = call i32 @nfsm_chain_op_check(i32 %70, %struct.nfsm_chain* %23, i32 %71)
  %73 = load i32, i32* %13, align 4
  %74 = load i32, i32* @NFS_OP_WRITE, align 4
  %75 = call i32 @nfsm_chain_op_check(i32 %73, %struct.nfsm_chain* %23, i32 %74)
  %76 = load i32, i32* %13, align 4
  %77 = load i64, i64* %19, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @nfsm_chain_get_32(i32 %76, %struct.nfsm_chain* %23, i32 %78)
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @nfsmout_if(i32 %80)
  %82 = load i64, i64* %19, align 8
  %83 = load i64*, i64** %10, align 8
  store i64 %82, i64* %83, align 8
  %84 = load i64, i64* %19, align 8
  %85 = icmp ule i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %64
  %87 = load i32, i32* @NFSERR_IO, align 4
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %64
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* %18, align 4
  %91 = call i32 @nfsm_chain_get_32(i32 %89, %struct.nfsm_chain* %23, i32 %90)
  %92 = load i32, i32* %13, align 4
  %93 = load i64, i64* %21, align 8
  %94 = call i32 @nfsm_chain_get_64(i32 %92, %struct.nfsm_chain* %23, i64 %93)
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @nfsmout_if(i32 %95)
  %97 = load i64*, i64** %11, align 8
  %98 = icmp ne i64* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %88
  %100 = load i64, i64* %21, align 8
  %101 = load i64*, i64** %11, align 8
  store i64 %100, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %88
  %103 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %104 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %103, i32 0, i32 3
  %105 = call i32 @lck_mtx_lock(i32* %104)
  %106 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %107 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @NFSSTA_HASWRITEVERF, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %102
  %113 = load i64, i64* %21, align 8
  %114 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %115 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %114, i32 0, i32 2
  store i64 %113, i64* %115, align 8
  %116 = load i32, i32* @NFSSTA_HASWRITEVERF, align 4
  %117 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %118 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 4
  br label %132

121:                                              ; preds = %102
  %122 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %123 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %21, align 8
  %126 = icmp ne i64 %124, %125
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i64, i64* %21, align 8
  %129 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %130 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  br label %131

131:                                              ; preds = %127, %121
  br label %132

132:                                              ; preds = %131, %112
  %133 = load %struct.nfsmount*, %struct.nfsmount** %12, align 8
  %134 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %133, i32 0, i32 3
  %135 = call i32 @lck_mtx_unlock(i32* %134)
  %136 = load i32, i32* %13, align 4
  %137 = load i32, i32* @NFS_OP_GETATTR, align 4
  %138 = call i32 @nfsm_chain_op_check(i32 %136, %struct.nfsm_chain* %23, i32 %137)
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i32 @nfsm_chain_loadattr(i32 %139, %struct.nfsm_chain* %23, %struct.TYPE_10__* %140, i32 %141, i64* %20)
  br label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %14, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %148 = call i32 @nfs_node_unlock(%struct.TYPE_10__* %147)
  br label %149

149:                                              ; preds = %146, %143
  %150 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %23)
  %151 = load i32, i32* %18, align 4
  %152 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %169

154:                                              ; preds = %149
  %155 = load i64, i64* @nfs_allow_async, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %169

157:                                              ; preds = %154
  %158 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %159 = call i32 @NFSTOMP(%struct.TYPE_10__* %158)
  store i32 %159, i32* %22, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %157
  %162 = load i32, i32* %22, align 4
  %163 = call i32 @vfs_flags(i32 %162)
  %164 = load i32, i32* @MNT_ASYNC, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %161
  %168 = load i32, i32* @NFS_WRITE_FILESYNC, align 4
  store i32 %168, i32* %18, align 4
  br label %169

169:                                              ; preds = %167, %161, %157, %154, %149
  %170 = load i32, i32* %18, align 4
  %171 = load i32*, i32** %9, align 8
  store i32 %170, i32* %171, align 4
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @NFS_FFLAG_IS_ATTR, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %169
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = call i32 @microuptime(i32* %181)
  br label %183

183:                                              ; preds = %179, %169
  %184 = load i32, i32* %13, align 4
  store i32 %184, i32* %6, align 4
  br label %185

185:                                              ; preds = %183, %45, %31
  %186 = load i32, i32* %6, align 4
  ret i32 %186
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_10__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.nfsreq*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_request_async_finish(%struct.nfsreq*, %struct.nfsm_chain*, i64*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @nfsm_chain_skip_tag(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_op_check(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfsm_chain_get_64(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, %struct.TYPE_10__*, i32, i64*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

declare dso_local i32 @NFSTOMP(%struct.TYPE_10__*) #1

declare dso_local i32 @vfs_flags(i32) #1

declare dso_local i32 @microuptime(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
