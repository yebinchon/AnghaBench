; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_statfs64_common.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_syscalls.c_statfs64_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mount = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vfsstatfs = type { i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.statfs64 = type { i32, i32*, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@MNT_VISFLAGMASK = common dso_local global i32 0, align 4
@MNTK_TYPENAME_OVERRIDE = common dso_local global i32 0, align 4
@MFSTYPENAMELEN = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mount*, %struct.vfsstatfs*, i32)* @statfs64_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @statfs64_common(%struct.mount* %0, %struct.vfsstatfs* %1, i32 %2) #0 {
  %4 = alloca %struct.mount*, align 8
  %5 = alloca %struct.vfsstatfs*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.statfs64, align 8
  store %struct.mount* %0, %struct.mount** %4, align 8
  store %struct.vfsstatfs* %1, %struct.vfsstatfs** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @bzero(%struct.statfs64* %8, i32 88)
  %10 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %11 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %10, i32 0, i32 12
  %12 = load i32, i32* %11, align 8
  %13 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 14
  store i32 %12, i32* %13, align 8
  %14 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %15 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %14, i32 0, i32 11
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 13
  store i64 %16, i64* %17, align 8
  %18 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %19 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 12
  store i32 %20, i32* %21, align 8
  %22 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %23 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %22, i32 0, i32 9
  %24 = load i32, i32* %23, align 8
  %25 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 11
  store i32 %24, i32* %25, align 4
  %26 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %27 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %26, i32 0, i32 8
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 10
  store i32 %28, i32* %29, align 8
  %30 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %31 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %30, i32 0, i32 7
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 9
  store i32 %32, i32* %33, align 4
  %34 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %35 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %34, i32 0, i32 6
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 8
  store i32 %36, i32* %37, align 8
  %38 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %39 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 7
  store i32 %40, i32* %41, align 4
  %42 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %43 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 6
  store i32 %44, i32* %45, align 8
  %46 = load %struct.mount*, %struct.mount** %4, align 8
  %47 = getelementptr inbounds %struct.mount, %struct.mount* %46, i32 0, i32 3
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 5
  store i32 %50, i32* %51, align 4
  %52 = load %struct.mount*, %struct.mount** %4, align 8
  %53 = getelementptr inbounds %struct.mount, %struct.mount* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @MNT_VISFLAGMASK, align 4
  %56 = and i32 %54, %55
  %57 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 0
  store i32 %56, i32* %57, align 8
  %58 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %59 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 4
  store i32 %60, i32* %61, align 8
  %62 = load %struct.mount*, %struct.mount** %4, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MNTK_TYPENAME_OVERRIDE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %3
  %69 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load %struct.mount*, %struct.mount** %4, align 8
  %73 = getelementptr inbounds %struct.mount, %struct.mount* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* @MFSTYPENAMELEN, align 4
  %77 = call i32 @strlcpy(i32* %71, i32* %75, i32 %76)
  br label %88

78:                                               ; preds = %3
  %79 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 3
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  %82 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %83 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 0
  %86 = load i32, i32* @MFSTYPENAMELEN, align 4
  %87 = call i32 @strlcpy(i32* %81, i32* %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %68
  %89 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %93 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 0
  %96 = load i32, i32* @MAXPATHLEN, align 4
  %97 = call i32 @strlcpy(i32* %91, i32* %95, i32 %96)
  %98 = getelementptr inbounds %struct.statfs64, %struct.statfs64* %8, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  %101 = load %struct.vfsstatfs*, %struct.vfsstatfs** %5, align 8
  %102 = getelementptr inbounds %struct.vfsstatfs, %struct.vfsstatfs* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 0
  %105 = load i32, i32* @MAXPATHLEN, align 4
  %106 = call i32 @strlcpy(i32* %100, i32* %104, i32 %105)
  %107 = ptrtoint %struct.statfs64* %8 to i32
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @copyout(i32 %107, i32 %108, i32 88)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  ret i32 %110
}

declare dso_local i32 @bzero(%struct.statfs64*, i32) #1

declare dso_local i32 @strlcpy(i32*, i32*, i32) #1

declare dso_local i32 @copyout(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
