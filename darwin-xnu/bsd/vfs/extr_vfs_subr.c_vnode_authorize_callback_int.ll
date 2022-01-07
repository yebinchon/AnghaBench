; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_callback_int.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_callback_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i8*, i64, %struct.TYPE_25__*, %struct.TYPE_26__* }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32* }
%struct._vnode_authorize_context = type { %struct.TYPE_26__*, %struct.TYPE_26__*, %struct.vnode_attr*, i64, i64, %struct.vnode_attr*, %struct.TYPE_28__* }
%struct.vnode_attr = type { i32, i32* }
%struct.TYPE_27__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [69 x i8] c"%p  AUTH - %s %s%s%s%s%s%s%s%s%s%s%s%s%s%s%s on %s '%s' (0x%x:%p/%p)\00", align 1
@KAUTH_VNODE_ACCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"access\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"auth\00", align 1
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c" LIST_DIRECTORY\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c" READ_DATA\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c" ADD_FILE\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c" WRITE_DATA\00", align 1
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [8 x i8] c" SEARCH\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c" EXECUTE\00", align 1
@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c" DELETE\00", align 1
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [18 x i8] c" ADD_SUBDIRECTORY\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c" APPEND_DATA\00", align 1
@KAUTH_VNODE_DELETE_CHILD = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [14 x i8] c" DELETE_CHILD\00", align 1
@KAUTH_VNODE_READ_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [17 x i8] c" READ_ATTRIBUTES\00", align 1
@KAUTH_VNODE_WRITE_ATTRIBUTES = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [18 x i8] c" WRITE_ATTRIBUTES\00", align 1
@KAUTH_VNODE_READ_EXTATTRIBUTES = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [20 x i8] c" READ_EXTATTRIBUTES\00", align 1
@KAUTH_VNODE_WRITE_EXTATTRIBUTES = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [21 x i8] c" WRITE_EXTATTRIBUTES\00", align 1
@KAUTH_VNODE_READ_SECURITY = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [15 x i8] c" READ_SECURITY\00", align 1
@KAUTH_VNODE_WRITE_SECURITY = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c" WRITE_SECURITY\00", align 1
@KAUTH_VNODE_CHANGE_OWNER = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [14 x i8] c" CHANGE_OWNER\00", align 1
@KAUTH_VNODE_NOIMMUTABLE = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [15 x i8] c" (noimmutable)\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"directory\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c"<NULL>\00", align 1
@TRUE = common dso_local global i64 0, align 8
@NULLVP = common dso_local global %struct.TYPE_26__* null, align 8
@KAUTH_VNODE_WRITE_RIGHTS = common dso_local global i32 0, align 4
@MNT_RDONLY = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@VDIR = common dso_local global i64 0, align 8
@VLNK = common dso_local global i64 0, align 8
@VCPLX = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@MNT_NOEXEC = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@MNTK_AUTH_OPAQUE = common dso_local global i32 0, align 4
@VNODE_NODEAD = common dso_local global i32 0, align 4
@VNODE_DRAINO = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_flags = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_acl = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [50 x i8] c"%p    ERROR - failed to get vnode attributes - %d\00", align 1
@va_type = common dso_local global i32 0, align 4
@.str.26 = private unnamed_addr constant [60 x i8] c"%p    ERROR - failed to get directory vnode attributes - %d\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"%p    DENIED - auth denied\00", align 1
@KAUTH_RESULT_DENY = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCH = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@KAUTH_VNODE_SEARCHBYANYONE = common dso_local global i32 0, align 4
@.str.28 = private unnamed_addr constant [29 x i8] c"%p    ALLOWED - auth granted\00", align 1
@KAUTH_RESULT_ALLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_28__*, %struct.TYPE_26__*, %struct.TYPE_26__*, i32*)* @vnode_authorize_callback_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_authorize_callback_int(i32 %0, %struct.TYPE_28__* %1, %struct.TYPE_26__* %2, %struct.TYPE_26__* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_28__*, align 8
  %9 = alloca %struct.TYPE_26__*, align 8
  %10 = alloca %struct.TYPE_26__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct._vnode_authorize_context, align 8
  %13 = alloca %struct._vnode_authorize_context*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vnode_attr, align 8
  %17 = alloca %struct.vnode_attr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %8, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %9, align 8
  store %struct.TYPE_26__* %3, %struct.TYPE_26__** %10, align 8
  store i32* %4, i32** %11, align 8
  %24 = load i64, i64* @FALSE, align 8
  store i64 %24, i64* %20, align 8
  %25 = load i64, i64* @FALSE, align 8
  store i64 %25, i64* %21, align 8
  %26 = load i64, i64* @FALSE, align 8
  store i64 %26, i64* %22, align 8
  %27 = load i64, i64* @FALSE, align 8
  store i64 %27, i64* %23, align 8
  store %struct._vnode_authorize_context* %12, %struct._vnode_authorize_context** %13, align 8
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %29 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %30 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %29, i32 0, i32 6
  store %struct.TYPE_28__* %28, %struct.TYPE_28__** %30, align 8
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %32 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %33 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %32, i32 0, i32 1
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %33, align 8
  %34 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %35 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %36 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %35, i32 0, i32 0
  store %struct.TYPE_26__* %34, %struct.TYPE_26__** %36, align 8
  %37 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %14, align 8
  %40 = call i32 @VATTR_INIT(%struct.vnode_attr* %16)
  %41 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %42 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %41, i32 0, i32 5
  store %struct.vnode_attr* %16, %struct.vnode_attr** %42, align 8
  %43 = call i32 @VATTR_INIT(%struct.vnode_attr* %17)
  %44 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %45 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %44, i32 0, i32 2
  store %struct.vnode_attr* %17, %struct.vnode_attr** %45, align 8
  %46 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %47 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %49 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %52 = call %struct.TYPE_27__* @vfs_context_proc(%struct.TYPE_28__* %51)
  %53 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @KAUTH_VNODE_ACCESS, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %5
  %66 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %67 = call i64 @vnode_isdir(%struct.TYPE_26__* %66)
  %68 = icmp ne i64 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)
  br label %72

