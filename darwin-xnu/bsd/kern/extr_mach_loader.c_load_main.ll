; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_main.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_mach_loader.c_load_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.entry_point_command = type { i32, i64 }
%struct.TYPE_3__ = type { i64, i64, i8*, i8*, i8*, i32, i32, i64, i64 }

@LOAD_BADMACHO = common dso_local global i32 0, align 4
@LOAD_FAILURE = common dso_local global i32 0, align 4
@THREAD_NULL = common dso_local global i64 0, align 8
@LOAD_SUCCESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAXSSIZ = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@MACH_VM_MIN_ADDRESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.entry_point_command*, i64, i64, %struct.TYPE_3__*)* @load_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_main(%struct.entry_point_command* %0, i64 %1, i64 %2, %struct.TYPE_3__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.entry_point_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.entry_point_command* %0, %struct.entry_point_command** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.TYPE_3__* %3, %struct.TYPE_3__** %9, align 8
  %12 = load %struct.entry_point_command*, %struct.entry_point_command** %6, align 8
  %13 = getelementptr inbounds %struct.entry_point_command, %struct.entry_point_command* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 16
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %18, i32* %5, align 4
  br label %126

19:                                               ; preds = %4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %25, i32* %5, align 4
  br label %126

26:                                               ; preds = %19
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* @THREAD_NULL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %31, i32* %5, align 4
  br label %126

32:                                               ; preds = %26
  %33 = load %struct.entry_point_command*, %struct.entry_point_command** %6, align 8
  %34 = getelementptr inbounds %struct.entry_point_command, %struct.entry_point_command* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %66

37:                                               ; preds = %32
  %38 = load %struct.entry_point_command*, %struct.entry_point_command** %6, align 8
  %39 = getelementptr inbounds %struct.entry_point_command, %struct.entry_point_command* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = mul nsw i32 4, %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 8
  %45 = call i64 @os_add_overflow(i64 %40, i32 %42, i64* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %48, i32* %5, align 4
  br label %126

49:                                               ; preds = %37
  %50 = load %struct.entry_point_command*, %struct.entry_point_command** %6, align 8
  %51 = getelementptr inbounds %struct.entry_point_command, %struct.entry_point_command* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 8
  store i64 %52, i64* %54, align 8
  %55 = load %struct.entry_point_command*, %struct.entry_point_command** %6, align 8
  %56 = getelementptr inbounds %struct.entry_point_command, %struct.entry_point_command* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @PAGE_SIZE, align 4
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 7
  %61 = call i64 @os_add_overflow(i64 %57, i32 %58, i64* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %49
  %64 = load i32, i32* @LOAD_BADMACHO, align 4
  store i32 %64, i32* %5, align 4
  br label %126

65:                                               ; preds = %49
  br label %70

66:                                               ; preds = %32
  %67 = load i64, i64* @MAXSSIZ, align 8
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 7
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %65
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @thread_userstackdefault(i32* %10, i32 %73)
  store i64 %74, i64* %11, align 8
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* @KERN_SUCCESS, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %79, i32* %5, align 4
  br label %126

80:                                               ; preds = %70
  %81 = load i32, i32* %10, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 5
  store i32 %81, i32* %83, align 8
  %84 = load i64, i64* %8, align 8
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = sub nsw i64 %88, %84
  %90 = trunc i64 %89 to i32
  store i32 %90, i32* %86, align 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 3
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %101, label %95

95:                                               ; preds = %80
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @MACH_VM_MIN_ADDRESS, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95, %80
  %102 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %102, i32* %5, align 4
  br label %126

103:                                              ; preds = %95
  %104 = load i8*, i8** @TRUE, align 8
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 4
  store i8* %104, i8** %106, align 8
  %107 = load i8*, i8** @TRUE, align 8
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 3
  store i8* %107, i8** %109, align 8
  %110 = load i64, i64* %7, align 8
  %111 = call i64 @thread_state_initialize(i64 %110)
  store i64 %111, i64* %11, align 8
  %112 = load i64, i64* %11, align 8
  %113 = load i64, i64* @KERN_SUCCESS, align 8
  %114 = icmp ne i64 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %103
  %116 = load i32, i32* @LOAD_FAILURE, align 4
  store i32 %116, i32* %5, align 4
  br label %126

117:                                              ; preds = %103
  %118 = load i8*, i8** @TRUE, align 8
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = add nsw i64 %123, 1
  store i64 %124, i64* %122, align 8
  %125 = load i32, i32* @LOAD_SUCCESS, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %117, %115, %101, %78, %63, %47, %30, %24, %17
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i64 @os_add_overflow(i64, i32, i64*) #1

declare dso_local i64 @thread_userstackdefault(i32*, i32) #1

declare dso_local i64 @thread_state_initialize(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
