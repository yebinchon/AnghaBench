; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_diskless_private.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs_vfsops.c_nfs_mount_diskless_private.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i32 }
%struct.vfstable = type { i32, i32, i32, i32, %struct.vfstable* }
%struct.nfs_dlmount = type { i8*, i64, i32, i32*, %struct.TYPE_30__, i64 }
%struct.TYPE_30__ = type { i32, i32 }
%struct.TYPE_31__ = type { %struct.TYPE_33__* }
%struct.TYPE_33__ = type { i32, i32, i32, %struct.TYPE_31__*, %struct.TYPE_28__, i32, %struct.vfstable*, i32, i32, i32, i64, i8*, i64, i32, i32 }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_32__ = type { %struct.filedesc* }
%struct.filedesc = type { i32*, i32 }
%struct.nameidata = type { %struct.TYPE_31__* }
%struct.xdrbuf = type { i32 }

@MAX_IPv4_STR_LEN = common dso_local global i32 0, align 4
@NFS_MATTR_BITMAP_LEN = common dso_local global i32 0, align 4
@NFS_MFLAG_BITMAP_LEN = common dso_local global i32 0, align 4
@MNT_ROOTFS = common dso_local global i32 0, align 4
@mountlist = common dso_local global %struct.TYPE_27__ zeroinitializer, align 8
@rootvnode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot find root vnode\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"nfs_mountroot: vnode_ref() failed on root vnode!\0A\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@OP_LOOKUP = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"nfs_mountroot: private namei failed!\0A\00", align 1
@MNT_WAIT = common dso_local global i32 0, align 4
@BUF_WRITE_DATA = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@vfsconf = common dso_local global %struct.vfstable* null, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"nfs_mountroot: private NFS not configured\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@M_MOUNT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"nfs_mountroot: unable to allocate mount structure\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i32 0, align 4
@NULLVP = common dso_local global i8* null, align 8
@LK_NOWAIT = common dso_local global i32 0, align 4
@MNT_VISFLAGMASK = common dso_local global i32 0, align 4
@MFSNAMELEN = common dso_local global i64 0, align 8
@MAXPATHLEN = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [28 x i8] c"nfs_mountroot: bad address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@NFS_MATTR_NFS_VERSION = common dso_local global i32 0, align 4
@NFS_MATTR_SOCKET_TYPE = common dso_local global i32 0, align 4
@NFS_MATTR_NFS_PORT = common dso_local global i32 0, align 4
@NFS_MATTR_FH = common dso_local global i32 0, align 4
@NFS_MATTR_FS_LOCATIONS = common dso_local global i32 0, align 4
@NFS_MATTR_MNTFLAGS = common dso_local global i32 0, align 4
@NFS_MFLAG_RESVPORT = common dso_local global i32 0, align 4
@NFS_ARGSVERSION_XDR = common dso_local global i32 0, align 4
@NFS_XDRARGS_VERSION_0 = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [4 x i8] c"udp\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"tcp\00", align 1
@XDRWORD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"nfs_mountroot: error %d assembling mount args\0A\00", align 1
@XB_CLEANUP = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"nfs_mountroot: mount %s failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfs_dlmount*, i8*, i32, %struct.TYPE_31__**, %struct.TYPE_33__**, i32)* @nfs_mount_diskless_private to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs_mount_diskless_private(%struct.nfs_dlmount* %0, i8* %1, i32 %2, %struct.TYPE_31__** %3, %struct.TYPE_33__** %4, i32 %5) #0 {
  %7 = alloca %struct.nfs_dlmount*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_31__**, align 8
  %11 = alloca %struct.TYPE_33__**, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_33__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_32__*, align 8
  %17 = alloca %struct.vfstable*, align 8
  %18 = alloca %struct.nameidata, align 8
  %19 = alloca %struct.TYPE_31__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.xdrbuf, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.filedesc*, align 8
  store %struct.nfs_dlmount* %0, %struct.nfs_dlmount** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.TYPE_31__** %3, %struct.TYPE_31__*** %10, align 8
  store %struct.TYPE_33__** %4, %struct.TYPE_33__*** %11, align 8
  store i32 %5, i32* %12, align 4
  store i8* null, i8** %20, align 8
  %35 = load i32, i32* @MAX_IPv4_STR_LEN, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %25, align 8
  %38 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %26, align 8
  %39 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %28, align 8
  %42 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %29, align 8
  %45 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %30, align 8
  %48 = call %struct.TYPE_32__* (...) @current_proc()
  store %struct.TYPE_32__* %48, %struct.TYPE_32__** %16, align 8
  %49 = call i32 @xb_init(%struct.xdrbuf* %27, i32 0)
  %50 = load %struct.TYPE_32__*, %struct.TYPE_32__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %50, i32 0, i32 0
  %52 = load %struct.filedesc*, %struct.filedesc** %51, align 8
  store %struct.filedesc* %52, %struct.filedesc** %34, align 8
  %53 = load i32, i32* @MNT_ROOTFS, align 4
  %54 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @mountlist, i32 0, i32 0), align 8
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 4
  %58 = load %struct.TYPE_29__*, %struct.TYPE_29__** getelementptr inbounds (%struct.TYPE_27__, %struct.TYPE_27__* @mountlist, i32 0, i32 0), align 8
  %59 = call i64 @VFS_ROOT(%struct.TYPE_29__* %58, i32* @rootvnode, i32* null)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %6
  %62 = call i32 @panic(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %6
  %64 = load i32, i32* @rootvnode, align 4
  %65 = call i32 @vnode_ref(i32 %64)
  store i32 %65, i32* %14, align 4
  %66 = load i32, i32* %14, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  br label %644

70:                                               ; preds = %63
  %71 = load i32, i32* @rootvnode, align 4
  %72 = load %struct.filedesc*, %struct.filedesc** %34, align 8
  %73 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.filedesc*, %struct.filedesc** %34, align 8
  %75 = getelementptr inbounds %struct.filedesc, %struct.filedesc* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  %76 = load i32, i32* @LOOKUP, align 4
  %77 = load i32, i32* @OP_LOOKUP, align 4
  %78 = load i32, i32* @FOLLOW, align 4
  %79 = load i32, i32* @LOCKLEAF, align 4
  %80 = or i32 %78, %79
  %81 = load i32, i32* @UIO_SYSSPACE, align 4
  %82 = load i8*, i8** %8, align 8
  %83 = call i32 @CAST_USER_ADDR_T(i8* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @NDINIT(%struct.nameidata* %18, i32 %76, i32 %77, i32 %80, i32 %81, i32 %83, i32 %84)
  %86 = call i32 @namei(%struct.nameidata* %18)
  store i32 %86, i32* %14, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %70
  %89 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %644

90:                                               ; preds = %70
  %91 = load i32, i32* @rootvnode, align 4
  %92 = call i32 @vnode_rele(i32 %91)
  %93 = call i32 @nameidone(%struct.nameidata* %18)
  %94 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %18, i32 0, i32 0
  %95 = load %struct.TYPE_31__*, %struct.TYPE_31__** %94, align 8
  store %struct.TYPE_31__* %95, %struct.TYPE_31__** %19, align 8
  %96 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %97 = load i32, i32* @MNT_WAIT, align 4
  %98 = load i32, i32* %12, align 4
  %99 = call i32 @VNOP_FSYNC(%struct.TYPE_31__* %96, i32 %97, i32 %98)
  store i32 %99, i32* %14, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %90
  %102 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %103 = load i32, i32* @BUF_WRITE_DATA, align 4
  %104 = call i32 @buf_invalidateblks(%struct.TYPE_31__* %102, i32 %103, i32 0, i32 0)
  store i32 %104, i32* %14, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101, %90
  %107 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %108 = call i32 @vnode_put(%struct.TYPE_31__* %107)
  br label %644

109:                                              ; preds = %101
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %111 = call i64 @vnode_vtype(%struct.TYPE_31__* %110)
  %112 = load i64, i64* @VDIR, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %116 = call i32 @vnode_put(%struct.TYPE_31__* %115)
  %117 = load i32, i32* @ENOTDIR, align 4
  store i32 %117, i32* %14, align 4
  br label %644

118:                                              ; preds = %109
  %119 = load %struct.vfstable*, %struct.vfstable** @vfsconf, align 8
  store %struct.vfstable* %119, %struct.vfstable** %17, align 8
  br label %120

120:                                              ; preds = %131, %118
  %121 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %122 = icmp ne %struct.vfstable* %121, null
  br i1 %122, label %123, label %135

123:                                              ; preds = %120
  %124 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %125 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @strncmp(i32 %126, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %130, label %129

129:                                              ; preds = %123
  br label %135

130:                                              ; preds = %123
  br label %131

131:                                              ; preds = %130
  %132 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %133 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %132, i32 0, i32 4
  %134 = load %struct.vfstable*, %struct.vfstable** %133, align 8
  store %struct.vfstable* %134, %struct.vfstable** %17, align 8
  br label %120

135:                                              ; preds = %129, %120
  %136 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %137 = icmp eq %struct.vfstable* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0))
  %140 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %141 = call i32 @vnode_put(%struct.TYPE_31__* %140)
  %142 = load i32, i32* @ENODEV, align 4
  store i32 %142, i32* %14, align 4
  br label %644

143:                                              ; preds = %135
  %144 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %145 = call i32* @vnode_mountedhere(%struct.TYPE_31__* %144)
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %149 = call i32 @vnode_put(%struct.TYPE_31__* %148)
  %150 = load i32, i32* @EBUSY, align 4
  store i32 %150, i32* %14, align 4
  br label %644

151:                                              ; preds = %143
  %152 = load i32, i32* @M_MOUNT, align 4
  %153 = load i32, i32* @M_WAITOK, align 4
  %154 = call %struct.TYPE_33__* @_MALLOC_ZONE(i32 4, i32 %152, i32 %153)
  store %struct.TYPE_33__* %154, %struct.TYPE_33__** %13, align 8
  %155 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %156 = icmp ne %struct.TYPE_33__* %155, null
  br i1 %156, label %162, label %157

157:                                              ; preds = %151
  %158 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0))
  %159 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %160 = call i32 @vnode_put(%struct.TYPE_31__* %159)
  %161 = load i32, i32* @ENOMEM, align 4
  store i32 %161, i32* %14, align 4
  br label %644

