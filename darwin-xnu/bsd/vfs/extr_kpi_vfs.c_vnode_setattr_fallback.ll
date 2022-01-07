; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_setattr_fallback.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_setattr_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode_attr = type { %struct.TYPE_3__*, i8*, i8* }
%struct.TYPE_3__ = type { i64, i64 }
%struct.kauth_filesec = type { i8*, i8*, i32, %struct.TYPE_3__ }

@va_acl = common dso_local global i32 0, align 4
@va_uuuid = common dso_local global i32 0, align 4
@va_guuid = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"SETATTR - doing filesec fallback\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"SETATTR - Can't write ACL to file type %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"SETATTR - ERROR %d fetching filesec for update\00", align 1
@.str.3 = private unnamed_addr constant [50 x i8] c"SETATTR - using local filesec for new/full update\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"SETATTR - updating existing filesec\00", align 1
@KAUTH_FILESEC_MAGIC = common dso_local global i32 0, align 4
@kauth_null_guid = common dso_local global i8* null, align 8
@KAUTH_FILESEC_NOACL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"SETATTR - updating owner UUID\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"SETATTR - updating group UUID\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"SETATTR - removing ACL\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"SETATTR - setting ACL with %d entries\00", align 1
@KAUTH_FILESEC_XATTR = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [38 x i8] c"SETATTR - remove filesec returning %d\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"SETATTR - update filesec returning %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_setattr_fallback(i32 %0, %struct.vnode_attr* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode_attr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.kauth_filesec*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.kauth_filesec, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.vnode_attr* %1, %struct.vnode_attr** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %12 = load i32, i32* @va_acl, align 4
  %13 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %3
  %16 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %17 = load i32, i32* @va_uuuid, align 4
  %18 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %22 = load i32, i32* @va_guuid, align 4
  %23 = call i64 @VATTR_NOT_RETURNED(%struct.vnode_attr* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %197

25:                                               ; preds = %20, %15, %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (i32, i32, i8*, ...) @VFS_DEBUG(i32 %26, i32 %27, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @XATTR_VNODE_SUPPORTED(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %39, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @vnode_vtype(i32 %35)
  %37 = call i32 (i32, i32, i8*, ...) @VFS_DEBUG(i32 %33, i32 %34, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %10, align 4
  br label %198

39:                                               ; preds = %25
  store %struct.kauth_filesec* null, %struct.kauth_filesec** %7, align 8
  %40 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %41 = load i32, i32* @va_acl, align 4
  %42 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %39
  %45 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %46 = load i32, i32* @va_uuuid, align 4
  %47 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %51 = load i32, i32* @va_guuid, align 4
  %52 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %50, i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %49, %44, %39
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @vnode_get_filesec(i32 %55, %struct.kauth_filesec** %7, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  br label %198

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %49
  %64 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %65 = icmp eq %struct.kauth_filesec* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.3, i64 0, i64 0))
  store %struct.kauth_filesec* %9, %struct.kauth_filesec** %7, align 8
  br label %70

68:                                               ; preds = %63
  %69 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  br label %70

70:                                               ; preds = %68, %66
  %71 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %72 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %71, i32 0, i32 3
  store %struct.TYPE_3__* %72, %struct.TYPE_3__** %8, align 8
  %73 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %74 = icmp eq %struct.kauth_filesec* %73, %9
  br i1 %74, label %75, label %90

75:                                               ; preds = %70
  %76 = load i32, i32* @KAUTH_FILESEC_MAGIC, align 4
  %77 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %78 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i8*, i8** @kauth_null_guid, align 8
  %80 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %81 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %80, i32 0, i32 1
  store i8* %79, i8** %81, align 8
  %82 = load i8*, i8** @kauth_null_guid, align 8
  %83 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %84 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %83, i32 0, i32 0
  store i8* %82, i8** %84, align 8
  %85 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  br label %90

90:                                               ; preds = %75, %70
  %91 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %92 = load i32, i32* @va_uuuid, align 4
  %93 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %91, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %98 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %97, i32 0, i32 2
  %99 = load i8*, i8** %98, align 8
  %100 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %101 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %100, i32 0, i32 1
  store i8* %99, i8** %101, align 8
  %102 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %103 = load i32, i32* @va_uuuid, align 4
  %104 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %102, i32 %103)
  br label %105

105:                                              ; preds = %95, %90
  %106 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %107 = load i32, i32* @va_guuid, align 4
  %108 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %120

110:                                              ; preds = %105
  %111 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  %112 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %113 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %116 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %115, i32 0, i32 0
  store i8* %114, i8** %116, align 8
  %117 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %118 = load i32, i32* @va_guuid, align 4
  %119 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %117, i32 %118)
  br label %120

120:                                              ; preds = %110, %105
  %121 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %122 = load i32, i32* @va_acl, align 4
  %123 = call i64 @VATTR_IS_ACTIVE(%struct.vnode_attr* %121, i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %127 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = icmp eq %struct.TYPE_3__* %128, null
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %132 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  store i64 %132, i64* %134, align 8
  br label %145

135:                                              ; preds = %125
  %136 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %137 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %136, i32 0, i32 0
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.8, i64 0, i64 0), i64 %140)
  %142 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %143 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %142, i32 0, i32 0
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %143, align 8
  store %struct.TYPE_3__* %144, %struct.TYPE_3__** %8, align 8
  br label %145

145:                                              ; preds = %135, %130
  %146 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %147 = load i32, i32* @va_acl, align 4
  %148 = call i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr* %146, i32 %147)
  br label %149

