; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fd_rdwr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_descrip.c_fd_rdwr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileproc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfs_context = type { i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@DTYPE_PIPE = common dso_local global i64 0, align 8
@DTYPE_SOCKET = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@UIO_WRITE = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_APPEND = common dso_local global i32 0, align 4
@FOF_OFFSET = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_rdwr(i32 %0, i32 %1, i32 %2, i64 %3, i32 %4, i32 %5, i32 %6, i64* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64*, align 8
  %18 = alloca %struct.fileproc*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.vfs_context, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i64 %3, i64* %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i64* %7, i64** %17, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32* null, i32** %23, align 8
  %30 = call i32 @UIO_SIZEOF(i32 1)
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %24, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %25, align 8
  %34 = call %struct.vfs_context* (...) @vfs_context_current()
  %35 = bitcast %struct.vfs_context* %26 to i8*
  %36 = bitcast %struct.vfs_context* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %35, i8* align 4 %36, i64 4, i1 false)
  store i32 0, i32* %27, align 4
  %37 = call i32 (...) @current_proc()
  store i32 %37, i32* %19, align 4
  %38 = load i32, i32* %19, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @fp_lookup(i32 %38, i32 %39, %struct.fileproc** %18, i32 0)
  store i32 %40, i32* %20, align 4
  %41 = load i32, i32* %20, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i32, i32* %20, align 4
  store i32 %44, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

45:                                               ; preds = %8
  %46 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %47 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DTYPE_VNODE, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %65

51:                                               ; preds = %45
  %52 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %53 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DTYPE_PIPE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %59 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @DTYPE_SOCKET, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %20, align 4
  br label %169

65:                                               ; preds = %57, %51, %45
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @UIO_WRITE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %78

69:                                               ; preds = %65
  %70 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %71 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FWRITE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = load i32, i32* @EBADF, align 4
  store i32 %77, i32* %20, align 4
  br label %169

78:                                               ; preds = %69, %65
  %79 = load i32, i32* %11, align 4
  %80 = load i32, i32* @UIO_READ, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %78
  %83 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %84 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* @FREAD, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %82
  %90 = load i32, i32* @EBADF, align 4
  store i32 %90, i32* %20, align 4
  br label %169

91:                                               ; preds = %82, %78
  %92 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %93 = getelementptr inbounds %struct.fileproc, %struct.fileproc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = getelementptr inbounds %struct.vfs_context, %struct.vfs_context* %26, i32 0, i32 0
  store i32 %96, i32* %97, align 4
  %98 = load i32, i32* %14, align 4
  %99 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %91
  %102 = load i32, i32* %19, align 4
  %103 = call i64 @proc_is64bit(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %22, align 4
  br label %113

111:                                              ; preds = %91
  %112 = load i32, i32* @UIO_SYSSPACE, align 4
  store i32 %112, i32* %22, align 4
  br label %113

113:                                              ; preds = %111, %109
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* %22, align 4
  %116 = load i32, i32* %11, align 4
  %117 = getelementptr inbounds i8, i8* %33, i64 0
  %118 = trunc i64 %31 to i32
  %119 = call i32* @uio_createwithbuffer(i32 1, i32 %114, i32 %115, i32 %116, i8* %117, i32 %118)
  store i32* %119, i32** %23, align 8
  %120 = load i32*, i32** %23, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load i64, i64* %13, align 8
  %123 = call i32 @uio_addiov(i32* %120, i32 %121, i64 %122)
  %124 = load i32, i32* %16, align 4
  %125 = load i32, i32* @IO_APPEND, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %130, label %128

128:                                              ; preds = %113
  %129 = load i32, i32* @FOF_OFFSET, align 4
  store i32 %129, i32* %21, align 4
  br label %130

130:                                              ; preds = %128, %113
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @UIO_WRITE, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %146

134:                                              ; preds = %130
  %135 = load i32*, i32** %23, align 8
  %136 = call i64 @uio_resid(i32* %135)
  store i64 %136, i64* %29, align 8
  %137 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %138 = load i32*, i32** %23, align 8
  %139 = load i32, i32* %21, align 4
  %140 = call i32 @fo_write(%struct.fileproc* %137, i32* %138, i32 %139, %struct.vfs_context* %26)
  store i32 %140, i32* %20, align 4
  %141 = load i32*, i32** %23, align 8
  %142 = call i64 @uio_resid(i32* %141)
  %143 = load i64, i64* %29, align 8
  %144 = icmp slt i64 %142, %143
  %145 = zext i1 %144 to i32
  store i32 %145, i32* %27, align 4
  br label %151

146:                                              ; preds = %130
  %147 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = load i32, i32* %21, align 4
  %150 = call i32 @fo_read(%struct.fileproc* %147, i32* %148, i32 %149, %struct.vfs_context* %26)
  store i32 %150, i32* %20, align 4
  br label %151

151:                                              ; preds = %146, %134
  %152 = load i64*, i64** %17, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %151
  %155 = load i32*, i32** %23, align 8
  %156 = call i64 @uio_resid(i32* %155)
  %157 = load i64*, i64** %17, align 8
  store i64 %156, i64* %157, align 8
  br label %168

158:                                              ; preds = %151
  %159 = load i32*, i32** %23, align 8
  %160 = call i64 @uio_resid(i32* %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %167

162:                                              ; preds = %158
  %163 = load i32, i32* %20, align 4
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i32, i32* @EIO, align 4
  store i32 %166, i32* %20, align 4
  br label %167

167:                                              ; preds = %165, %162, %158
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168, %89, %76, %63
  %170 = load i32, i32* %27, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32, i32* %19, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %176 = call i32 @fp_drop_written(i32 %173, i32 %174, %struct.fileproc* %175)
  br label %182

177:                                              ; preds = %169
  %178 = load i32, i32* %19, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load %struct.fileproc*, %struct.fileproc** %18, align 8
  %181 = call i32 @fp_drop(i32 %178, i32 %179, %struct.fileproc* %180, i32 0)
  br label %182

182:                                              ; preds = %177, %172
  %183 = load i32, i32* %20, align 4
  store i32 %183, i32* %9, align 4
  store i32 1, i32* %28, align 4
  br label %184

184:                                              ; preds = %182, %43
  %185 = load i8*, i8** %24, align 8
  call void @llvm.stackrestore(i8* %185)
  %186 = load i32, i32* %9, align 4
  ret i32 %186
}

declare dso_local i32 @UIO_SIZEOF(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.vfs_context* @vfs_context_current(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @current_proc(...) #1

declare dso_local i32 @fp_lookup(i32, i32, %struct.fileproc**, i32) #1

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #1

declare dso_local i64 @proc_is64bit(i32) #1

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @uio_addiov(i32*, i32, i64) #1

declare dso_local i64 @uio_resid(i32*) #1

declare dso_local i32 @fo_write(%struct.fileproc*, i32*, i32, %struct.vfs_context*) #1

declare dso_local i32 @fo_read(%struct.fileproc*, i32*, i32, %struct.vfs_context*) #1

declare dso_local i32 @fp_drop_written(i32, i32, %struct.fileproc*) #1

declare dso_local i32 @fp_drop(i32, i32, %struct.fileproc*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