162:                                              ; preds = %151
  %163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %164 = bitcast %struct.TYPE_33__* %163 to i8*
  %165 = call i32 @bzero(i8* %164, i32 4)
  %166 = load i32, i32* @MAXPHYS, align 4
  %167 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %167, i32 0, i32 13
  store i32 %166, i32* %168, align 8
  %169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %169, i32 0, i32 14
  store i32 %166, i32* %170, align 4
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 1
  store i32 32, i32* %172, align 4
  %173 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %174 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %173, i32 0, i32 0
  store i32 32, i32* %174, align 8
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 12
  store i64 0, i64* %176, align 8
  %177 = load i8*, i8** @NULLVP, align 8
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %179 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %178, i32 0, i32 11
  store i8* %177, i8** %179, align 8
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 10
  store i64 0, i64* %181, align 8
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %183 = call i32 @mount_lock_init(%struct.TYPE_33__* %182)
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 7
  %186 = call i32 @TAILQ_INIT(i32* %185)
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 9
  %189 = call i32 @TAILQ_INIT(i32* %188)
  %190 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %191 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %190, i32 0, i32 8
  %192 = call i32 @TAILQ_INIT(i32* %191)
  %193 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %194 = load i32, i32* @LK_NOWAIT, align 4
  %195 = call i32 @vfs_busy(%struct.TYPE_33__* %193, i32 %194)
  %196 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %197 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %196, i32 0, i32 7
  %198 = call i32 @TAILQ_INIT(i32* %197)
  %199 = call i32 (...) @mount_list_lock()
  %200 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %201 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %201, align 4
  %204 = call i32 (...) @mount_list_unlock()
  %205 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 6
  store %struct.vfstable* %205, %struct.vfstable** %207, align 8
  %208 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %209 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %212 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* %9, align 4
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 2
  store i32 %213, i32* %215, align 8
  %216 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %217 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load i32, i32* @MNT_VISFLAGMASK, align 4
  %220 = and i32 %218, %219
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %222 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %220
  store i32 %224, i32* %222, align 8
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 4
  %227 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %230 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %229, i32 0, i32 2
  %231 = load i32, i32* %230, align 8
  %232 = load i64, i64* @MFSNAMELEN, align 8
  %233 = sub nsw i64 %232, 1
  %234 = call i32 @strncpy(i32 %228, i32 %231, i64 %233)
  %235 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %236 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %236, i32 0, i32 0
  store %struct.TYPE_33__* %235, %struct.TYPE_33__** %237, align 8
  %238 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %239 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %240 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %239, i32 0, i32 3
  store %struct.TYPE_31__* %238, %struct.TYPE_31__** %240, align 8
  %241 = load i8*, i8** @NULLVP, align 8
  %242 = bitcast i8* %241 to %struct.TYPE_31__*
  store %struct.TYPE_31__* %242, %struct.TYPE_31__** %19, align 8
  %243 = call i32 (...) @kauth_cred_get()
  %244 = call i32 @kauth_cred_getuid(i32 %243)
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %246, i32 0, i32 2
  store i32 %244, i32* %247, align 8
  %248 = load i8*, i8** %8, align 8
  %249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i64, i64* @MAXPATHLEN, align 8
  %254 = sub nsw i64 %253, 1
  %255 = call i32 @copystr(i8* %248, i32 %252, i64 %254, i32 0)
  %256 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %257 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %256, i32 0, i32 0
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %260 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i64, i64* @MAXPATHLEN, align 8
  %264 = sub nsw i64 %263, 1
  %265 = call i32 @copystr(i8* %258, i32 %262, i64 %264, i32 0)
  %266 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %267 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  store i8* %268, i8** %23, align 8
  %269 = load i8*, i8** %23, align 8
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 91
  br i1 %272, label %273, label %298

