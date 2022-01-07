; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.vnode_attr = type { i32, i32, i32, i64, i32, %struct.TYPE_8__*, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32* }

@VNODE_ATTR_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"ATTR - ERROR: attempt to set readonly attribute(s)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"ATTR - security information changing, fetching existing attributes\00", align 1
@va_create_time = common dso_local global i32 0, align 4
@va_change_time = common dso_local global i32 0, align 4
@va_modify_time = common dso_local global i32 0, align 4
@va_access_time = common dso_local global i32 0, align 4
@va_backup_time = common dso_local global i32 0, align 4
@va_addedtime = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"ATTR - timestamps changing, fetching uid and GUID\00", align 1
@va_flags = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"ATTR - flags changing, fetching old flags\00", align 1
@va_acl = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"ATTR - acl changing, fetching old flags\00", align 1
@va_data_size = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [48 x i8] c"ATTR - ERROR: size change requested on non-file\00", align 1
@EISDIR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [39 x i8] c"ATTR - fetching old attributes %016llx\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"  ERROR - got %d trying to get attributes\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"ATTR - size change, requiring WRITE_DATA\00", align 1
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [41 x i8] c"ATTR - root or owner changing timestamps\00", align 1
@KAUTH_VNODE_CHECKIMMUTABLE = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@VA_UTIMES_NULL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [70 x i8] c"ATTR - non-root/owner changing timestamps, requiring WRITE_ATTRIBUTES\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"ATTR - ERROR: illegal timestamp modification attempted\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [37 x i8] c"ATTR - mode change from %06o to %06o\00", align 1
@.str.13 = private unnamed_addr constant [59 x i8] c"ATTR - superuser mode change, requiring immutability check\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"ATTR - non-superuser mode change, requiring WRITE_SECURITY\00", align 1
@KAUTH_VNODE_WRITE_SECURITY = common dso_local global i32 0, align 4
@S_ISGID = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [42 x i8] c"ATTR - ERROR: setgid but no gid available\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"ATTR - ERROR: got %d checking for membership in %d\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"  DENIED - can't set SGID bit, not a member of %d\00", align 1
@EPERM = common dso_local global i32 0, align 4
@S_ISUID = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [42 x i8] c"ATTR - ERROR: setuid but no uid available\00", align 1
@.str.19 = private unnamed_addr constant [52 x i8] c"ATTR - ERROR: illegal attempt to set the setuid bit\00", align 1
@.str.20 = private unnamed_addr constant [48 x i8] c"ATTR - flags changing, requiring WRITE_SECURITY\00", align 1
@UF_SETTABLE = common dso_local global i32 0, align 4
@SF_SETTABLE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [52 x i8] c"  DENIED - superuser attempt to set illegal flag(s)\00", align 1
@.str.22 = private unnamed_addr constant [47 x i8] c"  DENIED - user attempt to set illegal flag(s)\00", align 1
@KAUTH_VNODE_NOIMMUTABLE = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [67 x i8] c"  DENIED - non-superuser cannot change ownershipt to a third party\00", align 1
@.str.24 = private unnamed_addr constant [47 x i8] c"  ERROR - got %d checking for membership in %d\00", align 1
@.str.25 = private unnamed_addr constant [71 x i8] c"  DENIED - group change from %d to %d but not a member of target group\00", align 1
@kauth_null_guid = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [43 x i8] c"  ERROR - got %d trying to get caller UUID\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"  ERROR - cannot set supplied owner UUID - not us / null\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"  ERROR - got %d trying to check group membership\00", align 1
@.str.29 = private unnamed_addr constant [63 x i8] c"  ERROR - cannot set supplied group UUID - not a member / null\00", align 1
@.str.30 = private unnamed_addr constant [73 x i8] c"ATTR - superuser changing file owner/group, requiring immutability check\00", align 1
@.str.31 = private unnamed_addr constant [50 x i8] c"ATTR - ownership change, requiring TAKE_OWNERSHIP\00", align 1
@KAUTH_VNODE_TAKE_OWNERSHIP = common dso_local global i32 0, align 4
@.str.32 = private unnamed_addr constant [46 x i8] c"ATTR - group change, requiring WRITE_SECURITY\00", align 1
@.str.33 = private unnamed_addr constant [88 x i8] c"CHOWN - trying to change owner but cannot get mode from filesystem to mask setugid bits\00", align 1
@.str.34 = private unnamed_addr constant [48 x i8] c"CHOWN - masking setugid bits from mode %o to %o\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"CHMOD - adding ACL\00", align 1
@.str.36 = private unnamed_addr constant [21 x i8] c"CHMOD - removing ACL\00", align 1
@.str.37 = private unnamed_addr constant [36 x i8] c"CHMOD - adding/removing ACL entries\00", align 1
@.str.38 = private unnamed_addr constant [29 x i8] c"CHMOD - changing ACL entries\00", align 1
@va_encoding = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_authattr(%struct.TYPE_7__* %0, %struct.vnode_attr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.vnode_attr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.vnode_attr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store %struct.vnode_attr* %1, %struct.vnode_attr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = call i32 @VATTR_INIT(%struct.vnode_attr* %9)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @vfs_authopaque(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %827

33:                                               ; preds = %4
  %34 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %35 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VNODE_ATTR_RDONLY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %11, align 4
  br label %827

43:                                               ; preds = %33
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @vfs_context_ucred(i32 %44)
  store i32 %45, i32* %22, align 4
  %46 = load i32, i32* %22, align 4
  %47 = call i32 @kauth_cred_issuser(i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %49 = load i32, i32* @va_uid, align 4
  %50 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %48, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %72, label %52

52:                                               ; preds = %43
  %53 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %54 = load i32, i32* @va_gid, align 4
  %55 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %53, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %72, label %57

57:                                               ; preds = %52
  %58 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %59 = load i32, i32* @va_mode, align 4
  %60 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %64 = load i32, i32* @va_uuuid, align 4
  %65 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %62
  %68 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %69 = load i32, i32* @va_guuid, align 4
  %70 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %67, %62, %57, %52, %43
  %73 = load i32, i32* @va_mode, align 4
  %74 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %73)
  %75 = load i32, i32* @va_uid, align 4
  %76 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %75)
  %77 = load i32, i32* @va_gid, align 4
  %78 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %77)
  %79 = load i32, i32* @va_uuuid, align 4
  %80 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %79)
  %81 = load i32, i32* @va_guuid, align 4
  %82 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %81)
  %83 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  br label %84

