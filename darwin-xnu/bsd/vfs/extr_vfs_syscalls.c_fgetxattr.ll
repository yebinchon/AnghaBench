; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fgetxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fgetxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fgetxattr_args = type { i32, i64, i32, i32, i32, i32 }

@XATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fgetxattr(i32 %0, %struct.fgetxattr_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.fgetxattr_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.fgetxattr_args* %1, %struct.fgetxattr_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %18 = load i32, i32* @XATTR_MAXNAMELEN, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %9, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i64 @IS_64BIT_PROCESS(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ %27, %26 ], [ %29, %28 ]
  store i32 %31, i32* %12, align 4
  store i64 0, i64* %13, align 8
  %32 = call i32 @UIO_SIZEOF(i32 1)
  %33 = zext i32 %32 to i64
  %34 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %35 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %36 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %39 = load i32, i32* @XATTR_NOSECURITY, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @XATTR_NODEFAULT, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %37, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %30
  %46 = load i32, i32* @EINVAL, align 4
  store i32 %46, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %136

47:                                               ; preds = %30
  %48 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %49 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @file_vnode(i32 %50, i32* %8)
  store i32 %51, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %15, align 4
  store i32 %54, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %136

55:                                               ; preds = %47
  %56 = load i32, i32* %8, align 4
  %57 = call i32 @vnode_getwithref(i32 %56)
  store i32 %57, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %55
  %60 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %61 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @file_drop(i32 %62)
  %64 = load i32, i32* %15, align 4
  store i32 %64, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %136

65:                                               ; preds = %55
  %66 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %67 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 4
  %69 = trunc i64 %20 to i32
  %70 = call i32 @copyinstr(i32 %68, i8* %22, i32 %69, i64* %14)
  store i32 %70, i32* %15, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %65
  br label %114

74:                                               ; preds = %65
  %75 = call i64 @xattr_protected(i8* %22)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* @EPERM, align 4
  store i32 %78, i32* %15, align 4
  br label %114

79:                                               ; preds = %74
  %80 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %81 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %86 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %84
  %90 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %91 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* @UIO_READ, align 4
  %95 = getelementptr inbounds i8, i8* %34, i64 0
  %96 = trunc i64 %33 to i32
  %97 = call i32* @uio_createwithbuffer(i32 1, i32 %92, i32 %93, i32 %94, i8* %95, i32 %96)
  store i32* %97, i32** %11, align 8
  %98 = load i32*, i32** %11, align 8
  %99 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %100 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %103 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @uio_addiov(i32* %98, i32 %101, i64 %104)
  br label %106

106:                                              ; preds = %89, %84, %79
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %11, align 8
  %109 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %110 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 (...) @vfs_context_current()
  %113 = call i32 @vn_getxattr(i32 %107, i8* %22, i32* %108, i64* %13, i32 %111, i32 %112)
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %106, %77, %73
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @vnode_put(i32 %115)
  %117 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %118 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @file_drop(i32 %119)
  %121 = load i32*, i32** %11, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %131

123:                                              ; preds = %114
  %124 = load %struct.fgetxattr_args*, %struct.fgetxattr_args** %6, align 8
  %125 = getelementptr inbounds %struct.fgetxattr_args, %struct.fgetxattr_args* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = call i64 @uio_resid(i32* %127)
  %129 = sub nsw i64 %126, %128
  %130 = load i64*, i64** %7, align 8
  store i64 %129, i64* %130, align 8
  br label %134

131:                                              ; preds = %114
  %132 = load i64, i64* %13, align 8
  %133 = load i64*, i64** %7, align 8
  store i64 %132, i64* %133, align 8
  br label %134

134:                                              ; preds = %131, %123
  %135 = load i32, i32* %15, align 4
  store i32 %135, i32* %4, align 4
  store i32 1, i32* %17, align 4
  br label %136

136:                                              ; preds = %134, %59, %53, %45
  %137 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %137)
  %138 = load i32, i32* %4, align 4
  ret i32 %138
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @UIO_SIZEOF(i32) #2

declare dso_local i32 @file_vnode(i32, i32*) #2

declare dso_local i32 @vnode_getwithref(i32) #2

declare dso_local i32 @file_drop(i32) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i64*) #2

declare dso_local i64 @xattr_protected(i8*) #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @uio_addiov(i32*, i32, i64) #2

declare dso_local i32 @vn_getxattr(i32, i8*, i32*, i64*, i32, i32) #2

declare dso_local i32 @vfs_context_current(...) #2

declare dso_local i32 @vnode_put(i32) #2

declare dso_local i64 @uio_resid(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
