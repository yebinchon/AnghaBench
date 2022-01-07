; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_readlink_rpc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_readlink_rpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@NFSPROC_READLINK = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_readlink_rpc(%struct.TYPE_8__* %0, i8* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfsmount*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.nfsm_chain, align 4
  %18 = alloca %struct.nfsm_chain, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @ENOENT, align 4
  store i32 %19, i32* %12, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %21 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__* %20)
  store %struct.nfsmount* %21, %struct.nfsmount** %10, align 8
  %22 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %23 = call i64 @nfs_mount_gone(%struct.nfsmount* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %5, align 4
  br label %135

27:                                               ; preds = %4
  %28 = load %struct.nfsmount*, %struct.nfsmount** %10, align 8
  %29 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %13, align 4
  %31 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %17)
  %32 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %18)
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %13, align 4
  %35 = call i32 @NFSX_FH(i32 %34)
  %36 = call i32 @nfsm_chain_build_alloc_init(i32 %33, %struct.nfsm_chain* %17, i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @nfsm_chain_add_fh(i32 %37, %struct.nfsm_chain* %17, i32 %38, i32 %41, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @nfsm_chain_build_done(i32 %46, %struct.nfsm_chain* %17)
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @nfsmout_if(i32 %48)
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %51 = load i32, i32* @NFSPROC_READLINK, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @nfs_request(%struct.TYPE_8__* %50, i32* null, %struct.nfsm_chain* %17, i32 %51, i32 %52, i32* null, %struct.nfsm_chain* %18, i32* %16, i32* %14)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %55 = call i32 @nfs_node_lock(%struct.TYPE_8__* %54)
  store i32 %55, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %27
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %11, align 4
  br label %59

59:                                               ; preds = %57, %27
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @NFS_VER3, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %66 = call i32 @nfsm_chain_postop_attr_update(i32 %64, %struct.nfsm_chain* %18, %struct.TYPE_8__* %65, i32* %16)
  br label %67

67:                                               ; preds = %63, %59
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %67
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %70, %67
  %73 = load i32, i32* %11, align 4
  %74 = load i64, i64* %15, align 8
  %75 = call i32 @nfsm_chain_get_32(i32 %73, %struct.nfsm_chain* %18, i64 %74)
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @nfsmout_if(i32 %76)
  %78 = load i32, i32* %13, align 4
  %79 = load i32, i32* @NFS_VER2, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %72
  %82 = load i64, i64* %15, align 8
  %83 = load i64*, i64** %8, align 8
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %81
  %87 = load i32, i32* @EBADRPC, align 4
  store i32 %87, i32* %11, align 4
  br label %125

88:                                               ; preds = %81, %72
  %89 = load i64, i64* %15, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = load i64, i64* %90, align 8
  %92 = icmp sge i64 %89, %91
  br i1 %92, label %93, label %114

93:                                               ; preds = %88
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %93
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64*, i64** %8, align 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp slt i64 %101, %103
  br i1 %104, label %105, label %109

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  store i64 %108, i64* %15, align 8
  br label %113

109:                                              ; preds = %98, %93
  %110 = load i64*, i64** %8, align 8
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  store i64 %112, i64* %15, align 8
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %88
  %115 = load i32, i32* %11, align 4
  %116 = load i64, i64* %15, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = call i32 @nfsm_chain_get_opaque(i32 %115, %struct.nfsm_chain* %18, i64 %116, i8* %117)
  %119 = load i32, i32* %11, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %124, label %121

121:                                              ; preds = %114
  %122 = load i64, i64* %15, align 8
  %123 = load i64*, i64** %8, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %114
  br label %125

125:                                              ; preds = %124, %86
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %131, label %128

128:                                              ; preds = %125
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %130 = call i32 @nfs_node_unlock(%struct.TYPE_8__* %129)
  br label %131

131:                                              ; preds = %128, %125
  %132 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %17)
  %133 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %18)
  %134 = load i32, i32* %11, align 4
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %131, %25
  %136 = load i32, i32* %5, align 4
  ret i32 %136
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_8__*) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfsm_chain_build_alloc_init(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @NFSX_FH(i32) #1

declare dso_local i32 @nfsm_chain_add_fh(i32, %struct.nfsm_chain*, i32, i32, i32) #1

declare dso_local i32 @nfsm_chain_build_done(i32, %struct.nfsm_chain*) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfs_request(%struct.TYPE_8__*, i32*, %struct.nfsm_chain*, i32, i32, i32*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(%struct.TYPE_8__*) #1

declare dso_local i32 @nfsm_chain_postop_attr_update(i32, %struct.nfsm_chain*, %struct.TYPE_8__*, i32*) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_get_opaque(i32, %struct.nfsm_chain*, i64, i8*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_8__*) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