71:                                               ; preds = %5
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i8* [ %70, %65 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %71 ]
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %80 = call i64 @vnode_isdir(%struct.TYPE_26__* %79)
  %81 = icmp ne i64 %80, 0
  %82 = zext i1 %81 to i64
  %83 = select i1 %81, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)
  br label %85

84:                                               ; preds = %72
  br label %85

85:                                               ; preds = %84, %78
  %86 = phi i8* [ %83, %78 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %84 ]
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %85
  %92 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %93 = call i64 @vnode_isdir(%struct.TYPE_26__* %92)
  %94 = icmp ne i64 %93, 0
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)
  br label %98

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %91
  %99 = phi i8* [ %96, %91 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %97 ]
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %98
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %112 = call i64 @vnode_isdir(%struct.TYPE_26__* %111)
  %113 = icmp ne i64 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0)
  br label %117

116:                                              ; preds = %98
  br label %117

117:                                              ; preds = %116, %110
  %118 = phi i8* [ %115, %110 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), %116 ]
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  %123 = zext i1 %122 to i64
  %124 = select i1 %122, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @KAUTH_VNODE_READ_ATTRIBUTES, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %131 = load i32, i32* %7, align 4
  %132 = load i32, i32* @KAUTH_VNODE_WRITE_ATTRIBUTES, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.16, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %143 = load i32, i32* %7, align 4
  %144 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.17, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %149 = load i32, i32* %7, align 4
  %150 = load i32, i32* @KAUTH_VNODE_READ_SECURITY, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %155 = load i32, i32* %7, align 4
  %156 = load i32, i32* @KAUTH_VNODE_WRITE_SECURITY, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @KAUTH_VNODE_CHANGE_OWNER, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %167 = load i32, i32* %7, align 4
  %168 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.21, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %173 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %174 = call i64 @vnode_isdir(%struct.TYPE_26__* %173)
  %175 = icmp ne i64 %174, 0
  %176 = zext i1 %175 to i64
  %177 = select i1 %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0)
  %178 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 0
  %180 = load i8*, i8** %179, align 8
  %181 = icmp ne i8* %180, null
  br i1 %181, label %182, label %186

182:                                              ; preds = %117
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = load i8*, i8** %184, align 8
  br label %187

186:                                              ; preds = %117
  br label %187

