; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_map_remove_upl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_pageout.c_vm_map_remove_upl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i64 }

@UPL_NULL = common dso_local global %struct.TYPE_10__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@MAX_VECTOR_UPL_ELEMENTS = common dso_local global i32 0, align 4
@UPL_PAGE_LIST_MAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"%d of the %d sub-upls within the Vector UPL is/are not mapped\0A\00", align 1
@KERN_FAILURE = common dso_local global i32 0, align 4
@VM_MAP_REMOVE_NO_FLAGS = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_map_remove_upl(i32 %0, %struct.TYPE_10__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %10, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** @UPL_NULL, align 8
  %17 = icmp eq %struct.TYPE_10__* %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %3, align 4
  br label %165

20:                                               ; preds = %2
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %22 = call i32 @vector_upl_is_valid(%struct.TYPE_10__* %21)
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %72

24:                                               ; preds = %20
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %10, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %27 = call i32 @upl_lock(%struct.TYPE_10__* %26)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %52, %24
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @MAX_VECTOR_UPL_ELEMENTS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %28
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.TYPE_10__* @vector_upl_subupl_byindex(%struct.TYPE_10__* %33, i32 %34)
  store %struct.TYPE_10__* %35, %struct.TYPE_10__** %5, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = icmp eq %struct.TYPE_10__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %52

39:                                               ; preds = %32
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %48, %39
  br label %52

52:                                               ; preds = %51, %38
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %28

55:                                               ; preds = %28
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* %12, align 4
  %65 = call i32 @panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %63, i32 %64)
  br label %70

66:                                               ; preds = %58
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %68 = call i32 @upl_unlock(%struct.TYPE_10__* %67)
  %69 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %69, i32* %3, align 4
  br label %165

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %55
  store i32 0, i32* %9, align 4
  br label %75

72:                                               ; preds = %20
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = call i32 @upl_lock(%struct.TYPE_10__* %73)
  br label %75

75:                                               ; preds = %72, %71
  br label %76

76:                                               ; preds = %160, %107, %75
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %109

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @MAX_VECTOR_UPL_ELEMENTS, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %100

83:                                               ; preds = %79
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %85 = call i32 @vector_upl_get_submap(%struct.TYPE_10__* %84, i32* %13, i64* %14)
  %86 = load i32, i32* %4, align 4
  %87 = load i64, i64* %14, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %88, %91
  %93 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %94 = call i32 @vm_map_remove(i32 %86, i64 %87, i64 %92, i32 %93)
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @vm_map_deallocate(i32 %95)
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %98 = call i32 @upl_unlock(%struct.TYPE_10__* %97)
  %99 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %165

100:                                              ; preds = %79
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  %104 = call %struct.TYPE_10__* @vector_upl_subupl_byindex(%struct.TYPE_10__* %101, i32 %102)
  store %struct.TYPE_10__* %104, %struct.TYPE_10__** %5, align 8
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %106 = icmp eq %struct.TYPE_10__* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %76

108:                                              ; preds = %100
  br label %109

109:                                              ; preds = %108, %76
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %161

116:                                              ; preds = %109
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  store i64 %119, i64* %6, align 8
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  store i64 %122, i64* %7, align 8
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp sgt i32 %125, 1
  %127 = zext i1 %126 to i32
  %128 = call i32 @assert(i32 %127)
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %130, align 4
  %133 = load i32, i32* @UPL_PAGE_LIST_MAPPED, align 4
  %134 = xor i32 %133, -1
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = and i32 %137, %134
  store i32 %138, i32* %136, align 8
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %160, label %143

143:                                              ; preds = %116
  %144 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %145 = call i32 @upl_unlock(%struct.TYPE_10__* %144)
  %146 = load i32, i32* %4, align 4
  %147 = load i64, i64* %6, align 8
  %148 = load i32, i32* %4, align 4
  %149 = call i32 @VM_MAP_PAGE_MASK(i32 %148)
  %150 = call i64 @vm_map_trunc_page(i64 %147, i32 %149)
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = add nsw i64 %151, %152
  %154 = load i32, i32* %4, align 4
  %155 = call i32 @VM_MAP_PAGE_MASK(i32 %154)
  %156 = call i64 @vm_map_round_page(i64 %153, i32 %155)
  %157 = load i32, i32* @VM_MAP_REMOVE_NO_FLAGS, align 4
  %158 = call i32 @vm_map_remove(i32 %146, i64 %150, i64 %156, i32 %157)
  %159 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %159, i32* %3, align 4
  br label %165

160:                                              ; preds = %116
  br label %76

161:                                              ; preds = %109
  %162 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %163 = call i32 @upl_unlock(%struct.TYPE_10__* %162)
  %164 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %164, i32* %3, align 4
  br label %165

165:                                              ; preds = %161, %143, %83, %66, %18
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @vector_upl_is_valid(%struct.TYPE_10__*) #1

declare dso_local i32 @upl_lock(%struct.TYPE_10__*) #1

declare dso_local %struct.TYPE_10__* @vector_upl_subupl_byindex(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @upl_unlock(%struct.TYPE_10__*) #1

declare dso_local i32 @vector_upl_get_submap(%struct.TYPE_10__*, i32*, i64*) #1

declare dso_local i32 @vm_map_remove(i32, i64, i64, i32) #1

declare dso_local i32 @vm_map_deallocate(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