273:                                              ; preds = %162
  br label %274

274:                                              ; preds = %286, %273
  %275 = load i8*, i8** %23, align 8
  %276 = load i8, i8* %275, align 1
  %277 = sext i8 %276 to i32
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %284

279:                                              ; preds = %274
  %280 = load i8*, i8** %23, align 8
  %281 = load i8, i8* %280, align 1
  %282 = sext i8 %281 to i32
  %283 = icmp ne i32 %282, 93
  br label %284

284:                                              ; preds = %279, %274
  %285 = phi i1 [ false, %274 ], [ %283, %279 ]
  br i1 %285, label %286, label %289

286:                                              ; preds = %284
  %287 = load i8*, i8** %23, align 8
  %288 = getelementptr inbounds i8, i8* %287, i32 1
  store i8* %288, i8** %23, align 8
  br label %274

289:                                              ; preds = %284
  %290 = load i8*, i8** %23, align 8
  %291 = load i8, i8* %290, align 1
  %292 = sext i8 %291 to i32
  %293 = icmp eq i32 %292, 93
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load i8*, i8** %23, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %23, align 8
  br label %297

297:                                              ; preds = %294, %289
  br label %298

298:                                              ; preds = %297, %162
  br label %299

299:                                              ; preds = %311, %298
  %300 = load i8*, i8** %23, align 8
  %301 = load i8, i8* %300, align 1
  %302 = sext i8 %301 to i32
  %303 = icmp ne i32 %302, 0
  br i1 %303, label %304, label %309

