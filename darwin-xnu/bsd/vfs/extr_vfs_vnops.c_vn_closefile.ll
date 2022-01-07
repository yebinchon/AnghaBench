; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_closefile.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_vnops.c_vn_closefile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fileglob = type { i32, i32, %struct.vnode* }
%struct.vnode = type { i32 }
%struct.flock = type { i32, i32, i32, i32 }

@DTYPE_VNODE = common dso_local global i64 0, align 8
@FHASLOCK = common dso_local global i32 0, align 4
@FG_HAS_OFDLOCK = common dso_local global i32 0, align 4
@F_UNLCK = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@F_FLOCK = common dso_local global i32 0, align 4
@F_OFD_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fileglob*, i32)* @vn_closefile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vn_closefile(%struct.fileglob* %0, i32 %1) #0 {
  %3 = alloca %struct.fileglob*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.flock, align 4
  store %struct.fileglob* %0, %struct.fileglob** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %9 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %8, i32 0, i32 2
  %10 = load %struct.vnode*, %struct.vnode** %9, align 8
  store %struct.vnode* %10, %struct.vnode** %5, align 8
  %11 = load %struct.vnode*, %struct.vnode** %5, align 8
  %12 = call i32 @vnode_getwithref(%struct.vnode* %11)
  store i32 %12, i32* %6, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %79

14:                                               ; preds = %2
  %15 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %16 = call i64 @FILEGLOB_DTYPE(%struct.fileglob* %15)
  %17 = load i64, i64* @DTYPE_VNODE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %70

19:                                               ; preds = %14
  %20 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %21 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @FHASLOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %19
  %27 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %28 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @FG_HAS_OFDLOCK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %26, %19
  %34 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 0
  %35 = load i32, i32* @F_UNLCK, align 4
  store i32 %35, i32* %34, align 4
  %36 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 2
  store i32 0, i32* %37, align 4
  %38 = getelementptr inbounds %struct.flock, %struct.flock* %7, i32 0, i32 3
  %39 = load i32, i32* @SEEK_SET, align 4
  store i32 %39, i32* %38, align 4
  %40 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %41 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @FHASLOCK, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %33
  %47 = load %struct.vnode*, %struct.vnode** %5, align 8
  %48 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %49 = ptrtoint %struct.fileglob* %48 to i32
  %50 = load i32, i32* @F_UNLCK, align 4
  %51 = load i32, i32* @F_FLOCK, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @VNOP_ADVLOCK(%struct.vnode* %47, i32 %49, i32 %50, %struct.flock* %7, i32 %51, i32 %52, i32* null)
  br label %54

54:                                               ; preds = %46, %33
  %55 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %56 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @FG_HAS_OFDLOCK, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %54
  %62 = load %struct.vnode*, %struct.vnode** %5, align 8
  %63 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %64 = ptrtoint %struct.fileglob* %63 to i32
  %65 = load i32, i32* @F_UNLCK, align 4
  %66 = load i32, i32* @F_OFD_LOCK, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @VNOP_ADVLOCK(%struct.vnode* %62, i32 %64, i32 %65, %struct.flock* %7, i32 %66, i32 %67, i32* null)
  br label %69

69:                                               ; preds = %61, %54
  br label %70

70:                                               ; preds = %69, %26, %14
  %71 = load %struct.vnode*, %struct.vnode** %5, align 8
  %72 = load %struct.fileglob*, %struct.fileglob** %3, align 8
  %73 = getelementptr inbounds %struct.fileglob, %struct.fileglob* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @vn_close(%struct.vnode* %71, i32 %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load %struct.vnode*, %struct.vnode** %5, align 8
  %78 = call i32 @vnode_put(%struct.vnode* %77)
  br label %79

79:                                               ; preds = %70, %2
  %80 = load i32, i32* %6, align 4
  ret i32 %80
}

declare dso_local i32 @vnode_getwithref(%struct.vnode*) #1

declare dso_local i64 @FILEGLOB_DTYPE(%struct.fileglob*) #1

declare dso_local i32 @VNOP_ADVLOCK(%struct.vnode*, i32, i32, %struct.flock*, i32, i32, i32*) #1

declare dso_local i32 @vn_close(%struct.vnode*, i32, i32) #1

declare dso_local i32 @vnode_put(%struct.vnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