84:                                               ; preds = %72, %67
  %85 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %86 = load i32, i32* @va_create_time, align 4
  %87 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %114, label %89

89:                                               ; preds = %84
  %90 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %91 = load i32, i32* @va_change_time, align 4
  %92 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %114, label %94

94:                                               ; preds = %89
  %95 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %96 = load i32, i32* @va_modify_time, align 4
  %97 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %95, i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %94
  %100 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %101 = load i32, i32* @va_access_time, align 4
  %102 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %100, i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %114, label %104

104:                                              ; preds = %99
  %105 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %106 = load i32, i32* @va_backup_time, align 4
  %107 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %105, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %114, label %109

109:                                              ; preds = %104
  %110 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %111 = load i32, i32* @va_addedtime, align 4
  %112 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %110, i32 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109, %104, %99, %94, %89, %84
  %115 = load i32, i32* @va_uid, align 4
  %116 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %115)
  %117 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0))
  br label %118

118:                                              ; preds = %114, %109
  %119 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %120 = load i32, i32* @va_flags, align 4
  %121 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %125 = load i32, i32* @va_flags, align 4
  %126 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %125)
  br label %127

127:                                              ; preds = %123, %118
  %128 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %129 = load i32, i32* @va_acl, align 4
  %130 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %128, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  %134 = load i32, i32* @va_acl, align 4
  %135 = call i32 @VATTR_WANTED(%struct.vnode_attr* %9, i32 %134)
  br label %136

136:                                              ; preds = %132, %127
  %137 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %138 = load i32, i32* @va_data_size, align 4
  %139 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %137, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %136
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %143 = call i32 @vnode_isreg(%struct.TYPE_7__* %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %148 = call i64 @vnode_isdir(%struct.TYPE_7__* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = load i32, i32* @EISDIR, align 4
  br label %154

152:                                              ; preds = %145
  %153 = load i32, i32* @EINVAL, align 4
  br label %154

154:                                              ; preds = %152, %150
  %155 = phi i32 [ %151, %150 ], [ %153, %152 ]
  store i32 %155, i32* %11, align 4
  br label %827

156:                                              ; preds = %141
  br label %157

157:                                              ; preds = %156, %136
  %158 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i32 %159)
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = load i32, i32* %8, align 4
  %163 = call i32 @vnode_getattr(%struct.TYPE_7__* %161, %struct.vnode_attr* %9, i32 %162)
  store i32 %163, i32* %11, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %157
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i32 %166)
  br label %827

168:                                              ; preds = %157
  %169 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %170 = load i32, i32* @va_data_size, align 4
  %171 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %169, i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %178

173:                                              ; preds = %168
  %174 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %175 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %176 = load i32, i32* %10, align 4
  %177 = or i32 %176, %175
  store i32 %177, i32* %10, align 4
  br label %178

178:                                              ; preds = %173, %168
  %179 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %180 = load i32, i32* @va_create_time, align 4
  %181 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %208, label %183

183:                                              ; preds = %178
  %184 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %185 = load i32, i32* @va_change_time, align 4
  %186 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %184, i32 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %208, label %188

188:                                              ; preds = %183
  %189 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %190 = load i32, i32* @va_modify_time, align 4
  %191 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %189, i32 %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %208, label %193

193:                                              ; preds = %188
  %194 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %195 = load i32, i32* @va_access_time, align 4
  %196 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %194, i32 %195)
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %208, label %198

198:                                              ; preds = %193
  %199 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %200 = load i32, i32* @va_backup_time, align 4
  %201 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %199, i32 %200)
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %208, label %203

203:                                              ; preds = %198
  %204 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %205 = load i32, i32* @va_addedtime, align 4
  %206 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %204, i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %239

208:                                              ; preds = %203, %198, %193, %188, %183, %178
  %209 = load i32, i32* %12, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %215, label %211

