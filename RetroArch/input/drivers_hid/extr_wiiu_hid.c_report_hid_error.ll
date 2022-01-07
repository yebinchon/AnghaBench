; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_report_hid_error.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_wiiu_hid.c_report_hid_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"[hid]: Invalid RM command (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"[hid]: Invalid IOCTL command (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"[hid]: bad vector count (%s)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"[hid]: invalid memory bank (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"[hid]: invalid memory alignment (%s)\0A\00", align 1
@.str.6 = private unnamed_addr constant [31 x i8] c"[hid]: invalid data size (%s)\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"[hid]: request cancelled (%s)\0A\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"[hid]: request timed out (%s)\0A\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"[hid]: request aborted (%s)\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"[hid]: client priority error (%s)\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"[hid]: invalid device handle (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*, i32)* @report_hid_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_hid_error(i8* %0, %struct.TYPE_5__* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp sge i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %69

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, 65535
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = ashr i32 %16, 16
  %18 = and i32 %17, 65535
  store i32 %18, i32* %8, align 4
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %32

21:                                               ; preds = %13
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = icmp ne %struct.TYPE_4__* %24, null
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  br label %33

32:                                               ; preds = %21, %13
  br label %33

33:                                               ; preds = %32, %26
  %34 = phi i8* [ %31, %26 ], [ getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %32 ]
  store i8* %34, i8** %9, align 8
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %69 [
    i32 -100, label %36
    i32 -102, label %39
    i32 -103, label %42
    i32 -104, label %45
    i32 -105, label %48
    i32 -106, label %51
    i32 -107, label %54
    i32 -108, label %57
    i32 -109, label %60
    i32 -110, label %63
    i32 -111, label %66
  ]

36:                                               ; preds = %33
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %37)
  br label %69

39:                                               ; preds = %33
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %40)
  br label %69

42:                                               ; preds = %33
  %43 = load i8*, i8** %9, align 8
  %44 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %69

45:                                               ; preds = %33
  %46 = load i8*, i8** %9, align 8
  %47 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i8* %46)
  br label %69

48:                                               ; preds = %33
  %49 = load i8*, i8** %9, align 8
  %50 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %49)
  br label %69

51:                                               ; preds = %33
  %52 = load i8*, i8** %9, align 8
  %53 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.6, i64 0, i64 0), i8* %52)
  br label %69

54:                                               ; preds = %33
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %55)
  br label %69

57:                                               ; preds = %33
  %58 = load i8*, i8** %9, align 8
  %59 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0), i8* %58)
  br label %69

60:                                               ; preds = %33
  %61 = load i8*, i8** %9, align 8
  %62 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.9, i64 0, i64 0), i8* %61)
  br label %69

63:                                               ; preds = %33
  %64 = load i8*, i8** %9, align 8
  %65 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i8* %64)
  br label %69

66:                                               ; preds = %33
  %67 = load i8*, i8** %9, align 8
  %68 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0), i8* %67)
  br label %69

69:                                               ; preds = %12, %33, %66, %63, %60, %57, %54, %51, %48, %45, %42, %39, %36
  ret void
}

declare dso_local i32 @RARCH_ERR(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
