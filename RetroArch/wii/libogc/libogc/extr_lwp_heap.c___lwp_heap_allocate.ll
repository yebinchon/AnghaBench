; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_allocate.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_14__* }

@HEAP_BLOCK_USED_OVERHEAD = common dso_local global i32 0, align 4
@HEAP_BLOCK_USED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @__lwp_heap_allocate(%struct.TYPE_13__* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HEAP_BLOCK_USED_OVERHEAD, align 4
  %16 = sub nsw i32 -1, %15
  %17 = icmp sge i32 %14, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %166

19:                                               ; preds = %2
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @_CPU_ISR_Disable(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = srem i32 %22, %25
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = add nsw i32 %27, %30
  %32 = load i32, i32* @HEAP_BLOCK_USED_OVERHEAD, align 4
  %33 = add nsw i32 %31, %32
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %19
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %36, %19
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = icmp ult i64 %46, 24
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  store i32 24, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %44
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %51, align 8
  store %struct.TYPE_14__* %52, %struct.TYPE_14__** %8, align 8
  br label %53

53:                                               ; preds = %69, %49
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %56 = call %struct.TYPE_14__* @__lwp_heap_tail(%struct.TYPE_13__* %55)
  %57 = icmp eq %struct.TYPE_14__* %54, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = load i32, i32* %13, align 4
  %60 = call i32 @_CPU_ISR_Restore(i32 %59)
  store i8* null, i8** %3, align 8
  br label %166

61:                                               ; preds = %53
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %73

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 2
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  store %struct.TYPE_14__* %72, %struct.TYPE_14__** %8, align 8
  br label %53

73:                                               ; preds = %67
  %74 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %76, %77
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @HEAP_BLOCK_USED_OVERHEAD, align 4
  %83 = add nsw i32 %81, %82
  %84 = icmp sgt i32 %78, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %73
  %86 = load i32, i32* %7, align 4
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = sub nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %92 = call %struct.TYPE_14__* @__lwp_heap_nextblock(%struct.TYPE_14__* %91)
  store %struct.TYPE_14__* %92, %struct.TYPE_14__** %9, align 8
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call %struct.TYPE_14__* @__lwp_heap_blockat(%struct.TYPE_14__* %98, i32 %99)
  store %struct.TYPE_14__* %100, %struct.TYPE_14__** %10, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @HEAP_BLOCK_USED, align 4
  %103 = call i8* @__lwp_heap_buildflag(i32 %101, i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 1
  store i32 %104, i32* %108, align 4
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %110 = call i8* @__lwp_heap_startuser(%struct.TYPE_14__* %109)
  store i8* %110, i8** %11, align 8
  br label %143

111:                                              ; preds = %73
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %113 = call %struct.TYPE_14__* @__lwp_heap_nextblock(%struct.TYPE_14__* %112)
  store %struct.TYPE_14__* %113, %struct.TYPE_14__** %9, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @HEAP_BLOCK_USED, align 4
  %118 = call i8* @__lwp_heap_buildflag(i32 %116, i32 %117)
  %119 = ptrtoint i8* %118 to i32
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 1
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 3
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 3
  store %struct.TYPE_12__* %129, %struct.TYPE_12__** %133, align 8
  %134 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %135, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store %struct.TYPE_14__* %136, %struct.TYPE_14__** %140, align 8
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %142 = call i8* @__lwp_heap_startuser(%struct.TYPE_14__* %141)
  store i8* %142, i8** %11, align 8
  br label %143

143:                                              ; preds = %111, %85
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i8*, i8** %11, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = sub nsw i32 %151, 1
  %153 = and i32 %148, %152
  %154 = sub nsw i32 %146, %153
  store i32 %154, i32* %12, align 4
  %155 = load i32, i32* %12, align 4
  %156 = load i8*, i8** %11, align 8
  %157 = sext i32 %155 to i64
  %158 = getelementptr i8, i8* %156, i64 %157
  store i8* %158, i8** %11, align 8
  %159 = load i32, i32* %12, align 4
  %160 = load i8*, i8** %11, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = getelementptr inbounds i32, i32* %161, i64 -1
  store i32 %159, i32* %162, align 4
  %163 = load i32, i32* %13, align 4
  %164 = call i32 @_CPU_ISR_Restore(i32 %163)
  %165 = load i8*, i8** %11, align 8
  store i8* %165, i8** %3, align 8
  br label %166

166:                                              ; preds = %143, %58, %18
  %167 = load i8*, i8** %3, align 8
  ret i8* %167
}

declare dso_local i32 @_CPU_ISR_Disable(i32) #1

declare dso_local %struct.TYPE_14__* @__lwp_heap_tail(%struct.TYPE_13__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i32) #1

declare dso_local %struct.TYPE_14__* @__lwp_heap_nextblock(%struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @__lwp_heap_blockat(%struct.TYPE_14__*, i32) #1

declare dso_local i8* @__lwp_heap_buildflag(i32, i32) #1

declare dso_local i8* @__lwp_heap_startuser(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