304:                                              ; preds = %299
  %305 = load i8*, i8** %23, align 8
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = icmp ne i32 %307, 58
  br label %309

309:                                              ; preds = %304, %299
  %310 = phi i1 [ false, %299 ], [ %308, %304 ]
  br i1 %310, label %311, label %314

311:                                              ; preds = %309
  %312 = load i8*, i8** %23, align 8
  %313 = getelementptr inbounds i8, i8* %312, i32 1
  store i8* %313, i8** %23, align 8
  br label %299

314:                                              ; preds = %309
  %315 = load i8*, i8** %23, align 8
  store i8* %315, i8** %24, align 8
  br label %316

316:                                              ; preds = %328, %314
  %317 = load i8*, i8** %23, align 8
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %326

321:                                              ; preds = %316
  %322 = load i8*, i8** %23, align 8
  %323 = load i8, i8* %322, align 1
  %324 = sext i8 %323 to i32
  %325 = icmp eq i32 %324, 58
  br label %326

326:                                              ; preds = %321, %316
  %327 = phi i1 [ false, %316 ], [ %325, %321 ]
  br i1 %327, label %328, label %331

328:                                              ; preds = %326
  %329 = load i8*, i8** %23, align 8
  %330 = getelementptr inbounds i8, i8* %329, i32 1
  store i8* %330, i8** %23, align 8
  br label %316

331:                                              ; preds = %326
  %332 = load i8*, i8** %23, align 8
  store i8* %332, i8** %21, align 8
  br label %333

333:                                              ; preds = %345, %331
  %334 = load i8*, i8** %21, align 8
  %335 = load i8, i8* %334, align 1
  %336 = sext i8 %335 to i32
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %343

338:                                              ; preds = %333
  %339 = load i8*, i8** %21, align 8
  %340 = load i8, i8* %339, align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %341, 47
  br label %343

343:                                              ; preds = %338, %333
  %344 = phi i1 [ false, %333 ], [ %342, %338 ]
  br i1 %344, label %345, label %348

345:                                              ; preds = %343
  %346 = load i8*, i8** %21, align 8
  %347 = getelementptr inbounds i8, i8* %346, i32 1
  store i8* %347, i8** %21, align 8
  br label %333

348:                                              ; preds = %343
  store i32 0, i32* %15, align 4
  br label %349

349:                                              ; preds = %387, %348
  %350 = load i8*, i8** %21, align 8
  %351 = load i8, i8* %350, align 1
  %352 = icmp ne i8 %351, 0
  br i1 %352, label %353, label %388

353:                                              ; preds = %349
  %354 = load i32, i32* %15, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, i32* %15, align 4
  br label %356

356:                                              ; preds = %368, %353
  %357 = load i8*, i8** %21, align 8
  %358 = load i8, i8* %357, align 1
  %359 = sext i8 %358 to i32
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %366

361:                                              ; preds = %356
  %362 = load i8*, i8** %21, align 8
  %363 = load i8, i8* %362, align 1
  %364 = sext i8 %363 to i32
  %365 = icmp ne i32 %364, 47
  br label %366

366:                                              ; preds = %361, %356
  %367 = phi i1 [ false, %356 ], [ %365, %361 ]
  br i1 %367, label %368, label %371

368:                                              ; preds = %366
  %369 = load i8*, i8** %21, align 8
  %370 = getelementptr inbounds i8, i8* %369, i32 1
  store i8* %370, i8** %21, align 8
  br label %356

371:                                              ; preds = %366
  br label %372

372:                                              ; preds = %384, %371
  %373 = load i8*, i8** %21, align 8
  %374 = load i8, i8* %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %382

377:                                              ; preds = %372
  %378 = load i8*, i8** %21, align 8
  %379 = load i8, i8* %378, align 1
  %380 = sext i8 %379 to i32
  %381 = icmp eq i32 %380, 47
  br label %382

