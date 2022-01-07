; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_options.c_khrn_error_assist.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/extr_khrn_options.c_khrn_error_assist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@khrn_options = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@GL_NO_ERROR = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"V3D ERROR ASSIST : \00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"GL_INVALID_ENUM in %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"GL_INVALID_VALUE in %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"GL_INVALID_OPERATION in %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"GL_OUT_OF_MEMORY in %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ERROR CODE %d in %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @khrn_error_assist(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @khrn_options, i32 0, i32 0), align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @GL_NO_ERROR, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %39

11:                                               ; preds = %7
  %12 = load i32, i32* @stderr, align 4
  %13 = call i32 (i32, i8*, ...) @fprintf(i32 %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %3, align 4
  switch i32 %14, label %31 [
    i32 131, label %15
    i32 129, label %19
    i32 130, label %23
    i32 128, label %27
  ]

15:                                               ; preds = %11
  %16 = load i32, i32* @stderr, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %17)
  br label %36

19:                                               ; preds = %11
  %20 = load i32, i32* @stderr, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = call i32 (i32, i8*, ...) @fprintf(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %21)
  br label %36

23:                                               ; preds = %11
  %24 = load i32, i32* @stderr, align 4
  %25 = load i8*, i8** %4, align 8
  %26 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %25)
  br label %36

27:                                               ; preds = %11
  %28 = load i32, i32* @stderr, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 (i32, i8*, ...) @fprintf(i32 %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i8* %29)
  br label %36

31:                                               ; preds = %11
  %32 = load i32, i32* @stderr, align 4
  %33 = load i32, i32* %3, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 (i32, i8*, ...) @fprintf(i32 %32, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i32 %33, i8* %34)
  br label %36

36:                                               ; preds = %31, %27, %23, %19, %15
  %37 = load i32, i32* @stderr, align 4
  %38 = call i32 @fflush(i32 %37)
  br label %39

39:                                               ; preds = %36, %7, %2
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
