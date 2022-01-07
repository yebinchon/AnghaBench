; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_opaque.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_authorize_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }

@KAUTH_VNODE_ACCESS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"%p    DENIED - opaque filesystem VNOP_ACCESS denied access\00", align 1
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@VREG = common dso_local global i32 0, align 4
@FREAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [72 x i8] c"%p    DENIED - EXECUTE denied because file could not be opened readonly\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"%p    ALLOWED - bypassing access check for non-local filesystem\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32, i32)* @vnode_authorize_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_authorize_opaque(%struct.TYPE_7__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 131, label %14
    i32 130, label %14
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %4, %4, %4, %4
  store i32 0, i32* %5, align 4
  br label %71

15:                                               ; preds = %4
  br label %16

16:                                               ; preds = %15
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @KAUTH_VNODE_ACCESS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vfs_authopaqueaccess(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %5, align 4
  br label %71

28:                                               ; preds = %21, %16
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @VNOP_ACCESS(%struct.TYPE_7__* %29, i32 %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load i32, i32* @ENOTSUP, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %10, align 4
  %37 = load i32*, i32** %7, align 8
  store i32 %36, i32* %37, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %38)
  store i32 1, i32* %5, align 4
  br label %71

40:                                               ; preds = %28
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %40
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @VREG, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %53 = load i32, i32* @FREAD, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @VNOP_OPEN(%struct.TYPE_7__* %52, i32 %53, i32 %54)
  store i32 %55, i32* %10, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i32, i32* %10, align 4
  %59 = load i32*, i32** %7, align 8
  store i32 %58, i32* %59, align 4
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_7__* %60)
  store i32 1, i32* %5, align 4
  br label %71

62:                                               ; preds = %51
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = load i32, i32* @FREAD, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @VNOP_CLOSE(%struct.TYPE_7__* %63, i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %62, %45, %40
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = call i32 @KAUTH_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_7__* %69)
  store i32 1, i32* %5, align 4
  br label %71

71:                                               ; preds = %67, %57, %35, %27, %14
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @vfs_authopaqueaccess(i32) #1

declare dso_local i32 @VNOP_ACCESS(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @VNOP_OPEN(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @VNOP_CLOSE(%struct.TYPE_7__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
