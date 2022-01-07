; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/extr_vcfilesys.c_vc_hostfs_readdir_r.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/vmcs_host/linux/extr_vcfilesys.c_vc_hostfs_readdir_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_dirent = type { i8*, i32, i32, i32, i32 }
%struct.fs_dir = type { i8*, i64, i32 }
%struct.dirent = type { i32 }
%struct.stat = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"vc_hostfs_readdir_r(%p)\00", align 1
@ATTR_NORMAL = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@ATTR_RDONLY = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ATTR_DIRENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"vc_hostfs_readdir_r() = '%s', %x, %x\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"vc_hostfs_readdir_r() = NULL\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.fs_dirent* @vc_hostfs_readdir_r(i8* %0, %struct.fs_dirent* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fs_dirent*, align 8
  %5 = alloca %struct.fs_dir*, align 8
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca %struct.stat, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fs_dirent* %1, %struct.fs_dirent** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.fs_dir*
  store %struct.fs_dir* %10, %struct.fs_dir** %5, align 8
  %11 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %12 = call i32 (i8*, ...) @DEBUG_MINOR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.fs_dir* %11)
  %13 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %14 = icmp ne %struct.fs_dir* %13, null
  br i1 %14, label %15, label %132

15:                                               ; preds = %2
  %16 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %17 = icmp ne %struct.fs_dirent* %16, null
  br i1 %17, label %18, label %132

18:                                               ; preds = %15
  br label %19

19:                                               ; preds = %121, %18
  %20 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %21 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.dirent* @readdir(i32 %22)
  store %struct.dirent* %23, %struct.dirent** %6, align 8
  %24 = icmp ne %struct.dirent* %23, null
  br i1 %24, label %25, label %122

25:                                               ; preds = %19
  %26 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %27 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %30 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i8, i8* %28, i64 %31
  store i8 47, i8* %32, align 1
  %33 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %34 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load %struct.dirent*, %struct.dirent** %6, align 8
  %37 = getelementptr inbounds %struct.dirent, %struct.dirent* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %40 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add i64 %41, 1
  %43 = call i32 @vcos_safe_strcpy(i8* %35, i32 %38, i32 8, i64 %42)
  %44 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %45 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @stat(i8* %46, %struct.stat* %7)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %49 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %52 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = getelementptr inbounds i8, i8* %50, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %8, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %121

57:                                               ; preds = %25
  %58 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %59 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load %struct.dirent*, %struct.dirent** %6, align 8
  %62 = getelementptr inbounds %struct.dirent, %struct.dirent* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @vcos_safe_strcpy(i8* %60, i32 %63, i32 8, i64 0)
  %65 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ule i32 %66, -1
  br i1 %67, label %68, label %71

68:                                               ; preds = %57
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %68
  %73 = phi i32 [ %70, %68 ], [ -1, %71 ]
  %74 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %75 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load i32, i32* @ATTR_NORMAL, align 4
  %77 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %78 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @S_IWUSR, align 4
  %82 = and i32 %80, %81
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %72
  %85 = load i32, i32* @ATTR_RDONLY, align 4
  %86 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %87 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 4
  br label %90

90:                                               ; preds = %84, %72
  %91 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @S_IFDIR, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %90
  %97 = load i32, i32* @ATTR_DIRENT, align 4
  %98 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %99 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %96, %90
  %103 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %106 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %105, i32 0, i32 4
  store i32 %104, i32* %106, align 4
  %107 = getelementptr inbounds %struct.stat, %struct.stat* %7, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %110 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 8
  %111 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %112 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %115 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  %118 = getelementptr inbounds %struct.fs_dirent, %struct.fs_dirent* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i8*, ...) @DEBUG_MINOR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i8* %113, i32 %116, i32 %119)
  br label %122

121:                                              ; preds = %25
  br label %19

122:                                              ; preds = %102, %19
  %123 = load %struct.dirent*, %struct.dirent** %6, align 8
  %124 = icmp ne %struct.dirent* %123, null
  br i1 %124, label %131, label %125

125:                                              ; preds = %122
  %126 = call i32 (i8*, ...) @DEBUG_MINOR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %127 = load %struct.fs_dir*, %struct.fs_dir** %5, align 8
  %128 = getelementptr inbounds %struct.fs_dir, %struct.fs_dir* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @rewinddir(i32 %129)
  store %struct.fs_dirent* null, %struct.fs_dirent** %4, align 8
  br label %131

131:                                              ; preds = %125, %122
  br label %133

132:                                              ; preds = %15, %2
  store %struct.fs_dirent* null, %struct.fs_dirent** %4, align 8
  br label %133

133:                                              ; preds = %132, %131
  %134 = load %struct.fs_dirent*, %struct.fs_dirent** %4, align 8
  ret %struct.fs_dirent* %134
}

declare dso_local i32 @DEBUG_MINOR(i8*, ...) #1

declare dso_local %struct.dirent* @readdir(i32) #1

declare dso_local i32 @vcos_safe_strcpy(i8*, i32, i32, i64) #1

declare dso_local i32 @stat(i8*, %struct.stat*) #1

declare dso_local i32 @rewinddir(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