211:                                              ; preds = %208
  %212 = load i32, i32* %22, align 4
  %213 = call i64 @vauth_node_owner(%struct.vnode_attr* %9, i32 %212)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %222

215:                                              ; preds = %211, %208
  %216 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.9, i64 0, i64 0))
  %217 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %218 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* %10, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %10, align 4
  br label %238

222:                                              ; preds = %211
  %223 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %224 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @VA_UTIMES_NULL, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %229, label %234

229:                                              ; preds = %222
  %230 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0))
  %231 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %232 = load i32, i32* %10, align 4
  %233 = or i32 %232, %231
  store i32 %233, i32* %10, align 4
  br label %237

234:                                              ; preds = %222
  %235 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %236 = load i32, i32* @EACCES, align 4
  store i32 %236, i32* %11, align 4
  br label %827

237:                                              ; preds = %229
  br label %238

238:                                              ; preds = %237, %215
  br label %239

239:                                              ; preds = %238, %203
  %240 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %241 = load i32, i32* @va_mode, align 4
  %242 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %240, i32 %241)
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %371

244:                                              ; preds = %239
  %245 = load i32, i32* @va_mode, align 4
  %246 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %371

248:                                              ; preds = %244
  %249 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 2
  %250 = load i32, i32* %249, align 8
  %251 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %252 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %251, i32 0, i32 2
  %253 = load i32, i32* %252, align 8
  %254 = icmp ne i32 %250, %253
  br i1 %254, label %255, label %371

255:                                              ; preds = %248
  %256 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 2
  %257 = load i32, i32* %256, align 8
  %258 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %259 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %258, i32 0, i32 2
  %260 = load i32, i32* %259, align 8
  %261 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0), i32 %257, i32 %260)
  %262 = load i32, i32* %12, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %269

264:                                              ; preds = %255
  %265 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.13, i64 0, i64 0))
  %266 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %267 = load i32, i32* %10, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %10, align 4
  br label %274

269:                                              ; preds = %255
  %270 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0))
  %271 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %272 = load i32, i32* %10, align 4
  %273 = or i32 %272, %271
  store i32 %273, i32* %10, align 4
  br label %274

274:                                              ; preds = %269, %264
  %275 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %276 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %275, i32 0, i32 2
  %277 = load i32, i32* %276, align 8
  %278 = load i32, i32* @S_ISGID, align 4
  %279 = and i32 %277, %278
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %327

281:                                              ; preds = %274
  %282 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %283 = load i32, i32* %10, align 4
  %284 = or i32 %283, %282
  store i32 %284, i32* %10, align 4
  %285 = load i32, i32* %12, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %326, label %287

287:                                              ; preds = %281
  %288 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %289 = load i32, i32* @va_gid, align 4
  %290 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %288, i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %296

292:                                              ; preds = %287
  %293 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %294 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %293, i32 0, i32 7
  %295 = load i32, i32* %294, align 4
  store i32 %295, i32* %19, align 4
  br label %307

296:                                              ; preds = %287
  %297 = load i32, i32* @va_gid, align 4
  %298 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %303

300:                                              ; preds = %296
  %301 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 7
  %302 = load i32, i32* %301, align 4
  store i32 %302, i32* %19, align 4
  br label %306

303:                                              ; preds = %296
  %304 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.15, i64 0, i64 0))
  %305 = load i32, i32* @EINVAL, align 4
  store i32 %305, i32* %11, align 4
  br label %827

306:                                              ; preds = %300
  br label %307

307:                                              ; preds = %306, %292
  %308 = load i32, i32* %22, align 4
  %309 = load i32, i32* %19, align 4
  %310 = call i32 @kauth_cred_ismember_gid(i32 %308, i32 %309, i32* %13)
  store i32 %310, i32* %11, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %318

312:                                              ; preds = %307
  %313 = load i32, i32* %11, align 4
  %314 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %315 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %314, i32 0, i32 7
  %316 = load i32, i32* %315, align 4
  %317 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0), i32 %313, i32 %316)
  br label %827

318:                                              ; preds = %307
  %319 = load i32, i32* %13, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %325, label %321

321:                                              ; preds = %318
  %322 = load i32, i32* %19, align 4
  %323 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.17, i64 0, i64 0), i32 %322)
  %324 = load i32, i32* @EPERM, align 4
  store i32 %324, i32* %11, align 4
  br label %827

325:                                              ; preds = %318
  br label %326

326:                                              ; preds = %325, %281
  br label %327

327:                                              ; preds = %326, %274
  %328 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %329 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = load i32, i32* @S_ISUID, align 4
  %332 = and i32 %330, %331
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %370

334:                                              ; preds = %327
  %335 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %336 = load i32, i32* %10, align 4
  %337 = or i32 %336, %335
  store i32 %337, i32* %10, align 4
  %338 = load i32, i32* %12, align 4
  %339 = icmp ne i32 %338, 0
  br i1 %339, label %369, label %340

340:                                              ; preds = %334
  %341 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %342 = load i32, i32* @va_uid, align 4
  %343 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %341, i32 %342)
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %349

