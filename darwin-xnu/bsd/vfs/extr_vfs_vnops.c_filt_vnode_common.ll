; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vnode_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_filt_vnode_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knote = type { i32, i32, i64, i64, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@NOTE_REVOKE = common dso_local global i64 0, align 8
@EV_EOF = common dso_local global i32 0, align 4
@EV_ONESHOT = common dso_local global i32 0, align 4
@EV_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid knote filter on a vnode!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.knote*, %struct.TYPE_9__*, i64)* @filt_vnode_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @filt_vnode_common(%struct.knote* %0, %struct.TYPE_9__* %1, i64 %2) #0 {
  %4 = alloca %struct.knote*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.knote* %0, %struct.knote** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %11 = call i32 @lck_mtx_assert(i32* %9, i32 %10)
  %12 = load i64, i64* @NOTE_REVOKE, align 8
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %41

15:                                               ; preds = %3
  %16 = load i32, i32* @EV_EOF, align 4
  %17 = load i32, i32* @EV_ONESHOT, align 4
  %18 = or i32 %16, %17
  %19 = load %struct.knote*, %struct.knote** %4, align 8
  %20 = getelementptr inbounds %struct.knote, %struct.knote* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = or i32 %21, %18
  store i32 %22, i32* %20, align 8
  store i32 1, i32* %7, align 4
  %23 = load %struct.knote*, %struct.knote** %4, align 8
  %24 = getelementptr inbounds %struct.knote, %struct.knote* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 129
  br i1 %26, label %27, label %40

27:                                               ; preds = %15
  %28 = load %struct.knote*, %struct.knote** %4, align 8
  %29 = getelementptr inbounds %struct.knote, %struct.knote* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NOTE_REVOKE, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i64, i64* @NOTE_REVOKE, align 8
  %36 = load %struct.knote*, %struct.knote** %4, align 8
  %37 = getelementptr inbounds %struct.knote, %struct.knote* %36, i32 0, i32 3
  %38 = load i64, i64* %37, align 8
  %39 = or i64 %38, %35
  store i64 %39, i64* %37, align 8
  br label %40

40:                                               ; preds = %34, %27, %15
  br label %102

41:                                               ; preds = %3
  %42 = load %struct.knote*, %struct.knote** %4, align 8
  %43 = getelementptr inbounds %struct.knote, %struct.knote* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  switch i32 %44, label %99 [
    i32 130, label %45
    i32 128, label %68
    i32 129, label %79
  ]

45:                                               ; preds = %41
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %47 = load %struct.knote*, %struct.knote** %4, align 8
  %48 = getelementptr inbounds %struct.knote, %struct.knote* %47, i32 0, i32 5
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.knote*, %struct.knote** %4, align 8
  %55 = getelementptr inbounds %struct.knote, %struct.knote* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @EV_POLL, align 4
  %58 = and i32 %56, %57
  %59 = call i32 @vnode_readable_data_count(%struct.TYPE_9__* %46, i32 %53, i32 %58)
  %60 = load %struct.knote*, %struct.knote** %4, align 8
  %61 = getelementptr inbounds %struct.knote, %struct.knote* %60, i32 0, i32 4
  store i32 %59, i32* %61, align 8
  %62 = load %struct.knote*, %struct.knote** %4, align 8
  %63 = getelementptr inbounds %struct.knote, %struct.knote* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %45
  br label %101

68:                                               ; preds = %41
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = call i32 @vnode_writable_space_count(%struct.TYPE_9__* %69)
  %71 = load %struct.knote*, %struct.knote** %4, align 8
  %72 = getelementptr inbounds %struct.knote, %struct.knote* %71, i32 0, i32 4
  store i32 %70, i32* %72, align 8
  %73 = load %struct.knote*, %struct.knote** %4, align 8
  %74 = getelementptr inbounds %struct.knote, %struct.knote* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %78

78:                                               ; preds = %77, %68
  br label %101

79:                                               ; preds = %41
  %80 = load %struct.knote*, %struct.knote** %4, align 8
  %81 = getelementptr inbounds %struct.knote, %struct.knote* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %6, align 8
  %84 = and i64 %82, %83
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load i64, i64* %6, align 8
  %88 = load %struct.knote*, %struct.knote** %4, align 8
  %89 = getelementptr inbounds %struct.knote, %struct.knote* %88, i32 0, i32 3
  %90 = load i64, i64* %89, align 8
  %91 = or i64 %90, %87
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %86, %79
  %93 = load %struct.knote*, %struct.knote** %4, align 8
  %94 = getelementptr inbounds %struct.knote, %struct.knote* %93, i32 0, i32 3
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  store i32 1, i32* %7, align 4
  br label %98

98:                                               ; preds = %97, %92
  br label %101

99:                                               ; preds = %41
  %100 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %98, %78, %67
  br label %102

102:                                              ; preds = %101, %40
  %103 = load i32, i32* %7, align 4
  ret i32 %103
}

declare dso_local i32 @lck_mtx_assert(i32*, i32) #1

declare dso_local i32 @vnode_readable_data_count(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @vnode_writable_space_count(%struct.TYPE_9__*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
