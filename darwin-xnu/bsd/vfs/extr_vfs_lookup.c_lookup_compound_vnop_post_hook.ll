; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_compound_vnop_post_hook.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_lookup_compound_vnop_post_hook.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@NULLVP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"NULL vp with error == 0.\0A\00", align 1
@NAMEI_COMPOUND_OP_MASK = common dso_local global i32 0, align 4
@EKEEPLOOKING = common dso_local global i32 0, align 4
@MAKEENTRY = common dso_local global i32 0, align 4
@AUDITVNPATH1 = common dso_local global i32 0, align 4
@vnpath = common dso_local global i32 0, align 4
@ARG_VNODE1 = common dso_local global i32 0, align 4
@AUDITVNPATH2 = common dso_local global i32 0, align 4
@ARG_VNODE2 = common dso_local global i32 0, align 4
@kdebug_enable = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lookup_compound_vnop_post_hook(i32 %0, i64 %1, i64 %2, %struct.nameidata* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.nameidata* %3, %struct.nameidata** %9, align 8
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %5
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @NULLVP, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 @panic(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %13, %5
  %20 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @NAMEI_COMPOUND_OP_MASK, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %102

27:                                               ; preds = %19
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EKEEPLOOKING, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %102

32:                                               ; preds = %27
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* @NULLVP, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %87

36:                                               ; preds = %32
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %87, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %39
  %43 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %44 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MAKEENTRY, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42, %39
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 1
  %55 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %56 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @lookup_consider_update_cache(i64 %51, i64 %52, %struct.TYPE_3__* %54, i32 %57)
  br label %59

59:                                               ; preds = %50, %42
  %60 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %61 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @AUDITVNPATH1, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load i32, i32* @vnpath, align 4
  %69 = load i64, i64* %8, align 8
  %70 = load i32, i32* @ARG_VNODE1, align 4
  %71 = call i32 @AUDIT_ARG(i32 %68, i64 %69, i32 %70)
  br label %86

72:                                               ; preds = %59
  %73 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %74 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AUDITVNPATH2, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %72
  %81 = load i32, i32* @vnpath, align 4
  %82 = load i64, i64* %8, align 8
  %83 = load i32, i32* @ARG_VNODE2, align 4
  %84 = call i32 @AUDIT_ARG(i32 %81, i64 %82, i32 %83)
  br label %85

85:                                               ; preds = %80, %72
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86, %36, %32
  %88 = load i64, i64* @kdebug_enable, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %87
  %91 = load i64, i64* %8, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %90
  %94 = load i64, i64* %8, align 8
  br label %97

95:                                               ; preds = %90
  %96 = load i64, i64* %7, align 8
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i64 [ %94, %93 ], [ %96, %95 ]
  %99 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %100 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %99, i32 0, i32 1
  %101 = call i32 @kdebug_lookup(i64 %98, %struct.TYPE_3__* %100)
  br label %102

102:                                              ; preds = %26, %31, %97, %87
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @lookup_consider_update_cache(i64, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @AUDIT_ARG(i32, i64, i32) #1

declare dso_local i32 @kdebug_lookup(i64, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
