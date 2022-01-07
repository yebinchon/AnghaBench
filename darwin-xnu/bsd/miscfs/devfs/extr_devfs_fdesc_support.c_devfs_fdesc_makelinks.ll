; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_fdesc_makelinks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/miscfs/devfs/extr_devfs_fdesc_support.c_devfs_fdesc_makelinks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }

@dev_root = common dso_local global %struct.TYPE_2__* null, align 8
@__const.devfs_fdesc_makelinks.in = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@__const.devfs_fdesc_makelinks.out = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@__const.devfs_fdesc_makelinks.err = private unnamed_addr constant [7 x i8] c"stderr\00", align 1
@__const.devfs_fdesc_makelinks.zero = private unnamed_addr constant [5 x i8] c"fd/0\00", align 1
@__const.devfs_fdesc_makelinks.one = private unnamed_addr constant [5 x i8] c"fd/1\00", align 1
@__const.devfs_fdesc_makelinks.two = private unnamed_addr constant [5 x i8] c"fd/2\00", align 1
@.str = private unnamed_addr constant [30 x i8] c"Couldn't make stdin, err %d.\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Couldn't make stdout, err %d.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Couldn't make stderr, err %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devfs_fdesc_makelinks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [6 x i8], align 1
  %8 = alloca [7 x i8], align 1
  %9 = alloca [7 x i8], align 1
  %10 = alloca [5 x i8], align 1
  %11 = alloca [5 x i8], align 1
  %12 = alloca [5 x i8], align 1
  store i32 0, i32* %2, align 4
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32* null, i32** %5, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev_root, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = bitcast [6 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.devfs_fdesc_makelinks.in, i32 0, i32 0), i64 6, i1 false)
  %17 = bitcast [7 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.devfs_fdesc_makelinks.out, i32 0, i32 0), i64 7, i1 false)
  %18 = bitcast [7 x i8]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.devfs_fdesc_makelinks.err, i32 0, i32 0), i64 7, i1 false)
  %19 = bitcast [5 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %19, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.devfs_fdesc_makelinks.zero, i32 0, i32 0), i64 5, i1 false)
  %20 = bitcast [5 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %20, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.devfs_fdesc_makelinks.one, i32 0, i32 0), i64 5, i1 false)
  %21 = bitcast [5 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.devfs_fdesc_makelinks.two, i32 0, i32 0), i64 5, i1 false)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %7, i64 0, i64 0
  %24 = getelementptr inbounds [5 x i8], [5 x i8]* %10, i64 0, i64 0
  %25 = call i32 @devfs_make_symlink(i32* %22, i8* %23, i32 365, i8* %24, i32** %3)
  store i32 %25, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %0
  %28 = load i32, i32* %2, align 4
  %29 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %49

30:                                               ; preds = %0
  %31 = load i32*, i32** %6, align 8
  %32 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %33 = getelementptr inbounds [5 x i8], [5 x i8]* %11, i64 0, i64 0
  %34 = call i32 @devfs_make_symlink(i32* %31, i8* %32, i32 365, i8* %33, i32** %4)
  store i32 %34, i32* %2, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  br label %49

39:                                               ; preds = %30
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds [7 x i8], [7 x i8]* %9, i64 0, i64 0
  %42 = getelementptr inbounds [5 x i8], [5 x i8]* %12, i64 0, i64 0
  %43 = call i32 @devfs_make_symlink(i32* %40, i8* %41, i32 365, i8* %42, i32** %5)
  store i32 %43, i32* %2, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* %2, align 4
  %47 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %49

48:                                               ; preds = %39
  store i32 0, i32* %1, align 4
  br label %69

49:                                               ; preds = %45, %36, %27
  %50 = load i32*, i32** %3, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32*, i32** %3, align 8
  %54 = call i32 @dev_free_name(i32* %53)
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32*, i32** %4, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i32*, i32** %4, align 8
  %60 = call i32 @dev_free_name(i32* %59)
  br label %61

61:                                               ; preds = %58, %55
  %62 = load i32*, i32** %5, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @dev_free_name(i32* %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32, i32* %2, align 4
  store i32 %68, i32* %1, align 4
  br label %69

69:                                               ; preds = %67, %48
  %70 = load i32, i32* %1, align 4
  ret i32 %70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @devfs_make_symlink(i32*, i8*, i32, i8*, i32**) #2

declare dso_local i32 @printf(i8*, i32) #2

declare dso_local i32 @dev_free_name(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
