; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_trim.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vm/extr_vnode_pager.c_vnode_trim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnode = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.vnode* }
%struct.TYPE_6__ = type { i32, i64, i32, %struct.TYPE_6__* }

@DKIOCGETBLOCKSIZE = common dso_local global i32 0, align 4
@VNODE_READ = common dso_local global i32 0, align 4
@VNODE_BLOCKMAP_NO_TRACK = common dso_local global i32 0, align 4
@DKIOCUNMAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnode_trim(%struct.vnode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vnode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.vnode*, align 8
  %15 = alloca %struct.TYPE_6__, align 8
  %16 = alloca %struct.TYPE_6__, align 8
  store %struct.vnode* %0, %struct.vnode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i64 0, i64* %9, align 8
  %17 = load i64, i64* %5, align 8
  store i64 %17, i64* %10, align 8
  %18 = load i64, i64* %6, align 8
  store i64 %18, i64* %11, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %19 = load %struct.vnode*, %struct.vnode** %4, align 8
  %20 = getelementptr inbounds %struct.vnode, %struct.vnode* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.vnode*, %struct.vnode** %22, align 8
  store %struct.vnode* %23, %struct.vnode** %14, align 8
  %24 = load %struct.vnode*, %struct.vnode** %14, align 8
  %25 = load i32, i32* @DKIOCGETBLOCKSIZE, align 4
  %26 = ptrtoint i32* %13 to i32
  %27 = call i32 (...) @vfs_context_kernel()
  %28 = call i32 @VNOP_IOCTL(%struct.vnode* %24, i32 %25, i32 %26, i32 0, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %79

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %68, %32
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %6, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %78

37:                                               ; preds = %33
  %38 = load %struct.vnode*, %struct.vnode** %4, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = load i32, i32* @VNODE_READ, align 4
  %42 = load i32, i32* @VNODE_BLOCKMAP_NO_TRACK, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @VNOP_BLOCKMAP(%struct.vnode* %38, i64 %39, i64 %40, i64* %7, i64* %8, i32* null, i32 %43, i32* null)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %79

48:                                               ; preds = %37
  %49 = call i32 @memset(%struct.TYPE_6__* %15, i32 0, i32 32)
  %50 = call i32 @memset(%struct.TYPE_6__* %16, i32 0, i32 32)
  %51 = load i64, i64* %7, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* %13, align 4
  %54 = mul nsw i32 %52, %53
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %58, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i32 1, i32* %59, align 8
  %60 = load %struct.vnode*, %struct.vnode** %14, align 8
  %61 = load i32, i32* @DKIOCUNMAP, align 4
  %62 = ptrtoint %struct.TYPE_6__* %16 to i32
  %63 = call i32 (...) @vfs_context_kernel()
  %64 = call i32 @VNOP_IOCTL(%struct.vnode* %60, i32 %61, i32 %62, i32 0, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %48
  br label %79

68:                                               ; preds = %48
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* %8, align 8
  %71 = sub i64 %69, %70
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %8, align 8
  %74 = add i64 %72, %73
  store i64 %74, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load i64, i64* %8, align 8
  %77 = add i64 %75, %76
  store i64 %77, i64* %10, align 8
  br label %33

78:                                               ; preds = %33
  br label %79

79:                                               ; preds = %78, %67, %47, %31
  %80 = load i32, i32* %12, align 4
  ret i32 %80
}

declare dso_local i32 @VNOP_IOCTL(%struct.vnode*, i32, i32, i32, i32) #1

declare dso_local i32 @vfs_context_kernel(...) #1

declare dso_local i32 @VNOP_BLOCKMAP(%struct.vnode*, i64, i64, i64*, i64*, i32*, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
