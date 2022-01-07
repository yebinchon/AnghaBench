; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_pager_cluster_write.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_bsd_vm.c_vnode_pager_cluster_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@UPL_MSYNC = common dso_local global i32 0, align 4
@UPL_VNODE_PAGER = common dso_local global i32 0, align 4
@UPL_IOSYNC = common dso_local global i32 0, align 4
@UPL_KEEPCACHED = common dso_local global i32 0, align 4
@MAX_UPL_TRANSFER_BYTES = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnode_pager_cluster_write(%struct.TYPE_3__* %0, i64 %1, i64 %2, i64* %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = load i32, i32* @UPL_MSYNC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %86

21:                                               ; preds = %6
  %22 = load i32, i32* @UPL_VNODE_PAGER, align 4
  %23 = load i32, i32* %12, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @UPL_IOSYNC, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %21
  %30 = load i32*, i32** %11, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @UPL_KEEPCACHED, align 4
  %34 = load i32, i32* %12, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %32, %29, %21
  br label %37

37:                                               ; preds = %72, %36
  %38 = load i64, i64* %9, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %79

40:                                               ; preds = %37
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @MAX_UPL_TRANSFER_BYTES, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %40
  %45 = load i64, i64* %9, align 8
  br label %48

46:                                               ; preds = %40
  %47 = load i64, i64* @MAX_UPL_TRANSFER_BYTES, align 8
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i64 [ %45, %44 ], [ %47, %46 ]
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp eq i64 %50, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @assert(i32 %53)
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %8, align 8
  %59 = load i64, i64* %13, align 8
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @vnode_pageout(i32 %57, i32* null, i32 0, i64 %58, i64 %59, i32 %60, i32* %14)
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @UPL_KEEPCACHED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %48
  %67 = load i32, i32* %14, align 4
  %68 = load i32*, i32** %11, align 8
  store i32 %67, i32* %68, align 4
  %69 = icmp ne i32 %67, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %66
  br label %79

71:                                               ; preds = %66
  br label %72

72:                                               ; preds = %71, %48
  %73 = load i64, i64* %13, align 8
  %74 = load i64, i64* %9, align 8
  %75 = sub nsw i64 %74, %73
  store i64 %75, i64* %9, align 8
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %8, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %8, align 8
  br label %37

79:                                               ; preds = %70, %37
  %80 = load i64*, i64** %10, align 8
  %81 = icmp ne i64* %80, null
  br i1 %81, label %82, label %85

82:                                               ; preds = %79
  %83 = load i64, i64* %8, align 8
  %84 = load i64*, i64** %10, align 8
  store i64 %83, i64* %84, align 8
  br label %85

85:                                               ; preds = %82, %79
  br label %140

86:                                               ; preds = %6
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @vnode_pager_get_filesize(i32 %89)
  store i64 %90, i64* %15, align 8
  %91 = load i64, i64* %15, align 8
  %92 = load i64, i64* %8, align 8
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = add nsw i64 %92, %93
  %95 = icmp sgt i64 %91, %94
  br i1 %95, label %96, label %116

96:                                               ; preds = %86
  %97 = load i64, i64* @MAX_UPL_TRANSFER_BYTES, align 8
  store i64 %97, i64* %13, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %13, align 8
  %100 = sub nsw i64 %99, 1
  %101 = trunc i64 %100 to i32
  %102 = xor i32 %101, -1
  %103 = sext i32 %102 to i64
  %104 = and i64 %98, %103
  store i64 %104, i64* %16, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* %13, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* %15, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %115

110:                                              ; preds = %96
  %111 = load i64, i64* %15, align 8
  %112 = load i64, i64* %16, align 8
  %113 = sub nsw i64 %111, %112
  %114 = call i64 @round_page(i64 %113)
  store i64 %114, i64* %13, align 8
  br label %115

115:                                              ; preds = %110, %96
  br label %119

116:                                              ; preds = %86
  %117 = load i64, i64* %8, align 8
  store i64 %117, i64* %16, align 8
  %118 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %118, i64* %13, align 8
  br label %119

119:                                              ; preds = %116, %115
  %120 = load i64, i64* %13, align 8
  %121 = load i64, i64* %13, align 8
  %122 = icmp eq i64 %120, %121
  %123 = zext i1 %122 to i32
  %124 = call i32 @assert(i32 %123)
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i64, i64* %8, align 8
  %129 = load i64, i64* %16, align 8
  %130 = sub nsw i64 %128, %129
  %131 = trunc i64 %130 to i32
  %132 = load i64, i64* %16, align 8
  %133 = load i64, i64* %13, align 8
  %134 = load i32, i32* %12, align 4
  %135 = load i32, i32* @UPL_IOSYNC, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* @UPL_VNODE_PAGER, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @vnode_pageout(i32 %127, i32* null, i32 %131, i64 %132, i64 %133, i32 %138, i32* null)
  br label %140

140:                                              ; preds = %119, %85
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vnode_pageout(i32, i32*, i32, i64, i64, i32, i32*) #1

declare dso_local i64 @vnode_pager_get_filesize(i32) #1

declare dso_local i64 @round_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