187:                                              ; preds = %186, %182
  %188 = phi i8* [ %185, %182 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.24, i64 0, i64 0), %186 ]
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %192 = call i32 (i8*, %struct.TYPE_26__*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str, i64 0, i64 0), %struct.TYPE_26__* %50, i32 %54, i8* %60, i8* %73, i8* %86, i8* %99, i8* %105, i8* %118, i8* %124, i8* %130, i8* %136, i8* %142, i8* %148, i8* %154, i8* %160, i8* %166, i8* %172, i8* %177, i8* %188, i32 %189, %struct.TYPE_26__* %190, %struct.TYPE_26__* %191)
  %193 = load i32, i32* %7, align 4
  %194 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  %197 = zext i1 %196 to i64
  %198 = select i1 %196, i32 1, i32 0
  store i32 %198, i32* %19, align 4
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* @KAUTH_VNODE_ACCESS, align 4
  %201 = load i32, i32* @KAUTH_VNODE_NOIMMUTABLE, align 4
  %202 = or i32 %200, %201
  %203 = xor i32 %202, -1
  %204 = and i32 %199, %203
  store i32 %204, i32* %15, align 4
  %205 = load i32, i32* %15, align 4
  %206 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %207 = and i32 %205, %206
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %219

209:                                              ; preds = %187
  %210 = load %struct.TYPE_26__*, %struct.TYPE_26__** %10, align 8
  %211 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %212 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %213 = call i64 @vnode_cache_is_authorized(%struct.TYPE_26__* %210, %struct.TYPE_28__* %211, i32 %212)
  %214 = load i64, i64* @TRUE, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %209
  %217 = load i64, i64* @TRUE, align 8
  store i64 %217, i64* %20, align 8
  br label %218

218:                                              ; preds = %216, %209
  br label %225

219:                                              ; preds = %187
  %220 = load %struct.TYPE_26__*, %struct.TYPE_26__** @NULLVP, align 8
  %221 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %222 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %221, i32 0, i32 0
  store %struct.TYPE_26__* %220, %struct.TYPE_26__** %222, align 8
  %223 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %224 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %223, i32 0, i32 2
  store %struct.vnode_attr* null, %struct.vnode_attr** %224, align 8
  br label %225

225:                                              ; preds = %219, %218
  %226 = load i32, i32* %15, align 4
  %227 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %228 = and i32 %226, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %275

230:                                              ; preds = %225
  %231 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 2
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* @MNT_RDONLY, align 4
  %237 = and i32 %235, %236
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %275

239:                                              ; preds = %230
  %240 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %240, i32 0, i32 1
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @VREG, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %273, label %245

245:                                              ; preds = %239
  %246 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @VDIR, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %273, label %251

251:                                              ; preds = %245
  %252 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @VLNK, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %273, label %257

257:                                              ; preds = %251
  %258 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @VCPLX, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %273, label %263

263:                                              ; preds = %257
  %264 = load i32, i32* %15, align 4
  %265 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %266 = and i32 %264, %265
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %273, label %268

268:                                              ; preds = %263
  %269 = load i32, i32* %15, align 4
  %270 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %271 = and i32 %269, %270
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %268, %263, %257, %251, %245, %239
  %274 = load i32, i32* @EROFS, align 4
  store i32 %274, i32* %18, align 4
  br label %457

275:                                              ; preds = %268, %230, %225
  %276 = load i32, i32* %15, align 4
  %277 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %297

280:                                              ; preds = %275
  %281 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %282 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %281, i32 0, i32 1
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @VREG, align 8
  %285 = icmp eq i64 %283, %284
  br i1 %285, label %286, label %297

286:                                              ; preds = %280
  %287 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_25__*, %struct.TYPE_25__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* @MNT_NOEXEC, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %297

295:                                              ; preds = %286
  %296 = load i32, i32* @EACCES, align 4
  store i32 %296, i32* %18, align 4
  br label %457