382:                                              ; preds = %377, %372
  %383 = phi i1 [ false, %372 ], [ %381, %377 ]
  br i1 %383, label %384, label %387

384:                                              ; preds = %382
  %385 = load i8*, i8** %21, align 8
  %386 = getelementptr inbounds i8, i8* %385, i32 1
  store i8* %386, i8** %21, align 8
  br label %372

387:                                              ; preds = %382
  br label %349

388:                                              ; preds = %349
  %389 = load i32, i32* @AF_INET, align 4
  %390 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %391 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %390, i32 0, i32 4
  %392 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %391, i32 0, i32 1
  %393 = trunc i64 %36 to i32
  %394 = call i8* @inet_ntop(i32 %389, i32* %392, i8* %38, i32 %393)
  %395 = icmp ne i8* %394, %38
  br i1 %395, label %396, label %399

396:                                              ; preds = %388
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  %398 = load i32, i32* @EINVAL, align 4
  store i32 %398, i32* %14, align 4
  br label %644

399:                                              ; preds = %388
  %400 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %401 = call i32 @NFS_BITMAP_ZERO(i32* %41, i32 %400)
  %402 = load i32, i32* @NFS_MATTR_NFS_VERSION, align 4
  %403 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %402)
  %404 = load i32, i32* @NFS_MATTR_SOCKET_TYPE, align 4
  %405 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %404)
  %406 = load i32, i32* @NFS_MATTR_NFS_PORT, align 4
  %407 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %406)
  %408 = load i32, i32* @NFS_MATTR_FH, align 4
  %409 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %408)
  %410 = load i32, i32* @NFS_MATTR_FS_LOCATIONS, align 4
  %411 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %410)
  %412 = load i32, i32* @NFS_MATTR_MNTFLAGS, align 4
  %413 = call i32 @NFS_BITMAP_SET(i32* %41, i32 %412)
  %414 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %415 = call i32 @NFS_BITMAP_ZERO(i32* %44, i32 %414)
  %416 = load i32, i32* @NFS_MFLAG_BITMAP_LEN, align 4
  %417 = call i32 @NFS_BITMAP_ZERO(i32* %47, i32 %416)
  %418 = load i32, i32* @NFS_MFLAG_RESVPORT, align 4
  %419 = call i32 @NFS_BITMAP_SET(i32* %44, i32 %418)
  %420 = load i32, i32* @NFS_MFLAG_RESVPORT, align 4
  %421 = call i32 @NFS_BITMAP_SET(i32* %47, i32 %420)
  %422 = call i32 @xb_init_buffer(%struct.xdrbuf* %27, i32* null, i32 0)
  %423 = load i32, i32* %14, align 4
  %424 = load i32, i32* @NFS_ARGSVERSION_XDR, align 4
  %425 = call i32 @xb_add_32(i32 %423, %struct.xdrbuf* %27, i32 %424)
  %426 = call i32 @xb_offset(%struct.xdrbuf* %27)
  store i32 %426, i32* %31, align 4
  %427 = load i32, i32* %14, align 4
  %428 = call i32 @xb_add_32(i32 %427, %struct.xdrbuf* %27, i32 0)
  %429 = load i32, i32* %14, align 4
  %430 = load i32, i32* @NFS_XDRARGS_VERSION_0, align 4
  %431 = call i32 @xb_add_32(i32 %429, %struct.xdrbuf* %27, i32 %430)
  %432 = load i32, i32* %14, align 4
  %433 = load i32, i32* @NFS_MATTR_BITMAP_LEN, align 4
  %434 = call i32 @xb_add_bitmap(i32 %432, %struct.xdrbuf* %27, i32* %41, i32 %433)
  %435 = call i32 @xb_offset(%struct.xdrbuf* %27)
  store i32 %435, i32* %32, align 4
  %436 = load i32, i32* %14, align 4
  %437 = call i32 @xb_add_32(i32 %436, %struct.xdrbuf* %27, i32 0)
  %438 = load i32, i32* %14, align 4
  %439 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %440 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %439, i32 0, i32 5
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  %443 = zext i1 %442 to i64
  %444 = select i1 %442, i32 3, i32 2
  %445 = call i32 @xb_add_32(i32 %438, %struct.xdrbuf* %27, i32 %444)
  %446 = load i32, i32* %14, align 4
  %447 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %448 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %447, i32 0, i32 1
  %449 = load i64, i64* %448, align 8
  %450 = load i64, i64* @SOCK_DGRAM, align 8
  %451 = icmp eq i64 %449, %450
  %452 = zext i1 %451 to i64
  %453 = select i1 %451, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)
  %454 = call i32 @xb_add_string(i32 %446, %struct.xdrbuf* %27, i8* %453, i32 3)
  %455 = load i32, i32* %14, align 4
  %456 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %457 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %456, i32 0, i32 4
  %458 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %457, i32 0, i32 0
  %459 = load i32, i32* %458, align 8
  %460 = call i32 @ntohs(i32 %459)
  %461 = call i32 @xb_add_32(i32 %455, %struct.xdrbuf* %27, i32 %460)
  %462 = load i32, i32* %14, align 4
  %463 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %464 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %463, i32 0, i32 3
  %465 = load i32*, i32** %464, align 8
  %466 = getelementptr inbounds i32, i32* %465, i64 0
  %467 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %468 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %467, i32 0, i32 2
  %469 = load i32, i32* %468, align 8
  %470 = call i32 @xb_add_fh(i32 %462, %struct.xdrbuf* %27, i32* %466, i32 %469)
  %471 = load i32, i32* %14, align 4
  %472 = call i32 @xb_add_32(i32 %471, %struct.xdrbuf* %27, i32 1)
  %473 = load i32, i32* %14, align 4
  %474 = call i32 @xb_add_32(i32 %473, %struct.xdrbuf* %27, i32 1)
  %475 = load i32, i32* %14, align 4
  %476 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %477 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %476, i32 0, i32 0
  %478 = load i8*, i8** %477, align 8
  %479 = load i8*, i8** %24, align 8
  %480 = load %struct.nfs_dlmount*, %struct.nfs_dlmount** %7, align 8
  %481 = getelementptr inbounds %struct.nfs_dlmount, %struct.nfs_dlmount* %480, i32 0, i32 0
  %482 = load i8*, i8** %481, align 8
  %483 = ptrtoint i8* %479 to i64
  %484 = ptrtoint i8* %482 to i64
  %485 = sub i64 %483, %484
  %486 = trunc i64 %485 to i32
  %487 = call i32 @xb_add_string(i32 %475, %struct.xdrbuf* %27, i8* %478, i32 %486)
  %488 = load i32, i32* %14, align 4
  %489 = call i32 @xb_add_32(i32 %488, %struct.xdrbuf* %27, i32 1)
  %490 = load i32, i32* %14, align 4
  %491 = call i32 @strlen(i8* %38)
  %492 = call i32 @xb_add_string(i32 %490, %struct.xdrbuf* %27, i8* %38, i32 %491)
  %493 = load i32, i32* %14, align 4
  %494 = call i32 @xb_add_32(i32 %493, %struct.xdrbuf* %27, i32 0)
  %495 = load i32, i32* %14, align 4
  %496 = load i32, i32* %15, align 4
  %497 = call i32 @xb_add_32(i32 %495, %struct.xdrbuf* %27, i32 %496)
  %498 = load i8*, i8** %23, align 8
  store i8* %498, i8** %21, align 8
  br label %499

