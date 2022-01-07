; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_set_breakpoint_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kdp/extr_kdp.c_kdp_set_breakpoint_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@MAX_BREAKINSN_BYTES = common dso_local global i32 0, align 4
@breakpoints_initialized = common dso_local global i64 0, align 8
@MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@breakpoint_list = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [68 x i8] c"A trap was already set at that address, not setting new breakpoint\0A\00", align 1
@KDPERR_BREAKPOINT_ALREADY_SET = common dso_local global i32 0, align 4
@KDPERR_MAX_BREAKPOINTS = common dso_local global i32 0, align 4
@KDPERR_NO_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kdp_set_breakpoint_internal(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %11 = load i32, i32* @MAX_BREAKINSN_BYTES, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %4, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %5, align 8
  %15 = load i32, i32* @MAX_BREAKINSN_BYTES, align 4
  %16 = zext i32 %15 to i64
  %17 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %6, align 8
  %18 = mul nuw i64 4, %12
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %7, align 4
  %20 = call i32 @kdp_machine_get_breakinsn(i32* %14, i32* %7)
  %21 = load i64, i64* @breakpoints_initialized, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %1
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %29, %23
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %24

37:                                               ; preds = %24
  %38 = load i64, i64* @breakpoints_initialized, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* @breakpoints_initialized, align 8
  br label %40

40:                                               ; preds = %37, %1
  %41 = load i64, i64* %3, align 8
  %42 = ptrtoint i32* %17 to i32
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @kdp_machine_vm_read(i64 %41, i32 %42, i32 %43)
  store i32 %44, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @memcmp(i32* %17, i32* %14, i32 %45)
  %47 = icmp eq i64 0, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = call i32 @printf(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @KDPERR_BREAKPOINT_ALREADY_SET, align 4
  store i32 %50, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %102

51:                                               ; preds = %40
  store i32 0, i32* %9, align 4
  br label %52

52:                                               ; preds = %67, %51
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %52
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br label %64

64:                                               ; preds = %56, %52
  %65 = phi i1 [ false, %52 ], [ %63, %56 ]
  br i1 %65, label %66, label %70

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %9, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %9, align 4
  br label %52

70:                                               ; preds = %64
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @MAX_BREAKPOINTS, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* @KDPERR_MAX_BREAKPOINTS, align 4
  store i32 %75, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %102

76:                                               ; preds = %70
  %77 = load i64, i64* %3, align 8
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  store i64 %77, i64* %82, align 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @memcpy(i32 %88, i32* %17, i32 %89)
  %91 = load i32, i32* %7, align 4
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** @breakpoint_list, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 1
  store i32 %91, i32* %96, align 8
  %97 = ptrtoint i32* %14 to i32
  %98 = load i64, i64* %3, align 8
  %99 = load i32, i32* %7, align 4
  %100 = call i32 @kdp_machine_vm_write(i32 %97, i64 %98, i32 %99)
  store i32 %100, i32* %8, align 4
  %101 = load i32, i32* @KDPERR_NO_ERROR, align 4
  store i32 %101, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %102

102:                                              ; preds = %76, %74, %48
  %103 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %103)
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @kdp_machine_get_breakinsn(i32*, i32*) #2

declare dso_local i32 @kdp_machine_vm_read(i64, i32, i32) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @printf(i8*) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @kdp_machine_vm_write(i32, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
