; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_free.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_heap.c___lwp_heap_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i64, i64, %struct.TYPE_19__*, %struct.TYPE_19__* }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__lwp_heap_free(%struct.TYPE_18__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca %struct.TYPE_19__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_19__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store i8* %1, i8** %5, align 8
  %13 = load i8*, i8** %12, align 8
  %14 = call i32 @_CPU_ISR_Disable(i8* %13)
  %15 = load i8*, i8** %5, align 8
  %16 = call %struct.TYPE_19__* @__lwp_heap_usrblockat(i8* %15)
  store %struct.TYPE_19__* %16, %struct.TYPE_19__** %6, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %19 = call i32 @__lwp_heap_blockin(%struct.TYPE_18__* %17, %struct.TYPE_19__* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %23 = call i64 @__lwp_heap_blockfree(%struct.TYPE_19__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %2
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @_CPU_ISR_Restore(i8* %26)
  %28 = load i32, i32* @FALSE, align 4
  store i32 %28, i32* %3, align 4
  br label %193

29:                                               ; preds = %21
  %30 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %31 = call i8* @__lwp_heap_blocksize(%struct.TYPE_19__* %30)
  store i8* %31, i8** %11, align 8
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = call %struct.TYPE_19__* @__lwp_heap_blockat(%struct.TYPE_19__* %32, i8* %33)
  store %struct.TYPE_19__* %34, %struct.TYPE_19__** %7, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %37 = call i32 @__lwp_heap_blockin(%struct.TYPE_18__* %35, %struct.TYPE_19__* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %29
  %40 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39, %29
  %48 = load i8*, i8** %12, align 8
  %49 = call i32 @_CPU_ISR_Restore(i8* %48)
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %3, align 4
  br label %193

51:                                               ; preds = %39
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %53 = call i64 @__lwp_heap_prev_blockfree(%struct.TYPE_19__* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %114

55:                                               ; preds = %51
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %57 = call %struct.TYPE_19__* @__lwp_heap_prevblock(%struct.TYPE_19__* %56)
  store %struct.TYPE_19__* %57, %struct.TYPE_19__** %9, align 8
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %60 = call i32 @__lwp_heap_blockin(%struct.TYPE_18__* %58, %struct.TYPE_19__* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %55
  %63 = load i8*, i8** %12, align 8
  %64 = call i32 @_CPU_ISR_Restore(i8* %63)
  %65 = load i32, i32* @FALSE, align 4
  store i32 %65, i32* %3, align 4
  br label %193

66:                                               ; preds = %55
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %68 = call i64 @__lwp_heap_blockfree(%struct.TYPE_19__* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %102

70:                                               ; preds = %66
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i8*, i8** %11, align 8
  %75 = getelementptr i8, i8* %74, i64 %73
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr i8, i8* %75, i64 %78
  %80 = ptrtoint i8* %79 to i64
  store i64 %80, i64* %77, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %82 = call %struct.TYPE_19__* @__lwp_heap_nextblock(%struct.TYPE_19__* %81)
  store %struct.TYPE_19__* %82, %struct.TYPE_19__** %10, align 8
  %83 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %84 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.TYPE_19__*, %struct.TYPE_19__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %86, i32 0, i32 1
  store i64 %85, i64* %87, align 8
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %89, align 8
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_19__*, %struct.TYPE_19__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %93, i32 0, i32 2
  store %struct.TYPE_19__* %90, %struct.TYPE_19__** %94, align 8
  %95 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %96 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %96, align 8
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %98, i32 0, i32 2
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 3
  store %struct.TYPE_19__* %97, %struct.TYPE_19__** %101, align 8
  br label %113

102:                                              ; preds = %66
  %103 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i8*, i8** %11, align 8
  %107 = getelementptr i8, i8* %106, i64 %105
  %108 = ptrtoint i8* %107 to i64
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  store i64 %108, i64* %112, align 8
  br label %113

113:                                              ; preds = %102, %70
  br label %189

114:                                              ; preds = %51
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %116 = call i64 @__lwp_heap_blockfree(%struct.TYPE_19__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %164

118:                                              ; preds = %114
  %119 = load i8*, i8** %11, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr i8, i8* %119, i64 %122
  %124 = ptrtoint i8* %123 to i64
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %128 = call %struct.TYPE_19__* @__lwp_heap_nextblock(%struct.TYPE_19__* %127)
  store %struct.TYPE_19__* %128, %struct.TYPE_19__** %8, align 8
  %129 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  store i64 %131, i64* %133, align 8
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %135, align 8
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 3
  store %struct.TYPE_19__* %136, %struct.TYPE_19__** %138, align 8
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_19__*, %struct.TYPE_19__** %140, align 8
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 2
  store %struct.TYPE_19__* %141, %struct.TYPE_19__** %143, align 8
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 3
  store %struct.TYPE_19__* %144, %struct.TYPE_19__** %148, align 8
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %150 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 3
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %152, i32 0, i32 2
  store %struct.TYPE_19__* %149, %struct.TYPE_19__** %153, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_19__*, %struct.TYPE_19__** %155, align 8
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %158 = icmp eq %struct.TYPE_19__* %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %118
  %160 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 0
  store %struct.TYPE_19__* %160, %struct.TYPE_19__** %162, align 8
  br label %163

163:                                              ; preds = %159, %118
  br label %188

164:                                              ; preds = %114
  %165 = load i8*, i8** %11, align 8
  %166 = ptrtoint i8* %165 to i64
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  store i64 %166, i64* %168, align 8
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 1
  store i64 %166, i64* %170, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %172 = call %struct.TYPE_19__* @__lwp_heap_head(%struct.TYPE_18__* %171)
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 2
  store %struct.TYPE_19__* %172, %struct.TYPE_19__** %174, align 8
  %175 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %176 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_19__*, %struct.TYPE_19__** %176, align 8
  %178 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %178, i32 0, i32 3
  store %struct.TYPE_19__* %177, %struct.TYPE_19__** %179, align 8
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  store %struct.TYPE_19__* %180, %struct.TYPE_19__** %182, align 8
  %183 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %184, i32 0, i32 3
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %186, i32 0, i32 2
  store %struct.TYPE_19__* %183, %struct.TYPE_19__** %187, align 8
  br label %188

188:                                              ; preds = %164, %163
  br label %189

189:                                              ; preds = %188, %113
  %190 = load i8*, i8** %12, align 8
  %191 = call i32 @_CPU_ISR_Restore(i8* %190)
  %192 = load i32, i32* @TRUE, align 4
  store i32 %192, i32* %3, align 4
  br label %193

193:                                              ; preds = %189, %62, %47, %25
  %194 = load i32, i32* %3, align 4
  ret i32 %194
}

declare dso_local i32 @_CPU_ISR_Disable(i8*) #1

declare dso_local %struct.TYPE_19__* @__lwp_heap_usrblockat(i8*) #1

declare dso_local i32 @__lwp_heap_blockin(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i64 @__lwp_heap_blockfree(%struct.TYPE_19__*) #1

declare dso_local i32 @_CPU_ISR_Restore(i8*) #1

declare dso_local i8* @__lwp_heap_blocksize(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @__lwp_heap_blockat(%struct.TYPE_19__*, i8*) #1

declare dso_local i64 @__lwp_heap_prev_blockfree(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @__lwp_heap_prevblock(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @__lwp_heap_nextblock(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_19__* @__lwp_heap_head(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
