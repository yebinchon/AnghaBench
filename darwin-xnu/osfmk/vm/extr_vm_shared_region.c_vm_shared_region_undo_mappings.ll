; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_undo_mappings.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_shared_region.c_vm_shared_region_undo_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shared_file_mapping_np = type { i64, i64, i32, i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@FALSE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [56 x i8] c"Failed to undo mappings because of NULL shared region.\0A\00", align 1
@THREAD_UNINT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [114 x i8] c"shared_region: mapping[%d]: address:0x%016llx size:0x%016llx offset:0x%016llx maxprot:0x%x prot:0x%x: undoing...\0A\00", align 1
@KERN_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_shared_region_undo_mappings(i32* %0, i64 %1, %struct.shared_file_mapping_np* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.shared_file_mapping_np*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__*, align 8
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.shared_file_mapping_np* %2, %struct.shared_file_mapping_np** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %10, align 8
  %15 = load i8*, i8** @FALSE, align 8
  %16 = ptrtoint i8* %15 to i32
  store i32 %16, i32* %11, align 4
  %17 = call i32 (...) @current_task()
  %18 = call %struct.TYPE_8__* @vm_shared_region_get(i32 %17)
  store %struct.TYPE_8__* %18, %struct.TYPE_8__** %10, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %20 = icmp eq %struct.TYPE_8__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  br label %181

23:                                               ; preds = %4
  %24 = load i32*, i32** %5, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %79

26:                                               ; preds = %23
  %27 = call i32 (...) @vm_shared_region_lock()
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp sgt i32 %30, 1
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  br label %34

34:                                               ; preds = %39, %26
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 1
  %42 = load i32, i32* @THREAD_UNINT, align 4
  %43 = call i32 @vm_shared_region_sleep(i32* %41, i32 %42)
  br label %34

44:                                               ; preds = %34
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i32 @assert(i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp sgt i32 %54, 1
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i8*, i8** @TRUE, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = call i32 (...) @vm_shared_region_unlock()
  %63 = load i8*, i8** @TRUE, align 8
  %64 = ptrtoint i8* %63 to i32
  store i32 %64, i32* %11, align 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %12, align 8
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %71, %struct.TYPE_9__** %13, align 8
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  store i32* %75, i32** %5, align 8
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %6, align 8
  br label %79

79:                                               ; preds = %44, %23
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %149, %79
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = icmp ult i32 %81, %82
  br i1 %83, label %84, label %152

84:                                               ; preds = %80
  %85 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %85, i64 %87
  %89 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = icmp eq i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  br label %149

93:                                               ; preds = %84
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %96 = load i32, i32* %9, align 4
  %97 = zext i32 %96 to i64
  %98 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %95, i64 %97
  %99 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %101, i64 %103
  %105 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %108 = load i32, i32* %9, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %107, i64 %109
  %111 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %110, i32 0, i32 4
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %114 = load i32, i32* %9, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %113, i64 %115
  %117 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %119, i64 %121
  %123 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = inttoptr i64 %125 to i8*
  %127 = call i32 @SHARED_REGION_TRACE_INFO(i8* %126)
  %128 = load i32*, i32** %5, align 8
  %129 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %130 = load i32, i32* %9, align 4
  %131 = zext i32 %130 to i64
  %132 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %129, i64 %131
  %133 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* %6, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load %struct.shared_file_mapping_np*, %struct.shared_file_mapping_np** %7, align 8
  %138 = load i32, i32* %9, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %137, i64 %139
  %141 = getelementptr inbounds %struct.shared_file_mapping_np, %struct.shared_file_mapping_np* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @mach_vm_deallocate(i32* %128, i64 %136, i64 %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* @KERN_SUCCESS, align 8
  %146 = icmp eq i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @assert(i32 %147)
  br label %149

149:                                              ; preds = %93, %92
  %150 = load i32, i32* %9, align 4
  %151 = add i32 %150, 1
  store i32 %151, i32* %9, align 4
  br label %80

152:                                              ; preds = %80
  %153 = load i32, i32* %11, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %178

155:                                              ; preds = %152
  %156 = call i32 (...) @vm_shared_region_lock()
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp sgt i32 %159, 1
  %161 = zext i1 %160 to i32
  %162 = call i32 @assert(i32 %161)
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @assert(i32 %165)
  %167 = load i8*, i8** @FALSE, align 8
  %168 = ptrtoint i8* %167 to i32
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 1
  %173 = ptrtoint i32* %172 to i32
  %174 = call i32 @thread_wakeup(i32 %173)
  %175 = call i32 (...) @vm_shared_region_unlock()
  %176 = load i8*, i8** @FALSE, align 8
  %177 = ptrtoint i8* %176 to i32
  store i32 %177, i32* %11, align 4
  br label %178

178:                                              ; preds = %155, %152
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %180 = call i32 @vm_shared_region_deallocate(%struct.TYPE_8__* %179)
  br label %181

181:                                              ; preds = %178, %21
  ret void
}

declare dso_local %struct.TYPE_8__* @vm_shared_region_get(i32) #1

declare dso_local i32 @current_task(...) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @vm_shared_region_lock(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_shared_region_sleep(i32*, i32) #1

declare dso_local i32 @vm_shared_region_unlock(...) #1

declare dso_local i32 @SHARED_REGION_TRACE_INFO(i8*) #1

declare dso_local i64 @mach_vm_deallocate(i32*, i64, i64) #1

declare dso_local i32 @thread_wakeup(i32) #1

declare dso_local i32 @vm_shared_region_deallocate(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
