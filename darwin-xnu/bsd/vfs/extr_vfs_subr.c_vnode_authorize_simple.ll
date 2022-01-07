; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_simple.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_8__*, %struct.vnode_attr* }
%struct.TYPE_8__ = type { i32 }
%struct.vnode_attr = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, i32* }
%struct.kauth_acl_eval = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32* }

@KAUTH_VNODE_WRITE_SECURITY = common dso_local global i32 0, align 4
@KAUTH_VNODE_TAKE_OWNERSHIP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"%p    ALLOWED - implicit or no rights required\00", align 1
@va_acl = common dso_local global i32 0, align 4
@KAUTH_AEVAL_IS_OWNER = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@KAUTH_AEVAL_IN_GROUP_UNKNOWN = common dso_local global i32 0, align 4
@KAUTH_AEVAL_IN_GROUP = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_ALL_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_READ_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_WRITE_BITS = common dso_local global i32 0, align 4
@KAUTH_VNODE_GENERIC_EXECUTE_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%p    ERROR during ACL processing - %d\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"%p    DENIED - by ACL\00", align 1
@EACCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [42 x i8] c"%p    ALLOWED - all rights granted by ACL\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"%p    DEFERRED - directory ACL\00", align 1
@KAUTH_VNODE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"%p    ALLOWED - rights already authorized\00", align 1
@KAUTH_VNODE_CHANGE_OWNER = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [42 x i8] c"%p    DENIED - CHANGE_OWNER not permitted\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"%p    DENIED - WRITE_SECURITY not permitted\00", align 1
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_LIST_DIRECTORY = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_EXTATTRIBUTES = common dso_local global i32 0, align 4
@VREAD = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_FILE = common dso_local global i32 0, align 4
@KAUTH_VNODE_ADD_SUBDIRECTORY = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE_CHILD = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_EXTATTRIBUTES = common dso_local global i32 0, align 4
@VWRITE = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@VEXEC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [93 x i8] c"%p    ALLOWED - residual rights %s%s%s%s%s%s%s%s%s%s%s%s%s%s granted due to no posix mapping\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c" LIST_DIRECTORY\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c" READ_DATA\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12 = private unnamed_addr constant [10 x i8] c" ADD_FILE\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c" WRITE_DATA\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c" SEARCH\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c" EXECUTE\00", align 1
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [8 x i8] c" DELETE\00", align 1
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [18 x i8] c" ADD_SUBDIRECTORY\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c" APPEND_DATA\00", align 1
@.str.19 = private unnamed_addr constant [14 x i8] c" DELETE_CHILD\00", align 1
@KAUTH_VNODE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [17 x i8] c" READ_ATTRIBUTES\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c" WRITE_ATTRIBUTES\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c" READ_EXTATTRIBUTES\00", align 1
@.str.23 = private unnamed_addr constant [21 x i8] c" WRITE_EXTATTRIBUTES\00", align 1
@KAUTH_VNODE_READ_SECURITY = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [15 x i8] c" READ_SECURITY\00", align 1
@.str.25 = private unnamed_addr constant [16 x i8] c" WRITE_SECURITY\00", align 1
@KAUTH_VNODE_CHECKIMMUTABLE = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [16 x i8] c" CHECKIMMUTABLE\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c" CHANGE_OWNER\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32, i32*)* @vnode_authorize_simple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_authorize_simple(%struct.TYPE_10__* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.vnode_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.kauth_acl_eval, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 2
  %18 = load %struct.vnode_attr*, %struct.vnode_attr** %17, align 8
  store %struct.vnode_attr* %18, %struct.vnode_attr** %10, align 8
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = call i64 @vauth_file_owner(%struct.TYPE_10__* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @KAUTH_VNODE_TAKE_OWNERSHIP, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %32
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %42, %37, %32
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %53)
  store i32 0, i32* %5, align 4
  br label %401

55:                                               ; preds = %47
  %56 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %57 = load i32, i32* @va_acl, align 4
  %58 = call i64 @VATTR_IS_NOT(%struct.vnode_attr* %56, i32 %57, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %157

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 0
  store i32 %61, i32* %62, align 8
  %63 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %64 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %63, i32 0, i32 0
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 10
  store i32* %68, i32** %69, align 8
  %70 = load %struct.vnode_attr*, %struct.vnode_attr** %10, align 8
  %71 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %70, i32 0, i32 0
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 9
  store i32 %74, i32* %75, align 4
  %76 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 8
  store i32 0, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = call i64 @vauth_file_owner(%struct.TYPE_10__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %60
  %81 = load i32, i32* @KAUTH_AEVAL_IS_OWNER, align 4
  %82 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 8
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %81
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %80, %60
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load i32, i32* @ENOENT, align 4
  %88 = call i32 @vauth_file_ingroup(%struct.TYPE_10__* %86, i32* %14, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %13, align 4
  %92 = load i32, i32* @ENOENT, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %5, align 4
  br label %401

96:                                               ; preds = %90, %85
  %97 = load i32, i32* %13, align 4
  %98 = load i32, i32* @ENOENT, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %105

100:                                              ; preds = %96
  %101 = load i32, i32* @KAUTH_AEVAL_IN_GROUP_UNKNOWN, align 4
  %102 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 8
  %103 = load i32, i32* %102, align 8
  %104 = or i32 %103, %101
  store i32 %104, i32* %102, align 8
  br label %114

105:                                              ; preds = %96
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %105
  %109 = load i32, i32* @KAUTH_AEVAL_IN_GROUP, align 4
  %110 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %109
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %108, %105
  br label %114

114:                                              ; preds = %113, %100
  %115 = load i32, i32* @KAUTH_VNODE_GENERIC_ALL_BITS, align 4
  %116 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 7
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @KAUTH_VNODE_GENERIC_READ_BITS, align 4
  %118 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 6
  store i32 %117, i32* %118, align 8
  %119 = load i32, i32* @KAUTH_VNODE_GENERIC_WRITE_BITS, align 4
  %120 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 5
  store i32 %119, i32* %120, align 4
  %121 = load i32, i32* @KAUTH_VNODE_GENERIC_EXECUTE_BITS, align 4
  %122 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 4
  store i32 %121, i32* %122, align 8
  %123 = load i32, i32* %11, align 4
  %124 = call i32 @kauth_acl_evaluate(i32 %123, %struct.kauth_acl_eval* %12)
  store i32 %124, i32* %13, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* %13, align 4
  %131 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* %13, align 4
  store i32 %132, i32* %5, align 4
  br label %401

133:                                              ; preds = %114
  %134 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  switch i32 %135, label %148 [
    i32 128, label %136
    i32 130, label %142
    i32 129, label %147
  ]

136:                                              ; preds = %133
  %137 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  %141 = load i32, i32* @EACCES, align 4
  store i32 %141, i32* %5, align 4
  br label %401

142:                                              ; preds = %133
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %145)
  store i32 0, i32* %5, align 4
  br label %401

147:                                              ; preds = %133
  br label %148

148:                                              ; preds = %133, %147
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %151)
  br label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %9, align 8
  store i32 %155, i32* %156, align 4
  br label %160

157:                                              ; preds = %55
  %158 = load i32, i32* %7, align 4
  %159 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  store i32 %158, i32* %159, align 8
  br label %160

160:                                              ; preds = %157, %153
  %161 = load i32, i32* %8, align 4
  %162 = xor i32 %161, -1
  %163 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = and i32 %164, %162
  store i32 %165, i32* %163, align 8
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %167 = call i64 @vauth_file_owner(%struct.TYPE_10__* %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %175

169:                                              ; preds = %160
  %170 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %171 = xor i32 %170, -1
  %172 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = and i32 %173, %171
  store i32 %174, i32* %172, align 8
  br label %175

175:                                              ; preds = %169, %160
  %176 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %184

179:                                              ; preds = %175
  %180 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %182)
  store i32 0, i32* %5, align 4
  br label %401

184:                                              ; preds = %175
  %185 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* @KAUTH_VNODE_CHANGE_OWNER, align 4
  %188 = and i32 %186, %187
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %184
  %191 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %193)
  %195 = load i32, i32* @EACCES, align 4
  store i32 %195, i32* %5, align 4
  br label %401

196:                                              ; preds = %184
  %197 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %200 = and i32 %198, %199
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %208

202:                                              ; preds = %196
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %204 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @EACCES, align 4
  store i32 %207, i32* %5, align 4
  br label %401

208:                                              ; preds = %196
  store i32 0, i32* %15, align 4
  %209 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %212 = load i32, i32* @KAUTH_VNODE_LIST_DIRECTORY, align 4
  %213 = or i32 %211, %212
  %214 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %215 = or i32 %213, %214
  %216 = and i32 %210, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %208
  %219 = load i32, i32* @VREAD, align 4
  %220 = load i32, i32* %15, align 4
  %221 = or i32 %220, %219
  store i32 %221, i32* %15, align 4
  br label %222

222:                                              ; preds = %218, %208
  %223 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %226 = load i32, i32* @KAUTH_VNODE_ADD_FILE, align 4
  %227 = or i32 %225, %226
  %228 = load i32, i32* @KAUTH_VNODE_ADD_SUBDIRECTORY, align 4
  %229 = or i32 %227, %228
  %230 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %231 = or i32 %229, %230
  %232 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %233 = or i32 %231, %232
  %234 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %235 = or i32 %233, %234
  %236 = and i32 %224, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %242

238:                                              ; preds = %222
  %239 = load i32, i32* @VWRITE, align 4
  %240 = load i32, i32* %15, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %15, align 4
  br label %242

242:                                              ; preds = %238, %222
  %243 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %244 = load i32, i32* %243, align 8
  %245 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %246 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %247 = or i32 %245, %246
  %248 = and i32 %244, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %242
  %251 = load i32, i32* @VEXEC, align 4
  %252 = load i32, i32* %15, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %15, align 4
  br label %254

254:                                              ; preds = %250, %242
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %254
  %258 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %259 = load i32, i32* %15, align 4
  %260 = call i32 @vnode_authorize_posix(%struct.TYPE_10__* %258, i32 %259, i32 0)
  store i32 %260, i32* %5, align 4
  br label %401

261:                                              ; preds = %254
  %262 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %261
  %271 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i64 @vnode_isdir(i32 %273)
  %275 = icmp ne i64 %274, 0
  %276 = zext i1 %275 to i64
  %277 = select i1 %275, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.10, i64 0, i64 0)
  br label %279