345:                                              ; preds = %340
  %346 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %347 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %346, i32 0, i32 3
  %348 = load i64, i64* %347, align 8
  store i64 %348, i64* %20, align 8
  br label %360

349:                                              ; preds = %340
  %350 = load i32, i32* @va_uid, align 4
  %351 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %356

353:                                              ; preds = %349
  %354 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 3
  %355 = load i64, i64* %354, align 8
  store i64 %355, i64* %20, align 8
  br label %359

356:                                              ; preds = %349
  %357 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  %358 = load i32, i32* @EINVAL, align 4
  store i32 %358, i32* %11, align 4
  br label %827

359:                                              ; preds = %353
  br label %360

360:                                              ; preds = %359, %345
  %361 = load i64, i64* %20, align 8
  %362 = load i32, i32* %22, align 4
  %363 = call i64 @kauth_cred_getuid(i32 %362)
  %364 = icmp ne i64 %361, %363
  br i1 %364, label %365, label %368

365:                                              ; preds = %360
  %366 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.19, i64 0, i64 0))
  %367 = load i32, i32* @EPERM, align 4
  store i32 %367, i32* %11, align 4
  br label %827

368:                                              ; preds = %360
  br label %369

369:                                              ; preds = %368, %334
  br label %370

370:                                              ; preds = %369, %327
  br label %371

371:                                              ; preds = %370, %248, %244, %239
  %372 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %373 = load i32, i32* @va_flags, align 4
  %374 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %372, i32 %373)
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %428

376:                                              ; preds = %371
  %377 = load i32, i32* @va_flags, align 4
  %378 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %377)
  %379 = icmp ne i64 %378, 0
  br i1 %379, label %380, label %387

380:                                              ; preds = %376
  %381 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %382 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %381, i32 0, i32 4
  %383 = load i32, i32* %382, align 8
  %384 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 4
  %385 = load i32, i32* %384, align 8
  %386 = xor i32 %383, %385
  store i32 %386, i32* %23, align 4
  br label %391

387:                                              ; preds = %376
  %388 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %389 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %388, i32 0, i32 4
  %390 = load i32, i32* %389, align 8
  store i32 %390, i32* %23, align 4
  br label %391

391:                                              ; preds = %387, %380
  %392 = load i32, i32* %23, align 4
  %393 = icmp ne i32 %392, 0
  br i1 %393, label %394, label %427

394:                                              ; preds = %391
  %395 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.20, i64 0, i64 0))
  %396 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %397 = load i32, i32* %10, align 4
  %398 = or i32 %397, %396
  store i32 %398, i32* %10, align 4
  %399 = load i32, i32* %12, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %394
  %402 = load i32, i32* %23, align 4
  %403 = load i32, i32* @UF_SETTABLE, align 4
  %404 = load i32, i32* @SF_SETTABLE, align 4
  %405 = or i32 %403, %404
  %406 = xor i32 %405, -1
  %407 = and i32 %402, %406
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %401
  %410 = load i32, i32* @EPERM, align 4
  store i32 %410, i32* %11, align 4
  %411 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.21, i64 0, i64 0))
  br label %827

412:                                              ; preds = %401
  br label %423

413:                                              ; preds = %394
  %414 = load i32, i32* %23, align 4
  %415 = load i32, i32* @UF_SETTABLE, align 4
  %416 = xor i32 %415, -1
  %417 = and i32 %414, %416
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %419, label %422

419:                                              ; preds = %413
  %420 = load i32, i32* @EPERM, align 4
  store i32 %420, i32* %11, align 4
  %421 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.22, i64 0, i64 0))
  br label %827

422:                                              ; preds = %413
  br label %423

423:                                              ; preds = %422, %412
  %424 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %425 = load i32, i32* %10, align 4
  %426 = or i32 %425, %424
  store i32 %426, i32* %10, align 4
  br label %427

427:                                              ; preds = %423, %391
  br label %428

428:                                              ; preds = %427, %371
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %429 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %430 = load i32, i32* @va_uid, align 4
  %431 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %429, i32 %430)
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %433, label %459

433:                                              ; preds = %428
  %434 = load i32, i32* @va_uid, align 4
  %435 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %434)
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %458

437:                                              ; preds = %433
  %438 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %439 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %438, i32 0, i32 3
  %440 = load i64, i64* %439, align 8
  %441 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 3
  %442 = load i64, i64* %441, align 8
  %443 = icmp ne i64 %440, %442
  br i1 %443, label %444, label %458

444:                                              ; preds = %437
  %445 = load i32, i32* %12, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %457, label %447

447:                                              ; preds = %444
  %448 = load i32, i32* %22, align 4
  %449 = call i64 @kauth_cred_getuid(i32 %448)
  %450 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %451 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %450, i32 0, i32 3
  %452 = load i64, i64* %451, align 8
  %453 = icmp ne i64 %449, %452
  br i1 %453, label %454, label %457

454:                                              ; preds = %447
  %455 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.23, i64 0, i64 0))
  %456 = load i32, i32* @EPERM, align 4
  store i32 %456, i32* %11, align 4
  br label %827

457:                                              ; preds = %447, %444
  store i32 1, i32* %14, align 4
  br label %458