499:                                              ; preds = %511, %399
  %500 = load i8*, i8** %21, align 8
  %501 = load i8, i8* %500, align 1
  %502 = sext i8 %501 to i32
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %509

504:                                              ; preds = %499
  %505 = load i8*, i8** %21, align 8
  %506 = load i8, i8* %505, align 1
  %507 = sext i8 %506 to i32
  %508 = icmp eq i32 %507, 47
  br label %509

509:                                              ; preds = %504, %499
  %510 = phi i1 [ false, %499 ], [ %508, %504 ]
  br i1 %510, label %511, label %514

511:                                              ; preds = %509
  %512 = load i8*, i8** %21, align 8
  %513 = getelementptr inbounds i8, i8* %512, i32 1
  store i8* %513, i8** %21, align 8
  br label %499

514:                                              ; preds = %509
  br label %515

515:                                              ; preds = %565, %514
  %516 = load i8*, i8** %21, align 8
  %517 = load i8, i8* %516, align 1
  %518 = icmp ne i8 %517, 0
  br i1 %518, label %519, label %566

519:                                              ; preds = %515
  %520 = load i8*, i8** %21, align 8
  store i8* %520, i8** %22, align 8
  br label %521

521:                                              ; preds = %533, %519
  %522 = load i8*, i8** %21, align 8
  %523 = load i8, i8* %522, align 1
  %524 = sext i8 %523 to i32
  %525 = icmp ne i32 %524, 0
  br i1 %525, label %526, label %531

526:                                              ; preds = %521
  %527 = load i8*, i8** %21, align 8
  %528 = load i8, i8* %527, align 1
  %529 = sext i8 %528 to i32
  %530 = icmp ne i32 %529, 47
  br label %531

531:                                              ; preds = %526, %521
  %532 = phi i1 [ false, %521 ], [ %530, %526 ]
  br i1 %532, label %533, label %536

533:                                              ; preds = %531
  %534 = load i8*, i8** %21, align 8
  %535 = getelementptr inbounds i8, i8* %534, i32 1
  store i8* %535, i8** %21, align 8
  br label %521

