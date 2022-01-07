; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v2.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [93 x i8] c"vm_shared_region_slide_page() did not find page start in slide info: pageIndex=%u, count=%u\0A\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@DYLD_CACHE_SLIDE_PAGE_ATTR_NO_REBASE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@DYLD_CACHE_SLIDE_PAGE_ATTR_EXTRA = common dso_local global i32 0, align 4
@DYLD_CACHE_SLIDE_PAGE_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [78 x i8] c"vm_shared_region_slide_page() out-of-bounds extras index: index=%u, count=%u\0A\00", align 1
@DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT = common dso_local global i32 0, align 4
@DYLD_CACHE_SLIDE_PAGE_ATTR_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_7__*, i64, i32)* @vm_shared_region_slide_page_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vm_shared_region_slide_page_v2(%struct.TYPE_7__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_8__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.TYPE_8__* %24, %struct.TYPE_8__** %8, align 8
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = ashr i32 %30, 32
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %35 = ptrtoint %struct.TYPE_8__* %34 to i64
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %35, %38
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %11, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %42 = ptrtoint %struct.TYPE_8__* %41 to i64
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = add i64 %42, %45
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %12, align 8
  %48 = load i64, i64* %6, align 8
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %13, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %50, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %3
  %56 = load i32, i32* %7, align 4
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @printf(i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59)
  %61 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %61, i64* %4, align 8
  br label %147

62:                                               ; preds = %3
  %63 = load i32*, i32** %11, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_ATTR_NO_REBASE, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %72, i64* %4, align 8
  br label %147

73:                                               ; preds = %62
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_ATTR_EXTRA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %128

78:                                               ; preds = %73
  %79 = load i32, i32* %14, align 4
  %80 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_VALUE, align 4
  %81 = and i32 %79, %80
  store i32 %81, i32* %15, align 4
  br label %82

82:                                               ; preds = %121, %78
  %83 = load i32, i32* %15, align 4
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = icmp sge i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %15, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %92)
  %94 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %94, i64* %4, align 8
  br label %147

95:                                               ; preds = %82
  %96 = load i32*, i32** %12, align 8
  %97 = load i32, i32* %15, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* %16, align 4
  %102 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_VALUE, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT, align 4
  %105 = shl i32 %103, %104
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32*, i32** %13, align 8
  %109 = load i32, i32* %17, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %112 = call i64 @rebase_chain(i32 %106, i32 %107, i32* %108, i32 %109, i32 %110, %struct.TYPE_8__* %111)
  store i64 %112, i64* %18, align 8
  %113 = load i64, i64* %18, align 8
  %114 = load i64, i64* @KERN_SUCCESS, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %95
  %117 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %117, i64* %4, align 8
  br label %147

118:                                              ; preds = %95
  %119 = load i32, i32* %15, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %15, align 4
  br label %121

121:                                              ; preds = %118
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_ATTR_END, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  br i1 %126, label %82, label %127

127:                                              ; preds = %121
  br label %145

128:                                              ; preds = %73
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* @DYLD_CACHE_SLIDE_PAGE_OFFSET_SHIFT, align 4
  %131 = shl i32 %129, %130
  store i32 %131, i32* %19, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %7, align 4
  %134 = load i32*, i32** %13, align 8
  %135 = load i32, i32* %19, align 4
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %138 = call i64 @rebase_chain(i32 %132, i32 %133, i32* %134, i32 %135, i32 %136, %struct.TYPE_8__* %137)
  store i64 %138, i64* %20, align 8
  %139 = load i64, i64* %20, align 8
  %140 = load i64, i64* @KERN_SUCCESS, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %128
  %143 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %143, i64* %4, align 8
  br label %147

144:                                              ; preds = %128
  br label %145

145:                                              ; preds = %144, %127
  %146 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %146, i64* %4, align 8
  br label %147

147:                                              ; preds = %145, %142, %116, %88, %71, %55
  %148 = load i64, i64* %4, align 8
  ret i64 %148
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local i64 @rebase_chain(i32, i32, i32*, i32, i32, %struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
