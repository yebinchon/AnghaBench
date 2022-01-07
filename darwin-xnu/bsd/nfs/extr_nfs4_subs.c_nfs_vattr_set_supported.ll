; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_vattr_set_supported.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_subs.c_nfs_vattr_set_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { i32 }

@NFS_FATTR_TYPE = common dso_local global i32 0, align 4
@va_type = common dso_local global i32 0, align 4
@NFS_FATTR_SIZE = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@NFS_FATTR_FSID = common dso_local global i32 0, align 4
@va_fsid = common dso_local global i32 0, align 4
@NFS_FATTR_ACL = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@NFS_FATTR_ARCHIVE = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@NFS_FATTR_FILEID = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@NFS_FATTR_HIDDEN = common dso_local global i32 0, align 4
@NFS_FATTR_MODE = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@NFS_FATTR_NUMLINKS = common dso_local global i32 0, align 4
@va_nlink = common dso_local global i32 0, align 4
@NFS_FATTR_OWNER = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@NFS_FATTR_OWNER_GROUP = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@NFS_FATTR_RAWDEV = common dso_local global i32 0, align 4
@va_rdev = common dso_local global i32 0, align 4
@NFS_FATTR_SPACE_USED = common dso_local global i32 0, align 4
@va_total_alloc = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_ACCESS = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_BACKUP = common dso_local global i32 0, align 4
@va_backup_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_CREATE = common dso_local global i32 0, align 4
@va_create_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_METADATA = common dso_local global i32 0, align 4
@va_change_time = common dso_local global i32 0, align 4
@NFS_FATTR_TIME_MODIFY = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfs_vattr_set_supported(i32* %0, %struct.vnode_attr* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.vnode_attr*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = load i32, i32* @NFS_FATTR_TYPE, align 4
  %7 = call i64 @NFS_BITMAP_ISSET(i32* %5, i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %11 = load i32, i32* @va_type, align 4
  %12 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %10, i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @NFS_FATTR_SIZE, align 4
  %16 = call i64 @NFS_BITMAP_ISSET(i32* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %20 = load i32, i32* @va_data_size, align 4
  %21 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @NFS_FATTR_FSID, align 4
  %25 = call i64 @NFS_BITMAP_ISSET(i32* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %29 = load i32, i32* @va_fsid, align 4
  %30 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32*, i32** %3, align 8
  %33 = load i32, i32* @NFS_FATTR_ACL, align 4
  %34 = call i64 @NFS_BITMAP_ISSET(i32* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %38 = load i32, i32* @va_acl, align 4
  %39 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %3, align 8
  %42 = load i32, i32* @NFS_FATTR_ARCHIVE, align 4
  %43 = call i64 @NFS_BITMAP_ISSET(i32* %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %47 = load i32, i32* @va_flags, align 4
  %48 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32*, i32** %3, align 8
  %51 = load i32, i32* @NFS_FATTR_FILEID, align 4
  %52 = call i64 @NFS_BITMAP_ISSET(i32* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %56 = load i32, i32* @va_fileid, align 4
  %57 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @NFS_FATTR_HIDDEN, align 4
  %61 = call i64 @NFS_BITMAP_ISSET(i32* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %65 = load i32, i32* @va_flags, align 4
  %66 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %64, i32 %65)
  br label %67

67:                                               ; preds = %63, %58
  %68 = load i32*, i32** %3, align 8
  %69 = load i32, i32* @NFS_FATTR_MODE, align 4
  %70 = call i64 @NFS_BITMAP_ISSET(i32* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %74 = load i32, i32* @va_mode, align 4
  %75 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %67
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* @NFS_FATTR_NUMLINKS, align 4
  %79 = call i64 @NFS_BITMAP_ISSET(i32* %77, i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %83 = load i32, i32* @va_nlink, align 4
  %84 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %82, i32 %83)
  br label %85

85:                                               ; preds = %81, %76
  %86 = load i32*, i32** %3, align 8
  %87 = load i32, i32* @NFS_FATTR_OWNER, align 4
  %88 = call i64 @NFS_BITMAP_ISSET(i32* %86, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %92 = load i32, i32* @va_uid, align 4
  %93 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %91, i32 %92)
  %94 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %95 = load i32, i32* @va_uuuid, align 4
  %96 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %94, i32 %95)
  br label %97

97:                                               ; preds = %90, %85
  %98 = load i32*, i32** %3, align 8
  %99 = load i32, i32* @NFS_FATTR_OWNER_GROUP, align 4
  %100 = call i64 @NFS_BITMAP_ISSET(i32* %98, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %97
  %103 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %104 = load i32, i32* @va_gid, align 4
  %105 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %103, i32 %104)
  %106 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %107 = load i32, i32* @va_guuid, align 4
  %108 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %106, i32 %107)
  br label %109

109:                                              ; preds = %102, %97
  %110 = load i32*, i32** %3, align 8
  %111 = load i32, i32* @NFS_FATTR_RAWDEV, align 4
  %112 = call i64 @NFS_BITMAP_ISSET(i32* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %116 = load i32, i32* @va_rdev, align 4
  %117 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %115, i32 %116)
  br label %118

118:                                              ; preds = %114, %109
  %119 = load i32*, i32** %3, align 8
  %120 = load i32, i32* @NFS_FATTR_SPACE_USED, align 4
  %121 = call i64 @NFS_BITMAP_ISSET(i32* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %125 = load i32, i32* @va_total_alloc, align 4
  %126 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %124, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* @NFS_FATTR_TIME_ACCESS, align 4
  %130 = call i64 @NFS_BITMAP_ISSET(i32* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %134 = load i32, i32* @va_access_time, align 4
  %135 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %133, i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* @NFS_FATTR_TIME_BACKUP, align 4
  %139 = call i64 @NFS_BITMAP_ISSET(i32* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %136
  %142 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %143 = load i32, i32* @va_backup_time, align 4
  %144 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %142, i32 %143)
  br label %145

145:                                              ; preds = %141, %136
  %146 = load i32*, i32** %3, align 8
  %147 = load i32, i32* @NFS_FATTR_TIME_CREATE, align 4
  %148 = call i64 @NFS_BITMAP_ISSET(i32* %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %145
  %151 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %152 = load i32, i32* @va_create_time, align 4
  %153 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %145
  %155 = load i32*, i32** %3, align 8
  %156 = load i32, i32* @NFS_FATTR_TIME_METADATA, align 4
  %157 = call i64 @NFS_BITMAP_ISSET(i32* %155, i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %154
  %160 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %161 = load i32, i32* @va_change_time, align 4
  %162 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %160, i32 %161)
  br label %163

163:                                              ; preds = %159, %154
  %164 = load i32*, i32** %3, align 8
  %165 = load i32, i32* @NFS_FATTR_TIME_MODIFY, align 4
  %166 = call i64 @NFS_BITMAP_ISSET(i32* %164, i32 %165)
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %163
  %169 = load %struct.vnode_attr*, %struct.vnode_attr** %4, align 8
  %170 = load i32, i32* @va_modify_time, align 4
  %171 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %169, i32 %170)
  br label %172

172:                                              ; preds = %168, %163
  ret void
}

declare dso_local i64 @NFS_BITMAP_ISSET(i32*, i32) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