297:                                              ; preds = %286, %280, %275
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 2
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = load i32, i32* @MNTK_AUTH_OPAQUE, align 4
  %304 = and i32 %302, %303
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %297
  %307 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %308 = load i32, i32* %7, align 4
  %309 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %310 = call i64 @vnode_authorize_opaque(%struct.TYPE_26__* %307, i32* %18, i32 %308, %struct.TYPE_28__* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %313

312:                                              ; preds = %306
  br label %457

313:                                              ; preds = %306, %297
  %314 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %315 = call i64 @vnode_isnamedstream(%struct.TYPE_26__* %314)
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %365

317:                                              ; preds = %313
  %318 = load i32, i32* %15, align 4
  %319 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %320 = and i32 %318, %319
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  %323 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %324 = xor i32 %323, -1
  %325 = load i32, i32* %15, align 4
  %326 = and i32 %325, %324
  store i32 %326, i32* %15, align 4
  %327 = load i32, i32* @KAUTH_VNODE_READ_EXTATTRIBUTES, align 4
  %328 = load i32, i32* %15, align 4
  %329 = or i32 %328, %327
  store i32 %329, i32* %15, align 4
  br label %330

330:                                              ; preds = %322, %317
  %331 = load i32, i32* %15, align 4
  %332 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %343

335:                                              ; preds = %330
  %336 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %337 = xor i32 %336, -1
  %338 = load i32, i32* %15, align 4
  %339 = and i32 %338, %337
  store i32 %339, i32* %15, align 4
  %340 = load i32, i32* @KAUTH_VNODE_WRITE_EXTATTRIBUTES, align 4
  %341 = load i32, i32* %15, align 4
  %342 = or i32 %341, %340
  store i32 %342, i32* %15, align 4
  br label %343

343:                                              ; preds = %335, %330
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 3
  %346 = load %struct.TYPE_26__*, %struct.TYPE_26__** %345, align 8
  %347 = icmp ne %struct.TYPE_26__* %346, null
  br i1 %347, label %348, label %364

348:                                              ; preds = %343
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %350 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %349, i32 0, i32 3
  %351 = load %struct.TYPE_26__*, %struct.TYPE_26__** %350, align 8
  %352 = load i32, i32* @VNODE_NODEAD, align 4
  %353 = load i32, i32* @VNODE_DRAINO, align 4
  %354 = or i32 %352, %353
  %355 = call i64 @vget_internal(%struct.TYPE_26__* %351, i32 0, i32 %354)
  %356 = icmp eq i64 %355, 0
  br i1 %356, label %357, label %364

357:                                              ; preds = %348
  %358 = load i64, i64* @TRUE, align 8
  store i64 %358, i64* %22, align 8
  %359 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %360 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %359, i32 0, i32 3
  %361 = load %struct.TYPE_26__*, %struct.TYPE_26__** %360, align 8
  store %struct.TYPE_26__* %361, %struct.TYPE_26__** %9, align 8
  %362 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %363 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %362, i32 0, i32 1
  store %struct.TYPE_26__* %361, %struct.TYPE_26__** %363, align 8
  br label %364

364:                                              ; preds = %357, %348, %343
  br label %365

365:                                              ; preds = %364, %313
  %366 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %367 = call i64 @vfs_context_issuser(%struct.TYPE_28__* %366)
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %379

369:                                              ; preds = %365
  %370 = load i32, i32* %15, align 4
  %371 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %372 = load i32, i32* @KAUTH_VNODE_WRITE_RIGHTS, align 4
  %373 = or i32 %371, %372
  %374 = and i32 %370, %373
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %369
  br label %537

377:                                              ; preds = %369
  %378 = load i64, i64* @TRUE, align 8
  store i64 %378, i64* %23, align 8
  br label %379

379:                                              ; preds = %377, %365
  %380 = load i32, i32* @va_mode, align 4
  %381 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %380)
  %382 = load i32, i32* @va_flags, align 4
  %383 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %382)
  %384 = load i64, i64* %23, align 8
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %393, label %386

386:                                              ; preds = %379
  %387 = load i32, i32* @va_uid, align 4
  %388 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %387)
  %389 = load i32, i32* @va_gid, align 4
  %390 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %389)
  %391 = load i32, i32* @va_acl, align 4
  %392 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %391)
  br label %393

393:                                              ; preds = %386, %379
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %395 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %396 = call i32 @vnode_getattr(%struct.TYPE_26__* %394, %struct.vnode_attr* %16, %struct.TYPE_28__* %395)
  store i32 %396, i32* %18, align 4
  %397 = icmp ne i32 %396, 0
  br i1 %397, label %398, label %402

398:                                              ; preds = %393
  %399 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %400 = load i32, i32* %18, align 4
  %401 = call i32 (i8*, %struct.TYPE_26__*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.25, i64 0, i64 0), %struct.TYPE_26__* %399, i32 %400)
  br label %457

402:                                              ; preds = %393
  %403 = load i32, i32* @va_type, align 4
  %404 = call i32 @VATTR_WANTED(%struct.vnode_attr* %16, i32 %403)
  %405 = load i32, i32* @va_type, align 4
  %406 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %407 = call i32 @vnode_vtype(%struct.TYPE_26__* %406)
  %408 = call i32 @VATTR_RETURN(%struct.vnode_attr* %16, i32 %405, i32 %407)
  %409 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %410 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %409, i32 0, i32 0
  %411 = load %struct.TYPE_26__*, %struct.TYPE_26__** %410, align 8
  %412 = icmp ne %struct.TYPE_26__* %411, null
  br i1 %412, label %413, label %447

