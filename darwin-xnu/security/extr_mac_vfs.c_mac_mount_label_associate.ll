; ModuleID = '/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_mount_label_associate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/security/extr_mac_vfs.c_mac_mount_label_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_3__ = type { i32 }

@MNT_ROOTFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"hfs\00", align 1
@MNT_MULTILABEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"devfs\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"fdesc\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"nfs\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"afpfs\00", align 1
@VFC_VFSNATIVEXATTR = common dso_local global i32 0, align 4
@VFC_VFSNOMACLABEL = common dso_local global i32 0, align 4
@mount_label_associate = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mac_mount_label_associate(i32 %0, %struct.mount* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mount*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.mount* %1, %struct.mount** %4, align 8
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @vfs_context_ucred(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mount*, %struct.mount** %4, align 8
  %9 = getelementptr inbounds %struct.mount, %struct.mount* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @MNT_ROOTFS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.mount*, %struct.mount** %4, align 8
  %16 = getelementptr inbounds %struct.mount, %struct.mount* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @strcmp(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load i32, i32* @MNT_MULTILABEL, align 4
  %23 = load %struct.mount*, %struct.mount** %4, align 8
  %24 = getelementptr inbounds %struct.mount, %struct.mount* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %14, %2
  %28 = load %struct.mount*, %struct.mount** %4, align 8
  %29 = getelementptr inbounds %struct.mount, %struct.mount* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = call i64 @strcmp(i8* %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @MNT_MULTILABEL, align 4
  %36 = load %struct.mount*, %struct.mount** %4, align 8
  %37 = getelementptr inbounds %struct.mount, %struct.mount* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  br label %40

40:                                               ; preds = %34, %27
  %41 = load %struct.mount*, %struct.mount** %4, align 8
  %42 = getelementptr inbounds %struct.mount, %struct.mount* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load i32, i32* @MNT_MULTILABEL, align 4
  %49 = load %struct.mount*, %struct.mount** %4, align 8
  %50 = getelementptr inbounds %struct.mount, %struct.mount* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %47, %40
  %54 = load %struct.mount*, %struct.mount** %4, align 8
  %55 = getelementptr inbounds %struct.mount, %struct.mount* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i64 @strcmp(i8* %57, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53
  %61 = load i32, i32* @MNT_MULTILABEL, align 4
  %62 = load %struct.mount*, %struct.mount** %4, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.mount*, %struct.mount** %4, align 8
  %68 = getelementptr inbounds %struct.mount, %struct.mount* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  %71 = call i64 @strcmp(i8* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %66
  %74 = load i32, i32* @MNT_MULTILABEL, align 4
  %75 = load %struct.mount*, %struct.mount** %4, align 8
  %76 = getelementptr inbounds %struct.mount, %struct.mount* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %79

79:                                               ; preds = %73, %66
  %80 = load %struct.mount*, %struct.mount** %4, align 8
  %81 = getelementptr inbounds %struct.mount, %struct.mount* %80, i32 0, i32 3
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = icmp ne %struct.TYPE_3__* %82, null
  br i1 %83, label %84, label %123

84:                                               ; preds = %79
  %85 = load %struct.mount*, %struct.mount** %4, align 8
  %86 = getelementptr inbounds %struct.mount, %struct.mount* %85, i32 0, i32 3
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @VFC_VFSNATIVEXATTR, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load i32, i32* @MNT_MULTILABEL, align 4
  %95 = load %struct.mount*, %struct.mount** %4, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %84
  %100 = load %struct.mount*, %struct.mount** %4, align 8
  %101 = getelementptr inbounds %struct.mount, %struct.mount* %100, i32 0, i32 3
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @VFC_VFSNOMACLABEL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.mount*, %struct.mount** %4, align 8
  %110 = getelementptr inbounds %struct.mount, %struct.mount* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @MNT_MULTILABEL, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load i32, i32* @MNT_MULTILABEL, align 4
  %117 = xor i32 %116, -1
  %118 = load %struct.mount*, %struct.mount** %4, align 8
  %119 = getelementptr inbounds %struct.mount, %struct.mount* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %120, %117
  store i32 %121, i32* %119, align 8
  br label %122

122:                                              ; preds = %115, %108, %99
  br label %123

123:                                              ; preds = %122, %79
  %124 = load i32, i32* @mount_label_associate, align 4
  %125 = load i32, i32* %5, align 4
  %126 = load %struct.mount*, %struct.mount** %4, align 8
  %127 = load %struct.mount*, %struct.mount** %4, align 8
  %128 = getelementptr inbounds %struct.mount, %struct.mount* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @MAC_PERFORM(i32 %124, i32 %125, %struct.mount* %126, i32 %129)
  ret void
}

declare dso_local i32 @vfs_context_ucred(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @MAC_PERFORM(i32, i32, %struct.mount*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
