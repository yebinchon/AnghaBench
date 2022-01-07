; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_check_permissions.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_exec.c_exec_check_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i64, i32, i32, i64, %struct.vnode_attr*, %struct.vnode* }
%struct.vnode_attr = type { i32, i64 }
%struct.vnode = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@va_fsid = common dso_local global i32 0, align 4
@va_fsid64 = common dso_local global i32 0, align 4
@va_fileid = common dso_local global i32 0, align 4
@va_data_size = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@MNT_NOSUID = common dso_local global i32 0, align 4
@P_LTRACED = common dso_local global i32 0, align 4
@VSUID = common dso_local global i32 0, align 4
@VSGID = common dso_local global i32 0, align 4
@IMGPF_ALLOW_DATA_EXEC = common dso_local global i32 0, align 4
@IMGPF_DISABLE_ASLR = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@ETXTBSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @exec_check_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_check_permissions(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.vnode_attr*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %9 = load %struct.image_params*, %struct.image_params** %3, align 8
  %10 = getelementptr inbounds %struct.image_params, %struct.image_params* %9, i32 0, i32 5
  %11 = load %struct.vnode*, %struct.vnode** %10, align 8
  store %struct.vnode* %11, %struct.vnode** %4, align 8
  %12 = load %struct.image_params*, %struct.image_params** %3, align 8
  %13 = getelementptr inbounds %struct.image_params, %struct.image_params* %12, i32 0, i32 4
  %14 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  store %struct.vnode_attr* %14, %struct.vnode_attr** %5, align 8
  %15 = load %struct.image_params*, %struct.image_params** %3, align 8
  %16 = getelementptr inbounds %struct.image_params, %struct.image_params* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.TYPE_5__* @vfs_context_proc(i32 %17)
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = call i32 @vnode_isreg(%struct.vnode* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @EACCES, align 4
  store i32 %23, i32* %2, align 4
  br label %156

24:                                               ; preds = %1
  %25 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %26 = call i32 @VATTR_INIT(%struct.vnode_attr* %25)
  %27 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %28 = load i32, i32* @va_uid, align 4
  %29 = call i32 @VATTR_WANTED(%struct.vnode_attr* %27, i32 %28)
  %30 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %31 = load i32, i32* @va_gid, align 4
  %32 = call i32 @VATTR_WANTED(%struct.vnode_attr* %30, i32 %31)
  %33 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %34 = load i32, i32* @va_mode, align 4
  %35 = call i32 @VATTR_WANTED(%struct.vnode_attr* %33, i32 %34)
  %36 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %37 = load i32, i32* @va_fsid, align 4
  %38 = call i32 @VATTR_WANTED(%struct.vnode_attr* %36, i32 %37)
  %39 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %40 = load i32, i32* @va_fsid64, align 4
  %41 = call i32 @VATTR_WANTED(%struct.vnode_attr* %39, i32 %40)
  %42 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %43 = load i32, i32* @va_fileid, align 4
  %44 = call i32 @VATTR_WANTED(%struct.vnode_attr* %42, i32 %43)
  %45 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %46 = load i32, i32* @va_data_size, align 4
  %47 = call i32 @VATTR_WANTED(%struct.vnode_attr* %45, i32 %46)
  %48 = load %struct.vnode*, %struct.vnode** %4, align 8
  %49 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %50 = load %struct.image_params*, %struct.image_params** %3, align 8
  %51 = getelementptr inbounds %struct.image_params, %struct.image_params* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @vnode_getattr(%struct.vnode* %48, %struct.vnode_attr* %49, i32 %52)
  store i32 %53, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %24
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %2, align 4
  br label %156

57:                                               ; preds = %24
  %58 = load %struct.vnode*, %struct.vnode** %4, align 8
  %59 = call i32 @vnode_mount(%struct.vnode* %58)
  %60 = call i32 @vfs_authopaque(i32 %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %75, label %62

62:                                               ; preds = %57
  %63 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %64 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @S_IXUSR, align 4
  %67 = load i32, i32* @S_IXGRP, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @S_IXOTH, align 4
  %70 = or i32 %68, %69
  %71 = and i32 %65, %70
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %62
  %74 = load i32, i32* @EACCES, align 4
  store i32 %74, i32* %2, align 4
  br label %156

75:                                               ; preds = %62, %57
  %76 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %77 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @ENOEXEC, align 4
  store i32 %81, i32* %2, align 4
  br label %156

82:                                               ; preds = %75
  %83 = load %struct.image_params*, %struct.image_params** %3, align 8
  %84 = getelementptr inbounds %struct.image_params, %struct.image_params* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %86 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.image_params*, %struct.image_params** %3, align 8
  %89 = getelementptr inbounds %struct.image_params, %struct.image_params* %88, i32 0, i32 0
  store i64 %87, i64* %89, align 8
  %90 = load %struct.vnode*, %struct.vnode** %4, align 8
  %91 = getelementptr inbounds %struct.vnode, %struct.vnode* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MNT_NOSUID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %105, label %98

98:                                               ; preds = %82
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @P_LTRACED, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %98, %82
  %106 = load i32, i32* @VSUID, align 4
  %107 = load i32, i32* @VSGID, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %111 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %105, %98
  %115 = load %struct.vnode_attr*, %struct.vnode_attr** %5, align 8
  %116 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @VSUID, align 4
  %119 = load i32, i32* @VSGID, align 4
  %120 = or i32 %118, %119
  %121 = and i32 %117, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load i32, i32* @IMGPF_ALLOW_DATA_EXEC, align 4
  %125 = load i32, i32* @IMGPF_DISABLE_ASLR, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load %struct.image_params*, %struct.image_params** %3, align 8
  %129 = getelementptr inbounds %struct.image_params, %struct.image_params* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = and i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %123, %114
  %133 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  store i32 %133, i32* %8, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @P_LTRACED, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %140, %132
  %145 = load %struct.vnode*, %struct.vnode** %4, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.image_params*, %struct.image_params** %3, align 8
  %148 = getelementptr inbounds %struct.image_params, %struct.image_params* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @vnode_authorize(%struct.vnode* %145, i32* null, i32 %146, i32 %149)
  store i32 %150, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %7, align 4
  store i32 %153, i32* %2, align 4
  br label %156

154:                                              ; preds = %144
  %155 = load i32, i32* %7, align 4
  store i32 %155, i32* %2, align 4
  br label %156

156:                                              ; preds = %154, %152, %80, %73, %55, %22
  %157 = load i32, i32* %2, align 4
  ret i32 %157
}

declare dso_local %struct.TYPE_5__* @vfs_context_proc(i32) #1

declare dso_local i32 @vnode_isreg(%struct.vnode*) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_WANTED(%struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_getattr(%struct.vnode*, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vfs_authopaque(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @vnode_authorize(%struct.vnode*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
