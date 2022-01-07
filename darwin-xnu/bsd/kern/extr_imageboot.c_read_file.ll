; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_read_file.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_imageboot.c_read_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.vnode* }
%struct.vnode = type { i32 }

@LOOKUP = common dso_local global i32 0, align 4
@OP_OPEN = common dso_local global i32 0, align 4
@LOCKLEAF = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"namei failed (%s)\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get vnode size\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"negative file size\00", align 1
@FREAD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to open vnode\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"vn_rdwr() failed\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"vn_rdwr resid = %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i64*)* @read_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_file(i8* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nameidata, align 8
  %9 = alloca %struct.vnode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i64* %2, i64** %6, align 8
  store i32 0, i32* %7, align 4
  %17 = bitcast %struct.nameidata* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false)
  store %struct.vnode* null, %struct.vnode** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %18 = call i32 (...) @vfs_context_kernel()
  store i32 %18, i32* %14, align 4
  %19 = load i32, i32* %14, align 4
  %20 = call i32 @vfs_context_proc(i32 %19)
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %14, align 4
  %22 = call i32 @vfs_context_ucred(i32 %21)
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* @LOOKUP, align 4
  %24 = load i32, i32* @OP_OPEN, align 4
  %25 = load i32, i32* @LOCKLEAF, align 4
  %26 = load i32, i32* @UIO_SYSSPACE, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @CAST_USER_ADDR_T(i8* %27)
  %29 = load i32, i32* %14, align 4
  %30 = call i32 @NDINIT(%struct.nameidata* %8, i32 %23, i32 %24, i32 %25, i32 %26, i32 %28, i32 %29)
  %31 = call i32 @namei(%struct.nameidata* %8)
  store i32 %31, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %3
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %100

36:                                               ; preds = %3
  %37 = call i32 @nameidone(%struct.nameidata* %8)
  %38 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %8, i32 0, i32 0
  %39 = load %struct.vnode*, %struct.vnode** %38, align 8
  store %struct.vnode* %39, %struct.vnode** %9, align 8
  %40 = load %struct.vnode*, %struct.vnode** %9, align 8
  %41 = load i32, i32* %14, align 4
  %42 = call i32 @vnode_size(%struct.vnode* %40, i64* %10, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %100

46:                                               ; preds = %36
  %47 = load i64, i64* %10, align 8
  %48 = icmp ult i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = call i32 @panic(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %46
  %52 = load %struct.vnode*, %struct.vnode** %9, align 8
  %53 = load i32, i32* @FREAD, align 4
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @VNOP_OPEN(%struct.vnode* %52, i32 %53, i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %100

59:                                               ; preds = %51
  store i32 1, i32* %13, align 4
  %60 = load i64*, i64** %6, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %59
  %64 = load i64*, i64** %6, align 8
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = load i64*, i64** %6, align 8
  %70 = load i64, i64* %69, align 8
  store i64 %70, i64* %10, align 8
  br label %71

71:                                               ; preds = %68, %63, %59
  %72 = load i64, i64* %10, align 8
  %73 = call i8* @kalloc(i64 %72)
  store i8* %73, i8** %12, align 8
  %74 = load i8*, i8** %12, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  store i32 %77, i32* %7, align 4
  br label %100

78:                                               ; preds = %71
  %79 = load i32, i32* @UIO_READ, align 4
  %80 = load %struct.vnode*, %struct.vnode** %9, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = ptrtoint i8* %81 to i32
  %83 = load i64, i64* %10, align 8
  %84 = load i32, i32* @UIO_SYSSPACE, align 4
  %85 = load i32, i32* @IO_NODELOCKED, align 4
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @vn_rdwr(i32 %79, %struct.vnode* %80, i32 %82, i64 %83, i32 0, i32 %84, i32 %85, i32 %86, i32* %11, i32 %87)
  store i32 %88, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %78
  %91 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  br label %100

92:                                               ; preds = %78
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i32, i32* %11, align 4
  %97 = call i32 (i8*, ...) @AUTHPRNT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @EINVAL, align 4
  store i32 %98, i32* %7, align 4
  br label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %95, %90, %76, %57, %44, %33
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load %struct.vnode*, %struct.vnode** %9, align 8
  %105 = load i32, i32* @FREAD, align 4
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @VNOP_CLOSE(%struct.vnode* %104, i32 %105, i32 %106)
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.vnode*, %struct.vnode** %9, align 8
  %110 = icmp ne %struct.vnode* %109, null
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load %struct.vnode*, %struct.vnode** %9, align 8
  %113 = call i32 @vnode_put(%struct.vnode* %112)
  store %struct.vnode* null, %struct.vnode** %9, align 8
  br label %114

114:                                              ; preds = %111, %108
  %115 = load i32, i32* %7, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @kfree_safe(i8* %118)
  br label %125

120:                                              ; preds = %114
  %121 = load i8*, i8** %12, align 8
  %122 = load i8**, i8*** %5, align 8
  store i8* %121, i8** %122, align 8
  %123 = load i64, i64* %10, align 8
  %124 = load i64*, i64** %6, align 8
  store i64 %123, i64* %124, align 8
  br label %125

125:                                              ; preds = %120, %117
  %126 = load i32, i32* %7, align 4
  ret i32 %126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vfs_context_kernel(...) #2

declare dso_local i32 @vfs_context_proc(i32) #2

declare dso_local i32 @vfs_context_ucred(i32) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @AUTHPRNT(i8*, ...) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32 @vnode_size(%struct.vnode*, i64*, i32) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @VNOP_OPEN(%struct.vnode*, i32, i32) #2

declare dso_local i8* @kalloc(i64) #2

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i32, i64, i32, i32, i32, i32, i32*, i32) #2

declare dso_local i32 @VNOP_CLOSE(%struct.vnode*, i32, i32) #2

declare dso_local i32 @vnode_put(%struct.vnode*) #2

declare dso_local i32 @kfree_safe(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
