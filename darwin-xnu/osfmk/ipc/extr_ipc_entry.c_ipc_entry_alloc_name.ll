; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_entry.c_ipc_entry_alloc_name.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_ipc_entry.c_ipc_entry_alloc_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64, i32, i64 }

@KERN_NO_SPACE = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IE_REQ_NONE = common dso_local global i32 0, align 4
@IO_NULL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ipc_entry_alloc_name(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_12__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %7, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i64 @MACH_PORT_INDEX(i32 %15)
  store i64 %16, i64* %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @MACH_PORT_GEN(i32 %17)
  store i64 %18, i64* %9, align 8
  %19 = load i64, i64* %8, align 8
  %20 = call i64 (...) @ipc_table_max_entries()
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* @KERN_NO_SPACE, align 8
  store i64 %23, i64* %4, align 8
  br label %165

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @MACH_PORT_VALID(i32 %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = call i32 @is_write_lock(%struct.TYPE_11__* %28)
  br label %30

30:                                               ; preds = %164, %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %32 = call i32 @is_active(%struct.TYPE_11__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %36 = call i32 @is_write_unlock(%struct.TYPE_11__* %35)
  %37 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %37, i64* %4, align 8
  br label %165

38:                                               ; preds = %30
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %39, %42
  br i1 %43, label %44, label %149

44:                                               ; preds = %38
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %46, align 8
  store %struct.TYPE_12__* %47, %struct.TYPE_12__** %11, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = load i64, i64* %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i64 %49
  store %struct.TYPE_12__* %50, %struct.TYPE_12__** %10, align 8
  %51 = load i64, i64* %8, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %44
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = call i64 @IE_BITS_TYPE(i64 %56)
  %58 = icmp ne i64 %57, 0
  %59 = xor i1 %58, true
  %60 = zext i1 %59 to i32
  %61 = call i32 @assert(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @IE_BITS_GEN(i64 %64)
  %66 = icmp ne i64 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i32 @assert(i32 %68)
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = call i32 @is_write_unlock(%struct.TYPE_11__* %70)
  %72 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %72, i64* %4, align 8
  br label %165

73:                                               ; preds = %44
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = call i64 @IE_BITS_TYPE(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = call i64 @IE_BITS_GEN(i64 %82)
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %88 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %87, %struct.TYPE_12__** %88, align 8
  %89 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %89, i64* %4, align 8
  br label %165

90:                                               ; preds = %79
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %92 = call i32 @is_write_unlock(%struct.TYPE_11__* %91)
  %93 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %93, i64* %4, align 8
  br label %165

94:                                               ; preds = %73
  store i64 0, i64* %12, align 8
  br label %95

95:                                               ; preds = %104, %94
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %97 = load i64, i64* %12, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %13, align 8
  %101 = load i64, i64* %8, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %13, align 8
  store i64 %105, i64* %12, align 8
  br label %95

106:                                              ; preds = %95
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %113 = load i64, i64* %12, align 8
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  store i64 %111, i64* %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %117, align 8
  %120 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %121 = load i64, i64* %12, align 8
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %123 = load i64, i64* %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = call i64 @IE_BITS_GEN(i64 %126)
  %128 = call i32 @MACH_PORT_MAKE(i64 %121, i64 %127)
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %130 = load i64, i64* %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %130
  %132 = call i32 @ipc_entry_modified(%struct.TYPE_11__* %120, i32 %128, %struct.TYPE_12__* %131)
  %133 = load i64, i64* %9, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 3
  store i64 %133, i64* %135, align 8
  %136 = load i32, i32* @IE_REQ_NONE, align 4
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %140 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %7, align 8
  store %struct.TYPE_12__* %139, %struct.TYPE_12__** %140, align 8
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @IO_NULL, align 8
  %145 = icmp eq i64 %143, %144
  %146 = zext i1 %145 to i32
  %147 = call i32 @assert(i32 %146)
  %148 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %148, i64* %4, align 8
  br label %165

149:                                              ; preds = %38
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %151 = load i64, i64* %8, align 8
  %152 = add nsw i64 %151, 1
  %153 = call i64 @ipc_entry_grow_table(%struct.TYPE_11__* %150, i64 %152)
  store i64 %153, i64* %14, align 8
  %154 = load i64, i64* %14, align 8
  %155 = load i64, i64* @KERN_NO_SPACE, align 8
  %156 = icmp ne i64 %154, %155
  %157 = zext i1 %156 to i32
  %158 = call i32 @assert(i32 %157)
  %159 = load i64, i64* %14, align 8
  %160 = load i64, i64* @KERN_SUCCESS, align 8
  %161 = icmp ne i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %149
  %163 = load i64, i64* %14, align 8
  store i64 %163, i64* %4, align 8
  br label %165

164:                                              ; preds = %149
  br label %30

165:                                              ; preds = %162, %106, %90, %86, %53, %34, %22
  %166 = load i64, i64* %4, align 8
  ret i64 %166
}

declare dso_local i64 @MACH_PORT_INDEX(i32) #1

declare dso_local i64 @MACH_PORT_GEN(i32) #1

declare dso_local i64 @ipc_table_max_entries(...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i32 @is_write_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @is_active(%struct.TYPE_11__*) #1

declare dso_local i32 @is_write_unlock(%struct.TYPE_11__*) #1

declare dso_local i64 @IE_BITS_TYPE(i64) #1

declare dso_local i64 @IE_BITS_GEN(i64) #1

declare dso_local i32 @ipc_entry_modified(%struct.TYPE_11__*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @MACH_PORT_MAKE(i64, i64) #1

declare dso_local i64 @ipc_entry_grow_table(%struct.TYPE_11__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