413:                                              ; preds = %402
  %414 = load i32, i32* @va_mode, align 4
  %415 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %414)
  %416 = load i32, i32* @va_flags, align 4
  %417 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %416)
  %418 = load i64, i64* %23, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %427, label %420

420:                                              ; preds = %413
  %421 = load i32, i32* @va_uid, align 4
  %422 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %421)
  %423 = load i32, i32* @va_gid, align 4
  %424 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %423)
  %425 = load i32, i32* @va_acl, align 4
  %426 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %425)
  br label %427

427:                                              ; preds = %420, %413
  %428 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %429 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %428, i32 0, i32 0
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %429, align 8
  %431 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %432 = call i32 @vnode_getattr(%struct.TYPE_26__* %430, %struct.vnode_attr* %17, %struct.TYPE_28__* %431)
  store i32 %432, i32* %18, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %427
  %435 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %436 = load i32, i32* %18, align 4
  %437 = call i32 (i8*, %struct.TYPE_26__*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.26, i64 0, i64 0), %struct.TYPE_26__* %435, i32 %436)
  br label %457

438:                                              ; preds = %427
  %439 = load i32, i32* @va_type, align 4
  %440 = call i32 @VATTR_WANTED(%struct.vnode_attr* %17, i32 %439)
  %441 = load i32, i32* @va_type, align 4
  %442 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %443 = getelementptr inbounds %struct._vnode_authorize_context, %struct._vnode_authorize_context* %442, i32 0, i32 0
  %444 = load %struct.TYPE_26__*, %struct.TYPE_26__** %443, align 8
  %445 = call i32 @vnode_vtype(%struct.TYPE_26__* %444)
  %446 = call i32 @VATTR_RETURN(%struct.vnode_attr* %17, i32 %441, i32 %445)
  br label %447

447:                                              ; preds = %438, %402
  %448 = load %struct._vnode_authorize_context*, %struct._vnode_authorize_context** %13, align 8
  %449 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %450 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %449, i32 0, i32 2
  %451 = load %struct.TYPE_25__*, %struct.TYPE_25__** %450, align 8
  %452 = load i32, i32* %15, align 4
  %453 = load i64, i64* %23, align 8
  %454 = load i32, i32* %19, align 4
  %455 = load i64, i64* %20, align 8
  %456 = call i32 @vnode_attr_authorize_internal(%struct._vnode_authorize_context* %448, %struct.TYPE_25__* %451, i32 %452, i64 %453, i64* %21, i32 %454, i64 %455)
  store i32 %456, i32* %18, align 4
  br label %457

457:                                              ; preds = %447, %434, %398, %312, %295, %273
  %458 = load i32, i32* @va_acl, align 4
  %459 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %16, i32 %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %461, label %469

461:                                              ; preds = %457
  %462 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %16, i32 0, i32 1
  %463 = load i32*, i32** %462, align 8
  %464 = icmp ne i32* %463, null
  br i1 %464, label %465, label %469

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %16, i32 0, i32 1
  %467 = load i32*, i32** %466, align 8
  %468 = call i32 @kauth_acl_free(i32* %467)
  br label %469

469:                                              ; preds = %465, %461, %457
  %470 = load i32, i32* @va_acl, align 4
  %471 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %17, i32 %470)
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %481

473:                                              ; preds = %469
  %474 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %17, i32 0, i32 1
  %475 = load i32*, i32** %474, align 8
  %476 = icmp ne i32* %475, null
  br i1 %476, label %477, label %481

477:                                              ; preds = %473
  %478 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %17, i32 0, i32 1
  %479 = load i32*, i32** %478, align 8
  %480 = call i32 @kauth_acl_free(i32* %479)
  br label %481

481:                                              ; preds = %477, %473, %469
  %482 = load i32, i32* %18, align 4
  %483 = icmp ne i32 %482, 0
  br i1 %483, label %484, label %496

484:                                              ; preds = %481
  %485 = load i64, i64* %22, align 8
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %490

487:                                              ; preds = %484
  %488 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %489 = call i32 @vnode_put(%struct.TYPE_26__* %488)
  br label %490

490:                                              ; preds = %487, %484
  %491 = load i32, i32* %18, align 4
  %492 = load i32*, i32** %11, align 8
  store i32 %491, i32* %492, align 4
  %493 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %494 = call i32 (i8*, %struct.TYPE_26__*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.27, i64 0, i64 0), %struct.TYPE_26__* %493)
  %495 = load i32, i32* @KAUTH_RESULT_DENY, align 4
  store i32 %495, i32* %6, align 4
  br label %547

