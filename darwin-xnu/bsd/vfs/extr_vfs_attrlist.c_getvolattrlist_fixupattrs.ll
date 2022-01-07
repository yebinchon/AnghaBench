; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getvolattrlist_fixupattrs.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getvolattrlist_fixupattrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getvolattrlist_attrtab = type { i64, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vfs_attr = type { i32 }

@getvolattrlist_common_tab = common dso_local global %struct.getvolattrlist_attrtab* null, align 8
@getvolattrlist_vol_tab = common dso_local global %struct.getvolattrlist_attrtab* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.vfs_attr*)* @getvolattrlist_fixupattrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @getvolattrlist_fixupattrs(%struct.TYPE_3__* %0, %struct.vfs_attr* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.vfs_attr*, align 8
  %5 = alloca %struct.getvolattrlist_attrtab*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.vfs_attr* %1, %struct.vfs_attr** %4, align 8
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %55

10:                                               ; preds = %2
  %11 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** @getvolattrlist_common_tab, align 8
  store %struct.getvolattrlist_attrtab* %11, %struct.getvolattrlist_attrtab** %5, align 8
  br label %12

12:                                               ; preds = %48, %10
  %13 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %14 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = and i64 %15, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %47

22:                                               ; preds = %12
  %23 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %24 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %29 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vfs_attr*, %struct.vfs_attr** %4, align 8
  %32 = getelementptr inbounds %struct.vfs_attr, %struct.vfs_attr* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %27
  %37 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %38 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = xor i64 %39, -1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = sext i32 %43 to i64
  %45 = and i64 %44, %40
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %42, align 4
  br label %47

47:                                               ; preds = %36, %27, %22, %12
  br label %48

48:                                               ; preds = %47
  %49 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %50 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %49, i32 1
  store %struct.getvolattrlist_attrtab* %50, %struct.getvolattrlist_attrtab** %5, align 8
  %51 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %12, label %54

54:                                               ; preds = %48
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %105

60:                                               ; preds = %55
  %61 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** @getvolattrlist_vol_tab, align 8
  store %struct.getvolattrlist_attrtab* %61, %struct.getvolattrlist_attrtab** %5, align 8
  br label %62

62:                                               ; preds = %98, %60
  %63 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %64 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = and i64 %65, %69
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %97

72:                                               ; preds = %62
  %73 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %74 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %72
  %78 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %79 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.vfs_attr*, %struct.vfs_attr** %4, align 8
  %82 = getelementptr inbounds %struct.vfs_attr, %struct.vfs_attr* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %80, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %77
  %87 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %88 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = xor i64 %89, -1
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = and i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  br label %97

97:                                               ; preds = %86, %77, %72, %62
  br label %98

98:                                               ; preds = %97
  %99 = load %struct.getvolattrlist_attrtab*, %struct.getvolattrlist_attrtab** %5, align 8
  %100 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %99, i32 1
  store %struct.getvolattrlist_attrtab* %100, %struct.getvolattrlist_attrtab** %5, align 8
  %101 = getelementptr inbounds %struct.getvolattrlist_attrtab, %struct.getvolattrlist_attrtab* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %62, label %104

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104, %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
