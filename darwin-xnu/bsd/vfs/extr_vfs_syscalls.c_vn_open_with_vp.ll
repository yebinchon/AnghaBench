; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_vn_open_with_vp.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_vn_open_with_vp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@KAUTH_VNODE_READ_DATA = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@KAUTH_VNODE_APPEND_DATA = common dso_local global i32 0, align 4
@KAUTH_VNODE_WRITE_DATA = common dso_local global i32 0, align 4
@VOPENEVT = common dso_local global i32 0, align 4
@P_CHECKOPENEVT = common dso_local global i32 0, align 4
@O_EVTONLY = common dso_local global i32 0, align 4
@KAUTH_FILEOP_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32, i32)* @vn_open_with_vp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_open_with_vp(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @kauth_cred_get()
  %11 = call %struct.TYPE_11__* (...) @current_proc()
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = call i32 @suser(i32 %10, i32* %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @FREAD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @KAUTH_VNODE_READ_DATA, align 4
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %9, align 4
  br label %26

26:                                               ; preds = %22, %17
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @FWRITE, align 4
  %29 = load i32, i32* @O_TRUNC, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @O_APPEND, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @O_TRUNC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @KAUTH_VNODE_APPEND_DATA, align 4
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  br label %51

47:                                               ; preds = %38, %33
  %48 = load i32, i32* @KAUTH_VNODE_WRITE_DATA, align 4
  %49 = load i32, i32* %9, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %26
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @vnode_authorize(%struct.TYPE_10__* %53, i32* null, i32 %54, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %4, align 4
  br label %104

60:                                               ; preds = %52
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VOPENEVT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = call %struct.TYPE_11__* (...) @current_proc()
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @P_CHECKOPENEVT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %67
  %75 = load i32, i32* @O_EVTONLY, align 4
  %76 = load i32, i32* %6, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %6, align 4
  br label %78

78:                                               ; preds = %74, %67, %60
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @VNOP_OPEN(%struct.TYPE_10__* %79, i32 %80, i32 %81)
  store i32 %82, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %4, align 4
  br label %104

86:                                               ; preds = %78
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = call i32 @vnode_ref_ext(%struct.TYPE_10__* %87, i32 %88, i32 0)
  store i32 %89, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @VNOP_CLOSE(%struct.TYPE_10__* %92, i32 %93, i32 %94)
  %96 = load i32, i32* %8, align 4
  store i32 %96, i32* %4, align 4
  br label %104

97:                                               ; preds = %86
  %98 = load i32, i32* %7, align 4
  %99 = call i32 @vfs_context_ucred(i32 %98)
  %100 = load i32, i32* @KAUTH_FILEOP_OPEN, align 4
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %102 = ptrtoint %struct.TYPE_10__* %101 to i64
  %103 = call i32 @kauth_authorize_fileop(i32 %99, i32 %100, i64 %102, i32 0)
  store i32 0, i32* %4, align 4
  br label %104

104:                                              ; preds = %97, %91, %84, %58, %15
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @suser(i32, i32*) #1

declare dso_local i32 @kauth_cred_get(...) #1

declare dso_local %struct.TYPE_11__* @current_proc(...) #1

declare dso_local i32 @vnode_authorize(%struct.TYPE_10__*, i32*, i32, i32) #1

declare dso_local i32 @VNOP_OPEN(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @vnode_ref_ext(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @VNOP_CLOSE(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @kauth_authorize_fileop(i32, i32, i64, i32) #1

declare dso_local i32 @vfs_context_ucred(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
