; ModuleID = '/home/carl/AnghaBench/Provenance/PVSupport/PVSupport/Audio/extr_TPCircularBuffer.c_TPCircularBufferInit.c'
source_filename = "/home/carl/AnghaBench/Provenance/PVSupport/PVSupport/Audio/extr_TPCircularBuffer.c_TPCircularBufferInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i64, i64, i8* }

@VM_FLAGS_ANYWHERE = common dso_local global i32 0, align 4
@ERR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Buffer allocation\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Buffer deallocation\00", align 1
@VM_INHERIT_DEFAULT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"Remap buffer memory\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Couldn't map buffer memory to end of buffer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TPCircularBufferInit(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 3, i32* %6, align 4
  br label %12

12:                                               ; preds = %2, %34, %57, %89, %111
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @round_page(i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = call i32 (...) @mach_task_self()
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = mul nsw i32 %20, 2
  %22 = load i32, i32* @VM_FLAGS_ANYWHERE, align 4
  %23 = call i64 @vm_allocate(i32 %17, i64* %7, i32 %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = load i64, i64* @ERR_SUCCESS, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %12
  %28 = load i32, i32* %6, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %6, align 4
  %30 = icmp eq i32 %28, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @reportResult(i64 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

34:                                               ; preds = %27
  br label %12

35:                                               ; preds = %12
  %36 = call i32 (...) @mach_task_self()
  %37 = load i64, i64* %7, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = add nsw i64 %37, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @vm_deallocate(i32 %36, i64 %42, i32 %45)
  store i64 %46, i64* %8, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* @ERR_SUCCESS, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %35
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %6, align 4
  %53 = icmp eq i32 %51, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = call i32 @reportResult(i64 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

57:                                               ; preds = %50
  %58 = call i32 (...) @mach_task_self()
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @vm_deallocate(i32 %58, i64 %59, i32 %62)
  br label %12

64:                                               ; preds = %35
  %65 = load i64, i64* %7, align 8
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %65, %69
  store i64 %70, i64* %9, align 8
  %71 = call i32 (...) @mach_task_self()
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (...) @mach_task_self()
  %76 = load i64, i64* %7, align 8
  %77 = load i32, i32* @VM_INHERIT_DEFAULT, align 4
  %78 = call i64 @vm_remap(i32 %71, i64* %9, i32 %74, i32 0, i32 0, i32 %75, i64 %76, i32 0, i32* %10, i32* %11, i32 %77)
  store i64 %78, i64* %8, align 8
  %79 = load i64, i64* %8, align 8
  %80 = load i64, i64* @ERR_SUCCESS, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %64
  %83 = load i32, i32* %6, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %6, align 4
  %85 = icmp eq i32 %83, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @reportResult(i64 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

89:                                               ; preds = %82
  %90 = call i32 (...) @mach_task_self()
  %91 = load i64, i64* %7, align 8
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i64 @vm_deallocate(i32 %90, i64 %91, i32 %94)
  br label %12

96:                                               ; preds = %64
  %97 = load i64, i64* %9, align 8
  %98 = load i64, i64* %7, align 8
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add nsw i64 %98, %102
  %104 = icmp ne i64 %97, %103
  br i1 %104, label %105, label %124

105:                                              ; preds = %96
  %106 = load i32, i32* %6, align 4
  %107 = add nsw i32 %106, -1
  store i32 %107, i32* %6, align 4
  %108 = icmp eq i32 %106, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %105
  %110 = call i32 @printf(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %135

111:                                              ; preds = %105
  %112 = call i32 (...) @mach_task_self()
  %113 = load i64, i64* %9, align 8
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @vm_deallocate(i32 %112, i64 %113, i32 %116)
  %118 = call i32 (...) @mach_task_self()
  %119 = load i64, i64* %7, align 8
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @vm_deallocate(i32 %118, i64 %119, i32 %122)
  br label %12

124:                                              ; preds = %96
  %125 = load i64, i64* %7, align 8
  %126 = inttoptr i64 %125 to i8*
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 4
  store i8* %126, i8** %128, align 8
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 3
  store i64 0, i64* %130, align 8
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 1
  store i64 0, i64* %132, align 8
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 2
  store i64 0, i64* %134, align 8
  store i32 1, i32* %3, align 4
  br label %135

135:                                              ; preds = %124, %109, %86, %54, %31
  %136 = load i32, i32* %3, align 4
  ret i32 %136
}

declare dso_local i32 @round_page(i32) #1

declare dso_local i64 @vm_allocate(i32, i64*, i32, i32) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @reportResult(i64, i8*) #1

declare dso_local i64 @vm_deallocate(i32, i64, i32) #1

declare dso_local i64 @vm_remap(i32, i64*, i32, i32, i32, i32, i64, i32, i32*, i32*, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
