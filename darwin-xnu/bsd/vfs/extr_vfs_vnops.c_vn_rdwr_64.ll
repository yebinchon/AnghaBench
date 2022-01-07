; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_rdwr_64.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_rdwr_64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { i32 }
%struct.vfs_context = type { i32, i32 }

@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@IO_SWAP_DISPATCH = common dso_local global i32 0, align 4
@IO_SKIP_ENCRYPTION = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IO_NOAUTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_rdwr_64(i32 %0, %struct.vnode* %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i64* %8, i32 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca %struct.vfs_context, align 4
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  store i32 %0, i32* %11, align 4
  store %struct.vnode* %1, %struct.vnode** %12, align 8
  store i32 %2, i32* %13, align 4
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i64* %8, i64** %19, align 8
  store i32 %9, i32* %20, align 4
  store i32 0, i32* %24, align 4
  %27 = call i32 @UIO_SIZEOF(i32 1)
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %25, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %26, align 8
  %31 = call i32 (...) @current_thread()
  %32 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %23, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load i32, i32* %18, align 4
  %34 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %23, i32 0, i32 0
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %16, align 4
  %36 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %10
  %39 = load i32, i32* %20, align 4
  %40 = call i64 @proc_is64bit(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %46

44:                                               ; preds = %38
  %45 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  store i32 %47, i32* %22, align 4
  br label %50

48:                                               ; preds = %10
  %49 = load i32, i32* @UIO_SYSSPACE, align 4
  store i32 %49, i32* %22, align 4
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %22, align 4
  %53 = load i32, i32* %11, align 4
  %54 = getelementptr inbounds i8, i8* %30, i64 0
  %55 = trunc i64 %28 to i32
  %56 = call i32 @uio_createwithbuffer(i32 1, i32 %51, i32 %52, i32 %53, i8* %54, i32 %55)
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %21, align 4
  %58 = load i32, i32* %13, align 4
  %59 = load i64, i64* %14, align 8
  %60 = call i32 @uio_addiov(i32 %57, i32 %58, i64 %59)
  %61 = load i32, i32* %24, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %106

63:                                               ; preds = %50
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @UIO_READ, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %86

67:                                               ; preds = %63
  %68 = load %struct.vnode*, %struct.vnode** %12, align 8
  %69 = call i64 @vnode_isswap(%struct.vnode* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* @IO_SWAP_DISPATCH, align 4
  %74 = and i32 %72, %73
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load %struct.vnode*, %struct.vnode** %12, align 8
  %78 = load i32, i32* %21, align 4
  %79 = call i32 @vn_read_swapfile(%struct.vnode* %77, i32 %78)
  store i32 %79, i32* %24, align 4
  br label %85

80:                                               ; preds = %71, %67
  %81 = load %struct.vnode*, %struct.vnode** %12, align 8
  %82 = load i32, i32* %21, align 4
  %83 = load i32, i32* %17, align 4
  %84 = call i32 @VNOP_READ(%struct.vnode* %81, i32 %82, i32 %83, %struct.vfs_context* %23)
  store i32 %84, i32* %24, align 4
  br label %85

85:                                               ; preds = %80, %76
  br label %105

86:                                               ; preds = %63
  %87 = load %struct.vnode*, %struct.vnode** %12, align 8
  %88 = call i64 @vnode_isswap(%struct.vnode* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32, i32* %17, align 4
  %92 = load i32, i32* @IO_SWAP_DISPATCH, align 4
  %93 = load i32, i32* @IO_SKIP_ENCRYPTION, align 4
  %94 = or i32 %92, %93
  %95 = and i32 %91, %94
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* @EPERM, align 4
  store i32 %98, i32* %24, align 4
  br label %104

99:                                               ; preds = %90, %86
  %100 = load %struct.vnode*, %struct.vnode** %12, align 8
  %101 = load i32, i32* %21, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @VNOP_WRITE(%struct.vnode* %100, i32 %101, i32 %102, %struct.vfs_context* %23)
  store i32 %103, i32* %24, align 4
  br label %104

104:                                              ; preds = %99, %97
  br label %105

105:                                              ; preds = %104, %85
  br label %106

106:                                              ; preds = %105, %50
  %107 = load i64*, i64** %19, align 8
  %108 = icmp ne i64* %107, null
  br i1 %108, label %109, label %113

109:                                              ; preds = %106
  %110 = load i32, i32* %21, align 4
  %111 = call i64 @uio_resid(i32 %110)
  %112 = load i64*, i64** %19, align 8
  store i64 %111, i64* %112, align 8
  br label %123

113:                                              ; preds = %106
  %114 = load i32, i32* %21, align 4
  %115 = call i64 @uio_resid(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* %24, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = load i32, i32* @EIO, align 4
  store i32 %121, i32* %24, align 4
  br label %122

122:                                              ; preds = %120, %117, %113
  br label %123

123:                                              ; preds = %122, %109
  %124 = load i32, i32* %24, align 4
  %125 = load i8*, i8** %25, align 8
  call void @llvm.stackrestore(i8* %125)
  ret i32 %124
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @current_thread(...) #1

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #1

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32 @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32, i32, i64) #1

declare dso_local i64 @vnode_isswap(%struct.vnode*) #1

declare dso_local i32 @vn_read_swapfile(%struct.vnode*, i32) #1

declare dso_local i32 @VNOP_READ(%struct.vnode*, i32, i32, %struct.vfs_context*) #1

declare dso_local i32 @VNOP_WRITE(%struct.vnode*, i32, i32, %struct.vfs_context*) #1

declare dso_local i64 @uio_resid(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