536:                                              ; preds = %531
  %537 = load i32, i32* %14, align 4
  %538 = load i8*, i8** %22, align 8
  %539 = load i8*, i8** %21, align 8
  %540 = load i8*, i8** %22, align 8
  %541 = ptrtoint i8* %539 to i64
  %542 = ptrtoint i8* %540 to i64
  %543 = sub i64 %541, %542
  %544 = trunc i64 %543 to i32
  %545 = call i32 @xb_add_string(i32 %537, %struct.xdrbuf* %27, i8* %538, i32 %544)
  %546 = load i32, i32* %14, align 4
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %549

548:                                              ; preds = %536
  br label %566

549:                                              ; preds = %536
  br label %550

550:                                              ; preds = %562, %549
  %551 = load i8*, i8** %21, align 8
  %552 = load i8, i8* %551, align 1
  %553 = sext i8 %552 to i32
  %554 = icmp ne i32 %553, 0
  br i1 %554, label %555, label %560

555:                                              ; preds = %550
  %556 = load i8*, i8** %21, align 8
  %557 = load i8, i8* %556, align 1
  %558 = sext i8 %557 to i32
  %559 = icmp eq i32 %558, 47
  br label %560

560:                                              ; preds = %555, %550
  %561 = phi i1 [ false, %550 ], [ %559, %555 ]
  br i1 %561, label %562, label %565

562:                                              ; preds = %560
  %563 = load i8*, i8** %21, align 8
  %564 = getelementptr inbounds i8, i8* %563, i32 1
  store i8* %564, i8** %21, align 8
  br label %550

565:                                              ; preds = %560
  br label %515

566:                                              ; preds = %548, %515
  %567 = load i32, i32* %14, align 4
  %568 = call i32 @xb_add_32(i32 %567, %struct.xdrbuf* %27, i32 0)
  %569 = load i32, i32* %14, align 4
  %570 = load i32, i32* %9, align 4
  %571 = call i32 @xb_add_32(i32 %569, %struct.xdrbuf* %27, i32 %570)
  %572 = load i32, i32* %14, align 4
  %573 = call i32 @xb_build_done(i32 %572, %struct.xdrbuf* %27)
  %574 = call i32 @xb_offset(%struct.xdrbuf* %27)
  store i32 %574, i32* %33, align 4
  %575 = load i32, i32* %14, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %587, label %577

577:                                              ; preds = %566
  %578 = load i32, i32* %31, align 4
  %579 = call i32 @xb_seek(%struct.xdrbuf* %27, i32 %578)
  store i32 %579, i32* %14, align 4
  %580 = load i32, i32* %14, align 4
  %581 = load i32, i32* %33, align 4
  %582 = load i32, i32* %31, align 4
  %583 = sub nsw i32 %581, %582
  %584 = load i32, i32* @XDRWORD, align 4
  %585 = add nsw i32 %583, %584
  %586 = call i32 @xb_add_32(i32 %580, %struct.xdrbuf* %27, i32 %585)
  br label %587

587:                                              ; preds = %577, %566
  %588 = load i32, i32* %14, align 4
  %589 = icmp ne i32 %588, 0
  br i1 %589, label %600, label %590

590:                                              ; preds = %587
  %591 = load i32, i32* %32, align 4
  %592 = call i32 @xb_seek(%struct.xdrbuf* %27, i32 %591)
  store i32 %592, i32* %14, align 4
  %593 = load i32, i32* %14, align 4
  %594 = load i32, i32* %33, align 4
  %595 = load i32, i32* %32, align 4
  %596 = sub nsw i32 %594, %595
  %597 = load i32, i32* @XDRWORD, align 4
  %598 = sub nsw i32 %596, %597
  %599 = call i32 @xb_add_32(i32 %593, %struct.xdrbuf* %27, i32 %598)
  br label %600

600:                                              ; preds = %590, %587
  %601 = load i32, i32* %14, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %606

603:                                              ; preds = %600
  %604 = load i32, i32* %14, align 4
  %605 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %604)
  br label %644

606:                                              ; preds = %600
  %607 = call i8* @xb_buffer_base(%struct.xdrbuf* %27)
  store i8* %607, i8** %20, align 8
  %608 = load i32, i32* @XB_CLEANUP, align 4
  %609 = xor i32 %608, -1
  %610 = getelementptr inbounds %struct.xdrbuf, %struct.xdrbuf* %27, i32 0, i32 0
  %611 = load i32, i32* %610, align 4
  %612 = and i32 %611, %609
  store i32 %612, i32* %610, align 4
  %613 = load i8*, i8** %20, align 8
  %614 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %615 = load i32, i32* %12, align 4
  %616 = call i32 @mountnfs(i8* %613, %struct.TYPE_33__* %614, i32 %615, %struct.TYPE_31__** %19)
  store i32 %616, i32* %14, align 4
  %617 = icmp ne i32 %616, 0
  br i1 %617, label %618, label %639

