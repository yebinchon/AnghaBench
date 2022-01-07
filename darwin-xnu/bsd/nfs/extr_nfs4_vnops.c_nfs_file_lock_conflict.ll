; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_file_lock_conflict.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_nfs4_vnops.c_nfs_file_lock_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_file_lock = type { i32, i64, i64, i64, i64 }

@NFS_FILE_LOCK_DEAD = common dso_local global i32 0, align 4
@NFS_FILE_LOCK_STYLE_MASK = common dso_local global i32 0, align 4
@F_WRLCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfs_file_lock_conflict(%struct.nfs_file_lock* %0, %struct.nfs_file_lock* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfs_file_lock*, align 8
  %6 = alloca %struct.nfs_file_lock*, align 8
  %7 = alloca i32*, align 8
  store %struct.nfs_file_lock* %0, %struct.nfs_file_lock** %5, align 8
  store %struct.nfs_file_lock* %1, %struct.nfs_file_lock** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %9 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @NFS_FILE_LOCK_DEAD, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %3
  %15 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %16 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NFS_FILE_LOCK_DEAD, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %14, %3
  store i32 0, i32* %4, align 4
  br label %103

22:                                               ; preds = %14
  %23 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %24 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %27 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %72

30:                                               ; preds = %22
  %31 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %32 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @NFS_FILE_LOCK_STYLE_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %37 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @NFS_FILE_LOCK_STYLE_MASK, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %35, %40
  br i1 %41, label %42, label %72

42:                                               ; preds = %30
  %43 = load i32*, i32** %7, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %71

45:                                               ; preds = %42
  %46 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %47 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %50 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %48, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %45
  %54 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %55 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %58 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %61, label %71

61:                                               ; preds = %53
  %62 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %63 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %66 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %65, i32 0, i32 4
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61
  %70 = load i32*, i32** %7, align 8
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %61, %53, %45, %42
  store i32 0, i32* %4, align 4
  br label %103

72:                                               ; preds = %30, %22
  %73 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %74 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %77 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %76, i32 0, i32 4
  %78 = load i64, i64* %77, align 8
  %79 = icmp sgt i64 %75, %78
  br i1 %79, label %88, label %80

80:                                               ; preds = %72
  %81 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %82 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %85 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %84, i32 0, i32 3
  %86 = load i64, i64* %85, align 8
  %87 = icmp slt i64 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %80, %72
  store i32 0, i32* %4, align 4
  br label %103

89:                                               ; preds = %80
  %90 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %5, align 8
  %91 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @F_WRLCK, align 8
  %94 = icmp ne i64 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load %struct.nfs_file_lock*, %struct.nfs_file_lock** %6, align 8
  %97 = getelementptr inbounds %struct.nfs_file_lock, %struct.nfs_file_lock* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @F_WRLCK, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %95
  store i32 0, i32* %4, align 4
  br label %103

102:                                              ; preds = %95, %89
  store i32 1, i32* %4, align 4
  br label %103

103:                                              ; preds = %102, %101, %88, %71, %21
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
