; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_special_readdir.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/nullfs/extr_null_vnops.c_nullfs_special_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnop_readdir_args = type { i32, i32*, %struct.uio*, %struct.vnode* }
%struct.uio = type { i32 }
%struct.vnode = type { i32 }
%struct.null_mount = type { i32, i32, %struct.vnode* }

@ERANGE = common dso_local global i32 0, align 4
@VNODE_READDIR_EXTENDED = common dso_local global i32 0, align 4
@VNODE_READDIR_REQSEEKOFF = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@NULL_ROOT_INO = common dso_local global i64 0, align 8
@NULL_SECOND_INO = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@NULL_THIRD_INO = common dso_local global i64 0, align 8
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnop_readdir_args*)* @nullfs_special_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nullfs_special_readdir(%struct.vnop_readdir_args* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vnop_readdir_args*, align 8
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.null_mount*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store %struct.vnop_readdir_args* %0, %struct.vnop_readdir_args** %3, align 8
  %12 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %13 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %12, i32 0, i32 3
  %14 = load %struct.vnode*, %struct.vnode** %13, align 8
  store %struct.vnode* %14, %struct.vnode** %4, align 8
  %15 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %16 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %15, i32 0, i32 2
  %17 = load %struct.uio*, %struct.uio** %16, align 8
  store %struct.uio* %17, %struct.uio** %5, align 8
  %18 = load %struct.vnode*, %struct.vnode** %4, align 8
  %19 = call i32 @vnode_mount(%struct.vnode* %18)
  %20 = call %struct.null_mount* @MOUNTTONULLMOUNT(i32 %19)
  store %struct.null_mount* %20, %struct.null_mount** %6, align 8
  %21 = load %struct.uio*, %struct.uio** %5, align 8
  %22 = call i32 @uio_offset(%struct.uio* %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* @ERANGE, align 4
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %24 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %25 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VNODE_READDIR_EXTENDED, align 4
  %28 = load i32, i32* @VNODE_READDIR_REQSEEKOFF, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %26, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %2, align 4
  br label %147

34:                                               ; preds = %1
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %59

37:                                               ; preds = %34
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %40 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %39, i32 0, i32 2
  %41 = load %struct.vnode*, %struct.vnode** %40, align 8
  %42 = icmp eq %struct.vnode* %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i64, i64* @NULL_ROOT_INO, align 8
  store i64 %44, i64* %10, align 8
  br label %47

45:                                               ; preds = %37
  %46 = load i64, i64* @NULL_SECOND_INO, align 8
  store i64 %46, i64* %10, align 8
  br label %47

47:                                               ; preds = %45, %43
  %48 = load i64, i64* %10, align 8
  %49 = load %struct.uio*, %struct.uio** %5, align 8
  %50 = call i32 @store_entry_special(i64 %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.uio* %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  br label %127

54:                                               ; preds = %47
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %54, %34
  %60 = load i32, i32* %7, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %75

62:                                               ; preds = %59
  %63 = load i64, i64* @NULL_ROOT_INO, align 8
  store i64 %63, i64* %10, align 8
  %64 = load i64, i64* %10, align 8
  %65 = load %struct.uio*, %struct.uio** %5, align 8
  %66 = call i32 @store_entry_special(i64 %64, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), %struct.uio* %65)
  store i32 %66, i32* %8, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  br label %127

70:                                               ; preds = %62
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %9, align 4
  br label %75

75:                                               ; preds = %70, %59
  %76 = load i32, i32* %7, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %126

78:                                               ; preds = %75
  %79 = load %struct.vnode*, %struct.vnode** %4, align 8
  %80 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %81 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %80, i32 0, i32 2
  %82 = load %struct.vnode*, %struct.vnode** %81, align 8
  %83 = icmp eq %struct.vnode* %79, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i64, i64* @NULL_SECOND_INO, align 8
  store i64 %85, i64* %10, align 8
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8** %11, align 8
  br label %102

86:                                               ; preds = %78
  %87 = load i64, i64* @NULL_THIRD_INO, align 8
  store i64 %87, i64* %10, align 8
  %88 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %89 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %92 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @vnode_getwithvid(i32 %90, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %86
  store i32 0, i32* %8, align 4
  br label %127

97:                                               ; preds = %86
  %98 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %99 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @vnode_getname_printable(i32 %100)
  store i8* %101, i8** %11, align 8
  br label %102

102:                                              ; preds = %97, %84
  %103 = load i64, i64* %10, align 8
  %104 = load i8*, i8** %11, align 8
  %105 = load %struct.uio*, %struct.uio** %5, align 8
  %106 = call i32 @store_entry_special(i64 %103, i8* %104, %struct.uio* %105)
  store i32 %106, i32* %8, align 4
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @NULL_THIRD_INO, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load i8*, i8** %11, align 8
  %112 = call i32 @vnode_putname_printable(i8* %111)
  %113 = load %struct.null_mount*, %struct.null_mount** %6, align 8
  %114 = getelementptr inbounds %struct.null_mount, %struct.null_mount* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @vnode_put(i32 %115)
  br label %117

117:                                              ; preds = %110, %102
  %118 = load i32, i32* %8, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %117
  br label %127

121:                                              ; preds = %117
  %122 = load i32, i32* %7, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %9, align 4
  br label %126

126:                                              ; preds = %121, %75
  br label %127

127:                                              ; preds = %126, %120, %96, %69, %53
  %128 = load i32, i32* %8, align 4
  %129 = load i32, i32* @EMSGSIZE, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %132

131:                                              ; preds = %127
  store i32 0, i32* %8, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = load %struct.uio*, %struct.uio** %5, align 8
  %134 = load i32, i32* %7, align 4
  %135 = call i32 @uio_setoffset(%struct.uio* %133, i32 %134)
  %136 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %137 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = icmp ne i32* %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %132
  %141 = load i32, i32* %9, align 4
  %142 = load %struct.vnop_readdir_args*, %struct.vnop_readdir_args** %3, align 8
  %143 = getelementptr inbounds %struct.vnop_readdir_args, %struct.vnop_readdir_args* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  store i32 %141, i32* %144, align 4
  br label %145

145:                                              ; preds = %140, %132
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %2, align 4
  br label %147

147:                                              ; preds = %145, %32
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.null_mount* @MOUNTTONULLMOUNT(i32) #1

declare dso_local i32 @vnode_mount(%struct.vnode*) #1

declare dso_local i32 @uio_offset(%struct.uio*) #1

declare dso_local i32 @store_entry_special(i64, i8*, %struct.uio*) #1

declare dso_local i64 @vnode_getwithvid(i32, i32) #1

declare dso_local i8* @vnode_getname_printable(i32) #1

declare dso_local i32 @vnode_putname_printable(i8*) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @uio_setoffset(%struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