458:                                              ; preds = %457, %437, %433
  store i32 1, i32* %16, align 4
  br label %459

459:                                              ; preds = %458, %428
  %460 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %461 = load i32, i32* @va_gid, align 4
  %462 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %460, i32 %461)
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %505

464:                                              ; preds = %459
  %465 = load i32, i32* @va_gid, align 4
  %466 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %465)
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %504

468:                                              ; preds = %464
  %469 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %470 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %469, i32 0, i32 7
  %471 = load i32, i32* %470, align 4
  %472 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 7
  %473 = load i32, i32* %472, align 4
  %474 = icmp ne i32 %471, %473
  br i1 %474, label %475, label %504

475:                                              ; preds = %468
  %476 = load i32, i32* %12, align 4
  %477 = icmp ne i32 %476, 0
  br i1 %477, label %503, label %478

478:                                              ; preds = %475
  %479 = load i32, i32* %22, align 4
  %480 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %481 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %480, i32 0, i32 7
  %482 = load i32, i32* %481, align 4
  %483 = call i32 @kauth_cred_ismember_gid(i32 %479, i32 %482, i32* %13)
  store i32 %483, i32* %11, align 4
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %491

485:                                              ; preds = %478
  %486 = load i32, i32* %11, align 4
  %487 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %488 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %487, i32 0, i32 7
  %489 = load i32, i32* %488, align 4
  %490 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.24, i64 0, i64 0), i32 %486, i32 %489)
  br label %827

491:                                              ; preds = %478
  %492 = load i32, i32* %13, align 4
  %493 = icmp ne i32 %492, 0
  br i1 %493, label %502, label %494

494:                                              ; preds = %491
  %495 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 7
  %496 = load i32, i32* %495, align 4
  %497 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %498 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %497, i32 0, i32 7
  %499 = load i32, i32* %498, align 4
  %500 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.25, i64 0, i64 0), i32 %496, i32 %499)
  %501 = load i32, i32* @EPERM, align 4
  store i32 %501, i32* %11, align 4
  br label %827

502:                                              ; preds = %491
  br label %503

503:                                              ; preds = %502, %475
  store i32 1, i32* %15, align 4
  br label %504

504:                                              ; preds = %503, %468, %464
  store i32 1, i32* %17, align 4
  br label %505

505:                                              ; preds = %504, %459
  %506 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %507 = load i32, i32* @va_uuuid, align 4
  %508 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %506, i32 %507)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %567

510:                                              ; preds = %505
  %511 = load i32, i32* @va_uuuid, align 4
  %512 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %511)
  %513 = icmp ne i64 %512, 0
  br i1 %513, label %514, label %542

514:                                              ; preds = %510
  %515 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %516 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %515, i32 0, i32 8
  %517 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 8
  %518 = call i64 @kauth_guid_equal(i32* %516, i32* %517)
  %519 = icmp ne i64 %518, 0
  br i1 %519, label %520, label %521

520:                                              ; preds = %514
  br label %568

521:                                              ; preds = %514
  %522 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 8
  %523 = call i64 @kauth_guid_equal(i32* %522, i32* @kauth_null_guid)
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %541

525:                                              ; preds = %521
  %526 = load i32, i32* @va_uid, align 4
  %527 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %541

529:                                              ; preds = %525
  %530 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 3
  %531 = load i64, i64* %530, align 8
  %532 = call i64 @kauth_cred_uid2guid(i64 %531, i32* %24)
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %540

534:                                              ; preds = %529
  %535 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %536 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %535, i32 0, i32 8
  %537 = call i64 @kauth_guid_equal(i32* %536, i32* %24)
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %540

539:                                              ; preds = %534
  br label %568

540:                                              ; preds = %534, %529
  br label %541

541:                                              ; preds = %540, %525, %521
  br label %542

542:                                              ; preds = %541, %510
  %543 = load i32, i32* %12, align 4
  %544 = icmp ne i32 %543, 0
  br i1 %544, label %566, label %545

545:                                              ; preds = %542
  %546 = load i32, i32* %22, align 4
  %547 = call i32 @kauth_cred_getguid(i32 %546, i32* %18)
  store i32 %547, i32* %11, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %552

549:                                              ; preds = %545
  %550 = load i32, i32* %11, align 4
  %551 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.26, i64 0, i64 0), i32 %550)
  br label %827

552:                                              ; preds = %545
  %553 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %554 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %553, i32 0, i32 8
  %555 = call i64 @kauth_guid_equal(i32* %554, i32* %18)
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %565, label %557

557:                                              ; preds = %552
  %558 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %559 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %558, i32 0, i32 8
  %560 = call i64 @kauth_guid_equal(i32* %559, i32* @kauth_null_guid)
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %565, label %562

562:                                              ; preds = %557
  %563 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0))
  %564 = load i32, i32* @EPERM, align 4
  store i32 %564, i32* %11, align 4
  br label %827

565:                                              ; preds = %557, %552
  br label %566

566:                                              ; preds = %565, %542
  store i32 1, i32* %14, align 4
  store i32 1, i32* %16, align 4
  br label %567

567:                                              ; preds = %566, %505
  br label %568

