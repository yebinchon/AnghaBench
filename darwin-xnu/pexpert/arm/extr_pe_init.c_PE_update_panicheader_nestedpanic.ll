; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_update_panicheader_nestedpanic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_update_panicheader_nestedpanic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32 }

@panic_info = common dso_local global %struct.TYPE_2__* null, align 8
@EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC = common dso_local global i32 0, align 4
@debug_buf_ptr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_update_panicheader_nestedpanic() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %2 = icmp ne %struct.TYPE_2__* %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  br label %86

4:                                                ; preds = %0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  %10 = call i32 (...) @PE_init_panicheader()
  %11 = load i32, i32* @EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %86

16:                                               ; preds = %4
  %17 = load i32, i32* @EMBEDDED_PANIC_HEADER_FLAG_NESTED_PANIC, align 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load i32, i32* @debug_buf_ptr, align 4
  %28 = call i8* @PE_get_offset_into_panic_region(i32 %27)
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i64 %29, i64* %31, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  %39 = zext i1 %38 to i32
  %40 = icmp eq i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  br label %43

43:                                               ; preds = %26, %16
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %65, label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %53
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %58, %53
  %64 = phi i1 [ false, %53 ], [ %62, %58 ]
  br label %65

65:                                               ; preds = %63, %48
  %66 = phi i1 [ true, %48 ], [ %64, %63 ]
  %67 = zext i1 %66 to i32
  %68 = call i32 @assert(i32 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %65
  %74 = load i32, i32* @debug_buf_ptr, align 4
  %75 = call i8* @PE_get_offset_into_panic_region(i32 %74)
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i64, i64* %80, align 8
  %82 = icmp eq i64 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  br label %85

85:                                               ; preds = %73, %65
  br label %86

86:                                               ; preds = %85, %9, %3
  ret void
}

declare dso_local i32 @PE_init_panicheader(...) #1

declare dso_local i8* @PE_get_offset_into_panic_region(i32) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
