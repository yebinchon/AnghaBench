; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v4.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [93 x i8] c"vm_shared_region_slide_page() did not find page start in slide info: pageIndex=%u, count=%u\0A\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@DYLD_CACHE_SLIDE4_PAGE_NO_REBASE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@DYLD_CACHE_SLIDE4_PAGE_USE_EXTRA = common dso_local global i32 0, align 4
@DYLD_CACHE_SLIDE4_PAGE_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"vm_shared_region_slide_page() out-of-bounds extras index: index=%u, count=%u\0A\00", align 1
@DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT = common dso_local global i32 0, align 4
@DYLD_CACHE_SLIDE4_PAGE_EXTRA_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i32)* @vm_shared_region_slide_page_v4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_shared_region_slide_page_v4(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %8, align 8
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %9, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %28 = ptrtoint %struct.TYPE_8__* %27 to i64
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %28, %31
  %33 = inttoptr i64 %32 to i32*
  store i32* %33, i32** %10, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = ptrtoint %struct.TYPE_8__* %34 to i64
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %11, align 8
  %41 = load i64, i64* %6, align 8
  %42 = inttoptr i64 %41 to i32*
  store i32* %42, i32** %12, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sge i32 %43, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %3
  %49 = load i32, i32* %7, align 4
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %52)
  %54 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %54, i64* %4, align 8
  br label %136

55:                                               ; preds = %3
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* @DYLD_CACHE_SLIDE4_PAGE_NO_REBASE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %55
  %65 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %65, i64* %4, align 8
  br label %136

66:                                               ; preds = %55
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @DYLD_CACHE_SLIDE4_PAGE_USE_EXTRA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %119

71:                                               ; preds = %66
  %72 = load i32, i32* %13, align 4
  %73 = load i32, i32* @DYLD_CACHE_SLIDE4_PAGE_INDEX, align 4
  %74 = and i32 %72, %73
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %112, %71
  %76 = load i32, i32* %14, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sge i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %82, i32 %85)
  %87 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %87, i64* %4, align 8
  br label %136

88:                                               ; preds = %75
  %89 = load i32*, i32** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  store i32 %93, i32* %15, align 4
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @DYLD_CACHE_SLIDE4_PAGE_INDEX, align 4
  %96 = and i32 %94, %95
  %97 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT, align 4
  %98 = shl i32 %96, %97
  store i32 %98, i32* %16, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* %9, align 4
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %103 = call i64 @rebase_chainv4(i32* %99, i32 %100, i32 %101, %struct.TYPE_8__* %102)
  store i64 %103, i64* %17, align 8
  %104 = load i64, i64* %17, align 8
  %105 = load i64, i64* @KERN_SUCCESS, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %88
  %108 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %108, i64* %4, align 8
  br label %136

109:                                              ; preds = %88
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %14, align 4
  br label %112

112:                                              ; preds = %109
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* @DYLD_CACHE_SLIDE4_PAGE_EXTRA_END, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  br i1 %117, label %75, label %118

118:                                              ; preds = %112
  br label %134

119:                                              ; preds = %66
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT, align 4
  %122 = shl i32 %120, %121
  store i32 %122, i32* %18, align 4
  %123 = load i32*, i32** %12, align 8
  %124 = load i32, i32* %18, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %127 = call i64 @rebase_chainv4(i32* %123, i32 %124, i32 %125, %struct.TYPE_8__* %126)
  store i64 %127, i64* %19, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* @KERN_SUCCESS, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %119
  %132 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %132, i64* %4, align 8
  br label %136

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %118
  %135 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %135, i64* %4, align 8
  br label %136

136:                                              ; preds = %134, %131, %107, %81, %64, %48
  %137 = load i64, i64* %4, align 8
  ret i64 %137
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @rebase_chainv4(i32*, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
