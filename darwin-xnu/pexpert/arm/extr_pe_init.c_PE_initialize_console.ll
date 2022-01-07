; ModuleID = '/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_initialize_console.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/pexpert/arm/extr_pe_init.c_PE_initialize_console.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@PE_initialize_console.last_console = internal global i32 -1, align 4
@PE_state = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@.str = private unnamed_addr constant [21 x i8] c"kPEDisableScreen %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"kPEEnableScreen %d\0A\00", align 1
@vc_progress_initialized = common dso_local global i32 0, align 4
@default_progress = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@default_progress_data1x = common dso_local global i32 0, align 4
@default_progress_data2x = common dso_local global i32 0, align 4
@default_progress_data3x = common dso_local global i32 0, align 4
@appleClut8 = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @PE_initialize_console(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %6 = icmp ne %struct.TYPE_7__* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %9 = icmp ne %struct.TYPE_7__* %8, getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @PE_state, i32 0, i32 0)
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @PE_state, i32 0, i32 0, i32 0), align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %14

14:                                               ; preds = %10, %7, %2
  %15 = load i32, i32* %4, align 4
  switch i32 %15, label %56 [
    i32 130, label %16
    i32 129, label %23
    i32 128, label %41
  ]

16:                                               ; preds = %14
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @initialize_screen(%struct.TYPE_7__* %17, i32 %18)
  %20 = call i32 (...) @switch_to_serial_console()
  store i32 %20, i32* @PE_initialize_console.last_console, align 4
  %21 = load i32, i32* @PE_initialize_console.last_console, align 4
  %22 = call i32 @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %60

23:                                               ; preds = %14
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @initialize_screen(%struct.TYPE_7__* %24, i32 %25)
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %28 = icmp ne %struct.TYPE_7__* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = bitcast %struct.TYPE_7__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 bitcast (%struct.TYPE_9__* @PE_state to i8*), i8* align 4 %31, i64 4, i1 false)
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* @PE_initialize_console.last_console, align 4
  %34 = call i32 @kprintf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @PE_initialize_console.last_console, align 4
  %36 = icmp ne i32 %35, -1
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load i32, i32* @PE_initialize_console.last_console, align 4
  %39 = call i32 @switch_to_old_console(i32 %38)
  br label %40

40:                                               ; preds = %37, %32
  br label %60

41:                                               ; preds = %14
  %42 = load i32, i32* @vc_progress_initialized, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_progress, i32 0, i32 1), align 4
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @default_progress, i32 0, i32 0), align 4
  %45 = load i32, i32* @default_progress_data1x, align 4
  %46 = load i32, i32* @default_progress_data2x, align 4
  %47 = load i32, i32* @default_progress_data3x, align 4
  %48 = load i64, i64* @appleClut8, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @vc_progress_initialize(%struct.TYPE_8__* @default_progress, i32 %45, i32 %46, i32 %47, i8* %49)
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* @vc_progress_initialized, align 4
  br label %52

52:                                               ; preds = %44, %41
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @initialize_screen(%struct.TYPE_7__* %53, i32 %54)
  br label %60

56:                                               ; preds = %14
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @initialize_screen(%struct.TYPE_7__* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %52, %40, %16
  ret i32 0
}

declare dso_local i32 @initialize_screen(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @switch_to_serial_console(...) #1

declare dso_local i32 @kprintf(i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @switch_to_old_console(i32) #1

declare dso_local i32 @vc_progress_initialize(%struct.TYPE_8__*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
