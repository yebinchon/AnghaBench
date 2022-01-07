; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_get_filesec.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_kpi_vfs.c_vnode_get_filesec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@KAUTH_FILESEC_XATTR = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@ENOATTR = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"    ERROR - Bogus kauth_fiilesec_t: %ld bytes\00", align 1
@KAUTH_ACL_MAX_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [58 x i8] c"    ERROR - Bogus (too large) kauth_fiilesec_t: %ld bytes\00", align 1
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"    ERROR - could not allocate iov to read ACL\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"ACL - DATA TOO SMALL (%d)\00", align 1
@KAUTH_FILESEC_MAGIC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [19 x i8] c"ACL - BAD MAGIC %x\00", align 1
@KAUTH_FILESEC_NOACL = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"ACL - BAD ENTRYCOUNT %x\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"ACL - BUFFER OVERFLOW (%d entries too big for %d)\00", align 1
@KAUTH_ENDIAN_HOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_9__**, i32)* @vnode_get_filesec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_get_filesec(i32 %0, %struct.TYPE_9__** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_9__** %1, %struct.TYPE_9__*** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32* null, i32** %8, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @KAUTH_FILESEC_XATTR, align 4
  %17 = load i32, i32* @XATTR_NOSECURITY, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @vn_getxattr(i32 %15, i32 %16, i32* null, i64* %10, i32 %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @ENOATTR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @ENOENT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @EJUSTRETURN, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30, %26, %22
  store i32 0, i32* %12, align 4
  br label %35

35:                                               ; preds = %34, %30
  br label %144

36:                                               ; preds = %3
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @KAUTH_FILESEC_VALID(i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* %10, align 8
  %42 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %41)
  store i32 0, i32* %12, align 4
  br label %144

43:                                               ; preds = %36
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @KAUTH_FILESEC_COUNT(i64 %44)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @KAUTH_ACL_MAX_ENTRIES, align 8
  %48 = icmp ugt i64 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* %10, align 8
  %51 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i64 %50)
  store i32 0, i32* %12, align 4
  br label %144

52:                                               ; preds = %43
  %53 = load i64, i64* %9, align 8
  %54 = call %struct.TYPE_9__* @kauth_filesec_alloc(i64 %53)
  store %struct.TYPE_9__* %54, %struct.TYPE_9__** %7, align 8
  %55 = icmp eq %struct.TYPE_9__* %54, null
  br i1 %55, label %68, label %56

56:                                               ; preds = %52
  %57 = load i32, i32* @UIO_SYSSPACE, align 4
  %58 = load i32, i32* @UIO_READ, align 4
  %59 = call i32* @uio_create(i32 1, i32 0, i32 %57, i32 %58)
  store i32* %59, i32** %8, align 8
  %60 = icmp eq i32* %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %56
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = call i32 @CAST_USER_ADDR_T(%struct.TYPE_9__* %63)
  %65 = load i64, i64* %10, align 8
  %66 = call i64 @uio_addiov(i32* %62, i32 %64, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %61, %56, %52
  %69 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENOMEM, align 4
  store i32 %70, i32* %12, align 4
  br label %144

71:                                               ; preds = %61
  %72 = load i64, i64* %10, align 8
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @KAUTH_FILESEC_XATTR, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* @XATTR_NOSECURITY, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @vn_getxattr(i32 %73, i32 %74, i32* %75, i64* %11, i32 %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %71
  %81 = load i32, i32* %12, align 4
  %82 = load i32, i32* @ENOATTR, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %92, label %84

84:                                               ; preds = %80
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @ENOENT, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %92, label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @EJUSTRETURN, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88, %84, %80
  store i32 0, i32* %12, align 4
  br label %93

93:                                               ; preds = %92, %88
  br label %144

94:                                               ; preds = %71
  %95 = load i64, i64* %11, align 8
  %96 = call i64 @KAUTH_FILESEC_SIZE(i64 0)
  %97 = icmp ult i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load i64, i64* %11, align 8
  %100 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i64 %99)
  br label %144

101:                                              ; preds = %94
  %102 = load i32, i32* @KAUTH_FILESEC_MAGIC, align 4
  %103 = call i64 @ntohl(i32 %102)
  store i64 %103, i64* %13, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* %13, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %101
  %110 = load i64, i64* %13, align 8
  %111 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %110)
  br label %144

112:                                              ; preds = %101
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @ntohl(i32 %116)
  store i64 %117, i64* %14, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* @KAUTH_FILESEC_NOACL, align 8
  %120 = icmp ne i64 %118, %119
  br i1 %120, label %121, label %138

121:                                              ; preds = %112
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* @KAUTH_ACL_MAX_ENTRIES, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %121
  %126 = load i64, i64* %14, align 8
  %127 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %126)
  br label %144

128:                                              ; preds = %121
  %129 = load i64, i64* %14, align 8
  %130 = call i64 @KAUTH_FILESEC_SIZE(i64 %129)
  %131 = load i64, i64* %11, align 8
  %132 = icmp ugt i64 %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i64, i64* %14, align 8
  %135 = load i64, i64* %11, align 8
  %136 = call i32 (i8*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0), i64 %134, i64 %135)
  br label %144

137:                                              ; preds = %128
  br label %138

138:                                              ; preds = %137, %112
  %139 = load i32, i32* @KAUTH_ENDIAN_HOST, align 4
  %140 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %141 = call i32 @kauth_filesec_acl_setendian(i32 %139, %struct.TYPE_9__* %140, i32* null)
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %143 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* %142, %struct.TYPE_9__** %143, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %7, align 8
  store i32 0, i32* %12, align 4
  br label %144

144:                                              ; preds = %138, %133, %125, %109, %98, %93, %68, %49, %40, %35
  %145 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %146 = icmp ne %struct.TYPE_9__* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %149 = call i32 @kauth_filesec_free(%struct.TYPE_9__* %148)
  br label %150

150:                                              ; preds = %147, %144
  %151 = load i32*, i32** %8, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load i32*, i32** %8, align 8
  %155 = call i32 @uio_free(i32* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load i32, i32* %12, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %156
  %160 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %5, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %160, align 8
  br label %161

161:                                              ; preds = %159, %156
  %162 = load i32, i32* %12, align 4
  ret i32 %162
}

declare dso_local i32 @vn_getxattr(i32, i32, i32*, i64*, i32, i32) #1

declare dso_local i32 @KAUTH_FILESEC_VALID(i64) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, ...) #1

declare dso_local i64 @KAUTH_FILESEC_COUNT(i64) #1

declare dso_local %struct.TYPE_9__* @kauth_filesec_alloc(i64) #1

declare dso_local i32* @uio_create(i32, i32, i32, i32) #1

declare dso_local i64 @uio_addiov(i32*, i32, i64) #1

declare dso_local i32 @CAST_USER_ADDR_T(%struct.TYPE_9__*) #1

declare dso_local i64 @KAUTH_FILESEC_SIZE(i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @kauth_filesec_acl_setendian(i32, %struct.TYPE_9__*, i32*) #1

declare dso_local i32 @kauth_filesec_free(%struct.TYPE_9__*) #1

declare dso_local i32 @uio_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