618:                                              ; preds = %606
  %619 = load i8*, i8** %8, align 8
  %620 = load i32, i32* %14, align 4
  %621 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0), i8* %619, i32 %620)
  %622 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %623 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %622, i32 0, i32 3
  %624 = load %struct.TYPE_31__*, %struct.TYPE_31__** %623, align 8
  %625 = call i32 @vnode_put(%struct.TYPE_31__* %624)
  %626 = call i32 (...) @mount_list_lock()
  %627 = load %struct.vfstable*, %struct.vfstable** %17, align 8
  %628 = getelementptr inbounds %struct.vfstable, %struct.vfstable* %627, i32 0, i32 1
  %629 = load i32, i32* %628, align 4
  %630 = add nsw i32 %629, -1
  store i32 %630, i32* %628, align 4
  %631 = call i32 (...) @mount_list_unlock()
  %632 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %633 = call i32 @vfs_unbusy(%struct.TYPE_33__* %632)
  %634 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %635 = call i32 @mount_lock_destroy(%struct.TYPE_33__* %634)
  %636 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %637 = load i32, i32* @M_MOUNT, align 4
  %638 = call i32 @FREE_ZONE(%struct.TYPE_33__* %636, i32 4, i32 %637)
  br label %644

639:                                              ; preds = %606
  %640 = load %struct.TYPE_33__*, %struct.TYPE_33__** %13, align 8
  %641 = load %struct.TYPE_33__**, %struct.TYPE_33__*** %11, align 8
  store %struct.TYPE_33__* %640, %struct.TYPE_33__** %641, align 8
  %642 = load %struct.TYPE_31__*, %struct.TYPE_31__** %19, align 8
  %643 = load %struct.TYPE_31__**, %struct.TYPE_31__*** %10, align 8
  store %struct.TYPE_31__* %642, %struct.TYPE_31__** %643, align 8
  br label %644

644:                                              ; preds = %639, %618, %603, %396, %157, %147, %138, %114, %106, %88, %68
  %645 = call i32 @xb_cleanup(%struct.xdrbuf* %27)
  %646 = load i32, i32* %14, align 4
  %647 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %647)
  ret i32 %646
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_32__* @current_proc(...) #2

declare dso_local i32 @xb_init(%struct.xdrbuf*, i32) #2

declare dso_local i64 @VFS_ROOT(%struct.TYPE_29__*, i32*, i32*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @vnode_ref(i32) #2

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @vnode_rele(i32) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32 @VNOP_FSYNC(%struct.TYPE_31__*, i32, i32) #2

declare dso_local i32 @buf_invalidateblks(%struct.TYPE_31__*, i32, i32, i32) #2

declare dso_local i32 @vnode_put(%struct.TYPE_31__*) #2

declare dso_local i64 @vnode_vtype(%struct.TYPE_31__*) #2

declare dso_local i32 @strncmp(i32, i8*, i32) #2

declare dso_local i32* @vnode_mountedhere(%struct.TYPE_31__*) #2

declare dso_local %struct.TYPE_33__* @_MALLOC_ZONE(i32, i32, i32) #2

declare dso_local i32 @bzero(i8*, i32) #2

declare dso_local i32 @mount_lock_init(%struct.TYPE_33__*) #2

declare dso_local i32 @TAILQ_INIT(i32*) #2

declare dso_local i32 @vfs_busy(%struct.TYPE_33__*, i32) #2

declare dso_local i32 @mount_list_lock(...) #2

declare dso_local i32 @mount_list_unlock(...) #2

declare dso_local i32 @strncpy(i32, i32, i64) #2

declare dso_local i32 @kauth_cred_getuid(i32) #2

declare dso_local i32 @kauth_cred_get(...) #2

declare dso_local i32 @copystr(i8*, i32, i64, i32) #2

declare dso_local i8* @inet_ntop(i32, i32*, i8*, i32) #2

declare dso_local i32 @NFS_BITMAP_ZERO(i32*, i32) #2

declare dso_local i32 @NFS_BITMAP_SET(i32*, i32) #2

declare dso_local i32 @xb_init_buffer(%struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @xb_add_32(i32, %struct.xdrbuf*, i32) #2

declare dso_local i32 @xb_offset(%struct.xdrbuf*) #2

declare dso_local i32 @xb_add_bitmap(i32, %struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @xb_add_string(i32, %struct.xdrbuf*, i8*, i32) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @xb_add_fh(i32, %struct.xdrbuf*, i32*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @xb_build_done(i32, %struct.xdrbuf*) #2

declare dso_local i32 @xb_seek(%struct.xdrbuf*, i32) #2

declare dso_local i8* @xb_buffer_base(%struct.xdrbuf*) #2

declare dso_local i32 @mountnfs(i8*, %struct.TYPE_33__*, i32, %struct.TYPE_31__**) #2

declare dso_local i32 @vfs_unbusy(%struct.TYPE_33__*) #2

declare dso_local i32 @mount_lock_destroy(%struct.TYPE_33__*) #2

declare dso_local i32 @FREE_ZONE(%struct.TYPE_33__*, i32, i32) #2

declare dso_local i32 @xb_cleanup(%struct.xdrbuf*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