278:                                              ; preds = %261
  br label %279

279:                                              ; preds = %278, %270
  %280 = phi i8* [ %277, %270 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %278 ]
  %281 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %294

286:                                              ; preds = %279
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = call i64 @vnode_isdir(i32 %289)
  %291 = icmp ne i64 %290, 0
  %292 = zext i1 %291 to i64
  %293 = select i1 %291, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.13, i64 0, i64 0)
  br label %295

294:                                              ; preds = %279
  br label %295

295:                                              ; preds = %294, %286
  %296 = phi i8* [ %293, %286 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %294 ]
  %297 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %298 = load i32, i32* %297, align 8
  %299 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %300 = and i32 %298, %299
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %310

302:                                              ; preds = %295
  %303 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 8
  %306 = call i64 @vnode_isdir(i32 %305)
  %307 = icmp ne i64 %306, 0
  %308 = zext i1 %307 to i64
  %309 = select i1 %307, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i64 0, i64 0)
  br label %311

310:                                              ; preds = %295
  br label %311

311:                                              ; preds = %310, %302
  %312 = phi i8* [ %309, %302 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %310 ]
  %313 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  %318 = zext i1 %317 to i64
  %319 = select i1 %317, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %320 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %333

325:                                              ; preds = %311
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = call i64 @vnode_isdir(i32 %328)
  %330 = icmp ne i64 %329, 0
  %331 = zext i1 %330 to i64
  %332 = select i1 %330, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.18, i64 0, i64 0)
  br label %334

