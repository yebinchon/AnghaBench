; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_read_rpc_async_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs3_read_rpc_async_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsreq = type { i32 }
%struct.nfsmount = type { i32 }
%struct.nfsm_chain = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@NFS_VER3 = common dso_local global i32 0, align 4
@NFSX_UNSIGNED = common dso_local global i32 0, align 4
@NFS_VER2 = common dso_local global i32 0, align 4
@EBADRPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs3_read_rpc_async_finish(i32 %0, %struct.nfsreq* %1, i32 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfsreq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.nfsmount*, align 8
  %20 = alloca %struct.nfsm_chain, align 4
  store i32 %0, i32* %7, align 4
  store %struct.nfsreq* %1, %struct.nfsreq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %16, align 4
  store i64 0, i64* %17, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.nfsmount* @NFSTONMP(i32 %21)
  store %struct.nfsmount* %22, %struct.nfsmount** %19, align 8
  %23 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %24 = call i64 @nfs_mount_gone(%struct.nfsmount* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %28 = call i32 @nfs_request_async_cancel(%struct.nfsreq* %27)
  %29 = load i32, i32* @ENXIO, align 4
  store i32 %29, i32* %6, align 4
  br label %140

30:                                               ; preds = %5
  %31 = load %struct.nfsmount*, %struct.nfsmount** %19, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %14, align 4
  %34 = call i32 @nfsm_chain_null(%struct.nfsm_chain* %20)
  %35 = load %struct.nfsreq*, %struct.nfsreq** %8, align 8
  %36 = call i32 @nfs_request_async_finish(%struct.nfsreq* %35, %struct.nfsm_chain* %20, i32* %18, i32* %15)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @EINPROGRESS, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %140

42:                                               ; preds = %30
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @nfs_node_lock(i32 %43)
  store i32 %44, i32* %13, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32, i32* %13, align 4
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %46, %42
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @NFS_VER3, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @nfsm_chain_postop_attr_update(i32 %53, %struct.nfsm_chain* %20, i32 %54, i32* %18)
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %12, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %59, %56
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @NFS_VER3, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %61
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @NFSX_UNSIGNED, align 4
  %68 = call i32 @nfsm_chain_adv(i32 %66, %struct.nfsm_chain* %20, i32 %67)
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %16, align 4
  %71 = sext i32 %70 to i64
  %72 = call i32 @nfsm_chain_get_32(i32 %69, %struct.nfsm_chain* %20, i64 %71)
  br label %78

73:                                               ; preds = %61
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* %14, align 4
  %77 = call i32 @nfsm_chain_loadattr(i32 %74, %struct.nfsm_chain* %20, i32 %75, i32 %76, i32* %18)
  br label %78

78:                                               ; preds = %73, %65
  %79 = load i32, i32* %13, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @nfs_node_unlock(i32 %82)
  br label %84

84:                                               ; preds = %81, %78
  %85 = load i32, i32* %12, align 4
  %86 = load i64, i64* %17, align 8
  %87 = call i32 @nfsm_chain_get_32(i32 %85, %struct.nfsm_chain* %20, i64 %86)
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* @NFS_VER2, align 4
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %98

91:                                               ; preds = %84
  %92 = load i64, i64* %17, align 8
  %93 = load i64*, i64** %10, align 8
  %94 = load i64, i64* %93, align 8
  %95 = icmp ugt i64 %92, %94
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = load i32, i32* @EBADRPC, align 4
  store i32 %97, i32* %12, align 4
  br label %98

98:                                               ; preds = %96, %91, %84
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @nfsmout_if(i32 %99)
  %101 = load i64, i64* %17, align 8
  %102 = load i64*, i64** %10, align 8
  %103 = load i64, i64* %102, align 8
  %104 = call i64 @MIN(i64 %101, i64 %103)
  %105 = load i32, i32* %9, align 4
  %106 = call i32 @nfsm_chain_get_uio(%struct.nfsm_chain* %20, i64 %104, i32 %105)
  store i32 %106, i32* %12, align 4
  %107 = load i32*, i32** %11, align 8
  %108 = icmp ne i32* %107, null
  br i1 %108, label %109, label %131

109:                                              ; preds = %98
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* @NFS_VER3, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %109
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load i64, i64* %17, align 8
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %116
  store i32 1, i32* %16, align 4
  br label %120

120:                                              ; preds = %119, %116, %113
  br label %128

121:                                              ; preds = %109
  %122 = load i64, i64* %17, align 8
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %123, align 8
  %125 = icmp ult i64 %122, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %121
  store i32 1, i32* %16, align 4
  br label %127

127:                                              ; preds = %126, %121
  br label %128

128:                                              ; preds = %127, %120
  %129 = load i32, i32* %16, align 4
  %130 = load i32*, i32** %11, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %128, %98
  %132 = load i64, i64* %17, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @MIN(i64 %132, i64 %134)
  %136 = load i64*, i64** %10, align 8
  store i64 %135, i64* %136, align 8
  br label %137

137:                                              ; preds = %131
  %138 = call i32 @nfsm_chain_cleanup(%struct.nfsm_chain* %20)
  %139 = load i32, i32* %12, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %137, %40, %26
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local %struct.nfsmount* @NFSTONMP(i32) #1

declare dso_local i64 @nfs_mount_gone(%struct.nfsmount*) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.nfsreq*) #1

declare dso_local i32 @nfsm_chain_null(%struct.nfsm_chain*) #1

declare dso_local i32 @nfs_request_async_finish(%struct.nfsreq*, %struct.nfsm_chain*, i32*, i32*) #1

declare dso_local i32 @nfs_node_lock(i32) #1

declare dso_local i32 @nfsm_chain_postop_attr_update(i32, %struct.nfsm_chain*, i32, i32*) #1

declare dso_local i32 @nfsm_chain_adv(i32, %struct.nfsm_chain*, i32) #1

declare dso_local i32 @nfsm_chain_get_32(i32, %struct.nfsm_chain*, i64) #1

declare dso_local i32 @nfsm_chain_loadattr(i32, %struct.nfsm_chain*, i32, i32, i32*) #1

declare dso_local i32 @nfs_node_unlock(i32) #1

declare dso_local i32 @nfsmout_if(i32) #1

declare dso_local i32 @nfsm_chain_get_uio(%struct.nfsm_chain*, i64, i32) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i32 @nfsm_chain_cleanup(%struct.nfsm_chain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