496:                                              ; preds = %481
  %497 = load i32, i32* %15, align 4
  %498 = load i32, i32* @KAUTH_VNODE_SEARCH, align 4
  %499 = and i32 %497, %498
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %536

501:                                              ; preds = %496
  %502 = load i64, i64* %21, align 8
  %503 = load i64, i64* @FALSE, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %536

505:                                              ; preds = %501
  %506 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %507 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %506, i32 0, i32 1
  %508 = load i64, i64* %507, align 8
  %509 = load i64, i64* @VDIR, align 8
  %510 = icmp eq i64 %508, %509
  br i1 %510, label %511, label %536

511:                                              ; preds = %505
  %512 = load i32, i32* @va_mode, align 4
  %513 = call i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr* %16, i32 %512)
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %530

515:                                              ; preds = %511
  %516 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %16, i32 0, i32 0
  %517 = load i32, i32* %516, align 8
  %518 = load i32, i32* @S_IXUSR, align 4
  %519 = load i32, i32* @S_IXGRP, align 4
  %520 = or i32 %518, %519
  %521 = load i32, i32* @S_IXOTH, align 4
  %522 = or i32 %520, %521
  %523 = and i32 %517, %522
  %524 = load i32, i32* @S_IXUSR, align 4
  %525 = load i32, i32* @S_IXGRP, align 4
  %526 = or i32 %524, %525
  %527 = load i32, i32* @S_IXOTH, align 4
  %528 = or i32 %526, %527
  %529 = icmp eq i32 %523, %528
  br i1 %529, label %530, label %535

530:                                              ; preds = %515, %511
  %531 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %532 = load %struct.TYPE_28__*, %struct.TYPE_28__** %8, align 8
  %533 = load i32, i32* @KAUTH_VNODE_SEARCHBYANYONE, align 4
  %534 = call i32 @vnode_cache_authorized_action(%struct.TYPE_26__* %531, %struct.TYPE_28__* %532, i32 %533)
  br label %535

535:                                              ; preds = %530, %515
  br label %536

536:                                              ; preds = %535, %505, %501, %496
  br label %537

537:                                              ; preds = %536, %376
  %538 = load i64, i64* %22, align 8
  %539 = icmp ne i64 %538, 0
  br i1 %539, label %540, label %543

540:                                              ; preds = %537
  %541 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %542 = call i32 @vnode_put(%struct.TYPE_26__* %541)
  br label %543

543:                                              ; preds = %540, %537
  %544 = load %struct.TYPE_26__*, %struct.TYPE_26__** %9, align 8
  %545 = call i32 (i8*, %struct.TYPE_26__*, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0), %struct.TYPE_26__* %544)
  %546 = load i32, i32* @KAUTH_RESULT_ALLOW, align 4
  store i32 %546, i32* %6, align 4
  br label %547

547:                                              ; preds = %543, %490
  %548 = load i32, i32* %6, align 4
  ret i32 %548
}

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, %struct.TYPE_26__*, ...) #1

declare dso_local %struct.TYPE_27__* @vfs_context_proc(%struct.TYPE_28__*) #1

declare dso_local i64 @vnode_isdir(%struct.TYPE_26__*) #1

declare dso_local i64 @vnode_cache_is_authorized(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

declare dso_local i64 @vnode_authorize_opaque(%struct.TYPE_26__*, i32*, i32, %struct.TYPE_28__*) #1

declare dso_local i64 @vnode_isnamedstream(%struct.TYPE_26__*) #1

declare dso_local i64 @vget_internal(%struct.TYPE_26__*, i32, i32) #1

declare dso_local i64 @vfs_context_issuser(%struct.TYPE_28__*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(%struct.TYPE_26__*, %struct.vnode_attr*, %struct.TYPE_28__*) #1

declare dso_local i32 @VATTR_RETURN(%struct.vnode_attr*, i32, i32) #1

declare dso_local i32 @vnode_vtype(%struct.TYPE_26__*) #1

declare dso_local i32 @vnode_attr_authorize_internal(%struct._vnode_authorize_context*, %struct.TYPE_25__*, i32, i64, i64*, i32, i64) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @kauth_acl_free(i32*) #1

declare dso_local i32 @vnode_put(%struct.TYPE_26__*) #1

declare dso_local i32 @vnode_cache_authorized_action(%struct.TYPE_26__*, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