149:                                              ; preds = %145, %120
  %150 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %180

155:                                              ; preds = %149
  %156 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %157 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %156, i32 0, i32 1
  %158 = call i64 @kauth_guid_equal(i8** %157, i8** @kauth_null_guid)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %180

160:                                              ; preds = %155
  %161 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %162 = getelementptr inbounds %struct.kauth_filesec, %struct.kauth_filesec* %161, i32 0, i32 0
  %163 = call i64 @kauth_guid_equal(i8** %162, i8** @kauth_null_guid)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %160
  %166 = load i32, i32* %4, align 4
  %167 = load i32, i32* @KAUTH_FILESEC_XATTR, align 4
  %168 = load i32, i32* @XATTR_NOSECURITY, align 4
  %169 = load i32, i32* %6, align 4
  %170 = call i32 @vn_removexattr(i32 %166, i32 %167, i32 %168, i32 %169)
  store i32 %170, i32* %10, align 4
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @ENOATTR, align 4
  %173 = icmp eq i32 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %165
  store i32 0, i32* %10, align 4
  br label %175

175:                                              ; preds = %174, %165
  %176 = load i32, i32* %6, align 4
  %177 = load i32, i32* %4, align 4
  %178 = load i32, i32* %10, align 4
  %179 = call i32 (i32, i32, i8*, ...) @VFS_DEBUG(i32 %176, i32 %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0), i32 %178)
  br label %190

180:                                              ; preds = %160, %155, %149
  %181 = load i32, i32* %4, align 4
  %182 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %183 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @vnode_set_filesec(i32 %181, %struct.kauth_filesec* %182, %struct.TYPE_3__* %183, i32 %184)
  store i32 %185, i32* %10, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* %10, align 4
  %189 = call i32 (i32, i32, i8*, ...) @VFS_DEBUG(i32 %186, i32 %187, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i32 %188)
  br label %190

190:                                              ; preds = %180, %175
  %191 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %192 = icmp ne %struct.kauth_filesec* %191, %9
  br i1 %192, label %193, label %196

193:                                              ; preds = %190
  %194 = load %struct.kauth_filesec*, %struct.kauth_filesec** %7, align 8
  %195 = call i32 @kauth_filesec_free(%struct.kauth_filesec* %194)
  br label %196

196:                                              ; preds = %193, %190
  br label %197

197:                                              ; preds = %196, %20
  br label %198

198:                                              ; preds = %197, %59, %32
  %199 = load i32, i32* %10, align 4
  ret i32 %199
}

declare dso_local i64 @VATTR_NOT_RETURNED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @VFS_DEBUG(i32, i32, i8*, ...) #1

declare dso_local i32 @XATTR_VNODE_SUPPORTED(i32) #1

declare dso_local i32 @vnode_vtype(i32) #1

declare dso_local i64 @VATTR_IS_ACTIVE(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_get_filesec(i32, %struct.kauth_filesec**, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, ...) #1

declare dso_local i32 @VATTR_SET_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i64 @kauth_guid_equal(i8**, i8**) #1

declare dso_local i32 @vn_removexattr(i32, i32, i32, i32) #1

declare dso_local i32 @vnode_set_filesec(i32, %struct.kauth_filesec*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @kauth_filesec_free(%struct.kauth_filesec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
