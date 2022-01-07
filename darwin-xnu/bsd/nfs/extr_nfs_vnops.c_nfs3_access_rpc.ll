; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_access_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_access_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, i32, i32*, i32*, i32, i32, i32 }
%struct.nfsm_chain = type { i32 }
%struct.nfsmount = type { i32 }
%struct.timeval = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i64 0, align 8
@NFSPROC_ACCESS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFS_ACCESS_DELETE = common dso_local global i32 0, align 4
@nfs_access_dotzfs = common dso_local global i64 0, align 8
@NISDOTZFSCHILD = common dso_local global i32 0, align 4
@NFS_ACCESS_MODIFY = common dso_local global i32 0, align 4
@NFS_ACCESS_EXTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_access_rpc(%struct.TYPE_9__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.nfsm_chain, align 4
  %16 = alloca %struct.nfsm_chain, align 4
  %17 = alloca %struct.nfsmount*, align 8
  %18 = alloca %struct.timeval, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %20 = load i32, i32* @ENOENT, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %21 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %15)
  %22 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %16)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @NFS_VER3, align 4
  %25 = call i64 @NFSX_FH(i32 %24)
  %26 = load i64, i64* @NFSX_UNSIGNED, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @nfsm_chain_build_alloc_init(i32 %23, %struct.nfsm_chain* %15, i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @NFS_VER3, align 4
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @nfsm_chain_add_fh(i32 %29, %struct.nfsm_chain* %15, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nfsm_chain_add_32(i32 %38, %struct.nfsm_chain* %15, i32 %40)
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @nfsm_chain_build_done(i32 %42, %struct.nfsm_chain* %15)
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @nfsmout_if(i32 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load i32, i32* @NFSPROC_ACCESS, align 4
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @vfs_context_thread(i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @vfs_context_ucred(i32 %50)
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @nfs_request2(%struct.TYPE_9__* %46, i32* null, %struct.nfsm_chain* %15, i32 %47, i32 %49, i32 %51, i32* null, i32 %52, %struct.nfsm_chain* %16, i32* %14, i32* %11)
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %55 = call i32 @nfs_node_lock(%struct.TYPE_9__* %54)
  store i32 %55, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %4
  %58 = load i32, i32* %10, align 4
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %57, %4
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %62 = call i32 @nfsm_chain_postop_attr_update(i32 %60, %struct.nfsm_chain* %16, %struct.TYPE_9__* %61, i32* %14)
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = load i32, i32* %11, align 4
  store i32 %66, i32* %9, align 4
  br label %67

67:                                               ; preds = %65, %59
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @nfsm_chain_get_32(i32 %68, %struct.nfsm_chain* %16, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @nfsmout_if(i32 %71)
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %74 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__* %73)
  store %struct.nfsmount* %74, %struct.nfsmount** %17, align 8
  %75 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %76 = call i64 @nfs_mount_gone(%struct.nfsmount* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @ENXIO, align 4
  store i32 %79, i32* %9, align 4
  br label %80

80:                                               ; preds = %78, %67
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @nfsmout_if(i32 %81)
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = call i64 @auth_is_kerberized(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %80
  %89 = load %struct.nfsmount*, %struct.nfsmount** %17, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @auth_is_kerberized(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88, %80
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @vfs_context_ucred(i32 %95)
  %97 = call i32 @nfs_cred_getasid2uid(i32 %96)
  store i32 %97, i32* %19, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @vfs_context_ucred(i32 %99)
  %101 = call i32 @kauth_cred_getuid(i32 %100)
  store i32 %101, i32* %19, align 4
  br label %102

102:                                              ; preds = %98, %94
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = load i32, i32* %19, align 4
  %105 = call i32 @nfs_node_access_slot(%struct.TYPE_9__* %103, i32 %104, i32 1)
  store i32 %105, i32* %12, align 4
  %106 = load i32, i32* %19, align 4
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %106, i32* %112, align 4
  %113 = call i32 @microuptime(%struct.timeval* %18)
  %114 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  %122 = load i32, i32* %13, align 4
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = load i32, i32* %12, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  store i32 %122, i32* %128, align 4
  %129 = load i32*, i32** %6, align 8
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %155

134:                                              ; preds = %102
  %135 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %12, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %155, label %145

145:                                              ; preds = %134
  %146 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %12, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = or i32 %153, %146
  store i32 %154, i32* %152, align 4
  br label %155

155:                                              ; preds = %145, %134, %102
  %156 = load i64, i64* @nfs_access_dotzfs, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %179

158:                                              ; preds = %155
  %159 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @NISDOTZFSCHILD, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %179

165:                                              ; preds = %158
  %166 = load i32, i32* @NFS_ACCESS_MODIFY, align 4
  %167 = load i32, i32* @NFS_ACCESS_EXTEND, align 4
  %168 = or i32 %166, %167
  %169 = load i32, i32* @NFS_ACCESS_DELETE, align 4
  %170 = or i32 %168, %169
  %171 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = or i32 %177, %170
  store i32 %178, i32* %176, align 4
  br label %179

179:                                              ; preds = %165, %158, %155
  %180 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %12, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %6, align 8
  store i32 %186, i32* %187, align 4
  br label %188

188:                                              ; preds = %179
  %189 = load i32, i32* %10, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %194, label %191

191:                                              ; preds = %188
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %193 = call i32 @nfs_node_unlock(%struct.TYPE_9__* %192)
  br label %194

194:                                              ; preds = %191, %188
  %195 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %15)
  %196 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %16)
  %197 = load i32, i32* %9, align 4
  ret i32 %197
}

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i64 @NFSX_FH(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_add_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request2(%struct.TYPE_9__*, i32*, %struct.nfsm_chain*, i32, i32, i32, i32*, i32, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @vfs_context_thread(i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_9__*) #1

declare dso_local i32 @nfsm_chain_postop_attr_update(i32, %struct.nfsm_chain*, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i32) #1

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_9__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i64 @auth_is_kerberized(i32) #1

declare dso_local i32 @nfs_cred_getasid2uid(i32) #1

declare dso_local i32 @kauth_cred_getuid(i32) #1

declare dso_local i32 @nfs_node_access_slot(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @microuptime(%struct.timeval*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_9__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
