; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_terminate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i64, i64, %struct.TYPE_15__*, i32, %struct.TYPE_15__*, %struct.TYPE_14__, i32, i8*, i64, i8*, i64, i32*, i64 }
%struct.TYPE_14__ = type { i64, i64 }

@XPR_VM_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"vm_object_terminate, object 0x%X ref %d\0A\00", align 1
@FALSE = common dso_local global i8* null, align 8
@REAP_TERMINATE = common dso_local global i32 0, align 4
@KERN_FAILURE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global %struct.TYPE_15__* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @vm_object_terminate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_object_terminate(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %5 = load i32, i32* @XPR_VM_OBJECT, align 4
  %6 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %7 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call i32 @XPR(i32 %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.TYPE_15__* %6, i64 %9, i32 0, i32 0, i32 0)
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %12 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__* %11)
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %44, label %22

22:                                               ; preds = %17
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 13
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 12
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 11
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32, %27
  %38 = load i8*, i8** @FALSE, align 8
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %39, i32 0, i32 10
  store i8* %38, i8** %40, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %42 = load i32, i32* @REAP_TERMINATE, align 4
  %43 = call i32 @vm_object_reap_pages(%struct.TYPE_15__* %41, i32 %42)
  br label %44

44:                                               ; preds = %37, %32, %22, %17, %1
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %51 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__* %50)
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %53, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sgt i64 %58, 0
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = call i32 @vm_object_unlock(%struct.TYPE_15__* %62)
  %64 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %64, i32* %2, align 4
  br label %161

65:                                               ; preds = %44
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 1
  br i1 %69, label %70, label %88

70:                                               ; preds = %65
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = call i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__* %71)
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %75, -1
  store i64 %76, i64* %74, align 8
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp sgt i64 %79, 0
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = call i32 @vm_object_res_deallocate(%struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %86 = call i32 @vm_object_unlock(%struct.TYPE_15__* %85)
  %87 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %87, i32* %2, align 4
  br label %161

88:                                               ; preds = %65
  %89 = load i64, i64* @TRUE, align 8
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 9
  store i64 %89, i64* %91, align 8
  %92 = load i8*, i8** @FALSE, align 8
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 8
  store i8* %92, i8** %94, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %88
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 6
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %114

105:                                              ; preds = %99
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 6
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %105
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %113 = call i32 @vm_object_cache_remove(%struct.TYPE_15__* %112)
  br label %114

114:                                              ; preds = %111, %105, %99, %88
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 5
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %116, align 8
  store %struct.TYPE_15__* %117, %struct.TYPE_15__** %4, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  %119 = icmp ne %struct.TYPE_15__* %117, %118
  br i1 %119, label %120, label %140

120:                                              ; preds = %114
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %140, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %127 = call i32 @vm_object_lock(%struct.TYPE_15__* %126)
  %128 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %132 = icmp eq %struct.TYPE_15__* %130, %131
  br i1 %132, label %133, label %137

133:                                              ; preds = %125
  %134 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 3
  store %struct.TYPE_15__* %134, %struct.TYPE_15__** %136, align 8
  br label %137

137:                                              ; preds = %133, %125
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %139 = call i32 @vm_object_unlock(%struct.TYPE_15__* %138)
  br label %140

140:                                              ; preds = %137, %120, %114
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %150, label %145

145:                                              ; preds = %140
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %145, %140
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %152 = call i32 @vm_object_reap_async(%struct.TYPE_15__* %151)
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %154 = call i32 @vm_object_unlock(%struct.TYPE_15__* %153)
  %155 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %155, i32* %2, align 4
  br label %161

156:                                              ; preds = %145
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %158 = call i32 @vm_object_reap(%struct.TYPE_15__* %157)
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** @VM_OBJECT_NULL, align 8
  store %struct.TYPE_15__* %159, %struct.TYPE_15__** %3, align 8
  %160 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %160, i32* %2, align 4
  br label %161

161:                                              ; preds = %156, %150, %70, %49
  %162 = load i32, i32* %2, align 4
  ret i32 %162
}

declare dso_local i32 @XPR(i32, i8*, %struct.TYPE_15__*, i64, i32, i32, i32) #1

declare dso_local i32 @vm_object_lock_assert_exclusive(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_reap_pages(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_res_deallocate(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_cache_remove(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_reap_async(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_reap(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
