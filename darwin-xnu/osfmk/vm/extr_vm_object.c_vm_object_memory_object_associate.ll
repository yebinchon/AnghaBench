; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_memory_object_associate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_memory_object_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i8*, i8*, i8*, i32*, i32*, i32, i8* }

@MEMORY_OBJECT_NULL = common dso_local global i32* null, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@FALSE = common dso_local global i8* null, align 8
@MEMORY_OBJECT_COPY_INVALID = common dso_local global i32 0, align 4
@MEMORY_OBJECT_CONTROL_NULL = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_OBJECT_EVENT_PAGER_READY = common dso_local global i32 0, align 4
@VM_OBJECT_EVENT_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_10__* @vm_object_memory_object_associate(i32* %0, %struct.TYPE_10__* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load i32*, i32** @MEMORY_OBJECT_NULL, align 8
  %12 = icmp ne i32* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @assert(i32 %13)
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_OBJECT_NULL, align 8
  %17 = icmp ne %struct.TYPE_10__* %15, %16
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @assert(i32 %21)
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @assert(i32 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load i8*, i8** %28, align 8
  %30 = icmp ne i8* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 3
  %36 = load i8*, i8** %35, align 8
  %37 = icmp ne i8* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  br label %59

41:                                               ; preds = %4
  %42 = load i32, i32* %7, align 4
  %43 = call %struct.TYPE_10__* @vm_object_allocate(i32 %42)
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %6, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** @VM_OBJECT_NULL, align 8
  %46 = icmp ne %struct.TYPE_10__* %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = load i8*, i8** @FALSE, align 8
  %50 = ptrtoint i8* %49 to i32
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i8*, i8** @FALSE, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 8
  store i8* %53, i8** %55, align 8
  %56 = load i32, i32* @MEMORY_OBJECT_COPY_INVALID, align 4
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 7
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %41, %18
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %61 = call i32* @memory_object_control_allocate(%struct.TYPE_10__* %60)
  store i32* %61, i32** %9, align 8
  %62 = load i32*, i32** %9, align 8
  %63 = load i32*, i32** @MEMORY_OBJECT_CONTROL_NULL, align 8
  %64 = icmp ne i32* %62, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @assert(i32 %65)
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %68 = call i32 @vm_object_lock(%struct.TYPE_10__* %67)
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 3
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = call i32 @assert(i32 %74)
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 2
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 6
  %85 = load i32*, i32** %84, align 8
  %86 = icmp eq i32* %85, null
  %87 = zext i1 %86 to i32
  %88 = call i32 @assert(i32 %87)
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 5
  %91 = load i32*, i32** %90, align 8
  %92 = icmp eq i32* %91, null
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @memory_object_reference(i32* %95)
  %97 = load i8*, i8** @TRUE, align 8
  %98 = ptrtoint i8* %97 to i32
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %5, align 8
  %102 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %102, i32 0, i32 6
  store i32* %101, i32** %103, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 5
  store i32* %104, i32** %106, align 8
  %107 = load i8*, i8** @FALSE, align 8
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = call i32 @vm_object_unlock(%struct.TYPE_10__* %110)
  %112 = load i32*, i32** %5, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 5
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* @PAGE_SIZE, align 4
  %117 = call i32 @memory_object_init(i32* %112, i32* %115, i32 %116)
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %119 = call i32 @vm_object_lock(%struct.TYPE_10__* %118)
  %120 = load i64, i64* %8, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %59
  %123 = load i8*, i8** @TRUE, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 4
  store i8* %123, i8** %125, align 8
  br label %126

126:                                              ; preds = %122, %59
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %126
  %132 = load i8*, i8** @TRUE, align 8
  %133 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %134 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %133, i32 0, i32 3
  store i8* %132, i8** %134, align 8
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %136 = load i32, i32* @VM_OBJECT_EVENT_PAGER_READY, align 4
  %137 = call i32 @vm_object_wakeup(%struct.TYPE_10__* %135, i32 %136)
  br label %138

138:                                              ; preds = %131, %126
  %139 = load i8*, i8** @TRUE, align 8
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  store i8* %139, i8** %141, align 8
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %143 = load i32, i32* @VM_OBJECT_EVENT_INITIALIZED, align 4
  %144 = call i32 @vm_object_wakeup(%struct.TYPE_10__* %142, i32 %143)
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %146 = call i32 @vm_object_unlock(%struct.TYPE_10__* %145)
  %147 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  ret %struct.TYPE_10__* %147
}

declare dso_local i32 @assert(i32) #1

declare dso_local %struct.TYPE_10__* @vm_object_allocate(i32) #1

declare dso_local i32* @memory_object_control_allocate(%struct.TYPE_10__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_10__*) #1

declare dso_local i32 @memory_object_reference(i32*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @memory_object_init(i32*, i32*, i32) #1

declare dso_local i32 @vm_object_wakeup(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
