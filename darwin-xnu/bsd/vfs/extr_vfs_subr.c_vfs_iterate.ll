; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_iterate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_subr.c_vfs_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32 }

@VFS_ITERATE_CB_DROPREF = common dso_local global i32 0, align 4
@VFS_ITERATE_TAIL_FIRST = common dso_local global i32 0, align 4
@MNT_LDEAD = common dso_local global i32 0, align 4
@MNT_LUNMOUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vfs_iterate(i32 %0, i32 (%struct.mount*, i8*)* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32 (%struct.mount*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 (%struct.mount*, i8*)* %1, i32 (%struct.mount*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @VFS_ITERATE_CB_DROPREF, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %17, align 4
  %21 = call i32 (...) @mount_getvfscnt()
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = add nsw i32 %22, 10
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 4
  %27 = trunc i64 %26 to i32
  %28 = call i64 @kalloc(i32 %27)
  %29 = inttoptr i64 %28 to i32*
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %13, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @mount_fillfsids(i32* %32, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @VFS_ITERATE_TAIL_FIRST, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %3
  %40 = load i32, i32* %11, align 4
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  br label %44

42:                                               ; preds = %3
  store i32 0, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  store i32 %43, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %44

44:                                               ; preds = %42, %39
  %45 = load i32, i32* %14, align 4
  store i32 %45, i32* %12, align 4
  br label %46

46:                                               ; preds = %98, %44
  %47 = load i32, i32* %12, align 4
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %102

50:                                               ; preds = %46
  %51 = load i32*, i32** %9, align 8
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call %struct.mount* @mount_list_lookupby_fsid(i32* %54, i32 0, i32 1)
  store %struct.mount* %55, %struct.mount** %7, align 8
  %56 = load %struct.mount*, %struct.mount** %7, align 8
  %57 = icmp eq %struct.mount* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  br label %98

59:                                               ; preds = %50
  %60 = load %struct.mount*, %struct.mount** %7, align 8
  %61 = call i32 @mount_lock(%struct.mount* %60)
  %62 = load %struct.mount*, %struct.mount** %7, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MNT_LDEAD, align 4
  %66 = load i32, i32* @MNT_LUNMOUNT, align 4
  %67 = or i32 %65, %66
  %68 = and i32 %64, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %59
  %71 = load %struct.mount*, %struct.mount** %7, align 8
  %72 = call i32 @mount_unlock(%struct.mount* %71)
  %73 = load %struct.mount*, %struct.mount** %7, align 8
  %74 = call i32 @mount_iterdrop(%struct.mount* %73)
  br label %98

75:                                               ; preds = %59
  %76 = load %struct.mount*, %struct.mount** %7, align 8
  %77 = call i32 @mount_unlock(%struct.mount* %76)
  %78 = load i32 (%struct.mount*, i8*)*, i32 (%struct.mount*, i8*)** %5, align 8
  %79 = load %struct.mount*, %struct.mount** %7, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = call i32 %78(%struct.mount* %79, i8* %80)
  store i32 %81, i32* %8, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %75
  %85 = load %struct.mount*, %struct.mount** %7, align 8
  %86 = call i32 @mount_iterdrop(%struct.mount* %85)
  br label %87

87:                                               ; preds = %84, %75
  %88 = load i32, i32* %8, align 4
  switch i32 %88, label %96 [
    i32 129, label %89
    i32 128, label %89
    i32 130, label %94
    i32 131, label %95
  ]

89:                                               ; preds = %87, %87
  %90 = load i32, i32* %8, align 4
  %91 = icmp eq i32 %90, 128
  br i1 %91, label %92, label %93

92:                                               ; preds = %89
  store i32 0, i32* %8, align 4
  br label %103

93:                                               ; preds = %89
  br label %97

94:                                               ; preds = %87
  store i32 0, i32* %8, align 4
  br label %103

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %87, %95
  br label %97

97:                                               ; preds = %96, %93
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %70, %58
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %12, align 4
  %101 = add nsw i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %46

102:                                              ; preds = %46
  br label %103

103:                                              ; preds = %102, %94, %92
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %10, align 4
  %106 = sext i32 %105 to i64
  %107 = mul i64 %106, 4
  %108 = trunc i64 %107 to i32
  %109 = call i32 @kfree(i8* %104, i32 %108)
  %110 = load i32, i32* %8, align 4
  ret i32 %110
}

declare dso_local i32 @mount_getvfscnt(...) #1

declare dso_local i64 @kalloc(i32) #1

declare dso_local i32 @mount_fillfsids(i32*, i32) #1

declare dso_local %struct.mount* @mount_list_lookupby_fsid(i32*, i32, i32) #1

declare dso_local i32 @mount_lock(%struct.mount*) #1

declare dso_local i32 @mount_unlock(%struct.mount*) #1

declare dso_local i32 @mount_iterdrop(%struct.mount*) #1

declare dso_local i32 @kfree(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
