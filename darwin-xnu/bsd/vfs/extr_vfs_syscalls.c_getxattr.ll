; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getxattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_getxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getxattr_args = type { i32, i32, i32, i32, i32, i32 }
%struct.nameidata = type { i32 }

@XATTR_MAXNAMELEN = common dso_local global i32 0, align 4
@UIO_USERSPACE64 = common dso_local global i32 0, align 4
@UIO_USERSPACE32 = common dso_local global i32 0, align 4
@XATTR_NOSECURITY = common dso_local global i32 0, align 4
@XATTR_NODEFAULT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XATTR_NOFOLLOW = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@LOOKUP = common dso_local global i32 0, align 4
@OP_GETXATTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"com.apple.system.Security\00", align 1
@EPERM = common dso_local global i32 0, align 4
@XATTR_MAXSIZE = common dso_local global i64 0, align 8
@UIO_READ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getxattr(i32 %0, %struct.getxattr_args* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.getxattr_args*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.getxattr_args* %1, %struct.getxattr_args** %6, align 8
  store i64* %2, i64** %7, align 8
  %21 = load i32, i32* @XATTR_MAXNAMELEN, align 4
  %22 = add nsw i32 %21, 1
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = call i32 (...) @vfs_context_current()
  store i32 %26, i32* %12, align 4
  store i32* null, i32** %13, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i64 @IS_64BIT_PROCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %3
  %31 = load i32, i32* @UIO_USERSPACE64, align 4
  br label %34

32:                                               ; preds = %3
  %33 = load i32, i32* @UIO_USERSPACE32, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %14, align 4
  store i64 0, i64* %15, align 8
  %36 = call i32 @UIO_SIZEOF(i32 1)
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %19, align 8
  %39 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %40 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @XATTR_NOSECURITY, align 4
  %43 = load i32, i32* @XATTR_NODEFAULT, align 4
  %44 = or i32 %42, %43
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %174

49:                                               ; preds = %34
  %50 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %51 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @XATTR_NOFOLLOW, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  br label %59

57:                                               ; preds = %49
  %58 = load i32, i32* @FOLLOW, align 4
  br label %59

59:                                               ; preds = %57, %56
  %60 = phi i32 [ 0, %56 ], [ %58, %57 ]
  store i32 %60, i32* %17, align 4
  %61 = load i32, i32* @LOOKUP, align 4
  %62 = load i32, i32* @OP_GETXATTR, align 4
  %63 = load i32, i32* %17, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %66 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @NDINIT(%struct.nameidata* %9, i32 %61, i32 %62, i32 %63, i32 %64, i32 %67, i32 %68)
  %70 = call i32 @namei(%struct.nameidata* %9)
  store i32 %70, i32* %18, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load i32, i32* %18, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %174

74:                                               ; preds = %59
  %75 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %9, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %8, align 4
  %77 = call i32 @nameidone(%struct.nameidata* %9)
  %78 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %79 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = trunc i64 %23 to i32
  %82 = call i32 @copyinstr(i32 %80, i8* %25, i32 %81, i64* %16)
  store i32 %82, i32* %18, align 4
  %83 = load i32, i32* %18, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %74
  br label %155

86:                                               ; preds = %74
  %87 = call i64 @xattr_protected(i8* %25)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = call i32 @vfs_context_issuser(i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %89
  %94 = call i64 @strcmp(i8* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93, %89
  %97 = load i32, i32* @EPERM, align 4
  store i32 %97, i32* %18, align 4
  br label %155

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %86
  %100 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %101 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, -1
  br i1 %103, label %110, label %104

104:                                              ; preds = %99
  %105 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %106 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp eq i64 %108, -1
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %99
  br label %147

111:                                              ; preds = %104
  %112 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %113 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %146

116:                                              ; preds = %111
  %117 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %118 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = load i64, i64* @XATTR_MAXSIZE, align 8
  %122 = icmp ugt i64 %120, %121
  br i1 %122, label %123, label %128

123:                                              ; preds = %116
  %124 = load i64, i64* @XATTR_MAXSIZE, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %127 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %126, i32 0, i32 1
  store i32 %125, i32* %127, align 4
  br label %128

128:                                              ; preds = %123, %116
  %129 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %130 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load i32, i32* @UIO_READ, align 4
  %134 = getelementptr inbounds i8, i8* %38, i64 0
  %135 = trunc i64 %37 to i32
  %136 = call i32* @uio_createwithbuffer(i32 1, i32 %131, i32 %132, i32 %133, i8* %134, i32 %135)
  store i32* %136, i32** %13, align 8
  %137 = load i32*, i32** %13, align 8
  %138 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %139 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %142 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = call i32 @uio_addiov(i32* %137, i32 %140, i64 %144)
  br label %146

146:                                              ; preds = %128, %111
  br label %147

147:                                              ; preds = %146, %110
  %148 = load i32, i32* %8, align 4
  %149 = load i32*, i32** %13, align 8
  %150 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %151 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %12, align 4
  %154 = call i32 @vn_getxattr(i32 %148, i8* %25, i32* %149, i64* %15, i32 %152, i32 %153)
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %147, %96, %85
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @vnode_put(i32 %156)
  %158 = load i32*, i32** %13, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %169

160:                                              ; preds = %155
  %161 = load %struct.getxattr_args*, %struct.getxattr_args** %6, align 8
  %162 = getelementptr inbounds %struct.getxattr_args, %struct.getxattr_args* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = load i32*, i32** %13, align 8
  %166 = call i64 @uio_resid(i32* %165)
  %167 = sub i64 %164, %166
  %168 = load i64*, i64** %7, align 8
  store i64 %167, i64* %168, align 8
  br label %172

169:                                              ; preds = %155
  %170 = load i64, i64* %15, align 8
  %171 = load i64*, i64** %7, align 8
  store i64 %170, i64* %171, align 8
  br label %172

172:                                              ; preds = %169, %160
  %173 = load i32, i32* %18, align 4
  store i32 %173, i32* %4, align 4
  store i32 1, i32* %20, align 4
  br label %174

174:                                              ; preds = %172, %72, %47
  %175 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @vfs_context_current(...) #2

declare dso_local i64 @IS_64BIT_PROCESS(i32) #2

declare dso_local i32 @UIO_SIZEOF(i32) #2

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @namei(%struct.nameidata*) #2

declare dso_local i32 @nameidone(%struct.nameidata*) #2

declare dso_local i32 @copyinstr(i32, i8*, i32, i64*) #2

declare dso_local i64 @xattr_protected(i8*) #2

declare dso_local i32 @vfs_context_issuser(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32* @uio_createwithbuffer(i32, i32, i32, i32, i8*, i32) #2

declare dso_local i32 @uio_addiov(i32*, i32, i64) #2

declare dso_local i32 @vn_getxattr(i32, i8*, i32*, i64*, i32, i32) #2

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
