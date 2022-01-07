; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsgetpath_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_fsgetpath_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@MNT_UNION = common dso_local global i32 0, align 4
@LK_NOWAIT = common dso_local global i32 0, align 4
@BUILDPATH_CHECKACCESS = common dso_local global i32 0, align 4
@BUILDPATH_CHECK_MOVED = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@text = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8
@NUMPARMS = common dso_local global i32 0, align 4
@KDBG_VFS_LOOKUP_FLAG_LOOKUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, i32*)* @fsgetpath_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsgetpath_internal(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.mount*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.mount*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.mount* null, %struct.mount** %15, align 8
  store i32 16, i32* %19, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %7, align 4
  br label %175

29:                                               ; preds = %6
  %30 = load i32*, i32** %12, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %29
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %7, align 4
  br label %175

34:                                               ; preds = %29
  br label %35

35:                                               ; preds = %119, %34
  %36 = load i32, i32* %9, align 4
  %37 = call %struct.mount* @mount_lookupby_volfsid(i32 %36, i32 1)
  store %struct.mount* %37, %struct.mount** %15, align 8
  %38 = icmp eq %struct.mount* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %35
  %40 = load i32, i32* @ENOTSUP, align 4
  store i32 %40, i32* %14, align 4
  %41 = load i32, i32* @ENOTSUP, align 4
  store i32 %41, i32* %7, align 4
  br label %175

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %78, %42
  %44 = load i32, i32* %10, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.mount*, %struct.mount** %15, align 8
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @VFS_ROOT(%struct.mount* %47, i64* %16, i32 %48)
  store i32 %49, i32* %14, align 4
  br label %55

50:                                               ; preds = %43
  %51 = load %struct.mount*, %struct.mount** %15, align 8
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @VFS_VGET(%struct.mount* %51, i32 %52, i64* %16, i32 %53)
  store i32 %54, i32* %14, align 4
  br label %55

55:                                               ; preds = %50, %46
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.mount*, %struct.mount** %15, align 8
  %61 = getelementptr inbounds %struct.mount, %struct.mount* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MNT_UNION, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %59
  %67 = load %struct.mount*, %struct.mount** %15, align 8
  store %struct.mount* %67, %struct.mount** %20, align 8
  %68 = load %struct.mount*, %struct.mount** %20, align 8
  %69 = getelementptr inbounds %struct.mount, %struct.mount* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call %struct.mount* @vnode_mount(i32 %70)
  store %struct.mount* %71, %struct.mount** %15, align 8
  %72 = load %struct.mount*, %struct.mount** %20, align 8
  %73 = call i32 @vfs_unbusy(%struct.mount* %72)
  %74 = load %struct.mount*, %struct.mount** %15, align 8
  %75 = load i32, i32* @LK_NOWAIT, align 4
  %76 = call i64 @vfs_busy(%struct.mount* %74, i32 %75)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %66
  br label %43

79:                                               ; preds = %66
  br label %83

80:                                               ; preds = %59, %55
  %81 = load %struct.mount*, %struct.mount** %15, align 8
  %82 = call i32 @vfs_unbusy(%struct.mount* %81)
  br label %83

83:                                               ; preds = %80, %79
  %84 = load i32, i32* %14, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %14, align 4
  store i32 %87, i32* %7, align 4
  br label %175

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @vfs_context_suser(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %88
  %93 = load i32, i32* @BUILDPATH_CHECKACCESS, align 4
  br label %95

94:                                               ; preds = %88
  br label %95

95:                                               ; preds = %94, %92
  %96 = phi i32 [ %93, %92 ], [ 0, %94 ]
  store i32 %96, i32* %18, align 4
  %97 = load i32, i32* @BUILDPATH_CHECK_MOVED, align 4
  %98 = load i32, i32* %18, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %18, align 4
  %100 = load i64, i64* %16, align 8
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @build_path(i64 %100, i32* %101, i32 %102, i32* %17, i32 %103, i32 %104)
  store i32 %105, i32* %14, align 4
  %106 = load i64, i64* %16, align 8
  %107 = call i32 @vnode_put(i64 %106)
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %123

110:                                              ; preds = %95
  %111 = load i32, i32* %14, align 4
  %112 = load i32, i32* @EAGAIN, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %110
  %115 = load i32, i32* %19, align 4
  %116 = add i32 %115, -1
  store i32 %116, i32* %19, align 4
  %117 = load i32, i32* %19, align 4
  %118 = icmp ugt i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %35

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOENT, align 4
  store i32 %121, i32* %14, align 4
  br label %122

122:                                              ; preds = %120, %110
  br label %173

123:                                              ; preds = %95
  %124 = load i32, i32* @text, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = call i32 @AUDIT_ARG(i32 %124, i32* %125)
  %127 = load i64, i64* @kdebug_enable, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %170

129:                                              ; preds = %123
  %130 = load i32, i32* @NUMPARMS, align 4
  %131 = zext i32 %130 to i64
  %132 = call i8* @llvm.stacksave()
  store i8* %132, i8** %21, align 8
  %133 = alloca i64, i64 %131, align 16
  store i64 %131, i64* %22, align 8
  %134 = mul nuw i64 8, %131
  %135 = trunc i64 %134 to i32
  store i32 %135, i32* %23, align 4
  %136 = load i32, i32* %17, align 4
  %137 = load i32, i32* %23, align 4
  %138 = icmp slt i32 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %129
  %140 = bitcast i64* %133 to i8*
  %141 = load i32*, i32** %12, align 8
  %142 = load i32, i32* %17, align 4
  %143 = call i32 @memcpy(i8* %140, i32* %141, i32 %142)
  %144 = bitcast i64* %133 to i8*
  %145 = load i32, i32* %17, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, i8* %144, i64 %146
  %148 = load i32, i32* %23, align 4
  %149 = load i32, i32* %17, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @memset(i8* %147, i32 0, i32 %150)
  %152 = load i32, i32* %17, align 4
  store i32 %152, i32* %23, align 4
  br label %163

153:                                              ; preds = %129
  %154 = bitcast i64* %133 to i8*
  %155 = load i32*, i32** %12, align 8
  %156 = load i32, i32* %17, align 4
  %157 = load i32, i32* %23, align 4
  %158 = sub nsw i32 %156, %157
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %155, i64 %159
  %161 = load i32, i32* %23, align 4
  %162 = call i32 @memcpy(i8* %154, i32* %160, i32 %161)
  br label %163

163:                                              ; preds = %153, %139
  %164 = load i32, i32* %23, align 4
  %165 = load i64, i64* %16, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load i32, i32* @KDBG_VFS_LOOKUP_FLAG_LOOKUP, align 4
  %168 = call i32 @kdebug_vfs_lookup(i64* %133, i32 %164, i8* %166, i32 %167)
  %169 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %169)
  br label %170

170:                                              ; preds = %163, %123
  %171 = load i32, i32* %17, align 4
  %172 = load i32*, i32** %13, align 8
  store i32 %171, i32* %172, align 4
  br label %173

173:                                              ; preds = %170, %122
  %174 = load i32, i32* %14, align 4
  store i32 %174, i32* %7, align 4
  br label %175

175:                                              ; preds = %173, %86, %39, %32, %27
  %176 = load i32, i32* %7, align 4
  ret i32 %176
}

declare dso_local %struct.mount* @mount_lookupby_volfsid(i32, i32) #1

declare dso_local i32 @VFS_ROOT(%struct.mount*, i64*, i32) #1

declare dso_local i32 @VFS_VGET(%struct.mount*, i32, i64*, i32) #1

declare dso_local %struct.mount* @vnode_mount(i32) #1

declare dso_local i32 @vfs_unbusy(%struct.mount*) #1

declare dso_local i64 @vfs_busy(%struct.mount*, i32) #1

declare dso_local i64 @vfs_context_suser(i32) #1

declare dso_local i32 @build_path(i64, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @vnode_put(i64) #1

declare dso_local i32 @AUDIT_ARG(i32, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kdebug_vfs_lookup(i64*, i32, i8*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
