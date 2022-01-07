; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlist_parsetab.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_attrlist.c_getattrlist_parsetab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.getattrlist_attrtab = type { i64, i64, i32, i32 }
%struct.vnode_attr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATTR_TIME_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.getattrlist_attrtab*, i32, %struct.vnode_attr*, i32*, i32*, i32, i32)* @getattrlist_parsetab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getattrlist_parsetab(%struct.getattrlist_attrtab* %0, i32 %1, %struct.vnode_attr* %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.getattrlist_attrtab*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.vnode_attr*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.getattrlist_attrtab* %0, %struct.getattrlist_attrtab** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.vnode_attr* %2, %struct.vnode_attr** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %17 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %18 = icmp ne %struct.getattrlist_attrtab* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %7
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %8, align 4
  br label %121

21:                                               ; preds = %7
  br label %22

22:                                               ; preds = %110, %21
  %23 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %24 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = and i64 %25, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %99

30:                                               ; preds = %22
  %31 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %32 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* %16, align 4
  %35 = sext i32 %34 to i64
  %36 = or i64 %35, %33
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %16, align 4
  %38 = load %struct.vnode_attr*, %struct.vnode_attr** %11, align 8
  %39 = icmp ne %struct.vnode_attr* %38, null
  br i1 %39, label %40, label %48

40:                                               ; preds = %30
  %41 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %42 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.vnode_attr*, %struct.vnode_attr** %11, align 8
  %45 = getelementptr inbounds %struct.vnode_attr, %struct.vnode_attr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %40, %30
  %49 = load i32*, i32** %12, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %83

51:                                               ; preds = %48
  %52 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %53 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @ATTR_TIME_SIZE, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %51
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %57
  %61 = load i32*, i32** %12, align 8
  %62 = load i32, i32* %61, align 4
  %63 = sext i32 %62 to i64
  %64 = add i64 %63, 4
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %61, align 4
  br label %72

66:                                               ; preds = %57
  %67 = load i32*, i32** %12, align 8
  %68 = load i32, i32* %67, align 4
  %69 = sext i32 %68 to i64
  %70 = add i64 %69, 4
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %67, align 4
  br label %72

72:                                               ; preds = %66, %60
  br label %82

73:                                               ; preds = %51
  %74 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %75 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i32*, i32** %12, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %76
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  br label %82

82:                                               ; preds = %73, %72
  br label %83

83:                                               ; preds = %82, %48
  %84 = load i32*, i32** %13, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %88 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %13, align 8
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %89
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %83
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %112

98:                                               ; preds = %93
  br label %99

99:                                               ; preds = %98, %22
  br label %100

100:                                              ; preds = %99
  %101 = load %struct.getattrlist_attrtab*, %struct.getattrlist_attrtab** %9, align 8
  %102 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %101, i32 1
  store %struct.getattrlist_attrtab* %102, %struct.getattrlist_attrtab** %9, align 8
  %103 = getelementptr inbounds %struct.getattrlist_attrtab, %struct.getattrlist_attrtab* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load i32, i32* %15, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %15, align 4
  %109 = icmp ugt i32 %108, 0
  br label %110

110:                                              ; preds = %106, %100
  %111 = phi i1 [ false, %100 ], [ %109, %106 ]
  br i1 %111, label %22, label %112

112:                                              ; preds = %110, %97
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %16, align 4
  %115 = xor i32 %114, -1
  %116 = and i32 %113, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @EINVAL, align 4
  store i32 %119, i32* %8, align 4
  br label %121

120:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %121

121:                                              ; preds = %120, %118, %19
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
