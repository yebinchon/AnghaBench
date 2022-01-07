; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_update_panicheader_nestedpanic.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/i386/extr_pe_init.c_PE_update_panicheader_nestedpanic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i32 }

@panic_info = common dso_local global %struct.TYPE_2__* null, align 8
@MACOS_PANIC_HEADER_FLAG_NESTED_PANIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [98 x i8] c"panic_info contains invalid stackshot metadata: mph_stackshot_offset 0x%x mph_stackshot_len 0x%x\0A\00", align 1
@debug_buf_ptr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [114 x i8] c"panic_info contains invalid other log metadata (zero offset but non-zero length), length was 0x%x, zeroing value\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @PE_update_panicheader_nestedpanic() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 (...) @PE_init_panicheader()
  %7 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_NESTED_PANIC, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  br label %73

12:                                               ; preds = %0
  %13 = load i32, i32* @MACOS_PANIC_HEADER_FLAG_NESTED_PANIC, align 4
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = or i32 %16, %13
  store i32 %17, i32* %15, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %45, label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, ...) @kdb_printf(i8* getelementptr inbounds ([98 x i8], [98 x i8]* @.str, i64 0, i64 0), i64 %40, i64 %43)
  br label %45

45:                                               ; preds = %37, %32, %22
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %72

50:                                               ; preds = %45
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %72

55:                                               ; preds = %50
  %56 = load i32, i32* @debug_buf_ptr, align 4
  %57 = call i64 @PE_get_offset_into_panic_region(i32 %56)
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %55
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = call i32 (i8*, i64, ...) @kdb_printf(i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.1, i64 0, i64 0), i64 %67)
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @panic_info, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %64, %55
  br label %72

72:                                               ; preds = %71, %50, %45
  br label %73

73:                                               ; preds = %72, %5
  ret void
}

declare dso_local i32 @PE_init_panicheader(...) #1

declare dso_local i32 @kdb_printf(i8*, i64, ...) #1

declare dso_local i64 @PE_get_offset_into_panic_region(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