333:                                              ; preds = %311
  br label %334

334:                                              ; preds = %333, %325
  %335 = phi i8* [ %332, %325 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0), %333 ]
  %336 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %337 = load i32, i32* %336, align 8
  %338 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %339 = and i32 %337, %338
  %340 = icmp ne i32 %339, 0
  %341 = zext i1 %340 to i64
  %342 = select i1 %340, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %343 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* @KAUTH_VNODE_READ_ATTRIBUTES, align 4
  %346 = and i32 %344, %345
  %347 = icmp ne i32 %346, 0
  %348 = zext i1 %347 to i64
  %349 = select i1 %347, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %350 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  %355 = zext i1 %354 to i64
  %356 = select i1 %354, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %357 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  %362 = zext i1 %361 to i64
  %363 = select i1 %361, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %364 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %365 = load i32, i32* %364, align 8
  %366 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %367 = and i32 %365, %366
  %368 = icmp ne i32 %367, 0
  %369 = zext i1 %368 to i64
  %370 = select i1 %368, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %371 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @KAUTH_VNODE_READ_SECURITY, align 4
  %374 = and i32 %372, %373
  %375 = icmp ne i32 %374, 0
  %376 = zext i1 %375 to i64
  %377 = select i1 %375, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.24, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %378 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %379 = load i32, i32* %378, align 8
  %380 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %381 = and i32 %379, %380
  %382 = icmp ne i32 %381, 0
  %383 = zext i1 %382 to i64
  %384 = select i1 %382, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %385 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %388 = and i32 %386, %387
  %389 = icmp ne i32 %388, 0
  %390 = zext i1 %389 to i64
  %391 = select i1 %389, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %392 = getelementptr inbounds %struct.kauth_acl_eval, %struct.kauth_acl_eval* %12, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @KAUTH_VNODE_CHANGE_OWNER, align 4
  %395 = and i32 %393, %394
  %396 = icmp ne i32 %395, 0
  %397 = zext i1 %396 to i64
  %398 = select i1 %396, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.27, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.11, i64 0, i64 0)
  %399 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.8, i64 0, i64 0), i32 %264, i8* %280, i8* %296, i8* %312, i8* %319, i8* %335, i8* %342, i8* %349, i8* %356, i8* %363, i8* %370, i8* %377, i8* %384, i8* %391, i8* %398)
  br label %400

400:                                              ; preds = %334
  store i32 0, i32* %5, align 4
  br label %401

401:                                              ; preds = %400, %257, %202, %190, %179, %142, %136, %126, %94, %50
  %402 = load i32, i32* %5, align 4
  ret i32 %402
}

declare dso_local i64 @vauth_file_owner(%struct.TYPE_10__*) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32, ...) #1

declare dso_local i64 @VATTR_IS_NOT(%struct.vnode_attr*, i32, i32*) #1

declare dso_local i32 @vauth_file_ingroup(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @kauth_acl_evaluate(i32, %struct.kauth_acl_eval*) #1

declare dso_local i32 @vnode_authorize_posix(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i64 @vnode_isdir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
