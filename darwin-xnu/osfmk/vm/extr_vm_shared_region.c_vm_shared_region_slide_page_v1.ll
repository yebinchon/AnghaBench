; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v1.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_slide_page_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i64, i64 }
%struct.TYPE_9__ = type { i32* }

@.str = private unnamed_addr constant [66 x i8] c"No slide entry for this page in toc. PageIndex: %d Toc Count: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"No sliding bitmap entry for entryIndex: %d amongst %d entries\0A\00", align 1
@NUM_SLIDING_BITMAPS_PER_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [84 x i8] c"vm_shared_region_slide() carry over: i=%d j=%d b=0x%x slide=0x%x old=0x%x new=0x%x\0A\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32)* @vm_shared_region_slide_page_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_shared_region_slide_page_v1(%struct.TYPE_7__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_8__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_9__*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = call i32 (...) @current_task()
  %24 = call i32 @task_has_64Bit_addr(i32 %23)
  store i32 %24, i32* %14, align 4
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store %struct.TYPE_8__* %28, %struct.TYPE_8__** %15, align 8
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %30 = ptrtoint %struct.TYPE_8__* %29 to i64
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = add i64 %30, %33
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %8, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %3
  %42 = load i32, i32* %7, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45)
  br label %146

47:                                               ; preds = %3
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %16, align 4
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %54 = ptrtoint %struct.TYPE_8__* %53 to i64
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %54, %57
  %59 = inttoptr i64 %58 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %17, align 8
  %60 = load i32, i32* %16, align 4
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sge i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %47
  %66 = load i32, i32* %16, align 4
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %69)
  br label %145

71:                                               ; preds = %47
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %73 = load i32, i32* %16, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i64 %74
  store %struct.TYPE_9__* %75, %struct.TYPE_9__** %9, align 8
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %141, %71
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* @NUM_SLIDING_BITMAPS_PER_PAGE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %144

80:                                               ; preds = %76
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %140

90:                                               ; preds = %80
  store i32 0, i32* %11, align 4
  br label %91

91:                                               ; preds = %136, %90
  %92 = load i32, i32* %11, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %139

94:                                               ; preds = %91
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %11, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %135

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  %102 = sext i32 %101 to i64
  %103 = load i32, i32* %10, align 4
  %104 = mul nsw i32 %103, 8
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = mul i64 4, %107
  %109 = add i64 %102, %108
  %110 = inttoptr i64 %109 to i32*
  store i32* %110, i32** %18, align 8
  %111 = load i32*, i32** %18, align 8
  %112 = load i32, i32* %111, align 4
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %13, align 4
  %114 = load i32*, i32** %18, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, %113
  store i32 %116, i32* %114, align 4
  %117 = load i32, i32* %14, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %134

119:                                              ; preds = %100
  %120 = load i32*, i32** %18, align 8
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %19, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %119
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %19, align 4
  %130 = load i32*, i32** %18, align 8
  %131 = load i32, i32* %130, align 4
  %132 = call i32 (i8*, i32, i32, ...) @printf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0), i32 %125, i32 %126, i32 %127, i32 %128, i32 %129, i32 %131)
  %133 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %133, i32* %4, align 4
  br label %148

134:                                              ; preds = %119, %100
  br label %135

135:                                              ; preds = %134, %94
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %11, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %11, align 4
  br label %91

139:                                              ; preds = %91
  br label %140

140:                                              ; preds = %139, %80
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %76

144:                                              ; preds = %76
  br label %145

145:                                              ; preds = %144, %65
  br label %146

146:                                              ; preds = %145, %41
  %147 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %147, i32* %4, align 4
  br label %148

148:                                              ; preds = %146, %124
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i32 @task_has_64Bit_addr(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @printf(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
