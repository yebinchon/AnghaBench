; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_open1at.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_open1at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_2__, i32, i64, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.vnode_attr = type { i32 }

@AT_FDCWD = common dso_local global i32 0, align 4
@USEDVP = common dso_local global i32 0, align 4
@VDIR = common dso_local global i64 0, align 8
@ENOTDIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.nameidata*, i32, %struct.vnode_attr*, i32, i8*, i32*, i32)* @open1at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open1at(i32 %0, %struct.nameidata* %1, i32 %2, %struct.vnode_attr* %3, i32 %4, i8* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nameidata*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnode_attr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8, align 1
  %20 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store %struct.nameidata* %1, %struct.nameidata** %11, align 8
  store i32 %2, i32* %12, align 4
  store %struct.vnode_attr* %3, %struct.vnode_attr** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %17, align 4
  %22 = load i32, i32* @AT_FDCWD, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %100

24:                                               ; preds = %8
  %25 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %26 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @USEDVP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %100, label %32

32:                                               ; preds = %24
  %33 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %34 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @UIO_SEG_IS_USER_SPACE(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @copyin(i64 %41, i8* %19, i32 1)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %38
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %9, align 4
  br label %109

47:                                               ; preds = %38
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %50 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i8, i8* %52, align 1
  store i8 %53, i8* %19, align 1
  br label %54

54:                                               ; preds = %48, %47
  %55 = load i8, i8* %19, align 1
  %56 = sext i8 %55 to i32
  %57 = icmp ne i32 %56, 47
  br i1 %57, label %58, label %99

58:                                               ; preds = %54
  %59 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %60 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %17, align 4
  %64 = call i32 @vnode_getfromfd(i32 %62, i32 %63, i32* %20)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %18, align 4
  store i32 %68, i32* %9, align 4
  br label %109

69:                                               ; preds = %58
  %70 = load i32, i32* %20, align 4
  %71 = call i64 @vnode_vtype(i32 %70)
  %72 = load i64, i64* @VDIR, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %20, align 4
  %76 = call i32 @vnode_put(i32 %75)
  %77 = load i32, i32* @ENOTDIR, align 4
  store i32 %77, i32* %9, align 4
  br label %109

78:                                               ; preds = %69
  %79 = load i32, i32* %20, align 4
  %80 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %81 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @USEDVP, align 4
  %83 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %84 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %82
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %90 = load i32, i32* %12, align 4
  %91 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %92 = load i32, i32* %14, align 4
  %93 = load i8*, i8** %15, align 8
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @open1(i32 %88, %struct.nameidata* %89, i32 %90, %struct.vnode_attr* %91, i32 %92, i8* %93, i32* %94)
  store i32 %95, i32* %18, align 4
  %96 = load i32, i32* %20, align 4
  %97 = call i32 @vnode_put(i32 %96)
  %98 = load i32, i32* %18, align 4
  store i32 %98, i32* %9, align 4
  br label %109

99:                                               ; preds = %54
  br label %100

100:                                              ; preds = %99, %24, %8
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.nameidata*, %struct.nameidata** %11, align 8
  %103 = load i32, i32* %12, align 4
  %104 = load %struct.vnode_attr*, %struct.vnode_attr** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i8*, i8** %15, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @open1(i32 %101, %struct.nameidata* %102, i32 %103, %struct.vnode_attr* %104, i32 %105, i8* %106, i32* %107)
  store i32 %108, i32* %9, align 4
  br label %109

109:                                              ; preds = %100, %78, %74, %67, %45
  %110 = load i32, i32* %9, align 4
  ret i32 %110
}

declare dso_local i64 @UIO_SEG_IS_USER_SPACE(i32) #1

declare dso_local i32 @copyin(i64, i8*, i32) #1

declare dso_local i32 @vnode_getfromfd(i32, i32, i32*) #1

declare dso_local i64 @vnode_vtype(i32) #1

declare dso_local i32 @vnode_put(i32) #1

declare dso_local i32 @open1(i32, %struct.nameidata*, i32, %struct.vnode_attr*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
