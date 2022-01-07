; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_objmgr.c___lwp_objmgr_initinfo.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_lwp_objmgr.c___lwp_objmgr_initinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32* }
%struct.TYPE_5__ = type { i64, i32, i32, i64, i64, i32, i32*, %struct.TYPE_6__** }

@null_local_table = common dso_local global %struct.TYPE_6__* null, align 8
@_lwp_objmgr_memsize = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lwp_objmgr_initinfo(%struct.TYPE_5__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 0, i32* %16, align 8
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 0, i32* %18, align 4
  %19 = load i64, i64* %6, align 8
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i64 %19, i64* %21, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  store i64 %22, i64* %24, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 6
  store i32* null, i32** %26, align 8
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 7
  store %struct.TYPE_6__** @null_local_table, %struct.TYPE_6__*** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 5
  %31 = call i32 @__lwp_queue_init_empty(i32* %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 4
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 %34, 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = mul i64 %38, %41
  %43 = add i64 %35, %42
  store i64 %43, i64* %9, align 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = mul i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = call i32* @__lwp_wkspace_allocate(i32 %48)
  %50 = bitcast i32* %49 to i8**
  store i8** %50, i8*** %12, align 8
  %51 = load i8**, i8*** %12, align 8
  %52 = icmp ne i8** %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %3
  br label %146

54:                                               ; preds = %3
  %55 = load i8**, i8*** %12, align 8
  %56 = bitcast i8** %55 to %struct.TYPE_6__**
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 7
  store %struct.TYPE_6__** %56, %struct.TYPE_6__*** %58, align 8
  store i64 0, i64* %8, align 8
  br label %59

59:                                               ; preds = %69, %54
  %60 = load i64, i64* %8, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i8**, i8*** %12, align 8
  %67 = load i64, i64* %8, align 8
  %68 = getelementptr inbounds i8*, i8** %66, i64 %67
  store i8* null, i8** %68, align 8
  br label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %8, align 8
  %71 = add i64 %70, 1
  store i64 %71, i64* %8, align 8
  br label %59

72:                                               ; preds = %59
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = mul i64 %75, %78
  %80 = trunc i64 %79 to i32
  %81 = call i32* @__lwp_wkspace_allocate(i32 %80)
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 6
  store i32* %81, i32** %83, align 8
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 6
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %72
  %89 = load i8**, i8*** %12, align 8
  %90 = call i32 @__lwp_wkspace_free(i8** %89)
  br label %146

91:                                               ; preds = %72
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 6
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = trunc i64 %101 to i32
  %103 = call i32 @__lwp_queue_initialize(i32* %11, i32* %94, i32 %98, i32 %102)
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  store i64 %106, i64* %7, align 8
  br label %107

107:                                              ; preds = %111, %91
  %108 = call i64 @__lwp_queue_get(i32* %11)
  %109 = inttoptr i64 %108 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %109, %struct.TYPE_6__** %10, align 8
  %110 = icmp ne %struct.TYPE_6__* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %107
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  store i64 %112, i64* %114, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 2
  store i32* null, i32** %116, align 8
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 5
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 1
  %121 = call i32 @__lwp_queue_append(i32* %118, i32* %120)
  %122 = load i64, i64* %7, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %7, align 8
  br label %107

124:                                              ; preds = %107
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 4
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = add i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 4
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, %136
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %138, align 4
  %143 = load i64, i64* %9, align 8
  %144 = load i64, i64* @_lwp_objmgr_memsize, align 8
  %145 = add i64 %144, %143
  store i64 %145, i64* @_lwp_objmgr_memsize, align 8
  br label %146

146:                                              ; preds = %124, %88, %53
  ret void
}

declare dso_local i32 @__lwp_queue_init_empty(i32*) #1

declare dso_local i32* @__lwp_wkspace_allocate(i32) #1

declare dso_local i32 @__lwp_wkspace_free(i8**) #1

declare dso_local i32 @__lwp_queue_initialize(i32*, i32*, i32, i32) #1

declare dso_local i64 @__lwp_queue_get(i32*) #1

declare dso_local i32 @__lwp_queue_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