568:                                              ; preds = %567, %539, %520
  %569 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %570 = load i32, i32* @va_guuid, align 4
  %571 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %569, i32 %570)
  %572 = icmp ne i64 %571, 0
  br i1 %572, label %573, label %632

573:                                              ; preds = %568
  %574 = load i32, i32* @va_guuid, align 4
  %575 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %574)
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %605

577:                                              ; preds = %573
  %578 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %579 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %578, i32 0, i32 6
  %580 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 6
  %581 = call i64 @kauth_guid_equal(i32* %579, i32* %580)
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %584

583:                                              ; preds = %577
  br label %633

584:                                              ; preds = %577
  %585 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 6
  %586 = call i64 @kauth_guid_equal(i32* %585, i32* @kauth_null_guid)
  %587 = icmp ne i64 %586, 0
  br i1 %587, label %588, label %604

588:                                              ; preds = %584
  %589 = load i32, i32* @va_gid, align 4
  %590 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %589)
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %604

592:                                              ; preds = %588
  %593 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 7
  %594 = load i32, i32* %593, align 4
  %595 = call i64 @kauth_cred_gid2guid(i32 %594, i32* %25)
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %603

597:                                              ; preds = %592
  %598 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %599 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %598, i32 0, i32 6
  %600 = call i64 @kauth_guid_equal(i32* %599, i32* %25)
  %601 = icmp ne i64 %600, 0
  br i1 %601, label %602, label %603

602:                                              ; preds = %597
  br label %633

603:                                              ; preds = %597, %592
  br label %604

604:                                              ; preds = %603, %588, %584
  br label %605

605:                                              ; preds = %604, %573
  %606 = load i32, i32* %12, align 4
  %607 = icmp ne i32 %606, 0
  br i1 %607, label %631, label %608

608:                                              ; preds = %605
  %609 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %610 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %609, i32 0, i32 6
  %611 = call i64 @kauth_guid_equal(i32* %610, i32* @kauth_null_guid)
  %612 = icmp ne i64 %611, 0
  br i1 %612, label %613, label %614

613:                                              ; preds = %608
  store i32 1, i32* %13, align 4
  br label %624

614:                                              ; preds = %608
  %615 = load i32, i32* %22, align 4
  %616 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %617 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %616, i32 0, i32 6
  %618 = call i32 @kauth_cred_ismember_guid(i32 %615, i32* %617, i32* %13)
  store i32 %618, i32* %11, align 4
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %623

620:                                              ; preds = %614
  %621 = load i32, i32* %11, align 4
  %622 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i32 %621)
  br label %827

623:                                              ; preds = %614
  br label %624

624:                                              ; preds = %623, %613
  %625 = load i32, i32* %13, align 4
  %626 = icmp ne i32 %625, 0
  br i1 %626, label %630, label %627

627:                                              ; preds = %624
  %628 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.29, i64 0, i64 0))
  %629 = load i32, i32* @EPERM, align 4
  store i32 %629, i32* %11, align 4
  br label %827

630:                                              ; preds = %624
  br label %631

631:                                              ; preds = %630, %605
  store i32 1, i32* %15, align 4
  br label %632

632:                                              ; preds = %631, %568
  br label %633

633:                                              ; preds = %632, %602, %583
  %634 = load i32, i32* %14, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %645, label %636

636:                                              ; preds = %633
  %637 = load i32, i32* %15, align 4
  %638 = icmp ne i32 %637, 0
  br i1 %638, label %645, label %639

639:                                              ; preds = %636
  %640 = load i32, i32* %16, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %645, label %642

642:                                              ; preds = %639
  %643 = load i32, i32* %17, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %728

645:                                              ; preds = %642, %639, %636, %633
  %646 = load i32, i32* %12, align 4
  %647 = icmp ne i32 %646, 0
  br i1 %647, label %648, label %653

648:                                              ; preds = %645
  %649 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.30, i64 0, i64 0))
  %650 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %651 = load i32, i32* %10, align 4
  %652 = or i32 %651, %650
  store i32 %652, i32* %10, align 4
  br label %673

653:                                              ; preds = %645
  %654 = load i32, i32* %14, align 4
  %655 = icmp ne i32 %654, 0
  br i1 %655, label %656, label %661

656:                                              ; preds = %653
  %657 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.31, i64 0, i64 0))
  %658 = load i32, i32* @KAUTH_VNODE_TAKE_OWNERSHIP, align 4
  %659 = load i32, i32* %10, align 4
  %660 = or i32 %659, %658
  store i32 %660, i32* %10, align 4
  br label %661

661:                                              ; preds = %656, %653
  %662 = load i32, i32* %15, align 4
  %663 = icmp ne i32 %662, 0
  br i1 %663, label %664, label %672

664:                                              ; preds = %661
  %665 = load i32, i32* %14, align 4
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %672, label %667

667:                                              ; preds = %664
  %668 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.32, i64 0, i64 0))
  %669 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %670 = load i32, i32* %10, align 4
  %671 = or i32 %670, %669
  store i32 %671, i32* %10, align 4
  br label %672

672:                                              ; preds = %667, %664, %661
  br label %673

