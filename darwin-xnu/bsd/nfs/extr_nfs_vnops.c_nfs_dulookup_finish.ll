; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dulookup_finish.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vnops.c_nfs_dulookup_finish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_dulookup = type { i32, %struct.TYPE_18__, i32, %struct.TYPE_22__ }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_20__ = type { i32 }
%struct.nfsmount = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_20__*, i32, i32, i32, %struct.TYPE_22__*, i32*, %struct.TYPE_21__*, %struct.nfs_vattr*)* }
%struct.TYPE_21__ = type { i32, i32 }
%struct.nfs_vattr = type { i32 }

@NFS_DULOOKUP_INPROG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@NNEGNCENTRIES = common dso_local global i32 0, align 4
@NG_MAKEENTRY = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_dulookup_finish(%struct.nfs_dulookup* %0, %struct.TYPE_20__* %1, i32 %2) #0 {
  %4 = alloca %struct.nfs_dulookup*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsmount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__, align 4
  %12 = alloca %struct.nfs_vattr, align 4
  store %struct.nfs_dulookup* %0, %struct.nfs_dulookup** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %14 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_20__* %13)
  store %struct.nfsmount* %14, %struct.nfsmount** %7, align 8
  %15 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %16 = icmp ne %struct.nfsmount* %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %19 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @NFS_DULOOKUP_INPROG, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %17, %3
  br label %100

25:                                               ; preds = %17
  %26 = call i32 @NVATTR_INIT(%struct.nfs_vattr* %12)
  %27 = load %struct.nfsmount*, %struct.nfsmount** %7, align 8
  %28 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %27, i32 0, i32 0
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_20__*, i32, i32, i32, %struct.TYPE_22__*, i32*, %struct.TYPE_21__*, %struct.nfs_vattr*)*, i32 (%struct.TYPE_20__*, i32, i32, i32, %struct.TYPE_22__*, i32*, %struct.TYPE_21__*, %struct.nfs_vattr*)** %30, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %33 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %34 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %38 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %43 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %42, i32 0, i32 3
  %44 = call i32 %31(%struct.TYPE_20__* %32, i32 %36, i32 %40, i32 %41, %struct.TYPE_22__* %43, i32* %10, %struct.TYPE_21__* %11, %struct.nfs_vattr* %12)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* @NFS_DULOOKUP_INPROG, align 4
  %46 = xor i32 %45, -1
  %47 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, %46
  store i32 %50, i32* %48, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ENOENT, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %25
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %56 = call i32 @nfs_node_lock_force(%struct.TYPE_20__* %55)
  %57 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %58 = call i32 @NFSTOV(%struct.TYPE_20__* %57)
  %59 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %60 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %59, i32 0, i32 1
  %61 = call i32 @cache_enter(i32 %58, i32* null, %struct.TYPE_18__* %60)
  %62 = load i32, i32* @NNEGNCENTRIES, align 4
  %63 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %68 = call i32 @nfs_node_unlock(%struct.TYPE_20__* %67)
  br label %98

69:                                               ; preds = %25
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %74 = call i32 @NFSTOMP(%struct.TYPE_20__* %73)
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %76 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %77 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %11, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %83 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @NG_MAKEENTRY, align 4
  %87 = call i32 @nfs_nget(i32 %74, %struct.TYPE_20__* %75, %struct.TYPE_18__* %77, i32 %79, i32 %81, %struct.nfs_vattr* %12, i32* %10, i32 %85, i32 %86, %struct.TYPE_20__** %9)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %72
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %92 = call i32 @nfs_node_unlock(%struct.TYPE_20__* %91)
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %94 = call i32 @NFSTOV(%struct.TYPE_20__* %93)
  %95 = call i32 @vnode_put(i32 %94)
  br label %96

96:                                               ; preds = %90, %72
  br label %97

97:                                               ; preds = %96, %69
  br label %98

98:                                               ; preds = %97, %54
  %99 = call i32 @NVATTR_CLEANUP(%struct.nfs_vattr* %12)
  br label %100

100:                                              ; preds = %98, %24
  %101 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %102 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @NFS_DULOOKUP_INPROG, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %109 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %108, i32 0, i32 3
  %110 = call i32 @nfs_request_async_cancel(%struct.TYPE_22__* %109)
  br label %111

111:                                              ; preds = %107, %100
  %112 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %113 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %133

117:                                              ; preds = %111
  %118 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %119 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %123 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %121, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %117
  %127 = load %struct.nfs_dulookup*, %struct.nfs_dulookup** %4, align 8
  %128 = getelementptr inbounds %struct.nfs_dulookup, %struct.nfs_dulookup* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @M_TEMP, align 4
  %132 = call i32 @FREE(i32 %130, i32 %131)
  br label %133

133:                                              ; preds = %126, %117, %111
  ret void
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_20__*) #1

declare dso_local i32 @NVATTR_INIT(%struct.nfs_vattr*) #1

declare dso_local i32 @nfs_node_lock_force(%struct.TYPE_20__*) #1

declare dso_local i32 @cache_enter(i32, i32*, %struct.TYPE_18__*) #1

declare dso_local i32 @NFSTOV(%struct.TYPE_20__*) #1

declare dso_local i32 @nfs_node_unlock(%struct.TYPE_20__*) #1

declare dso_local i32 @nfs_nget(i32, %struct.TYPE_20__*, %struct.TYPE_18__*, i32, i32, %struct.nfs_vattr*, i32*, i32, i32, %struct.TYPE_20__**) #1

declare dso_local i32 @NFSTOMP(%struct.TYPE_20__*) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @NVATTR_CLEANUP(%struct.nfs_vattr*) #1

declare dso_local i32 @nfs_request_async_cancel(%struct.TYPE_22__*) #1

declare dso_local i32 @FREE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
