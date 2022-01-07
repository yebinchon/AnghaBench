; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vnode_attr_authorize_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_9__*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, i32 }

@KAUTH_VNODE_DELETE = common dso_local global i32 0, align 4
@KAUTH_VNODE_DELETE_CHILD = common dso_local global i32 0, align 4
@KAUTH_VNODE_LINKTARGET = common dso_local global i32 0, align 4
@KAUTH_VNODE_CHECKIMMUTABLE = common dso_local global i32 0, align 4
@KAUTH_VNODE_EXECUTE = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@va_mode = common dso_local global i32 0, align 4
@S_IXUSR = common dso_local global i32 0, align 4
@S_IXGRP = common dso_local global i32 0, align 4
@S_IXOTH = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"%p    DENIED - root execute requires at least one x bit in 0x%x\00", align 1
@vp = common dso_local global i32 0, align 4
@va = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"%p    ALLOWED - caller is superuser\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i32, i32*, i32, i32)* @vnode_attr_authorize_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnode_attr_authorize_internal(%struct.TYPE_8__* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %18, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %13, align 4
  %22 = call i32 @vnode_authorize_checkimmutable(i32 %16, %struct.TYPE_9__* %19, i32 %20, i32 %21)
  store i32 %22, i32* %15, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %7
  br label %129

25:                                               ; preds = %7
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i32, i32* %14, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %44, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = load i32, i32* @KAUTH_VNODE_DELETE_CHILD, align 4
  %39 = call i32 @vnode_authorize_checkimmutable(i32 %34, %struct.TYPE_9__* %37, i32 %38, i32 0)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %129

43:                                               ; preds = %33
  br label %44

44:                                               ; preds = %43, %30, %25
  %45 = load i32, i32* @KAUTH_VNODE_LINKTARGET, align 4
  %46 = load i32, i32* @KAUTH_VNODE_CHECKIMMUTABLE, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  br label %129

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %85, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = call i32 @vnode_authorize_delete(%struct.TYPE_8__* %63, i32 %64)
  store i32 %65, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %129

68:                                               ; preds = %62, %57
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %68
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @KAUTH_VNODE_DELETE, align 4
  %79 = and i32 %77, %78
  %80 = load i32*, i32** %12, align 8
  %81 = call i32 @vnode_authorize_simple(%struct.TYPE_8__* %75, i32 %76, i32 %79, i32* %80)
  store i32 %81, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %74
  br label %129

84:                                               ; preds = %74, %68
  br label %128

85:                                               ; preds = %54
  %86 = load i32, i32* %10, align 4
  %87 = load i32, i32* @KAUTH_VNODE_EXECUTE, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %85
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @VREG, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %123

98:                                               ; preds = %90
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = load i32, i32* @va_mode, align 4
  %103 = call i64 @VATTR_IS_SUPPORTED(%struct.TYPE_9__* %101, i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %98
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @S_IXUSR, align 4
  %112 = load i32, i32* @S_IXGRP, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @S_IXOTH, align 4
  %115 = or i32 %113, %114
  %116 = and i32 %110, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %123, label %118

118:                                              ; preds = %105
  %119 = load i32, i32* @EPERM, align 4
  store i32 %119, i32* %15, align 4
  %120 = load i32, i32* @vp, align 4
  %121 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @va, i32 0, i32 0), align 4
  %122 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %120, i32 %121)
  br label %129

123:                                              ; preds = %105, %98, %90, %85
  %124 = load i32, i32* @TRUE, align 4
  %125 = load i32*, i32** %12, align 8
  store i32 %124, i32* %125, align 4
  %126 = load i32, i32* @vp, align 4
  %127 = call i32 (i8*, i32, ...) @KAUTH_DEBUG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %123, %84
  br label %129

129:                                              ; preds = %128, %118, %83, %67, %53, %42, %24
  %130 = load i32, i32* %15, align 4
  ret i32 %130
}

declare dso_local i32 @vnode_authorize_checkimmutable(i32, %struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vnode_authorize_delete(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @vnode_authorize_simple(%struct.TYPE_8__*, i32, i32, i32*) #1

declare dso_local i64 @VATTR_IS_SUPPORTED(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @KAUTH_DEBUG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