673:                                              ; preds = %672, %648
  %674 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %675 = load i32, i32* @va_mode, align 4
  %676 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %674, i32 %675)
  %677 = icmp ne i64 %676, 0
  br i1 %677, label %678, label %682

678:                                              ; preds = %673
  %679 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %680 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %679, i32 0, i32 2
  %681 = load i32, i32* %680, align 8
  store i32 %681, i32* %21, align 4
  br label %692

682:                                              ; preds = %673
  %683 = load i32, i32* @va_mode, align 4
  %684 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %683)
  %685 = icmp ne i64 %684, 0
  br i1 %685, label %686, label %689

686:                                              ; preds = %682
  %687 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 2
  %688 = load i32, i32* %687, align 8
  store i32 %688, i32* %21, align 4
  br label %691

689:                                              ; preds = %682
  %690 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.33, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %691

691:                                              ; preds = %689, %686
  br label %692

692:                                              ; preds = %691, %678
  %693 = load i32, i32* %21, align 4
  %694 = load i32, i32* @S_ISUID, align 4
  %695 = load i32, i32* @S_ISGID, align 4
  %696 = or i32 %694, %695
  %697 = and i32 %693, %696
  %698 = icmp ne i32 %697, 0
  br i1 %698, label %699, label %727

699:                                              ; preds = %692
  %700 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %701 = load i32, i32* @va_mode, align 4
  %702 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %700, i32 %701)
  %703 = icmp ne i64 %702, 0
  br i1 %703, label %704, label %707

704:                                              ; preds = %699
  %705 = load i32, i32* %12, align 4
  %706 = icmp ne i32 %705, 0
  br i1 %706, label %722, label %707

707:                                              ; preds = %704, %699
  %708 = load i32, i32* %21, align 4
  %709 = load i32, i32* %21, align 4
  %710 = load i32, i32* @S_ISUID, align 4
  %711 = load i32, i32* @S_ISGID, align 4
  %712 = or i32 %710, %711
  %713 = xor i32 %712, -1
  %714 = and i32 %709, %713
  %715 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.34, i64 0, i64 0), i32 %708, i32 %714)
  %716 = load i32, i32* @S_ISUID, align 4
  %717 = load i32, i32* @S_ISGID, align 4
  %718 = or i32 %716, %717
  %719 = xor i32 %718, -1
  %720 = load i32, i32* %21, align 4
  %721 = and i32 %720, %719
  store i32 %721, i32* %21, align 4
  br label %722

722:                                              ; preds = %707, %704
  %723 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %724 = load i32, i32* @va_mode, align 4
  %725 = load i32, i32* %21, align 4
  %726 = call i32 @VATTR_SET(%struct.vnode_attr* %723, i32 %724, i32 %725)
  br label %727

727:                                              ; preds = %722, %692
  br label %728

728:                                              ; preds = %727, %642
  %729 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %730 = load i32, i32* @va_acl, align 4
  %731 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %729, i32 %730)
  %732 = icmp ne i64 %731, 0
  br i1 %732, label %733, label %817

733:                                              ; preds = %728
  %734 = load i32, i32* @va_acl, align 4
  %735 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %9, i32 %734)
  %736 = icmp ne i64 %735, 0
  br i1 %736, label %737, label %741

737:                                              ; preds = %733
  %738 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 5
  %739 = load %struct.TYPE_8__*, %struct.TYPE_8__** %738, align 8
  %740 = icmp eq %struct.TYPE_8__* %739, null
  br i1 %740, label %741, label %752

741:                                              ; preds = %737, %733
  %742 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %743 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %742, i32 0, i32 5
  %744 = load %struct.TYPE_8__*, %struct.TYPE_8__** %743, align 8
  %745 = icmp ne %struct.TYPE_8__* %744, null
  br i1 %745, label %746, label %751

746:                                              ; preds = %741
  %747 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %748 = load i32, i32* %10, align 4
  %749 = or i32 %748, %747
  store i32 %749, i32* %10, align 4
  %750 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.35, i64 0, i64 0))
  br label %751

751:                                              ; preds = %746, %741
  br label %816

752:                                              ; preds = %737
  %753 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %754 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %753, i32 0, i32 5
  %755 = load %struct.TYPE_8__*, %struct.TYPE_8__** %754, align 8
  %756 = icmp eq %struct.TYPE_8__* %755, null
  br i1 %756, label %757, label %762

757:                                              ; preds = %752
  %758 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %759 = load i32, i32* %10, align 4
  %760 = or i32 %759, %758
  store i32 %760, i32* %10, align 4
  %761 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.36, i64 0, i64 0))
  br label %815

762:                                              ; preds = %752
  %763 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %764 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %763, i32 0, i32 5
  %765 = load %struct.TYPE_8__*, %struct.TYPE_8__** %764, align 8
  %766 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %765, i32 0, i32 0
  %767 = load i32, i32* %766, align 8
  %768 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 5
  %769 = load %struct.TYPE_8__*, %struct.TYPE_8__** %768, align 8
  %770 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %769, i32 0, i32 0
  %771 = load i32, i32* %770, align 8
  %772 = icmp ne i32 %767, %771
  br i1 %772, label %773, label %778

