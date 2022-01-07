; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c__devfs_setattr.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_tty_dev.c__devfs_setattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.vnode_attr = type { i32 }
%struct.nameidata = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@va_uid = common dso_local global i32 0, align 4
@va_gid = common dso_local global i32 0, align 4
@va_mode = common dso_local global i32 0, align 4
@ALLPERMS = common dso_local global i16 0, align 2
@ERESTART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@LOOKUP = common dso_local global i32 0, align 4
@OP_SETATTR = common dso_local global i32 0, align 4
@FOLLOW = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i16, i16, i16)* @_devfs_setattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_devfs_setattr(i8* %0, i16 zeroext %1, i16 zeroext %2, i16 zeroext %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode_attr, align 4
  %14 = alloca %struct.nameidata, align 4
  %15 = alloca [128 x i8], align 16
  store i8* %0, i8** %5, align 8
  store i16 %1, i16* %6, align 2
  store i16 %2, i16* %7, align 2
  store i16 %3, i16* %8, align 2
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %17, %struct.TYPE_4__** %9, align 8
  %18 = load i32, i32* @EACCES, align 4
  store i32 %18, i32* %11, align 4
  %19 = call i32 (...) @vfs_context_current()
  store i32 %19, i32* %12, align 4
  %20 = call i32 @VATTR_INIT(%struct.vnode_attr* %13)
  %21 = load i32, i32* @va_uid, align 4
  %22 = load i16, i16* %7, align 2
  %23 = call i32 @VATTR_SET(%struct.vnode_attr* %13, i32 %21, i16 zeroext %22)
  %24 = load i32, i32* @va_gid, align 4
  %25 = load i16, i16* %8, align 2
  %26 = call i32 @VATTR_SET(%struct.vnode_attr* %13, i32 %24, i16 zeroext %25)
  %27 = load i32, i32* @va_mode, align 4
  %28 = load i16, i16* %6, align 2
  %29 = zext i16 %28 to i32
  %30 = load i16, i16* @ALLPERMS, align 2
  %31 = zext i16 %30 to i32
  %32 = and i32 %29, %31
  %33 = trunc i32 %32 to i16
  %34 = call i32 @VATTR_SET(%struct.vnode_attr* %13, i32 %27, i16 zeroext %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = icmp eq %struct.TYPE_4__* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  store %struct.TYPE_3__* %40, %struct.TYPE_3__** %10, align 8
  %41 = icmp eq %struct.TYPE_3__* %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %37, %4
  %43 = load i32, i32* @ERESTART, align 4
  store i32 %43, i32* %11, align 4
  br label %77

44:                                               ; preds = %37
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = icmp eq i32* %47, null
  br i1 %48, label %49, label %76

49:                                               ; preds = %44
  %50 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = call i32 @snprintf(i8* %50, i32 128, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %53)
  %55 = load i32, i32* @LOOKUP, align 4
  %56 = load i32, i32* @OP_SETATTR, align 4
  %57 = load i32, i32* @FOLLOW, align 4
  %58 = load i32, i32* @UIO_SYSSPACE, align 4
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %15, i64 0, i64 0
  %60 = call i32 @CAST_USER_ADDR_T(i8* %59)
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @NDINIT(%struct.nameidata* %14, i32 %55, i32 %56, i32 %57, i32 %58, i32 %60, i32 %61)
  %63 = call i32 @namei(%struct.nameidata* %14)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %49
  br label %77

67:                                               ; preds = %49
  %68 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i32 @vnode_setattr(i32 %69, %struct.vnode_attr* %13, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %14, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vnode_put(i32 %73)
  %75 = call i32 @nameidone(%struct.nameidata* %14)
  br label %77

76:                                               ; preds = %44
  br label %77

77:                                               ; preds = %76, %67, %66, %42
  %78 = load i32, i32* %11, align 4
  ret i32 %78
}

declare dso_local i32 @vfs_context_current(...) #1

declare dso_local i32 @VATTR_INIT(%struct.vnode_attr*) #1

declare dso_local i32 @VATTR_SET(%struct.vnode_attr*, i32, i16 zeroext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @NDINIT(%struct.nameidata*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @CAST_USER_ADDR_T(i8*) #1

declare dso_local i32 @namei(%struct.nameidata*) #1

declare dso_local i32 @vnode_setattr(i32, %struct.vnode_attr*, i32) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @nameidone(%struct.nameidata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
