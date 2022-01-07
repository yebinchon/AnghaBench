; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { i64, i64, i32, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Unmounting %s from %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"nfs state = 0x%8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"nfs socket flags = 0x%8.8x\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"nfs mount ref count is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"mount ref count is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [53 x i8] c"Some one has grabbed a ref %d state flags = 0x%8.8x\0A\00", align 1
@M_SONAME = common dso_local global i32 0, align 4
@NFS_VER4 = common dso_local global i64 0, align 8
@M_TEMP = common dso_local global i32 0, align 4
@nfs_mount_grp = common dso_local global i32 0, align 4
@M_NFSMNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_mount_cleanup(%struct.nfsmount* %0) #0 {
  %2 = alloca %struct.nfsmount*, align 8
  store %struct.nfsmount* %0, %struct.nfsmount** %2, align 8
  %3 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %4 = icmp ne %struct.nfsmount* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %173

6:                                                ; preds = %1
  %7 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %8 = call i32 @nfs_mount_zombie(%struct.nfsmount* %7, i32 0)
  %9 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %10 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %9, i32 0, i32 13
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = call %struct.TYPE_4__* @vfs_statfs(%struct.TYPE_5__* %11)
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %17 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %16, i32 0, i32 13
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = call %struct.TYPE_4__* @vfs_statfs(%struct.TYPE_5__* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i8*, i64, ...) @NFS_VFS_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %15, i32 %21)
  %23 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %24 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %23, i32 0, i32 11
  %25 = load i64, i64* %24, align 8
  %26 = call i32 (i8*, i64, ...) @NFS_VFS_DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i64 %25)
  %27 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %28 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %27, i32 0, i32 14
  %29 = load i64, i64* %28, align 8
  %30 = call i32 (i8*, i64, ...) @NFS_VFS_DBG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %29)
  %31 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %32 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %31, i32 0, i32 12
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i64, ...) @NFS_VFS_DBG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %36 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %35, i32 0, i32 13
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 (i8*, i64, ...) @NFS_VFS_DBG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i64 %39)
  %41 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %42 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %41, i32 0, i32 13
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %6
  %46 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %47 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %46, i32 0, i32 13
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = call i32 @vfs_setfsprivate(%struct.TYPE_5__* %48, i32* null)
  br label %50

50:                                               ; preds = %45, %6
  %51 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %52 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %51, i32 0, i32 2
  %53 = call i32 @lck_mtx_lock(i32* %52)
  %54 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %55 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %54, i32 0, i32 12
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %50
  %59 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %60 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %59, i32 0, i32 12
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %63 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %62, i32 0, i32 11
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i64 %61, i64 %64)
  br label %66

66:                                               ; preds = %58, %50
  %67 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %68 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %67, i32 0, i32 10
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %77

71:                                               ; preds = %66
  %72 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %73 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %72, i32 0, i32 10
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @M_SONAME, align 4
  %76 = call i32 @FREE(i64 %74, i32 %75)
  br label %77

77:                                               ; preds = %71, %66
  %78 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %79 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @NFS_VER4, align 8
  %82 = icmp slt i64 %80, %81
  br i1 %82, label %83, label %94

83:                                               ; preds = %77
  %84 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %85 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %84, i32 0, i32 9
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %90 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %89, i32 0, i32 9
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* @M_SONAME, align 4
  %93 = call i32 @FREE(i64 %91, i32 %92)
  br label %94

94:                                               ; preds = %88, %83, %77
  %95 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %96 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 4
  %98 = call i64 @IS_VALID_CRED(i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %94
  %101 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %102 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %101, i32 0, i32 8
  %103 = call i32 @kauth_cred_unref(i32* %102)
  br label %104

104:                                              ; preds = %100, %94
  %105 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %106 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %105, i32 0, i32 7
  %107 = call i32 @nfs_fs_locations_cleanup(i32* %106)
  %108 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %109 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %108, i32 0, i32 6
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %104
  %113 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %114 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %113, i32 0, i32 6
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @M_TEMP, align 4
  %117 = call i32 @FREE(i64 %115, i32 %116)
  br label %118

118:                                              ; preds = %112, %104
  %119 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %120 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %119, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %118
  %124 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %125 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = load i32, i32* @M_TEMP, align 4
  %128 = call i32 @FREE(i64 %126, i32 %127)
  br label %129

129:                                              ; preds = %123, %118
  %130 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %131 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %129
  %135 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %136 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %135, i32 0, i32 4
  %137 = load i64, i64* %136, align 8
  %138 = load i32, i32* @M_TEMP, align 4
  %139 = call i32 @FREE(i64 %137, i32 %138)
  br label %140

140:                                              ; preds = %134, %129
  %141 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %142 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %147 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @xb_free(i64 %148)
  br label %150

150:                                              ; preds = %145, %140
  %151 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %152 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %151, i32 0, i32 2
  %153 = call i32 @lck_mtx_unlock(i32* %152)
  %154 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %155 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %154, i32 0, i32 2
  %156 = load i32, i32* @nfs_mount_grp, align 4
  %157 = call i32 @lck_mtx_destroy(i32* %155, i32 %156)
  %158 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %159 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %150
  %163 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %164 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %163, i32 0, i32 1
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* @M_TEMP, align 4
  %167 = call i32 @FREE(i64 %165, i32 %166)
  br label %168

168:                                              ; preds = %162, %150
  %169 = load %struct.nfsmount*, %struct.nfsmount** %2, align 8
  %170 = ptrtoint %struct.nfsmount* %169 to i32
  %171 = load i32, i32* @M_NFSMNT, align 4
  %172 = call i32 @FREE_ZONE(i32 %170, i32 112, i32 %171)
  br label %173

173:                                              ; preds = %168, %5
  ret void
}

declare dso_local i32 @nfs_mount_zombie(%struct.nfsmount*, i32) #1

declare dso_local i32 @NFS_VFS_DBG(i8*, i64, ...) #1

declare dso_local %struct.TYPE_4__* @vfs_statfs(%struct.TYPE_5__*) #1

declare dso_local i32 @vfs_setfsprivate(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @panic(i8*, i64, i64) #1

declare dso_local i32 @FREE(i64, i32) #1

declare dso_local i64 @IS_VALID_CRED(i32) #1

declare dso_local i32 @kauth_cred_unref(i32*) #1

declare dso_local i32 @nfs_fs_locations_cleanup(i32*) #1

declare dso_local i32 @xb_free(i64) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local i32 @lck_mtx_destroy(i32*, i32) #1

declare dso_local i32 @FREE_ZONE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