773:                                              ; preds = %762
  %774 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %775 = load i32, i32* %10, align 4
  %776 = or i32 %775, %774
  store i32 %776, i32* %10, align 4
  %777 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.37, i64 0, i64 0))
  br label %814

778:                                              ; preds = %762
  %779 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %780 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %779, i32 0, i32 5
  %781 = load %struct.TYPE_8__*, %struct.TYPE_8__** %780, align 8
  %782 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %781, i32 0, i32 0
  %783 = load i32, i32* %782, align 8
  %784 = icmp sgt i32 %783, 0
  br i1 %784, label %785, label %813

785:                                              ; preds = %778
  %786 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %787 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %786, i32 0, i32 5
  %788 = load %struct.TYPE_8__*, %struct.TYPE_8__** %787, align 8
  %789 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %788, i32 0, i32 1
  %790 = load i32*, i32** %789, align 8
  %791 = getelementptr inbounds i32, i32* %790, i64 0
  %792 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 5
  %793 = load %struct.TYPE_8__*, %struct.TYPE_8__** %792, align 8
  %794 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %793, i32 0, i32 1
  %795 = load i32*, i32** %794, align 8
  %796 = getelementptr inbounds i32, i32* %795, i64 0
  %797 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %798 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %797, i32 0, i32 5
  %799 = load %struct.TYPE_8__*, %struct.TYPE_8__** %798, align 8
  %800 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %799, i32 0, i32 0
  %801 = load i32, i32* %800, align 8
  %802 = sext i32 %801 to i64
  %803 = mul i64 4, %802
  %804 = trunc i64 %803 to i32
  %805 = call i64 @memcmp(i32* %791, i32* %796, i32 %804)
  %806 = icmp ne i64 %805, 0
  br i1 %806, label %807, label %812

807:                                              ; preds = %785
  %808 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %809 = load i32, i32* %10, align 4
  %810 = or i32 %809, %808
  store i32 %810, i32* %10, align 4
  %811 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.38, i64 0, i64 0))
  br label %812

812:                                              ; preds = %807, %785
  br label %813

813:                                              ; preds = %812, %778
  br label %814

814:                                              ; preds = %813, %773
  br label %815

815:                                              ; preds = %814, %757
  br label %816

816:                                              ; preds = %815, %751
  br label %817

817:                                              ; preds = %816, %728
  %818 = load %struct.vnode_attr*, %struct.vnode_attr** %6, align 8
  %819 = load i32, i32* @va_encoding, align 4
  %820 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %818, i32 %819)
  %821 = icmp ne i64 %820, 0
  br i1 %821, label %822, label %826

822:                                              ; preds = %817
  %823 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %824 = load i32, i32* %10, align 4
  %825 = or i32 %824, %823
  store i32 %825, i32* %10, align 4
  br label %826

826:                                              ; preds = %822, %817
  br label %827

827:                                              ; preds = %826, %627, %620, %562, %549, %494, %485, %454, %419, %409, %365, %356, %321, %312, %303, %234, %165, %154, %40, %32
  %828 = load i32, i32* @va_acl, align 4
  %829 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %9, i32 %828)
  %830 = icmp ne i64 %829, 0
  br i1 %830, label %831, label %839

831:                                              ; preds = %827
  %832 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 5
  %833 = load %struct.TYPE_8__*, %struct.TYPE_8__** %832, align 8
  %834 = icmp ne %struct.TYPE_8__* %833, null
  br i1 %834, label %835, label %839

835:                                              ; preds = %831
  %836 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %9, i32 0, i32 5
  %837 = load %struct.TYPE_8__*, %struct.TYPE_8__** %836, align 8
  %838 = call i32 @kauth_acl_free(%struct.TYPE_8__* %837)
  br label %839

839:                                              ; preds = %835, %831, %827
  %840 = load i32, i32* %11, align 4
  %841 = icmp eq i32 %840, 0
  br i1 %841, label %842, label %845

842:                                              ; preds = %839
  %843 = load i32, i32* %10, align 4
  %844 = load i32*, i32** %7, align 8
  store i32 %843, i32* %844, align 4
  br label %845

845:                                              ; preds = %842, %839
  %846 = load i32, i32* %11, align 4
  ret i32 %846
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i64 @vfs_authopaque(i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, ...) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i32 @kauth_cred_issuser(i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_isreg(%struct.TYPE_7__*) #1

declare dso_local i64 @vnode_isdir(%struct.TYPE_7__*) #1

declare dso_local i32 @vnode_getattr(%struct.TYPE_7__*, %struct.vnode_attr*, i32) #1

declare dso_local i64 @vauth_node_owner(%struct.vnode_attr*, i32) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @kauth_cred_ismember_gid(i32, i32, i32*) #1

declare dso_local i64 @kauth_cred_getuid(i32) #1

declare dso_local i64 @kauth_guid_equal(i32*, i32*) #1

declare dso_local i64 @kauth_cred_uid2guid(i64, i32*) #1

declare dso_local i32 @kauth_cred_getguid(i32, i32*) #1

declare dso_local i64 @kauth_cred_gid2guid(i32, i32*) #1

declare dso_local i32 @kauth_cred_ismember_guid(i32, i32*, i32*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @kauth_acl_free(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
