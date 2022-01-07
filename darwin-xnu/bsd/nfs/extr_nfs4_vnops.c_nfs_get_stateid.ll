; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_get_stateid.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_get_stateid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.nfsmount = type { i32 }
%struct.nfs_open_owner = type { i32 }
%struct.nfs_open_file = type { i32, %struct.TYPE_12__, i64 }
%struct.nfs_lock_owner = type { %struct.TYPE_12__, i32 }

@N_DELEG_MASK = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_LOST = common dso_local global i32 0, align 4
@NFS_OPEN_FILE_REOPEN = common dso_local global i32 0, align 4
@NFS_FFLAG_IS_ATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"nfs_get_stateid: no stateid\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_get_stateid(%struct.TYPE_11__* %0, i32 %1, i32 %2, %struct.TYPE_12__* %3) #0 {
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.nfsmount*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfs_open_owner*, align 8
  %12 = alloca %struct.nfs_open_file*, align 8
  %13 = alloca %struct.nfs_lock_owner*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_12__* %3, %struct.TYPE_12__** %8, align 8
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %16 = call %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__* %15)
  store %struct.nfsmount* %16, %struct.nfsmount** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @get_bsdthreadtask_info(i32 %20)
  br label %24

22:                                               ; preds = %4
  %23 = call i64 (...) @current_proc()
  br label %24

24:                                               ; preds = %22, %19
  %25 = phi i64 [ %21, %19 ], [ %23, %22 ]
  store i64 %25, i64* %10, align 8
  store %struct.nfs_open_owner* null, %struct.nfs_open_owner** %11, align 8
  store %struct.nfs_open_file* null, %struct.nfs_open_file** %12, align 8
  store %struct.nfs_lock_owner* null, %struct.nfs_lock_owner** %13, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @N_DELEG_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 2
  store %struct.TYPE_12__* %34, %struct.TYPE_12__** %14, align 8
  br label %99

35:                                               ; preds = %24
  %36 = load i64, i64* %10, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %35
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call %struct.nfs_lock_owner* @nfs_lock_owner_find(%struct.TYPE_11__* %39, i64 %40, i32 0)
  store %struct.nfs_lock_owner* %41, %struct.nfs_lock_owner** %13, align 8
  br label %42

42:                                               ; preds = %38, %35
  %43 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %13, align 8
  %44 = icmp ne %struct.nfs_lock_owner* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %13, align 8
  %47 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %46, i32 0, i32 1
  %48 = call i32 @TAILQ_EMPTY(i32* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %13, align 8
  %52 = getelementptr inbounds %struct.nfs_lock_owner, %struct.nfs_lock_owner* %51, i32 0, i32 0
  store %struct.TYPE_12__* %52, %struct.TYPE_12__** %14, align 8
  br label %98

53:                                               ; preds = %45, %42
  %54 = load %struct.nfsmount*, %struct.nfsmount** %9, align 8
  %55 = load i32, i32* %7, align 4
  %56 = call %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount* %54, i32 %55, i32 0)
  store %struct.nfs_open_owner* %56, %struct.nfs_open_owner** %11, align 8
  %57 = icmp ne %struct.nfs_open_owner* %56, null
  br i1 %57, label %58, label %97

58:                                               ; preds = %53
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %60 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %11, align 8
  %61 = call i64 @nfs_open_file_find(%struct.TYPE_11__* %59, %struct.nfs_open_owner* %60, %struct.nfs_open_file** %12, i32 0, i32 0, i32 0)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %97

63:                                               ; preds = %58
  %64 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %65 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %97, label %70

70:                                               ; preds = %63
  %71 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %72 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %97

75:                                               ; preds = %70
  %76 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %77 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @NFS_OPEN_FILE_REOPEN, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %75
  %83 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %84 = load i32, i32* %6, align 4
  %85 = call i32 @nfs4_reopen(%struct.nfs_open_file* %83, i32 %84)
  br label %86

86:                                               ; preds = %82, %75
  %87 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %88 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @NFS_OPEN_FILE_LOST, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %86
  %94 = load %struct.nfs_open_file*, %struct.nfs_open_file** %12, align 8
  %95 = getelementptr inbounds %struct.nfs_open_file, %struct.nfs_open_file* %94, i32 0, i32 1
  store %struct.TYPE_12__* %95, %struct.TYPE_12__** %14, align 8
  br label %96

96:                                               ; preds = %93, %86
  br label %97

97:                                               ; preds = %96, %70, %63, %58, %53
  br label %98

98:                                               ; preds = %97, %50
  br label %99

99:                                               ; preds = %98, %32
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %101 = icmp ne %struct.TYPE_12__* %100, null
  br i1 %101, label %102, label %135

102:                                              ; preds = %99
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 1
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %130, i32* %134, align 4
  br label %161

135:                                              ; preds = %99
  %136 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @NFS_FFLAG_IS_ATTR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %146, label %143

143:                                              ; preds = %135
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %145 = call i32 @NP(%struct.TYPE_11__* %144, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %146

146:                                              ; preds = %143, %135
  %147 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 2
  store i32 -1, i32* %150, align 4
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 1
  store i32 -1, i32* %154, align 4
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 1
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  store i32 -1, i32* %158, align 4
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  store i32 -1, i32* %160, align 8
  br label %161

161:                                              ; preds = %146, %102
  %162 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %13, align 8
  %163 = icmp ne %struct.nfs_lock_owner* %162, null
  br i1 %163, label %164, label %167

164:                                              ; preds = %161
  %165 = load %struct.nfs_lock_owner*, %struct.nfs_lock_owner** %13, align 8
  %166 = call i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner* %165)
  br label %167

167:                                              ; preds = %164, %161
  %168 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %11, align 8
  %169 = icmp ne %struct.nfs_open_owner* %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %167
  %171 = load %struct.nfs_open_owner*, %struct.nfs_open_owner** %11, align 8
  %172 = call i32 @nfs_open_owner_rele(%struct.nfs_open_owner* %171)
  br label %173

173:                                              ; preds = %170, %167
  ret void
}

declare dso_local %struct.nfsmount* @NFSTONMP(%struct.TYPE_11__*) #1

declare dso_local i64 @get_bsdthreadtask_info(i32) #1

declare dso_local i64 @current_proc(...) #1

declare dso_local %struct.nfs_lock_owner* @nfs_lock_owner_find(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.nfs_open_owner* @nfs_open_owner_find(%struct.nfsmount*, i32, i32) #1

declare dso_local i64 @nfs_open_file_find(%struct.TYPE_11__*, %struct.nfs_open_owner*, %struct.nfs_open_file**, i32, i32, i32) #1

declare dso_local i32 @nfs4_reopen(%struct.nfs_open_file*, i32) #1

declare dso_local i32 @NP(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @nfs_lock_owner_rele(%struct.nfs_lock_owner*) #1

declare dso_local i32 @nfs_open_owner_rele(%struct.nfs_open_owner*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
