; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_vattr_set_bitmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_vattr_set_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsmount = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.vnode_attr = type { i32 }

@va_data_size = common dso_local global i32 0, align 4
@NFS_FATTR_SIZE = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@NFS_FSFLAG_ACL = common dso_local global i32 0, align 4
@NFS_FATTR_ACL = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@NFS_FATTR_ARCHIVE = common dso_local global i32 0, align 4
@NFS_FATTR_HIDDEN = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@ACLONLY = common dso_local global i32 0, align 4
@NFS_FATTR_MODE = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@NFS_FATTR_OWNER = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@NFS_FATTR_OWNER_GROUP = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_ACCESS_SET = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_MODIFY_SET = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@va_backup_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_BACKUP = common dso_local global i32 0, align 4
@va_create_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_CREATE = common dso_local global i32 0, align 4
@NFS_ATTR_BITMAP_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_vattr_set_bitmap(%struct.nfsmount* %0, i32* %1, %struct.vnode_attr* %2) #0 {
  %4 = alloca %struct.nfsmount*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32, align 4
  store %struct.nfsmount* %0, %struct.nfsmount** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.vnode_attr* %2, %struct.vnode_attr** %6, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = call i32 @NFS_CLEAR_ATTRIBUTES(i32* %8)
  %10 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %11 = load i32, i32* @va_data_size, align 4
  %12 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* @NFS_FATTR_SIZE, align 4
  %17 = call i32 @NFS_BITMAP_SET(i32* %15, i32 %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %20 = load i32, i32* @va_acl, align 4
  %21 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %25 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @NFS_FSFLAG_ACL, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* @NFS_FATTR_ACL, align 4
  %34 = call i32 @NFS_BITMAP_SET(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %23, %18
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %37 = load i32, i32* @va_flags, align 4
  %38 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* @NFS_FATTR_ARCHIVE, align 4
  %43 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %42)
  %44 = load i32*, i32** %5, align 8
  %45 = load i32, i32* @NFS_FATTR_HIDDEN, align 4
  %46 = call i32 @NFS_BITMAP_SET(i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %49 = load i32, i32* @va_mode, align 4
  %50 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %54 = load i32, i32* @ACLONLY, align 4
  %55 = call i32 @NMFLAG(%struct.nfsmount* %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load i32*, i32** %5, align 8
  %59 = load i32, i32* @NFS_FATTR_MODE, align 4
  %60 = call i32 @NFS_BITMAP_SET(i32* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %52, %47
  %62 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %63 = load i32, i32* @va_uid, align 4
  %64 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %68 = load i32, i32* @va_uuuid, align 4
  %69 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66, %61
  %72 = load i32*, i32** %5, align 8
  %73 = load i32, i32* @NFS_FATTR_OWNER, align 4
  %74 = call i32 @NFS_BITMAP_SET(i32* %72, i32 %73)
  br label %75

75:                                               ; preds = %71, %66
  %76 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %77 = load i32, i32* @va_gid, align 4
  %78 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %76, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %75
  %81 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %82 = load i32, i32* @va_guuid, align 4
  %83 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %81, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80, %75
  %86 = load i32*, i32** %5, align 8
  %87 = load i32, i32* @NFS_FATTR_OWNER_GROUP, align 4
  %88 = call i32 @NFS_BITMAP_SET(i32* %86, i32 %87)
  br label %89

89:                                               ; preds = %85, %80
  %90 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %91 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @VA_UTIMES_NULL, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %89
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* @NFS_FATTR_TIME_ACCESS_SET, align 4
  %99 = call i32 @NFS_BITMAP_SET(i32* %97, i32 %98)
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* @NFS_FATTR_TIME_MODIFY_SET, align 4
  %102 = call i32 @NFS_BITMAP_SET(i32* %100, i32 %101)
  br label %122

103:                                              ; preds = %89
  %104 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %105 = load i32, i32* @va_access_time, align 4
  %106 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %103
  %109 = load i32*, i32** %5, align 8
  %110 = load i32, i32* @NFS_FATTR_TIME_ACCESS_SET, align 4
  %111 = call i32 @NFS_BITMAP_SET(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %108, %103
  %113 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %114 = load i32, i32* @va_modify_time, align 4
  %115 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %113, i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32*, i32** %5, align 8
  %119 = load i32, i32* @NFS_FATTR_TIME_MODIFY_SET, align 4
  %120 = call i32 @NFS_BITMAP_SET(i32* %118, i32 %119)
  br label %121

121:                                              ; preds = %117, %112
  br label %122

122:                                              ; preds = %121, %96
  %123 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %124 = load i32, i32* @va_backup_time, align 4
  %125 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %123, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %122
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* @NFS_FATTR_TIME_BACKUP, align 4
  %130 = call i32 @NFS_BITMAP_SET(i32* %128, i32 %129)
  br label %131

131:                                              ; preds = %127, %122
  %132 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %133 = load i32, i32* @va_create_time, align 4
  %134 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %131
  %137 = load i32*, i32** %5, align 8
  %138 = load i32, i32* @NFS_FATTR_TIME_CREATE, align 4
  %139 = call i32 @NFS_BITMAP_SET(i32* %137, i32 %138)
  br label %140

140:                                              ; preds = %136, %131
  store i32 0, i32* %7, align 4
  br label %141

141:                                              ; preds = %160, %140
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* @NFS_ATTR_BITMAP_LEN, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %141
  %146 = load %struct.nfsmount*, %struct.nfsmount** %4, align 8
  %147 = getelementptr inbounds %struct.nfsmount, %struct.nfsmount* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %7, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %5, align 8
  %155 = load i32, i32* %7, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %153
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %145
  %161 = load i32, i32* %7, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %7, align 4
  br label %141

163:                                              ; preds = %141
  ret void
}

declare dso_local i32 @NFS_CLEAR_ATTRIBUTES(i32*) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #1

declare dso_local i32 @NMFLAG(%struct.nfsmount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
